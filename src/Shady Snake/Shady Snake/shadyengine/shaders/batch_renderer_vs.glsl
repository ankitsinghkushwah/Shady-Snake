#version 400

layout(location = 0) in vec2 pos;
layout(location = 1) in vec2 tex;
layout(location = 2) in vec2 offset;


uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

out vec2 texCoords;

void main()
{

	texCoords = tex;
	vec4 position = vec4(pos,0.0f,1.0f);
	 //scaling first
	position = model*position; //scaling first
	position.xy += offset; //then translating
	
	gl_Position = projection*view*position;

}