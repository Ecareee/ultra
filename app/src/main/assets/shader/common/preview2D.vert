attribute vec3 aPosition;
attribute vec2 aCoordinate;
attribute vec3 aNormal;
varying vec2 vCoordinate;
void main(){
  vec4 fragPos = vec4(aPosition.x,aPosition.y,0.0,1.0);
  gl_Position=fragPos;
  vCoordinate=aCoordinate;
}