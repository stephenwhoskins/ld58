//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float u_fScale;

void main()
{
	float dx = u_fScale * (1.0 / 948.0);
	float dy = u_fScale * (1.0 / 533.0);
	vec2 coord = vec2(dx * floor((v_vTexcoord.x) / dx), dy * floor((v_vTexcoord.y) / dy));
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, coord);
}
