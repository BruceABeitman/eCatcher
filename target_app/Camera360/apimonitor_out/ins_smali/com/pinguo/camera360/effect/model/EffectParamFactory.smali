.class public Lcom/pinguo/camera360/effect/model/EffectParamFactory;
.super Ljava/lang/Object;
.source "EffectParamFactory.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getSmartSubParamByContext(II)Ljava/lang/String;
.registers 3
const/4 v0, 0x0
packed-switch p0, :pswitch_data_42
:pswitch_4
:goto_4
return-object v0
:pswitch_5
packed-switch p1, :pswitch_data_4c
const-string/jumbo v0, "C360_EasyCamera_Other_PN"
goto :goto_4
:pswitch_c
const-string/jumbo v0, "C360_EasyCamera_Other_PN"
goto :goto_4
:pswitch_10
const-string/jumbo v0, "C360_EasyCamera_Other_PB"
goto :goto_4
:pswitch_14
const-string/jumbo v0, "C360_EasyCamera_Other_PL"
goto :goto_4
:pswitch_18
packed-switch p1, :pswitch_data_58
const-string/jumbo v0, "C360_EasyCamera_Other_SN"
goto :goto_4
:pswitch_1f
const-string/jumbo v0, "C360_EasyCamera_Other_SN"
goto :goto_4
:pswitch_23
const-string/jumbo v0, "C360_EasyCamera_Other_SB"
goto :goto_4
:pswitch_27
const-string/jumbo v0, "C360_EasyCamera_Other_SE"
goto :goto_4
:pswitch_2b
const-string/jumbo v0, "C360_EasyCamera_Other_SL"
goto :goto_4
:pswitch_2f
packed-switch p1, :pswitch_data_64
const-string/jumbo v0, "C360_EasyCamera_Other_PSN"
goto :goto_4
:pswitch_36
const-string/jumbo v0, "C360_EasyCamera_Other_PSN"
goto :goto_4
:pswitch_3a
const-string/jumbo v0, "C360_EasyCamera_Other_PSB"
goto :goto_4
:pswitch_3e
const-string/jumbo v0, "C360_EasyCamera_Other_PSL"
goto :goto_4
:pswitch_data_64
.packed-switch 0x0
:pswitch_36
:pswitch_3a
:pswitch_4
:pswitch_3e
.end packed-switch
:pswitch_data_4c
.packed-switch 0x0
:pswitch_c
:pswitch_10
:pswitch_4
:pswitch_14
.end packed-switch
:pswitch_data_58
.packed-switch 0x0
:pswitch_1f
:pswitch_23
:pswitch_27
:pswitch_2b
.end packed-switch
:pswitch_data_42
.packed-switch 0x0
:pswitch_5
:pswitch_18
:pswitch_2f
.end packed-switch
.end method