attribute vec3 aPosition;
attribute vec2 aCoordinate;
varying vec2 v_TexCoordinate;

void main () {
    v_TexCoordinate =  aCoordinate.xy;
    gl_Position = vec4(aPosition,1.0);
}