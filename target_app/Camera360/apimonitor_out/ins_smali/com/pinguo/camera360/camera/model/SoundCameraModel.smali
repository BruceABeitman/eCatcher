.class public Lcom/pinguo/camera360/camera/model/SoundCameraModel;
.super Lcom/pinguo/camera360/camera/model/ModeCameraModel;
.source "SoundCameraModel.java"
.field private static final RECORD_TIME:I = 0x5
.field private static SAMPLE_RATE:I
.field private static final TAG:Ljava/lang/String;
.field private mContext:Landroid/content/Context;
.field private micErrorDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
.field private recordSuccess:Z
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/camera/model/SoundCameraModel;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/camera/model/SoundCameraModel;->TAG:Ljava/lang/String;
const/16 v0, 0x5622
sput v0, Lcom/pinguo/camera360/camera/model/SoundCameraModel;->SAMPLE_RATE:I
return-void
.end method
.method public constructor <init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;Landroid/content/Context;)V
.registers 4
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;-><init>(Lcom/pinguo/camera360/camera/model/PGCameraBase;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/model/SoundCameraModel;->recordSuccess:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/camera/model/SoundCameraModel;->micErrorDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
iput-object p2, p0, Lcom/pinguo/camera360/camera/model/SoundCameraModel;->mContext:Landroid/content/Context;
return-void
.end method
.method private showErrorDialog()V
.registers 7
const/4 v4, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SoundCameraModel;->micErrorDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SoundCameraModel;->micErrorDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->isShowing()Z
move-result v0
if-nez v0, :cond_1b
:cond_d
iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SoundCameraModel;->mContext:Landroid/content/Context;
const v1, 0x7f080299
const v2, 0x7f080300
const/16 v3, -0x3e7
move-object v5, v4
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
:cond_1b
return-void
.end method
.method public canReplaceEffectAfterTaken()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public destroyMode()V
.registers 3
sget-object v0, Lcom/pinguo/camera360/camera/model/SoundCameraModel;->TAG:Ljava/lang/String;
const-string/jumbo v1, "destroyMode"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/camera/model/SoundCameraModel;->mContext:Landroid/content/Context;
invoke-static {}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getInstance()Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->stopRecording()V
return-void
.end method
.method public getCameraDescribe(Landroid/content/Context;)Ljava/lang/String;
.registers 3
const v0, 0x7f080335
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getCameraModeIndex()I
.registers 2
const/4 v0, 0x7
return v0
.end method
.method public initMode()V
.registers 4
sget-object v1, Lcom/pinguo/camera360/camera/model/SoundCameraModel;->TAG:Ljava/lang/String;
const-string/jumbo v2, "initMode"
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
sget-object v1, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;
iget-object v1, v1, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/model/SoundCameraModel;->setSubEffect(Ljava/lang/String;)V
:try_start_f
iget-boolean v1, p0, Lcom/pinguo/camera360/camera/model/SoundCameraModel;->recordSuccess:Z
if-nez v1, :cond_2a
sget-boolean v1, Lcom/pinguo/camera360/adapter/GAdapter;->RECORD_USE_8000:Z
if-eqz v1, :cond_2b
invoke-static {}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getInstance()Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v1
const/16 v2, 0x1f40
invoke-virtual {v1, v2}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->initSampleRate(I)I
:goto_20
invoke-static {}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getInstance()Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->startRecording()V
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/pinguo/camera360/camera/model/SoundCameraModel;->recordSuccess:Z
:cond_2a
:goto_2a
return-void
:cond_2b
sget-boolean v1, Lcom/pinguo/camera360/adapter/GAdapter;->RECORD_USE_44100:Z
if-eqz v1, :cond_47
invoke-static {}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getInstance()Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v1
const v2, 0xac44
invoke-virtual {v1, v2}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->initSampleRate(I)I
:try_end_39
.catch Lcom/pinguo/android/exception/InitializeException; {:try_start_f .. :try_end_39} :catch_3a
goto :goto_20
:catch_3a
move-exception v0
sget-object v1, Lcom/pinguo/camera360/camera/model/SoundCameraModel;->TAG:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/pinguo/camera360/camera/model/SoundCameraModel;->recordSuccess:Z
invoke-direct {p0}, Lcom/pinguo/camera360/camera/model/SoundCameraModel;->showErrorDialog()V
goto :goto_2a
:try_start_47
:cond_47
sget-boolean v1, Lcom/pinguo/camera360/adapter/GAdapter;->RECORD_USE_11025:Z
if-eqz v1, :cond_55
invoke-static {}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getInstance()Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v1
const/16 v2, 0x2b11
invoke-virtual {v1, v2}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->initSampleRate(I)I
goto :goto_20
:cond_55
invoke-static {}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getInstance()Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v1
const/16 v2, 0x5622
invoke-virtual {v1, v2}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->initSampleRate(I)I
:try_end_5e
.catch Lcom/pinguo/android/exception/InitializeException; {:try_start_47 .. :try_end_5e} :catch_3a
goto :goto_20
.end method
.method public makePictureInfo([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)Lcom/pinguo/camera360/photoedit/PictureInfo;
.registers 13
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
new-instance v4, Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-direct {v4}, Lcom/pinguo/camera360/photoedit/PictureInfo;-><init>()V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/SoundCameraModel;->getCameraModeIndex()I
move-result v5
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setCameraModeIndex(I)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
invoke-virtual {v4, v5, v6}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setTakenTime(J)V
const/4 v5, 0x2
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPictureType(I)V
invoke-virtual {v4, p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPicSize(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
invoke-virtual {v4, p3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setRotation(I)V
invoke-static {}, Lcom/pinguo/lib/UIContants;->getPreviewLength()I
move-result v5
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPreviewLength(I)V
const/4 v5, 0x1
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setMakeGPU(Z)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/model/SoundCameraModel;->getSubEffect()Ljava/lang/String;
move-result-object v1
invoke-virtual {v4, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectAlias(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getGpsState()Z
move-result v5
if-eqz v5, :cond_7d
invoke-static {}, Lcom/pinguo/lib/location/PGLocationManager;->getInstance()Lcom/pinguo/lib/location/PGLocationManager;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/lib/location/PGLocationManager;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;
move-result-object v2
if-eqz v2, :cond_7d
sget-object v5, Lcom/pinguo/camera360/camera/model/SoundCameraModel;->TAG:Ljava/lang/String;
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "location = "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Lcom/pinguo/lib/location/data/PGLocation;->getAddress()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, " /"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-static {v2}, Ldroidbox/com/pinguo/lib/location/data/PGLocation;->getLatitude(Lcom/pinguo/lib/location/data/PGLocation;)D
move-result-wide v7
invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, "/"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-static {v2}, Ldroidbox/com/pinguo/lib/location/data/PGLocation;->getLongitude(Lcom/pinguo/lib/location/data/PGLocation;)D
move-result-wide v7
invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v4, v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setLocation(Lcom/pinguo/lib/location/data/PGLocation;)V
:cond_7d
invoke-static {}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getInstance()Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v5
const/4 v6, 0x5
invoke-virtual {v5, v6}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getPcmAudioData(I)Ljava/util/List;
move-result-object v5
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setSoundData(Ljava/util/List;)V
return-object v4
.end method
.method public needShowPreview()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public pauseModel()V
.registers 2
invoke-super {p0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->pauseModel()V
invoke-static {}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getInstance()Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->stopRecording()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/model/SoundCameraModel;->recordSuccess:Z
return-void
.end method
.method public resumeModel()V
.registers 4
invoke-super {p0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->resumeModel()V
invoke-static {}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getInstance()Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->isRecording()Z
move-result v1
if-nez v1, :cond_28
:try_start_d
iget-boolean v1, p0, Lcom/pinguo/camera360/camera/model/SoundCameraModel;->recordSuccess:Z
if-nez v1, :cond_28
sget-boolean v1, Lcom/pinguo/camera360/adapter/GAdapter;->RECORD_USE_8000:Z
if-eqz v1, :cond_29
invoke-static {}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getInstance()Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v1
const/16 v2, 0x1f40
invoke-virtual {v1, v2}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->initSampleRate(I)I
:goto_1e
invoke-static {}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getInstance()Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->startRecording()V
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/pinguo/camera360/camera/model/SoundCameraModel;->recordSuccess:Z
:cond_28
:goto_28
return-void
:cond_29
sget-boolean v1, Lcom/pinguo/camera360/adapter/GAdapter;->RECORD_USE_44100:Z
if-eqz v1, :cond_45
invoke-static {}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getInstance()Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v1
const v2, 0xac44
invoke-virtual {v1, v2}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->initSampleRate(I)I
:try_end_37
.catch Lcom/pinguo/android/exception/InitializeException; {:try_start_d .. :try_end_37} :catch_38
goto :goto_1e
:catch_38
move-exception v0
sget-object v1, Lcom/pinguo/camera360/camera/model/SoundCameraModel;->TAG:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/pinguo/camera360/camera/model/SoundCameraModel;->recordSuccess:Z
invoke-direct {p0}, Lcom/pinguo/camera360/camera/model/SoundCameraModel;->showErrorDialog()V
goto :goto_28
:try_start_45
:cond_45
sget-boolean v1, Lcom/pinguo/camera360/adapter/GAdapter;->RECORD_USE_11025:Z
if-eqz v1, :cond_53
invoke-static {}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getInstance()Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v1
const/16 v2, 0x2b11
invoke-virtual {v1, v2}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->initSampleRate(I)I
goto :goto_1e
:cond_53
invoke-static {}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getInstance()Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v1
const/16 v2, 0x5622
invoke-virtual {v1, v2}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->initSampleRate(I)I
:try_end_5c
.catch Lcom/pinguo/android/exception/InitializeException; {:try_start_45 .. :try_end_5c} :catch_38
goto :goto_1e
.end method