.class public Lcom/pinguo/camera360/camera/controller/ModeCameraModelFactory;
.super Ljava/lang/Object;
.source "ModeCameraModelFactory.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static changeMode(Ljava/lang/String;Lcom/pinguo/camera360/camera/model/ModeCameraModel;Landroid/content/Context;)Lcom/pinguo/camera360/camera/model/ModeCameraModel;
.registers 7
move-object v0, p1
const-string/jumbo v1, "Test"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Change mode:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "c205e3582b514d6fb5c21a953e1e901e"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_3b
instance-of v1, p1, Lcom/pinguo/camera360/camera/model/EffectCameraModel;
if-nez v1, :cond_33
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->destroyMode()V
new-instance v0, Lcom/pinguo/camera360/camera/model/EffectCameraModel;
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/camera/model/EffectCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->initMode()V
:goto_33
:cond_33
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1, p0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setCameraMode(Ljava/lang/String;)V
return-object v0
:cond_3b
const-string/jumbo v1, "bc833a31761642e78dc09c16e4366dd8"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_58
instance-of v1, p1, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;
if-nez v1, :cond_33
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->destroyMode()V
new-instance v0, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->initMode()V
goto :goto_33
:cond_58
const-string/jumbo v1, "bb1b1f0e37114931914b579bdd1bbcf0"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_75
instance-of v1, p1, Lcom/pinguo/camera360/camera/model/SoundCameraModel;
if-nez v1, :cond_33
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->destroyMode()V
new-instance v0, Lcom/pinguo/camera360/camera/model/SoundCameraModel;
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v1
invoke-direct {v0, v1, p2}, Lcom/pinguo/camera360/camera/model/SoundCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->initMode()V
goto :goto_33
:cond_75
const-string/jumbo v1, "b4c3e48bf1f643208cab154a43884324"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_92
instance-of v1, p1, Lcom/pinguo/camera360/camera/model/TiltShiftCameraModel;
if-nez v1, :cond_33
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->destroyMode()V
new-instance v0, Lcom/pinguo/camera360/camera/model/TiltShiftCameraModel;
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/camera/model/TiltShiftCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->initMode()V
goto :goto_33
:cond_92
const-string/jumbo v1, "81ca4395630a4d87a292d91c315b4ed3"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_af
instance-of v1, p1, Lcom/pinguo/camera360/camera/model/ColorShiftCameraModel;
if-nez v1, :cond_33
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->destroyMode()V
new-instance v0, Lcom/pinguo/camera360/camera/model/ColorShiftCameraModel;
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/camera/model/ColorShiftCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->initMode()V
goto :goto_33
:cond_af
const-string/jumbo v1, "9de2bb7862be4c5398421b71ad444c9e"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_cd
instance-of v1, p1, Lcom/pinguo/camera360/camera/model/FunnyCameraModel;
if-nez v1, :cond_33
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->destroyMode()V
new-instance v0, Lcom/pinguo/camera360/camera/model/FunnyCameraModel;
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/camera/model/FunnyCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->initMode()V
goto/16 :goto_33
:cond_cd
const-string/jumbo v1, "23382e49b7f64d5fb822aba5a29e927f"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_eb
instance-of v1, p1, Lcom/pinguo/camera360/camera/model/SceneCameraModel;
if-nez v1, :cond_33
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->destroyMode()V
new-instance v0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->initMode()V
goto/16 :goto_33
:cond_eb
const-string/jumbo v1, "c0d064951ba5413391b702dcc44580f0"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_109
instance-of v1, p1, Lcom/pinguo/camera360/camera/model/EasyCameraModel;
if-nez v1, :cond_33
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->destroyMode()V
new-instance v0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/camera/model/EasyCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->initMode()V
goto/16 :goto_33
:cond_109
const-string/jumbo v1, "f4ab1ced32e2092c35bfa10cae9e836c"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_127
instance-of v1, p1, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;
if-nez v1, :cond_33
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->destroyMode()V
new-instance v0, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->initMode()V
goto/16 :goto_33
:cond_127
const-string/jumbo v1, "e46227d3cf94f4bbab8edb68d0c8d68e"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_145
instance-of v1, p1, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;
if-nez v1, :cond_33
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->destroyMode()V
new-instance v0, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->initMode()V
goto/16 :goto_33
:cond_145
instance-of v1, p1, Lcom/pinguo/camera360/camera/model/QuickSnapCameraModel;
if-nez v1, :cond_33
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->destroyMode()V
new-instance v0, Lcom/pinguo/camera360/camera/model/QuickSnapCameraModel;
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/camera/model/QuickSnapCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->initMode()V
goto/16 :goto_33
.end method
.method public static create(Ljava/lang/String;Lcom/pinguo/camera360/camera/model/PGCameraBase;Landroid/content/Context;)Lcom/pinguo/camera360/camera/model/ModeCameraModel;
.registers 5
const/4 v0, 0x0
const-string/jumbo v1, "c205e3582b514d6fb5c21a953e1e901e"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1a
new-instance v0, Lcom/pinguo/camera360/camera/model/EffectCameraModel;
invoke-direct {v0, p1}, Lcom/pinguo/camera360/camera/model/EffectCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
:goto_f
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->initMode()V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v1
invoke-virtual {v1, p0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setCameraMode(Ljava/lang/String;)V
return-object v0
:cond_1a
const-string/jumbo v1, "bc833a31761642e78dc09c16e4366dd8"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_29
new-instance v0, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;
invoke-direct {v0, p1}, Lcom/pinguo/camera360/camera/model/SelfShootCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
goto :goto_f
:cond_29
const-string/jumbo v1, "bb1b1f0e37114931914b579bdd1bbcf0"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_38
new-instance v0, Lcom/pinguo/camera360/camera/model/SoundCameraModel;
invoke-direct {v0, p1, p2}, Lcom/pinguo/camera360/camera/model/SoundCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;Landroid/content/Context;)V
goto :goto_f
:cond_38
const-string/jumbo v1, "b4c3e48bf1f643208cab154a43884324"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_47
new-instance v0, Lcom/pinguo/camera360/camera/model/TiltShiftCameraModel;
invoke-direct {v0, p1}, Lcom/pinguo/camera360/camera/model/TiltShiftCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
goto :goto_f
:cond_47
const-string/jumbo v1, "81ca4395630a4d87a292d91c315b4ed3"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_56
new-instance v0, Lcom/pinguo/camera360/camera/model/ColorShiftCameraModel;
invoke-direct {v0, p1}, Lcom/pinguo/camera360/camera/model/ColorShiftCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
goto :goto_f
:cond_56
const-string/jumbo v1, "9de2bb7862be4c5398421b71ad444c9e"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_65
new-instance v0, Lcom/pinguo/camera360/camera/model/FunnyCameraModel;
invoke-direct {v0, p1}, Lcom/pinguo/camera360/camera/model/FunnyCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
goto :goto_f
:cond_65
const-string/jumbo v1, "23382e49b7f64d5fb822aba5a29e927f"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_74
new-instance v0, Lcom/pinguo/camera360/camera/model/SceneCameraModel;
invoke-direct {v0, p1}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
goto :goto_f
:cond_74
const-string/jumbo v1, "c0d064951ba5413391b702dcc44580f0"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_83
new-instance v0, Lcom/pinguo/camera360/camera/model/EasyCameraModel;
invoke-direct {v0, p1}, Lcom/pinguo/camera360/camera/model/EasyCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
goto :goto_f
:cond_83
const-string/jumbo v1, "f4ab1ced32e2092c35bfa10cae9e836c"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_93
new-instance v0, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;
invoke-direct {v0, p1}, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
goto/16 :goto_f
:cond_93
const-string/jumbo v1, "e46227d3cf94f4bbab8edb68d0c8d68e"
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_a3
new-instance v0, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;
invoke-direct {v0, p1}, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
goto/16 :goto_f
:cond_a3
new-instance v0, Lcom/pinguo/camera360/camera/model/QuickSnapCameraModel;
invoke-direct {v0, p1}, Lcom/pinguo/camera360/camera/model/QuickSnapCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
goto/16 :goto_f
.end method