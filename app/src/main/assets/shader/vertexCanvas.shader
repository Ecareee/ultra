precision lowp float;
uniform mat4 uProjMatrix;
uniform mat4 uViewMatrix;
uniform mat4 uModelMatrix;

uniform mat4 uViewShadowMatrix;

attribute vec3 aPosition;
attribute vec2 aCoordinate;
attribute vec3 aNormal;

uniform vec3 uLightVector[9];
uniform vec3 uLightColor[9];
uniform int uLightCount;
uniform vec3 uViewPos;
uniform vec4 uColor;

uniform vec3 uOrigin;
uniform float uCoordScale;

varying lowp vec4 vShadowPos;
varying vec2 vCoord;

#define PI 3.14159265359

void main(){
   gl_Position = vec4(aPosition,1.0);
   vCoord = aCoordinate;
}