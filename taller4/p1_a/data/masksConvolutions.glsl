#ifdef GL_ES
precision mediump float;
precision mediump int;
#endif
varying vec4 vertTexCoord;
varying vec4 vertColor;
uniform vec2 texOffset;
uniform sampler2D texture;
uniform float cm11;
uniform float cm12;
uniform float cm13;
uniform float cm21;
uniform float cm22;
uniform float cm23;
uniform float cm31;
uniform float cm32;
uniform float cm33;
const vec4 lumcoeff = vec4(0.299, 0.587, 0.114, 0);
void main() {
  vec2 p11 = vertTexCoord.st + vec2(-texOffset.s, -texOffset.t);
  vec4 c11 = texture2D(texture, p11);
  vec2 p12 = vertTexCoord.st + vec2(0.0, -texOffset.t);
  vec4 c12 = texture2D(texture, p12);
  vec2 p13 = vertTexCoord.st + vec2(+texOffset.s, -texOffset.t);
  vec4 c13 = texture2D(texture, p13);
  vec2 p21 = vertTexCoord.st + vec2(-texOffset.s,0.0);
  vec4 c21 = texture2D(texture, p21);
  vec2 p22 = vertTexCoord.st + vec2(0.0, 0.0);
  vec4 c22 = texture2D(texture, p22);
  vec2 p23 = vertTexCoord.st + vec2(+texOffset.s, 0.0);
  vec4 c23 = texture2D(texture, p23);
  vec2 p31 = vertTexCoord.st + vec2(-texOffset.s, +texOffset.t);
  vec4 c31 = texture2D(texture, p31);
  vec2 p32 = vertTexCoord.st + vec2( 0.0, +texOffset.t);
  vec4 c32 = texture2D(texture, p32);
  vec2 p33 = vertTexCoord.st + vec2(+texOffset.s, +texOffset.t);
  vec4 c33 = texture2D(texture, p33);
  vec4 total = cm11*c11 + cm12*c12 + cm13*c13 + cm21*c21 + cm22*c22 + cm23*c23 + cm31*c31 + cm32*c32 + cm33*c33;
  gl_FragColor = vec4(total.rgb, 1.0) * vertColor; 
}