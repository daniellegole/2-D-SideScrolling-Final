/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 46254816
/// @DnDComment : if jumping
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "1"
if(move_y < 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5A15E36B
	/// @DnDParent : 46254816
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_player_jump2"
	/// @DnDSaveInfo : "spriteind" "spr_player_jump2"
	sprite_index = spr_player_jump2;
	image_index += 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2F1D01FE
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "2"
if(move_y > 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 722BBEE7
	/// @DnDParent : 2F1D01FE
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_player_idle2"
	/// @DnDSaveInfo : "spriteind" "spr_player_idle2"
	sprite_index = spr_player_idle2;
	image_index += 0;}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 198DAC4A
/// @DnDComment : if on ground
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collission_tilemap"
var l198DAC4A_0 = instance_place(x + 0, y + 2, [collission_tilemap]);if ((l198DAC4A_0 > 0)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 55BD7F60
	/// @DnDComment : if moving left
	/// @DnDParent : 198DAC4A
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-1"
	if(move_x <= -1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 49130CEC
		/// @DnDParent : 55BD7F60
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_player_walk2"
		/// @DnDSaveInfo : "spriteind" "spr_player_walk2"
		sprite_index = spr_player_walk2;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 702152C3
		/// @DnDComment : reset the image x scale back to $(13_10)normal. (absolute value to$(13_10)make it positive to the $(13_10)right no matter what)
		/// @DnDParent : 55BD7F60
		/// @DnDArgument : "xscale" "-1*abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale "
		image_xscale = -1*abs(image_xscale);image_yscale = image_yscale ;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7F360917
	/// @DnDComment : if moving left
	/// @DnDParent : 198DAC4A
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(move_x >= 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 7BE2E9F1
		/// @DnDParent : 7F360917
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_player_walk2"
		/// @DnDSaveInfo : "spriteind" "spr_player_walk2"
		sprite_index = spr_player_walk2;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 2A1B0BDA
		/// @DnDComment : reset the image x scale back to $(13_10)normal. (absolute value to$(13_10)make it positive to the $(13_10)right no matter what)
		/// @DnDParent : 7F360917
		/// @DnDArgument : "xscale" "abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale "
		image_xscale = abs(image_xscale);image_yscale = image_yscale ;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5954EAEB
	/// @DnDParent : 198DAC4A
	/// @DnDArgument : "var" "move_x"
	if(move_x == 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 07F89B92
		/// @DnDParent : 5954EAEB
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_player_idle "
		sprite_index = spr_player_idle ;
		image_index += 0;}}