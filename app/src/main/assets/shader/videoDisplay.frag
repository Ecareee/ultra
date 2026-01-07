#extension GL_OES_EGL_image_external : require
precision mediump float;
uniform samplerExternalOES texture;
varying vec2 v_TexCoordinate;

void main () {
    vec4 color = texture2D(texture, vec2(v_TexCoordinate.x,1.0-v_TexCoordinate.y));
    gl_FragColor = color;
}