.class public Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Other;
.super Ljava/lang/Object;
.source "UmengStatistics.java"
.field private static final CAMERA_BACK:Ljava/lang/String; = "back"
.field private static final CAMERA_FRONT:Ljava/lang/String; = "front"
.field private static final OTHER_10_1:Ljava/lang/String; = "other_10_1"
.field private static final OTHER_10_2:Ljava/lang/String; = "other_10_2"
.field private static final OTHER_10_3:Ljava/lang/String; = "other_10_3"
.field private static final OTHER_10_4:Ljava/lang/String; = "other_10_4"
.field private static final OTHER_10_5:Ljava/lang/String; = "other_10_5"
.field private static final OTHER_10_6:Ljava/lang/String; = "other_10_6"
.field private static final OTHER_10_7:Ljava/lang/String; = "other_10_7"
.field private static final UPDATE_BACK:Ljava/lang/String; = "update_back"
.field private static final UPDATE_CANCEL:Ljava/lang/String; = "update_cancel"
.field private static final UPDATE_LATER:Ljava/lang/String; = "update_later"
.field private static final UPDATE_NOW:Ljava/lang/String; = "update_now"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static otherBeetalkDownLoad()V
.registers 2
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "other_10_7"
invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V
const-string/jumbo v0, "other_10_7"
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static otherModeUsed(Ljava/lang/String;)V
.registers 3
const-string/jumbo v0, "c205e3582b514d6fb5c21a953e1e901e"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_c
const-string/jumbo p0, "CAMERA_MODE_EFFECT"
:cond_c
const-string/jumbo v0, "81ca4395630a4d87a292d91c315b4ed3"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_18
const-string/jumbo p0, "CAMERA_MODE_COLOR_SHIFT"
:cond_18
const-string/jumbo v0, "9de2bb7862be4c5398421b71ad444c9e"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_24
const-string/jumbo p0, "CAMERA_MODE_FUNNY"
:cond_24
const-string/jumbo v0, "23382e49b7f64d5fb822aba5a29e927f"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_30
const-string/jumbo p0, "CAMERA_MODE_SCENE"
:cond_30
const-string/jumbo v0, "bc833a31761642e78dc09c16e4366dd8"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3c
const-string/jumbo p0, "CAMERA_MODE_SKIN"
:cond_3c
const-string/jumbo v0, "c0d064951ba5413391b702dcc44580f0"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_48
const-string/jumbo p0, "CAMERA_MODE_SMART"
:cond_48
const-string/jumbo v0, "bb1b1f0e37114931914b579bdd1bbcf0"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_54
const-string/jumbo p0, "CAMERA_MODE_SOUND"
:cond_54
const-string/jumbo v0, "b4c3e48bf1f643208cab154a43884324"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_60
const-string/jumbo p0, "CAMERA_MODE_TILT_SHIFT"
:cond_60
const-string/jumbo v0, "f4ab1ced32e2092c35bfa10cae9e836c"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_6c
const-string/jumbo p0, "CAMERA_MODE_QR"
:cond_6c
const-string/jumbo v0, "5d5bf5c848d112287903b26d5f388eaa"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_78
const-string/jumbo p0, "CAMERA_MODE_VIDEO"
:cond_78
const-string/jumbo v0, "e46227d3cf94f4bbab8edb68d0c8d68e"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_84
const-string/jumbo p0, "CAMERA_MODE_ID_PHOTO"
:cond_84
const-string/jumbo v0, "7b3b6b04486f12d95690f533f5253a74"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_90
const-string/jumbo p0, "CAMERA_MODE_SONY"
:cond_90
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "other_10_3"
invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "other_10_3_"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method
.method public static otherNewUpdateClick(I)V
.registers 4
const-string/jumbo v0, ""
packed-switch p0, :pswitch_data_30
:goto_6
:pswitch_6
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "other_10_6"
invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "other_10_6_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:pswitch_24
const-string/jumbo v0, "update_item_now"
goto :goto_6
:pswitch_28
const-string/jumbo v0, "update_item_later"
goto :goto_6
:pswitch_2c
const-string/jumbo v0, "update_item_cancel"
goto :goto_6
:pswitch_data_30
.packed-switch 0x7f0a026b
:pswitch_24
:pswitch_6
:pswitch_6
:pswitch_28
:pswitch_2c
.end packed-switch
.end method
.method public static otherPictureTaken(Z)V
.registers 4
const-string/jumbo v0, ""
if-eqz p0, :cond_26
const-string/jumbo v0, "front"
:goto_8
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "other_10_2"
invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "other_10_2_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:cond_26
const-string/jumbo v0, "back"
goto :goto_8
.end method
.method public static otherUpdateClick(I)V
.registers 4
const-string/jumbo v0, ""
sparse-switch p0, :sswitch_data_34
:goto_6
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "other_10_4"
invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "other_10_4_"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
:sswitch_24
const-string/jumbo v0, "update_now"
goto :goto_6
:sswitch_28
const-string/jumbo v0, "update_later"
goto :goto_6
:sswitch_2c
const-string/jumbo v0, "update_cancel"
goto :goto_6
:sswitch_30
const-string/jumbo v0, "update_back"
goto :goto_6
:sswitch_data_34
.sparse-switch
0x0 -> :sswitch_30
0x7f0a026b -> :sswitch_24
0x7f0a026e -> :sswitch_28
0x7f0a026f -> :sswitch_2c
.end sparse-switch
.end method
.method public static otherUpdateShow()V
.registers 2
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "other_10_5"
invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V
const-string/jumbo v0, "other_10_5"
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V
return-void
.end method