.class public Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
.super Ljava/lang/Object;
.source "RecMicToMp3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;,
        Lcom/pinguo/android/mp3recvoice/RecMicToMp3$IPcmPlayCompleteListener;,
        Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;
    }
.end annotation


# static fields
.field private static final DEFAULT_AUDIO_FILENAME_FORMAT:Ljava/lang/String; = "\'AUDIO\'_yyyyMMdd_HHmmss"

.field private static final DEFAULT_AUDIO_FILE_DIRECTORY:Ljava/lang/String; = null

.field private static final DEFAULT_TIME_FOR_AUDIO_FILE:I = 0x5

.field public static final LEGAL_PARAMETERS:I = 0x1

.field private static final MAX_SECONDS_FOR_REC_AUDIO:I = 0xa

.field public static final SAMPLERATE_11025:I = 0x2b11

.field public static final SAMPLERATE_16000:I = 0x3e80

.field public static final SAMPLERATE_22050:I = 0x5622

.field public static final SAMPLERATE_44100:I = 0xac44

.field public static final SAMPLERATE_8000:I = 0x1f40

.field public static final SAMPLERATE_ERROR:I = 0x3

.field public static final SDCARD_NOT_AVAILABLE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "REC_MIC_TO_MP3"

.field private static mAudioFileTime:J = 0x0L

.field private static mAudioRecord:Landroid/media/AudioRecord; = null

.field private static final mAudioSource:I = 0x1

.field private static mDebug:Z

.field private static mInstance:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;

