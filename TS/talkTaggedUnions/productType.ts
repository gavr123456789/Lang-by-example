interface Color {
  r: number
  g: number
  b: number
  a: number
}

interface Brightness {
  brightness: number
}

function render(params: Color & Brightness) {
  console.log(params.brightness);

  console.log(params.r);
  console.log(params.g);
  console.log(params.b);
  console.log(params.a);
}