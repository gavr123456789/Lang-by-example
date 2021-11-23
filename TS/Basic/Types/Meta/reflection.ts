
type Customer = {
  name: string;
  age: number;
}
type Rule<T> = (x: T) => null | string;

const ageOfMajority: Rule<number> =
  x => x < 18 ? "Too young" : null;

const notTooOld: Rule<number> =
  x => x > 90 ? "Too young" : null;

const required: Rule<any> =
  x => !x ? "Required field" : null;

const firstCapitalLetter: Rule<string> =
  x => x[0] === x[0].toLocaleUpperCase() ? "First letter must be capital" : null;

const noNumbersAllowed: Rule<string> =
  x => /[^a-zA-Z]/g.test(x) ? "No Numbers Allowed" : null;

  
// mapped type
type FormRules<T> = {
  [K in keyof T]: Rule<T[K]>
};

// Combine two rules with Higher Order functions
const compose =
  <T>(a: Rule<T>, b: Rule<T>): Rule<T> =>
    x => a(x) || b(x);

const rulesSimple: FormRules<Customer> = {
  name: required,
  age: ageOfMajority,
}

const rulesOnly2: FormRules<Customer> = {
  name: compose(required, firstCapitalLetter),
  age: compose(ageOfMajority, notTooOld)
}
const rules: FormRules<Customer> = {
  name:
      [
          required,
          firstCapitalLetter,
          noNumbersAllowed
      ].reduce(compose),
  age: compose(ageOfMajority, notTooOld)
}


const customer: Customer = { age: 2, name: "sas" }

function valudate(customer: Customer, rule: FormRules<Customer>) {
  let keys = Object.keys(customer) as (keyof Customer)[]
  for (const key of keys) {
    const value = customer[key]
  }
}