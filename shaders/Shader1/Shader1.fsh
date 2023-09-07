struct PixelShaderInput {
  float4 vPosition      : SV_POSITION;
  //float4 vColor	        : COLOR0;
  float2 vTexcoord      : TEXCOORD0;
};

struct PixelShaderOutput {
  float4 Color0 : SV_TARGET0;
};


Texture2D texReg1     : register(t1);
SamplerState texSamp1 : register(s1);

Texture2D texReg2     : register(t2);
SamplerState texSamp2 : register(s2);

Texture2D texReg3     : register(t3);
SamplerState texSamp3 : register(s3);

Texture2D texReg4     : register(t4);
SamplerState texSamp4 : register(s4);

Texture2D texReg5     : register(t5);
SamplerState texSamp5 : register(s5);

Texture2D texReg6     : register(t6);
SamplerState texSamp6 : register(s6);


PixelShaderOutput main(PixelShaderInput INPUT) {
  PixelShaderOutput OUTPUT;
  
  
  //float4 sampleOutTester1 = texReg1.SampleLevel(texSamp1, INPUT.vTexcoord,4); //use SampleLevel if you want to manually set the mipmap texture
  
  float4 sampleOutTester1 = texReg1.Sample(texSamp1, INPUT.vTexcoord); //register 1
  float4 sampleOutTester2 = texReg2.Sample(texSamp2, INPUT.vTexcoord); //register 2
  float4 sampleOutTester3 = texReg3.Sample(texSamp3, INPUT.vTexcoord); //register 3
  float4 sampleOutTester4 = texReg4.Sample(texSamp4, INPUT.vTexcoord); //register 4
  float4 sampleOutTester5 = texReg5.Sample(texSamp5, INPUT.vTexcoord); //register 5
  float4 sampleOutTester6 = texReg6.Sample(texSamp6, INPUT.vTexcoord); //register 6
  
  //OUTPUT.Color0 = gm_BaseTextureObject.Sample(gm_BaseTexture, INPUT.vTexcoord); //register 0
  OUTPUT.Color0 = sampleOutTester1; //register 1
  //OUTPUT.Color0 = sampleOutTester2; //register 2
  //OUTPUT.Color0 = sampleOutTester3; //register 3
  //OUTPUT.Color0 = sampleOutTester4; //register 4
  //OUTPUT.Color0 = sampleOutTester5; //register 5
  //OUTPUT.Color0 = sampleOutTester6; //register 6
  
  return OUTPUT;
}