#version 450
layout(location = 0) in vec2 v_tex_coords;
layout(location = 0) out vec4 f_color;

layout(set = 0, binding = 0) uniform sampler s;
layout(set = 0, binding = 1) uniform texture2D tex;

void main() {
    f_color = texture(sampler2D(tex, s), v_tex_coords);
}
