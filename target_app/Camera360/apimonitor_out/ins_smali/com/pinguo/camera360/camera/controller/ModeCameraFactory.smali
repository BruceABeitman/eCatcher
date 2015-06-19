.class public Lcom/pinguo/camera360/camera/controller/ModeCameraFactory;
.super Ljava/lang/Object;
.source "ModeCameraFactory.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static create(Ljava/lang/String;Landroid/app/Activity;Lcom/pinguo/camera360/camera/model/ModeCameraModel;)Lcom/pinguo/camera360/camera/controller/ModeCameraController;
.registers 5
const/4 v0, 0x0
const-string/jumbo v1, "c205e3582b514d6fb5c21a953e1e901e"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_10
new-instance v0, Lcom/pinguo/camera360/camera/controller/EffectCamera;
invoke-direct {v0, p2}, Lcom/pinguo/camera360/camera/controller/EffectCamera;-><init>(Lcom/pinguo/camera360/camera/model/ModeCameraModel;)V
:goto_f
return-object v0
:cond_10
const-string/jumbo v1, "bc833a31761642e78dc09c16e4366dd8"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1f
new-instance v0, Lcom/pinguo/camera360/camera/controller/SkinCamera;
invoke-direct {v0, p1, p2}, Lcom/pinguo/camera360/camera/controller/SkinCamera;-><init>(Landroid/app/Activity;Lcom/pinguo/camera360/camera/model/ModeCameraModel;)V
goto :goto_f
:cond_1f
const-string/jumbo v1, "bb1b1f0e37114931914b579bdd1bbcf0"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2e
new-instance v0, Lcom/pinguo/camera360/camera/controller/SoundCamera;
invoke-direct {v0, p2}, Lcom/pinguo/camera360/camera/controller/SoundCamera;-><init>(Lcom/pinguo/camera360/camera/model/ModeCameraModel;)V
goto :goto_f
:cond_2e
const-string/jumbo v1, "b4c3e48bf1f643208cab154a43884324"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_3d
new-instance v0, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;
invoke-direct {v0, p2}, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;-><init>(Lcom/pinguo/camera360/camera/model/ModeCameraModel;)V
goto :goto_f
:cond_3d
const-string/jumbo v1, "81ca4395630a4d87a292d91c315b4ed3"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_4c
new-instance v0, Lcom/pinguo/camera360/camera/controller/ColorShiftCamera;
invoke-direct {v0, p2}, Lcom/pinguo/camera360/camera/controller/ColorShiftCamera;-><init>(Lcom/pinguo/camera360/camera/model/ModeCameraModel;)V
goto :goto_f
:cond_4c
const-string/jumbo v1, "9de2bb7862be4c5398421b71ad444c9e"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5b
new-instance v0, Lcom/pinguo/camera360/camera/controller/FunnyCamera;
invoke-direct {v0, p2}, Lcom/pinguo/camera360/camera/controller/FunnyCamera;-><init>(Lcom/pinguo/camera360/camera/model/ModeCameraModel;)V
goto :goto_f
:cond_5b
const-string/jumbo v1, "23382e49b7f64d5fb822aba5a29e927f"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_6a
new-instance v0, Lcom/pinguo/camera360/camera/controller/SceneCamera;
invoke-direct {v0, p2}, Lcom/pinguo/camera360/camera/controller/SceneCamera;-><init>(Lcom/pinguo/camera360/camera/model/ModeCameraModel;)V
goto :goto_f
:cond_6a
const-string/jumbo v1, "c0d064951ba5413391b702dcc44580f0"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_79
new-instance v0, Lcom/pinguo/camera360/camera/controller/EasyCamera;
invoke-direct {v0, p2}, Lcom/pinguo/camera360/camera/controller/EasyCamera;-><init>(Lcom/pinguo/camera360/camera/model/ModeCameraModel;)V
goto :goto_f
:cond_79
const-string/jumbo v1, "f4ab1ced32e2092c35bfa10cae9e836c"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_88
new-instance v0, Lcom/pinguo/camera360/camera/controller/QRCamera;
invoke-direct {v0, p2, p1}, Lcom/pinguo/camera360/camera/controller/QRCamera;-><init>(Lcom/pinguo/camera360/camera/model/ModeCameraModel;Landroid/app/Activity;)V
goto :goto_f
:cond_88
const-string/jumbo v1, "e46227d3cf94f4bbab8edb68d0c8d68e"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_98
new-instance v0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;
invoke-direct {v0, p2}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;-><init>(Lcom/pinguo/camera360/camera/model/ModeCameraModel;)V
goto/16 :goto_f
:cond_98
new-instance v0, Lcom/pinguo/camera360/camera/controller/QuickSnapCamera;
invoke-direct {v0, p2}, Lcom/pinguo/camera360/camera/controller/QuickSnapCamera;-><init>(Lcom/pinguo/camera360/camera/model/ModeCameraModel;)V
goto/16 :goto_f
.end method
.method public static isModeChanged(Ljava/lang/String;Lcom/pinguo/camera360/camera/controller/ModeCameraController;)Z
.registers 4
const/4 v0, 0x0
const-string/jumbo v1, "81ca4395630a4d87a292d91c315b4ed3"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_f
instance-of v1, p1, Lcom/pinguo/camera360/camera/controller/ColorShiftCamera;
if-eqz v1, :cond_1c
:cond_e
:goto_e
return v0
:cond_f
const-string/jumbo v1, "b4c3e48bf1f643208cab154a43884324"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1e
instance-of v1, p1, Lcom/pinguo/camera360/camera/controller/TiltShiftCamera;
if-nez v1, :cond_e
:cond_1c
const/4 v0, 0x1
goto :goto_e
:cond_1e
const-string/jumbo v1, "bb1b1f0e37114931914b579bdd1bbcf0"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2c
instance-of v1, p1, Lcom/pinguo/camera360/camera/controller/SoundCamera;
if-eqz v1, :cond_1c
goto :goto_e
:cond_2c
const-string/jumbo v1, "bc833a31761642e78dc09c16e4366dd8"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_3a
instance-of v1, p1, Lcom/pinguo/camera360/camera/controller/SkinCamera;
if-eqz v1, :cond_1c
goto :goto_e
:cond_3a
const-string/jumbo v1, "c205e3582b514d6fb5c21a953e1e901e"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_48
instance-of v1, p1, Lcom/pinguo/camera360/camera/controller/EffectCamera;
if-eqz v1, :cond_1c
goto :goto_e
:cond_48
const-string/jumbo v1, "23382e49b7f64d5fb822aba5a29e927f"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_56
instance-of v1, p1, Lcom/pinguo/camera360/camera/controller/SceneCamera;
if-eqz v1, :cond_1c
goto :goto_e
:cond_56
const-string/jumbo v1, "9de2bb7862be4c5398421b71ad444c9e"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_64
instance-of v1, p1, Lcom/pinguo/camera360/camera/controller/FunnyCamera;
if-eqz v1, :cond_1c
goto :goto_e
:cond_64
const-string/jumbo v1, "c0d064951ba5413391b702dcc44580f0"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_72
instance-of v1, p1, Lcom/pinguo/camera360/camera/controller/EasyCamera;
if-eqz v1, :cond_1c
goto :goto_e
:cond_72
const-string/jumbo v1, "e46227d3cf94f4bbab8edb68d0c8d68e"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_80
instance-of v1, p1, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;
if-eqz v1, :cond_1c
goto :goto_e
:cond_80
const-string/jumbo v1, "f4ab1ced32e2092c35bfa10cae9e836c"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_8e
instance-of v1, p1, Lcom/pinguo/camera360/camera/controller/QRCamera;
if-eqz v1, :cond_1c
goto :goto_e
:cond_8e
instance-of v1, p1, Lcom/pinguo/camera360/camera/controller/QuickSnapCamera;
if-eqz v1, :cond_1c
goto/16 :goto_e
.end method