attribute vec3 aPosition;
attribute vec4 aCoordinate;
uniform mat4 uWorldMatrix;
varying vec2 v_TexCoordinate;

void main () {
    v_TexCoordinate = (uWorldMatrix * aCoordinate).xy;
    gl_Position = vec4(aPosition,1.0);
}