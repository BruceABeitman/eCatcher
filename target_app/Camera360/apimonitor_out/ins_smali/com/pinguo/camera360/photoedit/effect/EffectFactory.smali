.class public final Lcom/pinguo/camera360/photoedit/effect/EffectFactory;
.super Ljava/lang/Object;
.source "EffectFactory.java"
.field public static final C360_Funny_BOTTOMMIRROR:Ljava/lang/String; = "C360_Funny_BottomMirror"
.field public static final C360_Funny_LEFTMIRROR:Ljava/lang/String; = "C360_Funny_LeftMirror"
.field public static final C360_Funny_Other_BOTTOMMIRROR:Ljava/lang/String; = "C360_Funny_Other_BottomMirror"
.field public static final C360_Funny_Other_LEFTMIRROR:Ljava/lang/String; = "C360_Funny_Other_LeftMirror"
.field public static final C360_Funny_Other_RIGHTMIRROR:Ljava/lang/String; = "C360_Funny_Other_RightMirror"
.field public static final C360_Funny_Other_TOPMIRROR:Ljava/lang/String; = "C360_Funny_Other_TopMirror"
.field public static final C360_Funny_RIGHTMIRROR:Ljava/lang/String; = "C360_Funny_RightMirror"
.field public static final C360_Funny_TOPMIRROR:Ljava/lang/String; = "C360_Funny_TopMirror"
.field public static final C360_GHOST:Ljava/lang/String; = "C360_Ghost_Normal"
.field public static final C360_LIGHTCOLOR_LIGHTING0:Ljava/lang/String; = "C360_LightColor_Lighting0"
.field public static final C360_LIGHTCOLOR_LIGHTING1:Ljava/lang/String; = "C360_LightColor_Lighting1"
.field public static final C360_LIGHTCOLOR_PARAM:Ljava/lang/String; = "Portrait_AutoLevel|Effect=SkinSoft;Curve0=<A>10=0,127=145</A>;whiteLevel=0.0;guassFrame=<PyramidLevel>4</PyramidLevel><StandLength>400</StandLength><StandAmount>5</StandAmount>|Effect="
.field public static final C360_TILTSHIFT_OTHER_LINE:Ljava/lang/String; = "C360_TiltShift_Other_Line"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getEffectAppend(Ljava/lang/String;Ljava/lang/String;)Lcom/pinguo/camera360/photoedit/effect/EffectAppend;
.registers 3
const-string/jumbo v0, "C360_TiltShift_Other_Line"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_e
invoke-static {p1}, Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;->build(Ljava/lang/String;)Lcom/pinguo/camera360/photoedit/effect/EffectAppendTiltShiftLine;
move-result-object v0
:goto_d
return-object v0
:cond_e
const-string/jumbo v0, "C360_Ghost_Normal"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1c
invoke-static {p1}, Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;->build(Ljava/lang/String;)Lcom/pinguo/camera360/photoedit/effect/EffectAppendGhost;
move-result-object v0
goto :goto_d
:cond_1c
const/4 v0, 0x0
goto :goto_d
.end method
.method public static getGPUCmd(Lcom/pinguo/camera360/effect/model/entity/Effect;Lcom/pinguo/camera360/photoedit/effect/EffectAppend;I)Ljava/lang/String;
.registers 7
if-eqz p0, :cond_8
invoke-virtual {p0}, Lcom/pinguo/camera360/effect/model/entity/Effect;->haveGPUCmd()Z
move-result v2
if-nez v2, :cond_45
:cond_8
const-string/jumbo v0, "Normal"
:goto_b
const-string/jumbo v2, "Effect="
invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_26
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "Effect="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_26
if-eqz p1, :cond_44
new-instance v2, Ljava/lang/StringBuilder;
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const/16 v3, 0x3b
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v2
const/4 v3, 0x1
invoke-virtual {p1, v3, p2, p0}, Lcom/pinguo/camera360/photoedit/effect/EffectAppend;->getEffectAppendParam(ZILcom/pinguo/camera360/effect/model/entity/Effect;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_44
return-object v0
:cond_45
invoke-virtual {p0}, Lcom/pinguo/camera360/effect/model/entity/Effect;->getGpuCmds()[Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
aget-object v0, v2, v3
goto :goto_b
.end method
.method public static getGpuCmdForEdit(Lcom/pinguo/camera360/effect/model/entity/Effect;)Ljava/lang/String;
.registers 3
const/4 v0, 0x0
const/4 v1, 0x0
invoke-static {p0, v0, v1}, Lcom/pinguo/camera360/photoedit/effect/EffectFactory;->getGPUCmd(Lcom/pinguo/camera360/effect/model/entity/Effect;Lcom/pinguo/camera360/photoedit/effect/EffectAppend;I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getPreCmd(Lcom/pinguo/camera360/effect/model/entity/Effect;IZ)Ljava/lang/String;
.registers 6
invoke-static {p1, p0, p2}, Lcom/pinguo/camera360/photoedit/effect/EffectFactory;->resetRenderEffectParam(ILcom/pinguo/camera360/effect/model/entity/Effect;Z)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "Effect="
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_e
:goto_d
return-object v0
:cond_e
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Effect="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_d
.end method
.method public static getPreCmdForEdit(Lcom/pinguo/camera360/effect/model/entity/Effect;)Ljava/lang/String;
.registers 3
const/4 v0, 0x0
const/4 v1, 0x1
invoke-static {p0, v0, v1}, Lcom/pinguo/camera360/photoedit/effect/EffectFactory;->getPreCmd(Lcom/pinguo/camera360/effect/model/entity/Effect;IZ)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static resetRenderEffectParam(ILcom/pinguo/camera360/effect/model/entity/Effect;Z)Ljava/lang/String;
.registers 6
if-eqz p1, :cond_8
invoke-virtual {p1}, Lcom/pinguo/camera360/effect/model/entity/Effect;->havePreCmd()Z
move-result v2
if-nez v2, :cond_c
:cond_8
const-string/jumbo v2, "Normal"
:goto_b
return-object v2
:cond_c
iget-object v0, p1, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
const-string/jumbo v2, "C360_Funny_Other_TopMirror"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_20
const-string/jumbo v2, "C360_Funny_TopMirror"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3f
:cond_20
sparse-switch p0, :sswitch_data_12e
if-eqz p2, :cond_3b
const-string/jumbo v2, "Funny_Mirror;mirrorType=3"
goto :goto_b
:sswitch_29
const-string/jumbo v2, "Funny_Mirror;mirrorType=1"
goto :goto_b
:sswitch_2d
if-eqz p2, :cond_33
const-string/jumbo v2, "Funny_Mirror;mirrorType=2"
goto :goto_b
:cond_33
const-string/jumbo v2, "Funny_Mirror;mirrorType=3"
goto :goto_b
:sswitch_37
const-string/jumbo v2, "Funny_Mirror;mirrorType=0"
goto :goto_b
:cond_3b
const-string/jumbo v2, "Funny_Mirror;mirrorType=2"
goto :goto_b
:cond_3f
const-string/jumbo v2, "C360_Funny_Other_BottomMirror"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_51
const-string/jumbo v2, "C360_Funny_BottomMirror"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_70
:cond_51
sparse-switch p0, :sswitch_data_13c
if-eqz p2, :cond_6c
const-string/jumbo v2, "Funny_Mirror;mirrorType=2"
goto :goto_b
:sswitch_5a
const-string/jumbo v2, "Funny_Mirror;mirrorType=0"
goto :goto_b
:sswitch_5e
if-eqz p2, :cond_64
const-string/jumbo v2, "Funny_Mirror;mirrorType=3"
goto :goto_b
:cond_64
const-string/jumbo v2, "Funny_Mirror;mirrorType=2"
goto :goto_b
:sswitch_68
const-string/jumbo v2, "Funny_Mirror;mirrorType=1"
goto :goto_b
:cond_6c
const-string/jumbo v2, "Funny_Mirror;mirrorType=3"
goto :goto_b
:cond_70
const-string/jumbo v2, "C360_Funny_Other_LeftMirror"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_82
const-string/jumbo v2, "C360_Funny_LeftMirror"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_a6
:cond_82
sparse-switch p0, :sswitch_data_14a
const-string/jumbo v2, "Funny_Mirror;mirrorType=1"
goto :goto_b
:sswitch_89
if-eqz p2, :cond_90
const-string/jumbo v2, "Funny_Mirror;mirrorType=2"
goto/16 :goto_b
:cond_90
const-string/jumbo v2, "Funny_Mirror;mirrorType=3"
goto/16 :goto_b
:sswitch_95
const-string/jumbo v2, "Funny_Mirror;mirrorType=0"
goto/16 :goto_b
:sswitch_9a
if-eqz p2, :cond_a1
const-string/jumbo v2, "Funny_Mirror;mirrorType=3"
goto/16 :goto_b
:cond_a1
const-string/jumbo v2, "Funny_Mirror;mirrorType=2"
goto/16 :goto_b
:cond_a6
const-string/jumbo v2, "C360_Funny_Other_RightMirror"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_b8
const-string/jumbo v2, "C360_Funny_RightMirror"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_dd
:cond_b8
sparse-switch p0, :sswitch_data_158
const-string/jumbo v2, "Funny_Mirror;mirrorType=0"
goto/16 :goto_b
:sswitch_c0
if-eqz p2, :cond_c7
const-string/jumbo v2, "Funny_Mirror;mirrorType=3"
goto/16 :goto_b
:cond_c7
const-string/jumbo v2, "Funny_Mirror;mirrorType=2"
goto/16 :goto_b
:sswitch_cc
const-string/jumbo v2, "Funny_Mirror;mirrorType=1"
goto/16 :goto_b
:sswitch_d1
if-eqz p2, :cond_d8
const-string/jumbo v2, "Funny_Mirror;mirrorType=2"
goto/16 :goto_b
:cond_d8
const-string/jumbo v2, "Funny_Mirror;mirrorType=3"
goto/16 :goto_b
:cond_dd
const-string/jumbo v2, "C360_LightColor_Lighting0"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_fd
sparse-switch p0, :sswitch_data_166
const-string/jumbo v2, "Portrait_AutoLevel|Effect=SkinSoft;Curve0=<A>10=0,127=145</A>;whiteLevel=0.0;guassFrame=<PyramidLevel>4</PyramidLevel><StandLength>400</StandLength><StandAmount>5</StandAmount>|Effect=LightColor_Lighting;Offset=1,0;Direct=0"
goto/16 :goto_b
:sswitch_ee
const-string/jumbo v2, "Portrait_AutoLevel|Effect=SkinSoft;Curve0=<A>10=0,127=145</A>;whiteLevel=0.0;guassFrame=<PyramidLevel>4</PyramidLevel><StandLength>400</StandLength><StandAmount>5</StandAmount>|Effect=LightColor_Lighting;Offset=0,1;Direct=1"
goto/16 :goto_b
:sswitch_f3
const-string/jumbo v2, "Portrait_AutoLevel|Effect=SkinSoft;Curve0=<A>10=0,127=145</A>;whiteLevel=0.0;guassFrame=<PyramidLevel>4</PyramidLevel><StandLength>400</StandLength><StandAmount>5</StandAmount>|Effect=LightColor_Lighting;Offset=1,0;Direct=1"
goto/16 :goto_b
:sswitch_f8
const-string/jumbo v2, "Portrait_AutoLevel|Effect=SkinSoft;Curve0=<A>10=0,127=145</A>;whiteLevel=0.0;guassFrame=<PyramidLevel>4</PyramidLevel><StandLength>400</StandLength><StandAmount>5</StandAmount>|Effect=LightColor_Lighting;Offset=0,1;Direct=0"
goto/16 :goto_b
:cond_fd
const-string/jumbo v2, "C360_LightColor_Lighting1"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_11d
sparse-switch p0, :sswitch_data_174
const-string/jumbo v2, "Portrait_AutoLevel|Effect=SkinSoft;Curve0=<A>10=0,127=145</A>;whiteLevel=0.0;guassFrame=<PyramidLevel>4</PyramidLevel><StandLength>400</StandLength><StandAmount>5</StandAmount>|Effect=LightColor_Lighting;Offset=0,1;Direct=1"
goto/16 :goto_b
:sswitch_10e
const-string/jumbo v2, "Portrait_AutoLevel|Effect=SkinSoft;Curve0=<A>10=0,127=145</A>;whiteLevel=0.0;guassFrame=<PyramidLevel>4</PyramidLevel><StandLength>400</StandLength><StandAmount>5</StandAmount>|Effect=LightColor_Lighting;Offset=1,0;Direct=1"
goto/16 :goto_b
:sswitch_113
const-string/jumbo v2, "Portrait_AutoLevel|Effect=SkinSoft;Curve0=<A>10=0,127=145</A>;whiteLevel=0.0;guassFrame=<PyramidLevel>4</PyramidLevel><StandLength>400</StandLength><StandAmount>5</StandAmount>|Effect=LightColor_Lighting;Offset=0,1;Direct=0"
goto/16 :goto_b
:sswitch_118
const-string/jumbo v2, "Portrait_AutoLevel|Effect=SkinSoft;Curve0=<A>10=0,127=145</A>;whiteLevel=0.0;guassFrame=<PyramidLevel>4</PyramidLevel><StandLength>400</StandLength><StandAmount>5</StandAmount>|Effect=LightColor_Lighting;Offset=1,0;Direct=0"
goto/16 :goto_b
:cond_11d
invoke-virtual {p1}, Lcom/pinguo/camera360/effect/model/entity/Effect;->getPreCmds()[Ljava/lang/String;
move-result-object v1
array-length v2, v1
if-nez v2, :cond_129
const-string/jumbo v2, "Normal"
goto/16 :goto_b
:cond_129
const/4 v2, 0x0
aget-object v2, v1, v2
goto/16 :goto_b
:sswitch_data_166
.sparse-switch
0x5a -> :sswitch_ee
0xb4 -> :sswitch_f3
0x10e -> :sswitch_f8
.end sparse-switch
:sswitch_data_13c
.sparse-switch
0x5a -> :sswitch_5a
0xb4 -> :sswitch_5e
0x10e -> :sswitch_68
.end sparse-switch
:sswitch_data_158
.sparse-switch
0x5a -> :sswitch_c0
0xb4 -> :sswitch_cc
0x10e -> :sswitch_d1
.end sparse-switch
:sswitch_data_174
.sparse-switch
0x5a -> :sswitch_10e
0xb4 -> :sswitch_113
0x10e -> :sswitch_118
.end sparse-switch
:sswitch_data_14a
.sparse-switch
0x5a -> :sswitch_89
0xb4 -> :sswitch_95
0x10e -> :sswitch_9a
.end sparse-switch
:sswitch_data_12e
.sparse-switch
0x5a -> :sswitch_29
0xb4 -> :sswitch_2d
0x10e -> :sswitch_37
.end sparse-switch
.end method