.field private static mSampleRates:[I

.field private static sIsEncodeMp3DataQuick:Z


# instance fields
.field private mAudioBufferList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[S>;"
        }
    .end annotation
.end field

.field private mAudioFormat:I

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mChannelConfig:I

.field private mIsCompleteChecking:Z

.field private mIsRecording:Z

.field private mIsStorageAvailable:Z

.field private mMp3PlayerState:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

.field private mPCMbuffer:[S

.field private mRecordingThread:Ljava/lang/Thread;

.field private mSampleRate:I

.field private mTimer:Ljava/util/Timer;

.field private mediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "mp3lame"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/AudioFiles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->DEFAULT_AUDIO_FILE_DIRECTORY:Ljava/lang/String;

    new-instance v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;

    invoke-direct {v0}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;-><init>()V

    sput-object v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mInstance:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mDebug:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->sIsEncodeMp3DataQuick:Z

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_3a

    sput-object v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mSampleRates:[I

    return-void

    :array_3a
    .array-data 0x4
        0x22t 0x56t 0x0t 0x0t
        0x44t 0xact 0x0t 0x0t
        0x80t 0x3et 0x0t 0x0t
        0x11t 0x2bt 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x5622

    iput v0, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mSampleRate:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mChannelConfig:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioFormat:I

    iput-boolean v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mIsRecording:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioBufferList:Ljava/util/LinkedList;

    iput-boolean v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mIsCompleteChecking:Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mTimer:Ljava/util/Timer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mRecordingThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mIsRecording:Z

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;Ljava/lang/Thread;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mRecordingThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$10(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mIsCompleteChecking:Z

    return v0
.end method

.method static synthetic access$11(Z)V
    .registers 1

    sput-boolean p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->sIsEncodeMp3DataQuick:Z

    return-void
.end method

.method static synthetic access$12()Z
    .registers 1

    sget-boolean v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->sIsEncodeMp3DataQuick:Z

    return v0
.end method

.method static synthetic access$2()Landroid/media/AudioRecord;
    .registers 1

    sget-object v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;)Ljava/util/LinkedList;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioBufferList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->closeAudio()V

    return-void
.end method

.method static synthetic access$6(J)V
    .registers 2

    sput-wide p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioFileTime:J

    return-void
.end method

.method static synthetic access$7(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mIsRecording:Z

    return v0
.end method

.method static synthetic access$8()J
    .registers 2

    sget-wide v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioFileTime:J

    return-wide v0
.end method

.method static synthetic access$9(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;)[S
    .registers 2

    iget-object v0, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mPCMbuffer:[S

    return-object v0
.end method

.method private byteArray2ShortArray([B)[S
    .registers 6

    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    new-array v1, v2, [S

    const/4 v0, 0x0

    :goto_6
    array-length v2, v1

    if-lt v0, v2, :cond_a

    return-object v1

    :cond_a
    mul-int/lit8 v2, v0, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private checkAudioFormatLegality(I)Z
    .registers 3

    const/4 v0, 0x2

    if-eq v0, p1, :cond_8

    const/4 v0, 0x3

    if-eq v0, p1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private checkChannelConfigLegality(I)Z
    .registers 3

    const/16 v0, 0x10

    if-eq v0, p1, :cond_a

    const/16 v0, 0xc

    if-eq v0, p1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private checkPcmFilePathLegality(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, ".pcm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_f
    const-string/jumbo v0, "encodePcmFileToMp3 :  filePath invalid !"

    invoke-direct {p0, v0}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x1

    goto :goto_16
.end method

.method private static checkSDCardIsAvailable()Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v1, 0x1

    move v0, v1

    :goto_11
    if-eqz v0, :cond_26

    if-eqz v1, :cond_26

    const/4 v3, 0x1

    :goto_16
    return v3

    :cond_17
    const-string/jumbo v3, "mounted_ro"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v0, 0x1

    const/4 v1, 0x0

    goto :goto_11

    :cond_23
    const/4 v1, 0x0

    move v0, v1

    goto :goto_11

    :cond_26
    const/4 v3, 0x0

    goto :goto_16
.end method

.method private checkSampleRateLegality(I)Z
    .registers 7

    const/4 v1, 0x0

    sget-object v3, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mSampleRates:[I

    array-length v4, v3

    move v2, v1

    :goto_5
    if-lt v2, v4, :cond_e

    const-string/jumbo v2, "encodePcmFileToMp3 :  sampleRate invalid !"

    invoke-direct {p0, v2}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    :goto_d
    return v1

    :cond_e
    aget v0, v3, v2

    if-ne v0, p1, :cond_14

    const/4 v1, 0x1

    goto :goto_d

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method private closeAudio()V
    .registers 4

    const-string/jumbo v1, "release audiorecord resource !"

    invoke-direct {p0, v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    sget-object v1, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    sget-object v1, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    sget-object v1, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_22

    :try_start_1d
    sget-object v1, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V
    :try_end_22
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_22} :catch_2f

    :cond_22
    :goto_22
    sget-object v1, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    const/4 v1, 0x0

    sput-object v1, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioRecord:Landroid/media/AudioRecord;

    goto :goto_a

    :catch_2f
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mAudioRecord.stop() error info: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    goto :goto_22
.end method

.method private static createName(J)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "\'AUDIO\'_yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private findAudioRecord()Landroid/media/AudioRecord;
    .registers 15

    const/4 v1, 0x2

    new-array v10, v1, [S

    fill-array-data v10, :array_a2

    array-length v11, v10

    const/4 v1, 0x0

    move v9, v1

    :goto_9
    if-lt v9, v11, :cond_d

    const/4 v0, 0x0

    :cond_c
    return-object v0

    :cond_d
    aget-short v3, v10, v9

    sget-object v12, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mSampleRates:[I

    array-length v13, v12

    const/4 v1, 0x0

    move v8, v1

    :goto_14
    if-lt v8, v13, :cond_1a

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_9

    :cond_1a
    aget v2, v12, v8

    :try_start_1c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Attempting rate "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "Hz, bits: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioFormat:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", channel: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    const/16 v1, 0x10

    if-ne v3, v1, :cond_77

    const/4 v6, 0x1

    :goto_4c
    mul-int/lit8 v1, v2, 0x1

    mul-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0x1

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mPCMbuffer:[S

    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    iget v4, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioFormat:I

    iget-object v5, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mPCMbuffer:[S

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput v2, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mSampleRate:I

    iput v3, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mChannelConfig:I

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_c

    if-eqz v0, :cond_73

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_72} :catch_79

    const/4 v0, 0x0

    :cond_73
    :goto_73
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_14

    :cond_77
    const/4 v6, 0x2

    goto :goto_4c

    :catch_79
    move-exception v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "Exception, keep trying."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    goto :goto_73

    nop

    :array_a2
    .array-data 0x2
        0x10t 0x0t
        0xct 0x0t
    .end array-data
.end method

.method public static getInstance()Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
    .registers 1

    sget-object v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mInstance:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;

    return-object v0
.end method

.method private static getMaxVolumeValue(Ljava/util/List;)S
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[S>;)S"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_9

    return v2

    :cond_9
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [S

    const/4 v1, 0x0

    :goto_10
    array-length v4, v3

    if-lt v1, v4, :cond_16

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_16
    aget-short v4, v3, v1

    if-le v4, v2, :cond_1c

    aget-short v2, v3, v1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method private initAudioRecord()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pinguo/android/exception/InitializeException;
        }
    .end annotation

    const/4 v7, 0x1

    sget-object v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_83

    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "First init AudioRecord:  rate "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mSampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Hz, bits: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mChannelConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    iget v0, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mSampleRate:I

    mul-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x1

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mPCMbuffer:[S

    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    iget v2, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mSampleRate:I

    iget v3, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mChannelConfig:I

    iget v4, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioFormat:I

    iget-object v5, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mPCMbuffer:[S

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    sput-object v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioRecord:Landroid/media/AudioRecord;

    sget-object v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eq v0, v7, :cond_69

    sget-object v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-direct {p0}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->findAudioRecord()Landroid/media/AudioRecord;

    move-result-object v0

    sput-object v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioRecord:Landroid/media/AudioRecord;

    :cond_69
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, " Initialization of the AudioRecord instance "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_93

    const-string/jumbo v0, " failed"

    :goto_78
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V
    :try_end_83
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_83} :catch_97

    :cond_83
    :goto_83
    sget-object v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_9f

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mIsRecording:Z

    new-instance v0, Lcom/pinguo/android/exception/InitializeException;

    const-string/jumbo v1, "Can\'t initialize the audioRecord instance,maybe be your device not support record audio"

    invoke-direct {v0, v1}, Lcom/pinguo/android/exception/InitializeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_93
    :try_start_93
    const-string/jumbo v0, "successful"
    :try_end_96
    .catch Ljava/lang/IllegalArgumentException; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_78

    :catch_97
    move-exception v6

    const-string/jumbo v0, "Invalid argument for init audioRecord !"

    invoke-direct {p0, v0}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    goto :goto_83

    :cond_9f
    return-void
.end method

.method private printLog(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mDebug:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "REC_MIC_TO_MP3"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method public static raisePcmVolume(Ljava/util/List;IF)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[S>;IF)",
            "Ljava/util/List",
            "<[S>;"
        }
    .end annotation

    if-eqz p0, :cond_f

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_f

    const v6, 0x46fffe00

    cmpl-float v6, p2, v6

    if-lez v6, :cond_10

    :cond_f
    :goto_f
    return-object p0

    :cond_10
    const/4 v6, 0x2

    if-ne p1, v6, :cond_f

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getMaxVolumeValue(Ljava/util/List;)S

    move-result v2

    int-to-float v6, v2

    cmpl-float v6, v6, p2

    if-gez v6, :cond_f

    int-to-float v6, v2

    div-float v4, v6, p2

    const/4 v0, 0x0

    :goto_25
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-lt v0, v6, :cond_2d

    move-object p0, v3

    goto :goto_f

    :cond_2d
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [S

    const/4 v1, 0x0

    :goto_34
    array-length v6, v5

    if-lt v1, v6, :cond_3d

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_3d
    aget-short v6, v5, v1

    int-to-float v6, v6

    div-float/2addr v6, v4

    float-to-int v6, v6

    int-to-short v6, v6

    aput-short v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_34
.end method

.method private static rangeInDefined([FFF)Z
    .registers 9

    const/4 v1, 0x0

    array-length v3, p0

    move v2, v1

    :goto_3
    if-lt v2, v3, :cond_7

    const/4 v1, 0x1

    :cond_6
    return v1

    :cond_7
    aget v0, p0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public static setDebugInfoOpen(Z)V
    .registers 1

    sput-boolean p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mDebug:Z

    return-void
.end method

.method private setMp3PlayerState(Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mMp3PlayerState:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    return-void
.end method

.method private static shortToBytes([S)[B
    .registers 5

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    if-lt v1, v2, :cond_a

    return-object v0

    :cond_a
    mul-int/lit8 v2, v1, 0x2

    aget-short v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-short v3, p0, v1

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method private storeMp3OrPcmDataToFile(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_c

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2b

    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->createName(J)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object p2, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->DEFAULT_AUDIO_FILE_DIRECTORY:Ljava/lang/String;

    move-object/from16 p3, v9

    :cond_2b
    invoke-static {}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->checkSDCardIsAvailable()Z

    move-result v13

    iput-boolean v13, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mIsStorageAvailable:Z

    iget-boolean v13, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mIsStorageAvailable:Z

    if-eqz v13, :cond_b8

    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_45

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_45
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    :try_start_4f
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_54
    .catch Ljava/io/FileNotFoundException; {:try_start_4f .. :try_end_54} :catch_90

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "Store Mp3 or pcm file directory= "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " FileName= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " dataSize = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_86
    if-lt v8, v11, :cond_9c

    :try_start_88
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_b3

    :goto_8b
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    :goto_8f
    return-object v13

    :catch_90
    move-exception v6

    const-string/jumbo v13, "create mp3 or pcm file outputStream failed when we want to keep the data to file"

    invoke-direct {p0, v13}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v13, 0x0

    goto :goto_8f

    :cond_9c
    if-eqz v10, :cond_ab

    :try_start_9e
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const/4 v13, 0x0

    array-length v14, v2

    invoke-virtual {v10, v2, v13, v14}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_ab} :catch_ae

    :cond_ab
    :goto_ab
    add-int/lit8 v8, v8, 0x1

    goto :goto_86

    :catch_ae
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ab

    :catch_b3
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8b

    :cond_b8
    const/4 v13, 0x0

    goto :goto_8f
.end method


# virtual methods
.method public FadeAtSec(Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;FF[SI)[S
    .registers 26

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v8, v0, [F

    const/16 v16, 0x0

    aput p2, v8, v16

    const/16 v16, 0x1

    aput p3, v8, v16

    const/16 v16, 0x0

    const/high16 v17, 0x3f80

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v8, v0, v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->rangeInDefined([FFF)Z

    move-result v10

    if-eqz v10, :cond_20

    cmpl-float v16, p2, p3

    if-lez v16, :cond_24

    :cond_20
    const/16 p2, 0x0

    const/high16 p3, 0x3f80

    :cond_24
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->checkSampleRateLegality(I)Z

    move-result v11

    if-nez v11, :cond_38

    const-string/jumbo v16, "FadeAtSec : sampleRate invalid, just return the raw data !"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    :cond_38
    const/4 v4, 0x2

    int-to-float v0, v4

    move/from16 v16, v0

    mul-float v16, v16, p2

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    const/high16 v17, 0x4000

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-long v14, v0

    int-to-float v0, v4

    move/from16 v16, v0

    mul-float v16, v16, p3

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    const/high16 v17, 0x4000

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-long v6, v0

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "fadeMode =  "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " startIndex= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " endIndex = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v16, v6, v16

    if-lez v16, :cond_ae

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    int-to-long v6, v0

    :cond_ae
    move-object/from16 v3, p4

    const-wide/high16 v12, 0x3ff0

    long-to-int v9, v14

    :goto_b3
    int-to-long v0, v9

    move-wide/from16 v16, v0

    cmp-long v16, v16, v6

    if-ltz v16, :cond_bb

    return-object v3

    :cond_bb
    sget-object v16, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;->FadeOut:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_f8

    int-to-long v0, v9

    move-wide/from16 v16, v0

    sub-long v16, v6, v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    sub-long v18, v6, v14

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v12, v16, v18

    :cond_d6
    :goto_d6
    const-wide/high16 v16, 0x3ff0

    cmpl-double v16, v12, v16

    if-lez v16, :cond_114

    const-wide/high16 v12, 0x3ff0

    :cond_de
    :goto_de
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v4, v0, :cond_f5

    aget-short v2, v3, v9

    int-to-double v0, v2

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-short v5, v0

    aput-short v5, v3, v9

    :cond_f5
    add-int/lit8 v9, v9, 0x1

    goto :goto_b3

    :cond_f8
    sget-object v16, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;->FadeIn:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$FadeMode;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_d6

    int-to-long v0, v9

    move-wide/from16 v16, v0

    sub-long v16, v16, v14

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    sub-long v18, v6, v14

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v12, v16, v18

    goto :goto_d6

    :cond_114
    const-wide/16 v16, 0x0

    cmpg-double v16, v12, v16

    if-gez v16, :cond_de

    const-wide/16 v12, 0x0

    goto :goto_de
.end method

.method public checkEncodeMp3Performance(J)V
    .registers 14

    const/4 v7, 0x1

    const v6, 0xac44

    const/16 v5, 0x20

    invoke-static {v6, v7, v6, v5}, Lcom/pinguo/android/lame/SimpleLame;->init(IIII)V

    :try_start_9
    const-class v5, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const-string/jumbo v6, "pingguo_test.pcm"

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const v5, 0x15888

    new-array v0, v5, [B

    const-wide v5, 0x40bc200000000000L

    array-length v7, v0

    int-to-double v7, v7

    const-wide/high16 v9, 0x3ff4

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-int v5, v5

    new-array v3, v5, [B

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mIsCompleteChecking:Z

    iget-object v5, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mTimer:Ljava/util/Timer;

    new-instance v6, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$2;

    invoke-direct {v6, p0}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$2;-><init>(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;)V

    invoke-virtual {v5, v6, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_36
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_44

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mIsCompleteChecking:Z

    invoke-static {}, Lcom/pinguo/android/lame/SimpleLame;->close()V

    :goto_43
    return-void

    :cond_44
    invoke-direct {p0, v0}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->byteArray2ShortArray([B)[S

    move-result-object v4

    const v5, 0xac44

    invoke-static {v4, v4, v5, v3}, Lcom/pinguo/android/lame/SimpleLame;->encode([S[SI[B)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_4e} :catch_4f

    goto :goto_36

    :catch_4f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_43
.end method

.method public encodePcmFileToMp3(Ljava/lang/String;III)Ljava/util/List;
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "encodePcmFileToMp3 pcmFileName =  "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " pcmSample = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " pcmChannel = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " pcmAudioForamt = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->checkPcmFilePathLegality(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->checkSampleRateLegality(I)Z

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->checkChannelConfigLegality(I)Z

    move-result v13

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->checkAudioFormatLegality(I)Z

    move-result v15

    if-eqz v14, :cond_6c

    if-eqz v16, :cond_6c

    if-eqz v13, :cond_6c

    if-nez v15, :cond_bb

    :cond_6c
    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "encodePcmFileToMp3 method: is_legal_of_filePath = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " is_legal_of_sample="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " is_legal_of_channel="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " is_legal_of_format= "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    const-string/jumbo v21, "encodePcmFileToMp3 method : parameter invalid !"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    const/16 v17, 0x0

    :cond_ba
    :goto_ba
    return-object v17

    :cond_bb
    new-instance v17, Ljava/util/LinkedList;

    invoke-direct/range {v17 .. v17}, Ljava/util/LinkedList;-><init>()V

    :try_start_c0
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v21, 0x2

    move/from16 v0, p4

    move/from16 v1, v21

    if-ne v0, v1, :cond_148

    const/16 v4, 0x10

    :goto_da
    const/16 v21, 0x20

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p2

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/pinguo/android/lame/SimpleLame;->init(IIII)V

    const/16 v21, 0x10

    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_14b

    const/4 v7, 0x1

    :goto_f0
    div-int/lit8 v21, v4, 0x8

    mul-int v21, v21, p2

    mul-int v21, v21, v7

    mul-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    new-array v5, v0, [B

    const-wide v21, 0x40bc200000000000L

    array-length v0, v5

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x3ff4

    mul-double v23, v23, v25

    add-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v18, v0

    :goto_11a
    invoke-virtual {v12, v5}, Ljava/io/InputStream;->read([B)I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_14d

    invoke-static/range {v18 .. v18}, Lcom/pinguo/android/lame/SimpleLame;->flush([B)I

    move-result v11

    if-lez v11, :cond_ba

    new-array v10, v11, [B

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v10, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_140} :catch_142

    goto/16 :goto_ba

    :catch_142
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_ba

    :cond_148
    const/16 v4, 0x8

    goto :goto_da

    :cond_14b
    const/4 v7, 0x2

    goto :goto_f0

    :cond_14d
    :try_start_14d
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->byteArray2ShortArray([B)[S

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    move/from16 v2, p2

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/pinguo/android/lame/SimpleLame;->encode([S[SI[B)I

    move-result v9

    new-array v6, v9, [B

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v6, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_173
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_173} :catch_142

    goto :goto_11a
.end method

.method public getMp3PlayerState()Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mMp3PlayerState:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    return-object v0
.end method

.method public getPcmAudioData(I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<[S>;"
        }
    .end annotation

    const/16 v3, 0xa

    if-gt p1, v3, :cond_7

    const/4 v3, 0x1

    if-ge p1, v3, :cond_8

    :cond_7
    const/4 p1, 0x5

    :cond_8
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    monitor-enter p0

    const/4 v0, 0x0

    :goto_f
    :try_start_f
    iget-object v3, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioBufferList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lt v0, v3, :cond_49

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_5d

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Audio data total size = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_48

    if-lt v2, p1, :cond_48

    sub-int v3, v2, p1

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedList;->subList(II)Ljava/util/List;

    move-result-object v1

    :cond_48
    return-object v1

    :cond_49
    :try_start_49
    iget-object v3, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioBufferList:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [S

    invoke-virtual {v3}, [S->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [S

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :catchall_5d
    move-exception v3

    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_49 .. :try_end_5f} :catchall_5d

    throw v3
.end method

.method public getTestResultsOfEncodeMp3()Z
    .registers 2

    sget-boolean v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->sIsEncodeMp3DataQuick:Z

    return v0
.end method

.method public getmAudioFormat()I
    .registers 2

    iget v0, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioFormat:I

    return v0
.end method

.method public getmChannelConfig()I
    .registers 2

    iget v0, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mChannelConfig:I

    return v0
.end method

.method public getmSampleRate()I
    .registers 2

    iget v0, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mSampleRate:I

    return v0
.end method

.method public declared-synchronized initSampleRate(I)I
    .registers 9

    monitor-enter p0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "init sampleReate = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mSampleRates:[I

    array-length v5, v4

    const/4 v3, 0x0

    :goto_1e
    if-lt v3, v5, :cond_31

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    const/4 v0, 0x3

    const/16 p1, 0x5622

    :cond_2d
    iput p1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mSampleRate:I
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_3d

    monitor-exit p0

    return v0

    :cond_31
    :try_start_31
    aget v2, v4, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_3d

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :catchall_3d
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public isRecording()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mIsRecording:Z

    return v0
.end method

.method public isSupportRecordingAudio(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.microphone"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public playMp3File(Ljava/lang/String;Landroid/media/MediaPlayer$OnCompletionListener;Landroid/media/MediaPlayer$OnErrorListener;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string/jumbo v1, ".mp3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    const-string/jumbo v1, "Play mp3 file !"

    invoke-direct {p0, v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    sget-object v1, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;->IDLE:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    invoke-direct {p0, v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->setMp3PlayerState(Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;)V

    :try_start_31
    iget-object v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    sget-object v1, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;->INITIALIZED:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    invoke-direct {p0, v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->setMp3PlayerState(Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;)V

    iget-object v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    sget-object v1, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;->PREPARED:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    invoke-direct {p0, v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->setMp3PlayerState(Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;)V

    iget-object v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    sget-object v1, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;->STARTED:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    invoke-direct {p0, v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->setMp3PlayerState(Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4f} :catch_50

    goto :goto_f

    :catch_50
    move-exception v0

    const-string/jumbo v1, "Play the mp3 file occurs exception!"

    invoke-direct {p0, v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public playPcmFile(Ljava/lang/String;IIILcom/pinguo/android/mp3recvoice/RecMicToMp3$IPcmPlayCompleteListener;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pinguo/android/exception/InitializeException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "playPcmFile pcmFilePath =  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " sampleRate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " channel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " audioFormat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_49

    const-string/jumbo v1, ".pcm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4a

    :cond_49
    :goto_49
    return-void

    :cond_4a
    move-object/from16 v13, p5

    const/16 v1, 0x10

    move/from16 v0, p3

    if-ne v0, v1, :cond_9e

    const/16 p3, 0x4

    :cond_54
    :goto_54
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    :try_start_5a
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5f
    .catch Ljava/io/FileNotFoundException; {:try_start_5a .. :try_end_5f} :catch_a7

    invoke-static/range {p2 .. p4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v9

    mul-int/lit8 v1, v9, 0x2

    new-array v8, v1, [B

    :try_start_67
    new-instance v1, Landroid/media/AudioTrack;

    const/4 v2, 0x3

    array-length v6, v8

    const/4 v7, 0x1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v1 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioTrack:Landroid/media/AudioTrack;
    :try_end_77
    .catch Ljava/lang/IllegalArgumentException; {:try_start_67 .. :try_end_77} :catch_b2

    iget-object v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioTrack:Landroid/media/AudioTrack;

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    iget-object v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    :goto_85
    :try_start_85
    invoke-virtual {v12, v8}, Ljava/io/FileInputStream;->read([B)I
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_c4

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_bc

    :goto_8c
    if-eqz v13, :cond_91

    invoke-interface {v13}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$IPcmPlayCompleteListener;->onPlayPcmAudioComplete()V

    :cond_91
    iget-object v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioTrack:Landroid/media/AudioTrack;

    goto :goto_49

    :cond_9e
    const/16 v1, 0xc

    move/from16 v0, p3

    if-ne v0, v1, :cond_54

    const/16 p3, 0xc

    goto :goto_54

    :catch_a7
    move-exception v10

    const-string/jumbo v1, "create the file failed when we want to play pcm file !"

    invoke-direct {p0, v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_49

    :catch_b2
    move-exception v10

    new-instance v1, Lcom/pinguo/android/exception/InitializeException;

    const-string/jumbo v2, "Can\'t initialize the AudioTrack instance,maybe be your parameters not right!"

    invoke-direct {v1, v2}, Lcom/pinguo/android/exception/InitializeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_bc
    :try_start_bc
    iget-object v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v2, 0x0

    array-length v3, v8

    invoke-virtual {v1, v8, v2, v3}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_c3} :catch_c4

    goto :goto_85

    :catch_c4
    move-exception v10

    const-string/jumbo v1, "AudioTrack"

    const-string/jumbo v2, "Playback Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c
.end method

.method public releaseMp3PlayerResource()V
    .registers 2

    const-string/jumbo v0, "release mp3 player resource !"

    invoke-direct {p0, v0}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    sget-object v0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;->END:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    invoke-direct {p0, v0}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->setMp3PlayerState(Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_17
    return-void
.end method

.method public releasePcmPlayerResource()V
    .registers 2

    const-string/jumbo v0, "Release pcm player resource !"

    invoke-direct {p0, v0}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioTrack:Landroid/media/AudioTrack;

    goto :goto_a
.end method

.method public releaseSingleInstanceResource()V
    .registers 3

    const/4 v1, 0x0

    const-string/jumbo v0, "Release singleInstance resource !"

    invoke-direct {p0, v0}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->closeAudio()V

    iput-object v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mediaPlayer:Landroid/media/MediaPlayer;

    iput-object v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioTrack:Landroid/media/AudioTrack;

    iput-object v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioBufferList:Ljava/util/LinkedList;

    sput-object v1, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mInstance:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;

    invoke-static {}, Lcom/pinguo/android/lame/SimpleLame;->close()V

    return-void
.end method

.method public declared-synchronized startRecording()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pinguo/android/exception/InitializeException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mIsRecording:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_30

    if-eqz v1, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mRecordingThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1d

    iget-boolean v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mIsRecording:Z
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_30

    if-nez v1, :cond_1d

    :try_start_f
    const-string/jumbo v1, "Need wait recording thread finish done!"

    invoke-direct {p0, v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_30
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_1a} :catch_33

    :goto_1a
    const/4 v1, 0x0

    :try_start_1b
    iput-object v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mRecordingThread:Ljava/lang/Thread;

    :cond_1d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mIsRecording:Z

    invoke-direct {p0}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->initAudioRecord()V

    new-instance v1, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$1;

    invoke-direct {v1, p0}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$1;-><init>(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;)V

    iput-object v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mRecordingThread:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_2f
    .catchall {:try_start_1b .. :try_end_2f} :catchall_30

    goto :goto_5

    :catchall_30
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_33
    move-exception v0

    :try_start_34
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_30

    goto :goto_1a
.end method

.method public stopPlayMp3File()V
    .registers 5

    const-string/jumbo v2, "Stop play mp3 !"

    invoke-direct {p0, v2}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2a

    invoke-virtual {p0}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getMp3PlayerState()Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    move-result-object v1

    sget-object v2, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;->STARTED:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    if-ne v1, v2, :cond_24

    :try_start_12
    iget-object v2, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    sget-object v2, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;->STOPPED:Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;

    invoke-direct {p0, v2}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->setMp3PlayerState(Lcom/pinguo/android/mp3recvoice/RecMicToMp3$Mp3PlayerState;)V
    :try_end_24
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_24} :catch_2b

    :cond_24
    :goto_24
    iget-object v2, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    :cond_2a
    return-void

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_24
.end method

.method public stopPlayPcmFile()V
    .registers 5

    const-string/jumbo v2, "Stop play pcm !"

    invoke-direct {p0, v2}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v2, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "AudioTrack state = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    :try_start_27
    iget-object v2, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->stop()V
    :try_end_30
    .catch Ljava/lang/IllegalStateException; {:try_start_27 .. :try_end_30} :catch_31

    goto :goto_a

    :catch_31
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "AudioTrack.stop() exception and state = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public stopRecording()V
    .registers 2

    const-string/jumbo v0, "Stop the audio recording !"

    invoke-direct {p0, v0}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mIsRecording:Z

    return-void
.end method

.method public storeMp3OrPcmDataToFile(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string/jumbo v1, ".mp3"

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->storeMp3OrPcmDataToFile(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public storePcmDataToFile(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[S>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string/jumbo v2, ".pcm"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_14

    invoke-direct {p0, v3, p2, p3, v2}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->storeMp3OrPcmDataToFile(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_14
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [S

    invoke-static {v4}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->shortToBytes([S)[B

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method
