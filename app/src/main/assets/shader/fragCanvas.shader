precision lowp float;
uniform sampler2D uTexture;
uniform sampler2D uTexture1;
uniform sampler2D uTexture2;
uniform vec3 uEdgeBlend;
uniform vec3 uOrigin;
uniform vec4 uColor;

varying lowp vec4 vShadowPos;
varying vec2 vCoord;

const float WALL_LIMIT=100.0;

float getShadow(){
    vec2 depth_alpha = texture2D(uTexture1, vShadowPos.xy).xy;
    lowp float depth = depth_alpha.x;
    lowp float depth1 = vShadowPos.z;
    lowp float alpha = 1.0-depth_alpha.y;
    return max(1.0-0.4*step(depth+0.005,depth1)*alpha,0.9+0.1*alpha);
}

void main(){
    vec4 textureColor=texture2D(uTexture,vCoord);
    gl_FragColor = vec4(textureColor.rgb/textureColor.a,textureColor.a);
}