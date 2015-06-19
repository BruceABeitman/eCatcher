.class public Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
.super Ljava/lang/Object;
.source "RecMicToMp3Proxyer.java"
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/pinguo/android/mp3recvoice/RecMicToMp3$IPcmPlayCompleteListener;
.field private static final AUDIO_FORMAT:I = 0x2
.field private static final DEFAULT_RATE:I = 0x5622
.field private static final DEF_CHANNEL:I = 0x4
.field private static PLAYER_COUNTER:I
.field public static final TAG:Ljava/lang/String;
.field private mAudioPath:Ljava/lang/String;
.field private mIsPlayMP3:Z
.field private mIsPlaying:Z
.field private mListener:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$OnSoundPlayCompletedListener;
.field private mPlayer:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
.field private mSoundInfo:Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
.field private mSoundPlayerRunner:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;
.field private mThreadPool:Ljava/util/concurrent/ExecutorService;
.field private mTimestamp:J
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->TAG:Ljava/lang/String;
const/4 v0, 0x0
sput v0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->PLAYER_COUNTER:I
return-void
.end method
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getInstance()Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mPlayer:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mIsPlaying:Z
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mAudioPath:Ljava/lang/String;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mIsPlayMP3:Z
const-wide/16 v0, 0x1
iput-wide v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mTimestamp:J
sget v0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->PLAYER_COUNTER:I
add-int/lit8 v0, v0, 0x1
sput v0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->PLAYER_COUNTER:I
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mIsPlayMP3:Z
return v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mIsPlaying:Z
return v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mAudioPath:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;)Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mPlayer:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;)Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mSoundInfo:Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;)Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$OnSoundPlayCompletedListener;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mListener:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$OnSoundPlayCompletedListener;
return-object v0
.end method
.method public static enableSpeaker(Landroid/app/Activity;)V
.registers 4
const/4 v2, 0x3
const-string/jumbo v1, "audio"
invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/media/AudioManager;
invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z
move-result v1
if-nez v1, :cond_1e
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V
invoke-virtual {p0, v2}, Landroid/app/Activity;->setVolumeControlStream(I)V
invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V
:cond_1e
return-void
.end method
.method private onPlayCompletion()V
.registers 4
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mIsPlaying:Z
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mListener:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$OnSoundPlayCompletedListener;
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$OnSoundPlayCompletedListener;->onPlayCompleted()V
sget-object v0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "onPlayCompleted : "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mAudioPath:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private playSoundInThreadPool(Ljava/lang/Runnable;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mThreadPool:Ljava/util/concurrent/ExecutorService;
if-nez v0, :cond_a
invoke-static {}, Lcom/pinguo/camera360/gallery/util/ThreadUtils;->newBackgroundSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mThreadPool:Ljava/util/concurrent/ExecutorService;
:cond_a
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mThreadPool:Ljava/util/concurrent/ExecutorService;
invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method protected finalize()V
.registers 1
invoke-super {p0}, Ljava/lang/Object;->finalize()V
invoke-static {p0}, Lcom/pinguo/lib/log/GLogger;->logFinalize(Ljava/lang/Object;)V
return-void
.end method
.method public isPlaying()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mIsPlaying:Z
return v0
.end method
.method public onCompletion(Landroid/media/MediaPlayer;)V
.registers 6
iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mSoundPlayerRunner:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;
#getter for: Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->isLoadingFile:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->access$2(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v1
invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v1
if-eqz v1, :cond_6b
iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mSoundPlayerRunner:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;
#getter for: Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->isInterrupted:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->access$3(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
sget-object v1, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "do not release in onCompletion : "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mAudioPath:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_2d
sget-object v1, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->TAG:Ljava/lang/String;
const-string/jumbo v2, " ** release mp3 player resource."
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/io/File;
iget-wide v1, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mTimestamp:J
invoke-static {v1, v2}, Lcom/pinguo/camera360/gallery/temps/SandBox;->getPcmPath(J)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
sget-object v1, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, " check pcm file : "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->onPlayCompletion()V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_6a
new-instance v1, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$1;
invoke-direct {v1, p0, v0}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$1;-><init>(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;Ljava/io/File;)V
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$1;->start()V
:cond_6a
return-void
:cond_6b
iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mPlayer:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
invoke-virtual {v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->releaseMp3PlayerResource()V
goto :goto_2d
.end method
.method public onPlayPcmAudioComplete()V
.registers 4
sget-object v0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, " ** release pcm res : "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mAudioPath:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mPlayer:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
invoke-virtual {v0}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->releasePcmPlayerResource()V
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->onPlayCompletion()V
return-void
.end method
.method public play()V
.registers 3
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mIsPlaying:Z
if-eqz v0, :cond_7
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->stop()V
:cond_7
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mIsPlaying:Z
new-instance v0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;-><init>(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mSoundPlayerRunner:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mSoundPlayerRunner:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;
iget-boolean v1, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mIsPlayMP3:Z
#setter for: Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->isMP3:Z
invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;->access$1(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;Z)V
sget-object v0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->TAG:Ljava/lang/String;
const-string/jumbo v1, "send start play commond. "
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mSoundPlayerRunner:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$SoundPlayerRunner;
invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->playSoundInThreadPool(Ljava/lang/Runnable;)V
return-void
.end method
.method public release()V
.registers 5
sget v1, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->PLAYER_COUNTER:I
add-int/lit8 v1, v1, -0x1
sput v1, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->PLAYER_COUNTER:I
iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mThreadPool:Ljava/util/concurrent/ExecutorService;
if-eqz v1, :cond_28
iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mThreadPool:Ljava/util/concurrent/ExecutorService;
invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
move-result-object v0
sget-object v1, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "** release , shutdonwNow : "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x0
iput-object v1, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mThreadPool:Ljava/util/concurrent/ExecutorService;
:cond_28
sget v1, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->PLAYER_COUNTER:I
if-nez v1, :cond_43
iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mPlayer:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
if-eqz v1, :cond_42
sget-object v1, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->TAG:Ljava/lang/String;
const-string/jumbo v2, " ** release all sound resource **"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mPlayer:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
invoke-virtual {v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->releaseMp3PlayerResource()V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mPlayer:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
invoke-virtual {v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->releasePcmPlayerResource()V
:goto_42
:cond_42
return-void
:cond_43
sget-object v1, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->TAG:Ljava/lang/String;
const-string/jumbo v2, " ** release cancelled, still have users! **"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_42
.end method
.method public setAudioFile(Ljava/lang/String;ZLjava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mAudioPath:Ljava/lang/String;
iput-boolean p2, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mIsPlayMP3:Z
invoke-static {p3}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->json2SoundInfo(Ljava/lang/String;)Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mSoundInfo:Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
return-void
.end method
.method public setOnPlayCompletedListener(Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$OnSoundPlayCompletedListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mListener:Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer$OnSoundPlayCompletedListener;
return-void
.end method
.method public setTimestamp(J)V
.registers 3
iput-wide p1, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mTimestamp:J
return-void
.end method
.method public stop()V
.registers 5
sget-object v1, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, " stop play , mIsPlayMP3 : "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-boolean v3, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mIsPlayMP3:Z
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ", mIsPlaying : "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-boolean v3, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mIsPlaying:Z
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v1, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mIsPlaying:Z
if-nez v1, :cond_29
:goto_28
return-void
:cond_29
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mIsPlaying:Z
iget-boolean v1, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mIsPlayMP3:Z
if-eqz v1, :cond_91
iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mPlayer:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
invoke-virtual {v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getMp3PlayerState()Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;
move-result-object v0
sget-object v1, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;->IDLE:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;
if-eq v0, v1, :cond_42
sget-object v1, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;->STOPPED:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;
if-eq v0, v1, :cond_42
sget-object v1, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;->END:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;
if-ne v0, v1, :cond_69
:cond_42
sget-object v1, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, " do not stop play , give it to mSoundPlayerRunner : "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mAudioPath:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ", state = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_64
const/4 v1, 0x0
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->onCompletion(Landroid/media/MediaPlayer;)V
goto :goto_28
:cond_69
iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mPlayer:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
invoke-virtual {v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->stopPlayMp3File()V
sget-object v1, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, " stop play : "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mAudioPath:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ", state = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_64
:cond_91
iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/RecMicToMp3Proxyer;->mPlayer:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
invoke-virtual {v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->stopPlayPcmFile()V
goto :goto_28
.end method