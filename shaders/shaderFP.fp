varying mediump vec2 var_texcoord0;
uniform mediump sampler2D tex0;

void main ()
{
	vec2 uv = texture2D(tex0, var_texcoord0).xy;
	float ballShape = smoothstep(1.0 - clamp(distance(uv, vec2(0.5, 0.5)) * 0.35, 0.0, 1.0), 1.0, 0.99);
	vec3 ballVector = (1.0 - ballShape) * vec3(mix(vec3(1.0, 0.5, 0.0), vec3(1.0, 0.0, 0.0), ballShape));

	gl_FragColor = vec4(ballVector, 0.0);
}