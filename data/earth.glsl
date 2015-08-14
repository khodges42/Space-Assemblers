#ifdef GL_ES
precision mediump float;
#endif

uniform float time;
uniform vec2 resolution;
uniform vec2 surfaceSize;

void main( void ) {
	vec2 p = floor( 9e1 * ( gl_FragCoord.xy / resolution.xy  - .5 ) ); // the space count is too damn high
	
	float color = 0.0;
	float P = floor((cos(time/3.+p.x/32.))*6.)/floor(cos((time))*16.);
	
	color = pow(p.x, P)+pow(p.y, P) - pow(3e1, P);
	
	
	gl_FragColor = vec4( 
	fract(pow(color, 3.)) *
	vec3( 
		.5+.5*cos(log(p.x)*3.1415/2.)
		,0.1
		,0.5
	), 1.0 );
	
	
}