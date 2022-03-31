class A {
	x: string;
}
class B {
	y: string;
}
class C {
	z: string;
}
class D {
	c: string;
}

interface ASD {
	x: A | B;

	y: C | D;
}

function asd(asd: ASD) {
	if ('x' in asd.x) {
		asd.x.x;
	}
	asd.y;
}

////////////

interface ASD1 {
	kind: 'ASD1';

	x: C;

	y: A;
}

interface ASD2 {
	kind: 'ASD2';

	x: D;

	y: B;
}

interface ASD3 {
	kind: 'ASD3';

	x: C;

	y: B;
}

interface ASD4 {
	kind: 'ASD4';
	x: D;

	y: A;
}

type MegaASD = ASD1 | ASD2 | ASD3 | ASD4;

function asd2(x: MegaASD) {
	if (x.kind === 'ASD3') {
		// x.
	}
}
