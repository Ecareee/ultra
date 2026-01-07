precision lowp float;
uniform sampler2D uTexture;
uniform sampler2D uTexture1;
uniform sampler2D uTexture2;
uniform vec3 uEdgeBlend;
uniform vec3 uOrigin;
uniform vec4 uColor;

varying vec2 vCoord;
const float WALL_LIMIT=100.0;
float roundedRectangle (vec2 uv, vec2 pos, vec2 size, float radius, float thickness)
{
  float d = length(max(abs(uv - pos), size) - size) - radius;
  return 1.0 - smoothstep(thickness, thickness+0.01, d);
}

void main(){
    vec2 screen = uEdgeBlend.yz;
    vec2 npos = gl_FragCoord.xy / screen.xy;   // 0.0 .. 1.0
    float aspect = screen.y / screen.x;    // aspect ratio y/x
    vec2 ratio = vec2(1.0,aspect);                // aspect ratio (1,y/x)
    vec2 uv = (2.0 * npos - 1.0) * ratio;          // -1.0 .. 1.0

    float radius = 0.2;
    float thickness = 0.012;
    vec3 col = vec3(0.0);
    vec2 pos = vec2(0.0, 0.0);
    vec2 size = vec2(1.0-radius-thickness, aspect-radius-thickness);
    float intensity = roundedRectangle (uv, pos, size, radius, thickness);
    gl_FragColor.a = intensity;
}