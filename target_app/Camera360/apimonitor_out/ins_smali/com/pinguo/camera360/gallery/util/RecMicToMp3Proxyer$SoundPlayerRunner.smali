.class  Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;
.super Ljava/lang/Object;
.source "RecMicToMp3Proxyer.java"
.implements Ljava/lang/Runnable;
.field private isInterrupted:Ljava/util/concurrent/atomic/AtomicBoolean;
.field private isLoadingFile:Ljava/util/concurrent/atomic/AtomicBoolean;
.field private isMP3:Z
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
.method private constructor <init>(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;)V
.registers 4
const/4 v1, 0x0
iput-object p1, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->this$0:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->isMP3:Z
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->isInterrupted:Ljava/util/concurrent/atomic/AtomicBoolean;
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->isLoadingFile:Ljava/util/concurrent/atomic/AtomicBoolean;
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;-><init>(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;)V
return-void
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->isMP3:Z
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;)Ljava/util/concurrent/atomic/AtomicBoolean;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->isLoadingFile:Ljava/util/concurrent/atomic/AtomicBoolean;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;)Ljava/util/concurrent/atomic/AtomicBoolean;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->isInterrupted:Ljava/util/concurrent/atomic/AtomicBoolean;
return-object v0
.end method
.method public run()V
.registers 10
sget-object v0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, " start play , mIsPlayMP3 : "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->this$0:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
#getter for: Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mIsPlayMP3:Z
invoke-static {v2}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->access$0(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;)Z
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ", mIsPlaying : "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->this$0:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
#getter for: Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mIsPlaying:Z
invoke-static {v2}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->access$1(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;)Z
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ", file : "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->this$0:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
#getter for: Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mAudioPath:Ljava/lang/String;
invoke-static {v2}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->access$2(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->isLoadingFile:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->isMP3:Z
if-eqz v0, :cond_c8
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->this$0:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
#getter for: Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mPlayer:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->access$3(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;)Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->this$0:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
#getter for: Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mAudioPath:Ljava/lang/String;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->access$2(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->this$0:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
new-instance v3, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner$1;
invoke-direct {v3, p0}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner$1;-><init>(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;)V
invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->playMp3File(Ljava/lang/String;Landroid/media/MediaPlayer$OnCompletionListener;Landroid/media/MediaPlayer$OnErrorListener;)V
sget-object v0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "play MP3 cost : "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
sub-long/2addr v2, v6
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:goto_7b
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->isLoadingFile:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->isInterrupted:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
if-eqz v0, :cond_c7
sget-object v0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "stop & release in runner , is mp3 = "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-boolean v2, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->isMP3:Z
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " : "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->this$0:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
#getter for: Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mAudioPath:Ljava/lang/String;
invoke-static {v2}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->access$2(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->isMP3:Z
if-eqz v0, :cond_187
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->this$0:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
#getter for: Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mPlayer:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->access$3(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;)Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->stopPlayMp3File()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->this$0:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
#getter for: Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mPlayer:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->access$3(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;)Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->releaseMp3PlayerResource()V
:goto_c7
:cond_c7
return-void
:try_start_c8
:cond_c8
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->this$0:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
#getter for: Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mSoundInfo:Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->access$4(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;)Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
move-result-object v0
if-nez v0, :cond_12b
sget-object v0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "play with default parameters. cost : "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
sub-long/2addr v2, v6
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->this$0:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
#getter for: Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mPlayer:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->access$3(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;)Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->this$0:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
#getter for: Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mAudioPath:Ljava/lang/String;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->access$2(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;)Ljava/lang/String;
move-result-object v1
const/16 v2, 0x5622
const/4 v3, 0x4
const/4 v4, 0x2
iget-object v5, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->this$0:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->playPcmFile(Ljava/lang/String;IIILcom/pinguo/android/mp3recvoice/RecMicToMp3$IPcmPlayCompleteListener;)V
:try_end_ff
.catch Lcom/pinguo/android/exception/InitializeException; {:try_start_c8 .. :try_end_ff} :catch_101
goto/16 :goto_7b
:catch_101
move-exception v8
invoke-virtual {v8}, Lcom/pinguo/android/exception/InitializeException;->printStackTrace()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->this$0:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
#getter for: Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mListener:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$OnSoundPlayCompletedListener;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->access$5(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;)Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$OnSoundPlayCompletedListener;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$OnSoundPlayCompletedListener;->onPlayError()V
sget-object v0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "onPlayError : "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->this$0:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
#getter for: Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mAudioPath:Ljava/lang/String;
invoke-static {v2}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->access$2(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_7b
:try_start_12b
:cond_12b
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->this$0:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
#getter for: Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mPlayer:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->access$3(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;)Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->this$0:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
#getter for: Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mAudioPath:Ljava/lang/String;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->access$2(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->this$0:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
#getter for: Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mSoundInfo:Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
invoke-static {v2}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->access$4(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;)Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->getSampleRate()I
move-result v2
iget-object v3, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->this$0:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
#getter for: Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mSoundInfo:Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
invoke-static {v3}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->access$4(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;)Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->getChannel()I
move-result v3
iget-object v4, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->this$0:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
#getter for: Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mSoundInfo:Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
invoke-static {v4}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->access$4(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;)Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->getAudioFormat()I
move-result v4
iget-object v5, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->this$0:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->playPcmFile(Ljava/lang/String;IIILcom/pinguo/android/mp3recvoice/RecMicToMp3$IPcmPlayCompleteListener;)V
sget-object v0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "play complete with parameters from DB. cost : "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
sub-long/2addr v2, v6
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ", path : "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->this$0:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
#getter for: Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mAudioPath:Ljava/lang/String;
invoke-static {v2}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->access$2(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:try_end_185
.catch Lcom/pinguo/android/exception/InitializeException; {:try_start_12b .. :try_end_185} :catch_101
goto/16 :goto_7b
:cond_187
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->this$0:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
#getter for: Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mPlayer:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->access$3(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;)Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->stopPlayPcmFile()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->this$0:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
#getter for: Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mPlayer:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->access$3(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;)Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->releasePcmPlayerResource()V
goto/16 :goto_c7
.end method