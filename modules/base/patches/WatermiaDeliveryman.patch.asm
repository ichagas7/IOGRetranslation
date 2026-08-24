

--------------------------------------------
h_actor < #3A, #00, #10 >
--------------------------------------------

watermia_skyd_main {
    COP [C0] ( &watermia_skyd_interact )
    COP [0B]
    COP [C1]
    RTL
}

watermia_skyd_interact {
    COP [BF] ( &watermia_greeting_str )
    COP [BE] ( #03, #01, &watermia_skyd_options )
}

watermia_skyd_options [
  &watermia_skyd_cancel
  &watermia_skyd_cancel
  &watermia_skyd_south_cape
  &watermia_skyd_freejia
]

watermia_skyd_cancel {
    COP [BF] ( &watermia_cancel_str )
    RTL 
}

watermia_skyd_south_cape {
    COP [BF] ( &watermia_south_cape_str )
    LDA #$000D
    STA $0D60
    LDA #$0404
    STA $064A
    COP [65] ( #$02D4, #$01A4, #00, #22 )
    COP [26] ( #01, #$00F0, #$02E0, #03, #$4300 )
    RTL 
}

watermia_skyd_freejia {
    COP [BF] ( &watermia_freejia_str )
    LDA #$000D
    STA $0D60
    LDA #$0404
    STA $064A
    COP [65] ( #$02D4, #$01A4, #00, #28 )
    COP [26] ( #32, #$0160, #$01D0, #07, #$4500 )
    RTL 
}


watermia_greeting_str   `[TPL:16][TPL:E]I'm the Sky Delivery man.[N]My tame birds can fly you[N]to distant places. [FIN][TPL:F]Where do you want to go?[N][PAL:0] Stay Here[N] South Cape[N] [NAM:12][PAL:4]`
watermia_cancel_str     `[CLR]Alright. Come back if you[N]change your mind.[END]`
watermia_south_cape_str `[CLR]Come here, birds.[N]We're taking this person[N]to South Cape![END]`
watermia_freejia_str    `[CLR]Come here, birds.[N]We're taking this person[N]to [NAM:12]![END]`

--------------------------------------
?INCLUDE 'scene_meta'
--------------------------------------

mapdef_0078 [
  ppu < #1A >   ;00
  music < #02, #00, @bgm_lively_city >   ;01
  bitmap < #00, #10, #00, @gfx_watermia, #00 >   ;02
  branch < #96, #2A >   ;03
  palette < #00, #70, #10, @pal_watermia >   ;04
  jump < #2B >   ;05
  label_2A:   ;06
  palette < #00, #70, #10, @pal_watermia_dark >   ;07
  label < #2B >   ;08
  tileset < #00, #20, #00, #03, @set_watermia >   ;09
  tilemap < #01, @map_watermia >   ;0A
  bitmap < #00, #10, #10, @gfx_watermia, #00 >   ;0B
  tilemap < #02, @map_watermia_effect >   ;0C
  label_26:   ;0D
  bitmap < #00, #10, #10, @gfx_watermia_sprites, #01 >   ;0E
  palette < #00, #60, #A0, @pal_watermia_sprites >   ;0F
  spritemap < #$1886, #00, @spm_watermia_sprites >   ;10
]

--------------------------------------
?INCLUDE 'scene_actors'
--------------------------------------

event_def_0CB41F [
  actor < #25, #38, #02, @player_character >   ;00
  actor < #00, #00, #00, @actor_00EAED >   ;01
  actor < #11, #11, #00, @actor_00EA96 >   ;02
  actor < #00, #01, #00, @overworld_exit >   ;03
  actor < #00, #01, #00, @actor_00C667 >   ;04
  actor < #00, #01, #00, @wa78_intro >   ;05
  actor < #00, #01, #00, @wa78_actor_0781BE >   ;06
  actor < #4C, #2E, #00, @wa78_moving_pad >   ;07
  actor < #2D, #2C, #00, @wa78_lily_pad >   ;08
  actor < #1B, #1D, #00, @wa78_lily_pad >   ;09
  actor < #3E, #0E, #00, @wa78_lily_pad >   ;0A
  actor < #0D, #11, #00, @wa78_lily_pad >   ;0B
  actor < #0B, #12, #00, @wa78_lily_pad >   ;0C
  actor < #0B, #14, #00, @wa78_lily_pad >   ;0D
  actor < #09, #15, #00, @wa78_lily_pad >   ;0E
  actor < #09, #17, #00, @wa78_lily_pad >   ;0F
  actor < #09, #19, #00, @wa78_lily_pad >   ;10
  actor < #03, #3B, #00, @wa78_full_pad >   ;11
  actor < #29, #38, #41, @wa78_men >   ;12
  actor < #31, #34, #23, @wa78_men >   ;13
  actor < #3F, #34, #45, @wa78_men >   ;14
  actor < #33, #21, #01, @wa78_centipede_man >   ;15
  actor < #39, #11, #0B, @wa78_men >   ;16
  actor < #15, #3A, #01, @wa78_women >   ;17
  actor < #24, #2C, #01, @wa78_moving_woman >   ;18
  actor < #1D, #18, #03, @wa78_women >   ;19
  actor < #1D, #3B, #01, @wa78_water_kid >   ;1A
  actor < #05, #1D, #01, @wa78_children >   ;1B
  actor < #06, #1D, #03, @wa78_children >   ;1C
  actor < #1E, #18, #05, @wa78_children >   ;1D
  actor < #42, #1B, #07, @wa78_children >   ;1E
  actor < #11, #1D, #00, @wa78_crazy_man >   ;1F
  actor < #4A, #0A, #00, @wa78_glass_game >   ;20
  actor < #30, #33, #00, @wa78_kruk >   ;21
  actor < #30, #31, #00, @wa78_kruk >   ;22
  actor < #26, #08, #00, @wa78_kruk >   ;23
  actor < #1E, #22, #00, @wa78_prize_kruk >   ;24
  actor < #1E, #24, #00, @wa78_prize_kruk >   ;25
  actor < #1E, #26, #00, @wa78_prize_kruk >   ;26
  actor < #1E, #28, #00, @wa78_prize_kruk >   ;27
  actor < #25, #3A, #00, @wa78_flower >   ;28
  actor < #25, #3C, #00, @wa78_flower >   ;29
  actor < #2A, #3B, #00, @wa78_flower >   ;2A
  actor < #30, #28, #00, @wa78_flower >   ;2B
  actor < #0F, #16, #00, @wa78_flower >   ;2C
  actor < #35, #0B, #00, @wa78_diary >   ;2D
  actor < #12, #38, #11, @hidden_red_jewel >
  actor < #14, #23, #00, @WatermiaDeliveryman >   ;2E
]
