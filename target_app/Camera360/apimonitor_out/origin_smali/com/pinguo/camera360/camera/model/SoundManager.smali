.class public final Lcom/pinguo/camera360/camera/model/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"


# static fields
.field public static final RINGER_MODE_NORMAL:I = 0x2

.field public static final RINGER_MODE_SILENT:I = 0x0

.field public static final RINGER_MODE_VIBERATE:I = 0x1

.field private static final SOUND_QUALITY:I = 0x64

.field private static final TAG:Ljava/lang/String;

.field private static sSoundManager:Lcom/pinguo/camera360/camera/model/SoundManager;


# instance fields
.field private curRingerMode:I

.field private focusSoundIndex:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mSoundPlayer:Landroid/media/SoundPool;

.field private prevRingerMode:I

.field private sysRingerMode:I

.field private timerSoundIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/camera/model/SoundManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/camera/model/SoundManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/camera/model/SoundManager;->getInnerRingerMode(I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->curRingerMode:I

    iget v0, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->curRingerMode:I

    iput v0, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->prevRingerMode:I

    iget v0, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->curRingerMode:I

    iput v0, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->sysRingerMode:I

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->mSoundPlayer:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->mSoundPlayer:Landroid/media/SoundPool;

    const v1, 0x7f060003

    invoke-virtual {v0, p1, v1, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->focusSoundIndex:I

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->mSoundPlayer:Landroid/media/SoundPool;

    const v1, 0x7f060006

    invoke-virtual {v0, p1, v1, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->timerSoundIndex:I

    return-void
.end method

.method private getInnerRingerMode(I)I
    .registers 3

    iget v0, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->curRingerMode:I

    packed-switch p1, :pswitch_data_c

    :goto_5
    return v0

    :pswitch_6
    const/4 v0, 0x2

    goto :goto_5

    :pswitch_8
    const/4 v0, 0x1

    goto :goto_5

    :pswitch_a
    const/4 v0, 0x0

    goto :goto_5

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_a
        :pswitch_8
        :pswitch_6
    .end packed-switch
.end method

.method public static declared-synchronized getSoundManager(Landroid/content/Context;)Lcom/pinguo/camera360/camera/model/SoundManager;
    .registers 7

    const-class v1, Lcom/pinguo/camera360/camera/model/SoundManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/pinguo/camera360/camera/model/SoundManager;->sSoundManager:Lcom/pinguo/camera360/camera/model/SoundManager;

    if-nez v0, :cond_e

    new-instance v0, Lcom/pinguo/camera360/camera/model/SoundManager;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/camera/model/SoundManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/pinguo/camera360/camera/model/SoundManager;->sSoundManager:Lcom/pinguo/camera360/camera/model/SoundManager;

    :cond_e
    sget-object v0, Lcom/pinguo/camera360/camera/model/SoundManager;->sSoundManager:Lcom/pinguo/camera360/camera/model/SoundManager;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/model/SoundManager;->mSoundPlayer:Landroid/media/SoundPool;

    if-nez v0, :cond_21

    sget-object v0, Lcom/pinguo/camera360/camera/model/SoundManager;->sSoundManager:Lcom/pinguo/camera360/camera/model/SoundManager;

    new-instance v2, Landroid/media/SoundPool;

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/16 v5, 0x64

    invoke-direct {v2, v3, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, v0, Lcom/pinguo/camera360/camera/model/SoundManager;->mSoundPlayer:Landroid/media/SoundPool;

    :cond_21
    sget-object v0, Lcom/pinguo/camera360/camera/model/SoundManager;->sSoundManager:Lcom/pinguo/camera360/camera/model/SoundManager;
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_25

    monitor-exit v1

    return-object v0

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSysRingerMode(I)I
    .registers 4

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    packed-switch p1, :pswitch_data_10

    :goto_9
    return v0

    :pswitch_a
    const/4 v0, 0x2

    goto :goto_9

    :pswitch_c
    const/4 v0, 0x1

    goto :goto_9

    :pswitch_e
    const/4 v0, 0x0

    goto :goto_9

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_e
        :pswitch_c
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public getPrevRingerMode()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->prevRingerMode:I

    return v0
.end method

.method public getRingerMode()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->curRingerMode:I

    return v0
.end method

.method public getSysRingerMode()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->sysRingerMode:I

    return v0
.end method

.method public playFocusSound()V
    .registers 8

    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->MI_SERIES_ADAPTER:Z

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->curRingerMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->mSoundPlayer:Landroid/media/SoundPool;

    iget v1, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->focusSoundIndex:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_16
    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->mSoundPlayer:Landroid/media/SoundPool;

    iget v1, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->focusSoundIndex:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_16
.end method

.method public playTimerSound()V
    .registers 8

    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    sget-object v0, Lcom/pinguo/camera360/camera/model/SoundManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "playTimerSound"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->MI_SERIES_ADAPTER:Z

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->curRingerMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->mSoundPlayer:Landroid/media/SoundPool;

    iget v1, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->timerSoundIndex:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->mSoundPlayer:Landroid/media/SoundPool;

    iget v1, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->timerSoundIndex:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_1e
.end method

.method public release()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->mSoundPlayer:Landroid/media/SoundPool;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->mSoundPlayer:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    iput-object v1, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->mSoundPlayer:Landroid/media/SoundPool;

    :cond_c
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_e
    sput-object v0, Lcom/pinguo/camera360/camera/model/SoundManager;->sSoundManager:Lcom/pinguo/camera360/camera/model/SoundManager;

    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_12

    throw v0
.end method

.method public restoreRingerMode()V
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->prevRingerMode:I

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/model/SoundManager;->setRingerMode(I)V

    return-void
.end method

.method public restoreSysRingerMode()V
    .registers 5

    sget-object v1, Lcom/pinguo/camera360/camera/model/SoundManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "restoreSysRingerMode sysRingerMode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->sysRingerMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->sysRingerMode:I

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/model/SoundManager;->setRingerMode(I)V

    return-void
.end method

.method public saveSysRingerMode()V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->sysRingerMode:I

    sget-object v0, Lcom/pinguo/camera360/camera/model/SoundManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "saveSysRingerMode sysRingerMode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->sysRingerMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRingerMode(I)V
    .registers 6

    iget v1, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->curRingerMode:I

    iput v1, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->prevRingerMode:I

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/model/SoundManager;->getSysRingerMode(I)I

    move-result v0

    sget-object v1, Lcom/pinguo/camera360/camera/model/SoundManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setRingerMode sysMode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/pinguo/camera360/adapter/GAdapter;->MI_SERIES_ADAPTER:Z

    if-eqz v1, :cond_2b

    if-eqz v0, :cond_28

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    :cond_28
    :goto_28
    iput p1, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->curRingerMode:I

    return-void

    :cond_2b
    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_28
.end method

.method public volumeAdjustment(Z)V
    .registers 6

    const/4 v3, 0x3

    const/4 v2, 0x1

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, v2, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_9
.end method
