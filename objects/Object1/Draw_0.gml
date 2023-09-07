texSprite1 = sprite_get_texture(Sprite1, -1);
texSprite2 = sprite_get_texture(Sprite2, -1);
texSprite3 = sprite_get_texture(Sprite3, -1);
texSprite4 = sprite_get_texture(Sprite4, -1);
texSprite5 = sprite_get_texture(Sprite5, -1);
texSprite6 = sprite_get_texture(Sprite6, -1);

shaderSamp1 = shader_get_sampler_index(Shader1, "texSamp1");
shaderSamp2 = shader_get_sampler_index(Shader1, "texSamp2");
shaderSamp3 = shader_get_sampler_index(Shader1, "texSamp3");
shaderSamp4 = shader_get_sampler_index(Shader1, "texSamp4");
shaderSamp5 = shader_get_sampler_index(Shader1, "texSamp5");
shaderSamp6 = shader_get_sampler_index(Shader1, "texSamp6");


shader_set(Shader1);
  texture_set_stage(shaderSamp1, texSprite1);
  texture_set_stage(shaderSamp2, texSprite2);
  texture_set_stage(shaderSamp3, texSprite3);
  texture_set_stage(shaderSamp4, texSprite4);
  texture_set_stage(shaderSamp5, texSprite5);
  texture_set_stage(shaderSamp6, texSprite6);
  draw_sprite(Sprite0, -1, 0,0);
shader_reset();