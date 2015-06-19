.class public Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;
.super Ljava/lang/Object;
.source "PhotoPageModel.java"
.field private static final AUTO_PLAY_SOUND_DELAY_MILLIS:I = 0x1f4
.field private static final MSG_AUTO_PLAY_SOUND:I = 0x3
.field private static final TAG:Ljava/lang/String;
.field private mActivity:Lcom/pinguo/camera360/base/BaseActivity;
.field private mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
.field private mPlayedSoundID:J
.field private mRecMicToMp3Proxyer:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/pinguo/camera360/base/BaseActivity;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->mPlayedSoundID:J
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
iput-object p1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->mActivity:Lcom/pinguo/camera360/base/BaseActivity;
return-void
.end method
.method public checkAndStopCurrPlayingSound()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->mRecMicToMp3Proxyer:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->mRecMicToMp3Proxyer:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->isPlaying()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->mRecMicToMp3Proxyer:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->stop()V
:cond_11
return-void
.end method
.method public isPlaying()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->mRecMicToMp3Proxyer:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->mRecMicToMp3Proxyer:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->isPlaying()Z
move-result v0
goto :goto_5
.end method
.method public onCreate()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
invoke-direct {v0}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->mRecMicToMp3Proxyer:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
const-string v1, " - Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->mRecMicToMp3Proxyer:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->mRecMicToMp3Proxyer:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->release()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->mRecMicToMp3Proxyer:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
:cond_c
const-string v1, " - Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public playCurrSound()Z
.registers 7
const/4 v2, 0x1
const/4 v1, 0x0
iget-object v3, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
if-nez v3, :cond_f
sget-object v2, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->TAG:Ljava/lang/String;
const-string/jumbo v3, " Current project is null , do not play sound ."
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_e
return v1
:cond_f
iget-object v3, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J
move-result-wide v3
iput-wide v3, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->mPlayedSoundID:J
iget-object v3, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->mRecMicToMp3Proxyer:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
iget-wide v4, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->mPlayedSoundID:J
invoke-virtual {v3, v4, v5}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->setTimestamp(J)V
iget-wide v3, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->mPlayedSoundID:J
invoke-static {v3, v4}, Lcom/pinguo/camera360/gallery/temps/SandBox;->getMp3Path(J)Ljava/lang/String;
move-result-object v0
new-instance v3, Ljava/io/File;
invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_4f
iget-object v3, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->mRecMicToMp3Proxyer:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
const/4 v4, 0x0
invoke-virtual {v3, v0, v2, v4}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->setAudioFile(Ljava/lang/String;ZLjava/lang/String;)V
:goto_35
if-nez v0, :cond_6e
sget-object v2, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, " no sound found : "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v4, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
:cond_4f
new-instance v3, Ljava/io/File;
iget-wide v4, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->mPlayedSoundID:J
invoke-static {v4, v5}, Lcom/pinguo/camera360/gallery/temps/SandBox;->getPcmPath(J)Ljava/lang/String;
move-result-object v0
invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_6c
iget-object v3, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->mRecMicToMp3Proxyer:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
iget-object v4, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v4}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getExif()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v0, v1, v4}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->setAudioFile(Ljava/lang/String;ZLjava/lang/String;)V
goto :goto_35
:cond_6c
const/4 v0, 0x0
goto :goto_35
:cond_6e
iget-object v1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->mRecMicToMp3Proxyer:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->play()V
sget-object v1, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, " --- ready play sound : "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
move v1, v2
goto :goto_e
.end method
.method public prepareSoundPhoto(Lcom/pinguo/camera360/photoedit/PictureInfo;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->mPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
return-void
.end method
.method public setListener(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$OnSoundPlayCompletedListener;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->mRecMicToMp3Proxyer:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->setOnPlayCompletedListener(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$OnSoundPlayCompletedListener;)V
return-void
.end method
.method public stopCurrSound()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->mRecMicToMp3Proxyer:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->stop()V
sget-object v0, Lcom/pinguo/camera360/gallery/mvc/PhotoPageModel;->TAG:Ljava/lang/String;
const-string/jumbo v1, " --- stop play sound "
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method