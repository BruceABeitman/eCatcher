.class public Lcom/lifevibes/mediacoder/LVMediaCoderImpl;
.super Ljava/lang/Object;
.source "LVMediaCoderImpl.java"

# interfaces
.implements Lcom/lifevibes/mediacoder/LVMediaCoder;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final AAC_ADTS:Ljava/lang/String; = "audio/mp4a-latm"

.field private static final AUDIO_SAMPLE_SIZE:I = 0x2

.field public static final H264_AVC:Ljava/lang/String; = "video/avc"

.field private static final PCM_SIZE_MONO:I = 0x800

.field private static final PCM_SIZE_STEREO:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "LVMediaCoderImpl"

.field static isRunningOnICS:Z

.field static mAudioDSI:[B

.field static mVideoDSI:[B

.field private static outData:Ljava/nio/ByteBuffer;


# instance fields
.field private ain:Landroid/support/v8/renderscript/Allocation;

.field private ain2:Landroid/support/v8/renderscript/Allocation;

.field private ain3:Landroid/support/v8/renderscript/Allocation;

.field private ain4:Landroid/support/v8/renderscript/Allocation;

.field private aout:Landroid/support/v8/renderscript/Allocation;

.field private correctVideoBitRate:Z

.field private isAudioEncoderRunning:Z

.field private isEndOfStream:Z

.field private isRecordingSession:Z

.field private isStride512Aligned:Z

.field private isUVInterchanged:Z

.field private isUVStride2KAligned:Z

.field private isVideoEncoderRunning:Z

.field private isYUVStride2KAligned:Z

.field private mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mAudioEncoder:Landroid/media/MediaCodec;

.field private mAudioFormat:Landroid/media/MediaFormat;

.field private mAudioFrameDuration:I

.field private mAudioFrameNumber:I

.field private mAudioFramesRecorded:I

.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

.field private mContext:Landroid/content/Context;

.field private mICSAudioEncoder:Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;

.field private mICSVideoEncoder:Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;

.field private mICSVideoEncoderListener:Lcom/lifevibes/mediacoder/LVMediaCoder$LVMediaCoderICSEncoderProgressListener;

.field private mInputAudioBuffers:[Ljava/nio/ByteBuffer;

.field private mInputDataToRSFilter:[B

.field private mInputVideoBuffers:[Ljava/nio/ByteBuffer;

.field private mOutBuffer:Ljava/nio/ByteBuffer;

.field private mOutputAudioBuffers:[Ljava/nio/ByteBuffer;

.field private mOutputFilePath:Ljava/lang/String;

.field private mOutputFromRSFilter:[B

.field private mOutputH264Dump:Ljava/io/FileOutputStream;

.field private mOutputVideoBuffers:[Ljava/nio/ByteBuffer;

.field private mPCMFrameData:[B

.field private mRGBABufferSize:I

.field private mRGBBufferSize:I

.field private mRenderScript:Landroid/support/v8/renderscript/RenderScript;

.field private mRetrievedEncodedFrameCount:I

.field private mScript:Lcom/lifevibes/mediacoder/ScriptC_Filters;

.field private mSonyXperiaZ1_Height:I

.field private mSonyXperiaZ1_Width:I

.field private mSuppliedEncodedFrameCount:I

.field private mSupportedAudioCodecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedColorFormat:I

.field private mVideoDataInput:[B

.field private mVideoEncoder:Landroid/media/MediaCodec;

.field private mVideoFormat:Landroid/media/MediaFormat;

.field private mVideoFrameNumber:I

.field private mVideoFramesRecorded:I

.field private mWriterJNIContext:I

.field private mYUVBufferSize:I

.field private mYUVData:[B

.field private pullerFlagExit:Z

.field private run:Z

.field private skipExtraBytesAtStart:Z

.field private tempBuffer:[B

.field private tempBuffer1:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->run:Z

    iput-boolean v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->pullerFlagExit:Z

    iput v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoFrameNumber:I

    iput v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioFrameNumber:I

    if-nez p1, :cond_1c

    const-string v0, "[LVMediaCoderImpl] Context is NULL."

    invoke-static {v0, v1}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context is NULL."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    if-nez p2, :cond_2b

    const-string v0, "[LVMediaCoderImpl] Configuration is NULL."

    invoke-static {v0, v1}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Configuration is NULL."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    iput-object p2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    sget-boolean v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isRunningOnICS:Z

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    invoke-direct {p0, p1, v0}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->configure(Landroid/content/Context;Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;)V

    :cond_36
    return-void
.end method

.method static synthetic access$000(Lcom/lifevibes/mediacoder/LVMediaCoderImpl;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->pullerFlagExit:Z

    return v0
.end method

.method static synthetic access$100()Ljava/nio/ByteBuffer;
    .registers 1

    sget-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->outData:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$102(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 1

    sput-object p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->outData:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lifevibes/mediacoder/LVMediaCoderImpl;)Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;
    .registers 2

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mICSVideoEncoder:Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lifevibes/mediacoder/LVMediaCoderImpl;)I
    .registers 2

    iget v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRetrievedEncodedFrameCount:I

    return v0
.end method

.method static synthetic access$308(Lcom/lifevibes/mediacoder/LVMediaCoderImpl;)I
    .registers 3

    iget v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRetrievedEncodedFrameCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRetrievedEncodedFrameCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/lifevibes/mediacoder/LVMediaCoderImpl;)Lcom/lifevibes/mediacoder/LVMediaCoder$LVMediaCoderICSEncoderProgressListener;
    .registers 2

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mICSVideoEncoderListener:Lcom/lifevibes/mediacoder/LVMediaCoder$LVMediaCoderICSEncoderProgressListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lifevibes/mediacoder/LVMediaCoderImpl;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isEndOfStream:Z

    return v0
.end method

.method static synthetic access$600(Lcom/lifevibes/mediacoder/LVMediaCoderImpl;)I
    .registers 2

    iget v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSuppliedEncodedFrameCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/lifevibes/mediacoder/LVMediaCoderImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->cancelEncodingICS()V

    return-void
.end method

.method private cancelEncodingICS()V
    .registers 3

    iget-boolean v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isVideoEncoderRunning:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isAudioEncoderRunning:Z

    if-nez v0, :cond_10

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Encoder is not running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRetrievedEncodedFrameCount:I

    iput v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSuppliedEncodedFrameCount:I

    return-void
.end method

.method private checkAudioCodecs()V
    .registers 11

    const/4 v9, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSupportedAudioCodecs:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_9
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v7

    if-ge v2, v7, :cond_a8

    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LVMediaCoderImpl] Encoder "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v7

    if-nez v7, :cond_40

    :cond_3d
    :goto_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_40
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    array-length v4, v0

    const/4 v3, 0x0

    :goto_47
    if-ge v3, v4, :cond_3d

    aget-object v6, v0, v3

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "mp4a-latm"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a5

    iget-object v7, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSupportedAudioCodecs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LVMediaCoderImpl] Encoder "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " supports ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    goto :goto_3d

    :cond_a5
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    :cond_a8
    return-void
.end method

.method private checkDevice()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hammerhead"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_52

    :cond_22
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msm8974"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_52

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lg-d802"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    :cond_52
    iput-boolean v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->correctVideoBitRate:Z

    :cond_54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_79

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[LVMediaCoderImpl] Application is running on Android version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". No need of special color-conv filters."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    :cond_78
    :goto_78
    return-void

    :cond_79
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "asus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9b

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "flo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9b

    const-string v0, "[LVMediaCoderImpl] Application is running on ASUS on flo board!"

    invoke-static {v0, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isYUVStride2KAligned:Z

    goto :goto_78

    :cond_9b
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "motorola"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bd

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "msm8960"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bd

    const-string v0, "[LVMediaCoderImpl] Application is running on Motorola on msm8960 board!"

    invoke-static {v0, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isUVStride2KAligned:Z

    goto :goto_78

    :cond_bd
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "htc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_125

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "htc one"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_125

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apq8064"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f5

    const-string v0, "[LVMediaCoderImpl] Application is running on HTC One [APQ8064] with 2048 bit align stride!"

    invoke-static {v0, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isYUVStride2KAligned:Z

    goto :goto_78

    :cond_f5
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "m7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_108

    const-string v0, "[LVMediaCoderImpl] Application is running on HTC One [APQ8064T] with 2048 bit align stride!"

    invoke-static {v0, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isUVStride2KAligned:Z

    goto/16 :goto_78

    :cond_108
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "elite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11c

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "ville"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    :cond_11c
    const-string v0, "[LVMediaCoderImpl] Application is running on HTC One X/S with 2048 bit align stride!"

    invoke-static {v0, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isUVStride2KAligned:Z

    goto/16 :goto_78

    :cond_125
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sony"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_171

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "MSM8660_SURF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_159

    const-string v0, "[LVMediaCoderImpl] Application is running on SONY device with 2048 bit align stride!"

    invoke-static {v0, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isYUVStride2KAligned:Z

    :cond_146
    :goto_146
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "MSM8226"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    const-string v0, "[LVMediaCoderImpl] Application is running on SONY XPeria Z1 with bit rate correction!"

    invoke-static {v0, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->correctVideoBitRate:Z

    goto/16 :goto_78

    :cond_159
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msm8974"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_146

    const-string v0, "[LVMediaCoderImpl] Application is running on SONY XPeria Z1 with 512 bit align stride!"

    invoke-static {v0, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isStride512Aligned:Z

    goto :goto_146

    :cond_171
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d3

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "MAKO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_194

    const-string v0, "[LVMediaCoderImpl] Application is running on LGE Nexus 4 with 2048 bit aligned stride!"

    invoke-static {v0, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isYUVStride2KAligned:Z

    goto/16 :goto_78

    :cond_194
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lg-d802"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1ad

    const-string v0, "[LVMediaCoderImpl] Application is running on LGE G2 with 512 bit aligned stride!"

    invoke-static {v0, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isStride512Aligned:Z

    goto/16 :goto_78

    :cond_1ad
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "gee"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c0

    const-string v0, "[LVMediaCoderImpl] Application is running on LG device on gee board!"

    invoke-static {v0, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isUVStride2KAligned:Z

    goto/16 :goto_78

    :cond_1c0
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "u2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    const-string v0, "[LVMediaCoderImpl] Application is running on LG device that returns extra zeores with 1st encoded frame!"

    invoke-static {v0, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->skipExtraBytesAtStart:Z

    goto/16 :goto_78

    :cond_1d3
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_238

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "smdk4x12"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_212

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gt-i9300"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_212

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_212

    const-string v0, "[LVMediaCoderImpl] Application is running on Samsung smdk4x12 with UV-planes interchanged!"

    invoke-static {v0, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isUVInterchanged:Z

    goto/16 :goto_78

    :cond_212
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "msm8960"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_225

    const-string v0, "[LVMediaCoderImpl] Application is running on Samsung MSM8960 board!"

    invoke-static {v0, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isUVStride2KAligned:Z

    goto/16 :goto_78

    :cond_225
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "piranha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    const-string v0, "[LVMediaCoderImpl] Application is running on Samsung Piranha board!"

    invoke-static {v0, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->skipExtraBytesAtStart:Z

    goto/16 :goto_78

    :cond_238
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_261

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "y301a1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_261

    const-string v0, "[LVMediaCoderImpl] Application is running on Huawei device, which has UV planes interleaved!"

    invoke-static {v0, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isUVInterchanged:Z

    goto/16 :goto_78

    :cond_261
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msm8974"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_78

    const-string v0, "[LVMediaCoderImpl] Application is running on Qualcomm MSM8974!"

    invoke-static {v0, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isYUVStride2KAligned:Z

    goto/16 :goto_78
.end method

.method private configure(Landroid/content/Context;Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;)V
    .registers 6

    const-string v0, "[LVMediaCoderImpl] configure called!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v0, v0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoWidth:I

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v1, v1, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRGBBufferSize:I

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v0, v0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoWidth:I

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v1, v1, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRGBABufferSize:I

    iget v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRGBBufferSize:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVBufferSize:I

    invoke-direct {p0}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->checkDevice()V

    invoke-direct {p0}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->checkAudioCodecs()V

    const-string v0, "video/avc"

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v1, v1, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoWidth:I

    iget-object v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v2, v2, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoHeight:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoFormat:Landroid/media/MediaFormat;

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoFormat:Landroid/media/MediaFormat;

    const-string v1, "color-format"

    invoke-direct {p0}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->getColorFormat()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->correctVideoBitRate:Z

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoFormat:Landroid/media/MediaFormat;

    const-string v1, "bitrate"

    iget-object v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v2, v2, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoBitRate:I

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :goto_5a
    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoFormat:Landroid/media/MediaFormat;

    const-string v1, "frame-rate"

    iget-object v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v2, v2, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoFrameRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoFormat:Landroid/media/MediaFormat;

    const-string v1, "i-frame-interval"

    iget-object v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v2, v2, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoIFrameInterval:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoFormat:Landroid/media/MediaFormat;

    const-string v1, "aac-profile"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    iput-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioFormat:Landroid/media/MediaFormat;

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioFormat:Landroid/media/MediaFormat;

    const-string v1, "mime"

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioFormat:Landroid/media/MediaFormat;

    const-string v1, "bitrate"

    iget-object v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v2, v2, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioBitRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioFormat:Landroid/media/MediaFormat;

    const-string v1, "channel-count"

    iget-object v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v2, v2, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioChannelCount:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioFormat:Landroid/media/MediaFormat;

    const-string v1, "sample-rate"

    iget-object v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v2, v2, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioSampleRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioFormat:Landroid/media/MediaFormat;

    const-string v1, "aac-profile"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void

    :cond_b2
    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoFormat:Landroid/media/MediaFormat;

    const-string v1, "bitrate"

    iget-object v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v2, v2, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoBitRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_5a
.end method

.method private configureLVSFSession()V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v0, v0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoWidth:I

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v1, v1, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRGBBufferSize:I

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v0, v0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoWidth:I

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v1, v1, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRGBABufferSize:I

    iget v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRGBBufferSize:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVBufferSize:I

    const-string v0, "video/avc"

    invoke-static {v0}, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->create(Ljava/lang/String;)Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mICSVideoEncoder:Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mICSVideoEncoder:Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v1, v1, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoHeight:I

    iget-object v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v2, v2, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoWidth:I

    iget-object v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v3, v3, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoBitRate:I

    iget-object v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v4, v4, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoFrameRate:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->configure(IIII)V

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mICSVideoEncoder:Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;

    invoke-virtual {v0}, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->start()V

    iput-boolean v6, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isVideoEncoderRunning:Z

    iput v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRetrievedEncodedFrameCount:I

    iput v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSuppliedEncodedFrameCount:I

    const-string v0, "audio/mp4a-latm"

    invoke-static {v0}, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->create(Ljava/lang/String;)Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mICSAudioEncoder:Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mICSAudioEncoder:Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v1, v1, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioBitRate:I

    iget-object v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v2, v2, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioSampleRate:I

    iget-object v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v3, v3, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioChannelCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->configure(III)V

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mICSAudioEncoder:Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;

    invoke-virtual {v0}, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->start()V

    iput-boolean v6, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isAudioEncoderRunning:Z

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mICSAudioEncoder:Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;

    invoke-virtual {v0}, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->getDSI()V

    return-void
.end method

.method private configureSession()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LVMediaCoderImpl] \nBOARD = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nBOOTLOADER = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nBRAND = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nCPU_ABI = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nCPU_ABI2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nDEVICE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nAndroid Version = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nFINGERPRINT = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nHARDWARE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nHOST = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nMANUFACTURER = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nMODEL = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nPRODUCT = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nSERIAL = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nTAGS = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nTIME = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v5, Landroid/os/Build;->TIME:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nTYPE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nUNKNOWN = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "unknown"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nUSER = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\ngetRadioVersion() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v10}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->generateVideoDSI()V

    iget-object v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoEncoder:Landroid/media/MediaCodec;

    if-nez v4, :cond_13a

    const-string v4, "video/avc"

    invoke-static {v4}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoEncoder:Landroid/media/MediaCodec;

    iget-object v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoEncoder:Landroid/media/MediaCodec;

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoFormat:Landroid/media/MediaFormat;

    invoke-virtual {v4, v5, v7, v7, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    iget-object v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mInputVideoBuffers:[Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutputVideoBuffers:[Ljava/nio/ByteBuffer;

    iput-boolean v9, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isVideoEncoderRunning:Z

    :cond_13a
    iget-boolean v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isAudioEncoderRunning:Z

    if-eqz v4, :cond_142

    iget-object v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioEncoder:Landroid/media/MediaCodec;

    if-nez v4, :cond_16b

    :cond_142
    :try_start_142
    const-string v4, "audio/mp4a-latm"

    invoke-static {v4}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioEncoder:Landroid/media/MediaCodec;

    iget-object v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioEncoder:Landroid/media/MediaCodec;

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioFormat:Landroid/media/MediaFormat;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_154} :catch_221

    :cond_154
    :goto_154
    iget-object v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    iget-object v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mInputAudioBuffers:[Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutputAudioBuffers:[Ljava/nio/ByteBuffer;

    iput-boolean v9, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isAudioEncoderRunning:Z

    :cond_16b
    invoke-direct {p0}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->generateAudioDSI()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LVMediaCoderImpl] Session configuration_______________\n\t\t\t\t Is Recording ON:\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isRecordingSession:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\t\t\t\t Color Format:\t\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoFormat:Landroid/media/MediaFormat;

    const-string v6, "color-format"

    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\t\t\t\t Video Resolution:\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v5, v5, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v5, v5, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\t\t\t\t Video BitRate:\t\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoFormat:Landroid/media/MediaFormat;

    const-string v6, "bitrate"

    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\t\t\t\t Video Frame Rate:\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoFormat:Landroid/media/MediaFormat;

    const-string v6, "frame-rate"

    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\t\t\t\t Video I-Frame Int:\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoFormat:Landroid/media/MediaFormat;

    const-string v6, "i-frame-interval"

    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\t\t\t\t Audio Bit Rate:\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioFormat:Landroid/media/MediaFormat;

    const-string v6, "bitrate"

    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\t\t\t\t Audio Channels:\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioFormat:Landroid/media/MediaFormat;

    const-string v6, "channel-count"

    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\t\t\t\t Audio Sample Rate:\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioFormat:Landroid/media/MediaFormat;

    const-string v6, "sample-rate"

    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v10}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    return-void

    :catch_221
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LVMediaCoderImpl] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSupportedAudioCodecs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_242
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_154

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_24e
    iget-object v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioEncoder:Landroid/media/MediaCodec;

    if-eqz v4, :cond_257

    iget-object v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    :cond_257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LVMediaCoderImpl] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Trying to instantiate AudioEncoder with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioEncoder:Landroid/media/MediaCodec;

    iget-object v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioEncoder:Landroid/media/MediaCodec;

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioFormat:Landroid/media/MediaFormat;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_28c
    .catch Ljava/lang/Exception; {:try_start_24e .. :try_end_28c} :catch_28e

    goto/16 :goto_154

    :catch_28e
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LVMediaCoderImpl] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSupportedAudioCodecs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSupportedAudioCodecs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_242

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LVMediaCoderImpl] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", AudioEncoder creation failed with available audio codecs on the device. Try with different audio parameters."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "AudioEncoder creation failed with available audio codecs on the device. Try with different audio parameters."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private convertICSRGBToYUV(Ljava/nio/ByteBuffer;I)[B
    .registers 7

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v0, v0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoWidth:I

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v1, v1, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRGBBufferSize:I

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v0, v0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoWidth:I

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v1, v1, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRGBABufferSize:I

    iget v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRGBBufferSize:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVBufferSize:I

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    if-nez v0, :cond_2c

    if-nez p2, :cond_54

    iget v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRGBBufferSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    :cond_2c
    :goto_2c
    iget v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRGBBufferSize:I

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVData:[B

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    sget-boolean v0, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->DUMPS:Z

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    invoke-static {v0}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->dumpInputVideoData([B)V

    :cond_42
    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVData:[B

    iget-object v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v2, v2, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoWidth:I

    iget-object v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v3, v3, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoHeight:I

    invoke-static {v0, v1, v2, v3, p2}, Lcom/lifevibes/mediacoder/LVMediaCoderWriterJNI;->RGB888toYUV420WithPlanar([B[BIII)C

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVData:[B

    return-object v0

    :cond_54
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2c

    iget v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRGBABufferSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    goto :goto_2c
.end method

.method private convertRGBToYUV(Ljava/nio/ByteBuffer;I)[B
    .registers 12

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    if-nez v0, :cond_d

    if-nez p2, :cond_6f

    iget v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRGBBufferSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    sget-boolean v0, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->DUMPS:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    invoke-static {v0}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->dumpInputVideoData([B)V

    :cond_1b
    iget-boolean v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isStride512Aligned:Z

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVData:[B

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v0, v0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoWidth:I

    rem-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v0, v0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoWidth:I

    div-int/lit16 v0, v0, 0x80

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSonyXperiaZ1_Width:I

    :goto_37
    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v0, v0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoHeight:I

    rem-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v0, v0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoHeight:I

    div-int/lit8 v0, v0, 0x20

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSonyXperiaZ1_Height:I

    :goto_4b
    iget v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSonyXperiaZ1_Width:I

    iget v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSonyXperiaZ1_Height:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVData:[B

    :cond_58
    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVData:[B

    iget v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSonyXperiaZ1_Width:I

    iget v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSonyXperiaZ1_Height:I

    iget-object v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v4, v4, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoWidth:I

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v5, v5, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoHeight:I

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/lifevibes/mediacoder/LVMediaCoderWriterJNI;->RGB888toYUV420WithStride512Aligned([B[BIIIII)C

    :goto_6c
    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVData:[B

    return-object v0

    :cond_6f
    const/4 v0, 0x1

    if-ne p2, v0, :cond_d

    iget v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRGBABufferSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    goto :goto_d

    :cond_79
    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v0, v0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoWidth:I

    iput v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSonyXperiaZ1_Width:I

    goto :goto_37

    :cond_80
    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v0, v0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoHeight:I

    iput v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSonyXperiaZ1_Height:I

    goto :goto_4b

    :cond_87
    iget-boolean v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isYUVStride2KAligned:Z

    if-eqz v0, :cond_c7

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVData:[B

    if-nez v0, :cond_b7

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v0, v0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoWidth:I

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v1, v1, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoHeight:I

    mul-int/2addr v0, v1

    rem-int/lit16 v8, v0, 0x800

    if-lez v8, :cond_9e

    rsub-int v8, v8, 0x800

    :cond_9e
    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v0, v0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoWidth:I

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v1, v1, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoHeight:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    rem-int/lit16 v7, v0, 0x800

    if-lez v7, :cond_b0

    rsub-int v0, v7, 0x800

    add-int/2addr v8, v0

    :cond_b0
    iget v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVBufferSize:I

    add-int/2addr v0, v8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVData:[B

    :cond_b7
    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVData:[B

    iget-object v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v2, v2, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoWidth:I

    iget-object v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v3, v3, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoHeight:I

    invoke-static {v0, v1, v2, v3, p2}, Lcom/lifevibes/mediacoder/LVMediaCoderWriterJNI;->RGB888toYUV420WithSemiPlanar([B[BIII)C

    goto :goto_6c

    :cond_c7
    iget-boolean v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isUVStride2KAligned:Z

    if-eqz v0, :cond_111

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVData:[B

    if-nez v0, :cond_fb

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v0, v0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoWidth:I

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v1, v1, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoHeight:I

    mul-int/2addr v0, v1

    rem-int/lit16 v8, v0, 0x800

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[LVMediaCoderImpl] Calling HTCOne stride:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    if-lez v8, :cond_f4

    rsub-int v8, v8, 0x800

    :cond_f4
    iget v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVBufferSize:I

    add-int/2addr v0, v8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVData:[B

    :cond_fb
    const-string v0, "[LVMediaCoderImpl] Calling HTCOne filter...."

    invoke-static {v0, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVData:[B

    iget-object v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v2, v2, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoWidth:I

    iget-object v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v3, v3, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoHeight:I

    invoke-static {v0, v1, v2, v3, p2}, Lcom/lifevibes/mediacoder/LVMediaCoderWriterJNI;->RGB888toYUV420WithUVStride2KAligned([B[BIII)C

    goto/16 :goto_6c

    :cond_111
    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVData:[B

    if-nez v0, :cond_11b

    iget v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVBufferSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVData:[B

    :cond_11b
    iget v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSupportedColorFormat:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_132

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVData:[B

    iget-object v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v2, v2, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoWidth:I

    iget-object v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v3, v3, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoHeight:I

    invoke-static {v0, v1, v2, v3, p2}, Lcom/lifevibes/mediacoder/LVMediaCoderWriterJNI;->RGB888toYUV420WithPlanar([B[BIII)C

    goto/16 :goto_6c

    :cond_132
    iget-boolean v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isUVInterchanged:Z

    if-eqz v0, :cond_147

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVData:[B

    iget-object v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v2, v2, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoWidth:I

    iget-object v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v3, v3, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoHeight:I

    invoke-static {v0, v1, v2, v3, p2}, Lcom/lifevibes/mediacoder/LVMediaCoderWriterJNI;->RGB888toYUV420WithUVInterchanged([B[BIII)C

    goto/16 :goto_6c

    :cond_147
    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVData:[B

    iget-object v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v2, v2, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoWidth:I

    iget-object v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v3, v3, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoHeight:I

    invoke-static {v0, v1, v2, v3, p2}, Lcom/lifevibes/mediacoder/LVMediaCoderWriterJNI;->RGB888toYUV420WithSemiPlanar([B[BIII)C

    goto/16 :goto_6c
.end method

.method private convertRGBToYUVinRS(Ljava/nio/ByteBuffer;I)[B
    .registers 15

    const v11, 0x70800

    const v10, 0x38400

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    if-nez v5, :cond_13

    if-nez p2, :cond_6f

    iget v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRGBBufferSize:I

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    :cond_13
    :goto_13
    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    sget-boolean v5, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->DUMPS:Z

    if-eqz v5, :cond_21

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    invoke-static {v5}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->dumpInputVideoData([B)V

    :cond_21
    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVData:[B

    if-nez v5, :cond_30

    iget-boolean v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isStride512Aligned:Z

    if-eqz v5, :cond_79

    const v5, 0x5a000

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVData:[B

    :cond_30
    :goto_30
    if-nez p2, :cond_80

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mInputDataToRSFilter:[B

    if-nez v5, :cond_43

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    array-length v5, v5

    iget-object v6, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    array-length v6, v6

    div-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mInputDataToRSFilter:[B

    :cond_43
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_45
    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    array-length v5, v5

    if-ge v1, v5, :cond_8f

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mInputDataToRSFilter:[B

    iget-object v6, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    aget-byte v6, v6, v1

    aput-byte v6, v5, v2

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mInputDataToRSFilter:[B

    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    add-int/lit8 v8, v1, 0x1

    aget-byte v7, v7, v8

    aput-byte v7, v5, v6

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mInputDataToRSFilter:[B

    add-int/lit8 v6, v2, 0x2

    iget-object v7, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    add-int/lit8 v8, v1, 0x2

    aget-byte v7, v7, v8

    aput-byte v7, v5, v6

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, v2, 0x4

    goto :goto_45

    :cond_6f
    const/4 v5, 0x1

    if-ne p2, v5, :cond_13

    iget v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRGBABufferSize:I

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    goto :goto_13

    :cond_79
    iget v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVBufferSize:I

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVData:[B

    goto :goto_30

    :cond_80
    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mInputDataToRSFilter:[B

    if-nez v5, :cond_8b

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    array-length v5, v5

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mInputDataToRSFilter:[B

    :cond_8b
    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    iput-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mInputDataToRSFilter:[B

    :cond_8f
    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutputFromRSFilter:[B

    if-nez v5, :cond_9a

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mInputDataToRSFilter:[B

    array-length v5, v5

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutputFromRSFilter:[B

    :cond_9a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->ain:Landroid/support/v8/renderscript/Allocation;

    if-eqz v5, :cond_a6

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->aout:Landroid/support/v8/renderscript/Allocation;

    if-nez v5, :cond_111

    :cond_a6
    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v5}, Landroid/support/v8/renderscript/Element;->RGB_888(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    iget-object v6, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mInputDataToRSFilter:[B

    array-length v6, v6

    div-int/lit8 v6, v6, 0x4

    invoke-static {v5, v0, v6}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    iput-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->ain:Landroid/support/v8/renderscript/Allocation;

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    iget-object v6, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v6}, Landroid/support/v8/renderscript/Element;->U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v6

    iget-object v7, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    array-length v7, v7

    invoke-static {v5, v6, v7}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    iput-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->ain2:Landroid/support/v8/renderscript/Allocation;

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    iget-object v6, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v6}, Landroid/support/v8/renderscript/Element;->U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v6

    iget-object v7, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    array-length v7, v7

    invoke-static {v5, v6, v7}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    iput-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->ain3:Landroid/support/v8/renderscript/Allocation;

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    iget-object v6, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v6}, Landroid/support/v8/renderscript/Element;->U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v6

    invoke-static {v5, v6, v11}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    iput-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->ain4:Landroid/support/v8/renderscript/Allocation;

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRenderScript:Landroid/support/v8/renderscript/RenderScript;

    iget-object v6, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mInputDataToRSFilter:[B

    array-length v6, v6

    div-int/lit8 v6, v6, 0x4

    invoke-static {v5, v0, v6}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    iput-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->aout:Landroid/support/v8/renderscript/Allocation;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LVMediaCoderImpl] Time taken for setting up RS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    :cond_111
    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->tempBuffer:[B

    if-nez v5, :cond_120

    const v5, 0xa8c00

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->tempBuffer:[B

    new-array v5, v11, [B

    iput-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->tempBuffer1:[B

    :cond_120
    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->ain2:Landroid/support/v8/renderscript/Allocation;

    iget-object v6, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDataInput:[B

    invoke-virtual {v5, v6}, Landroid/support/v8/renderscript/Allocation;->copyFrom([B)V

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mScript:Lcom/lifevibes/mediacoder/ScriptC_Filters;

    iget-object v6, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->ain2:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/lifevibes/mediacoder/ScriptC_Filters;->set_input(Landroid/support/v8/renderscript/Allocation;)V

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mScript:Lcom/lifevibes/mediacoder/ScriptC_Filters;

    iget-object v6, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->ain:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/lifevibes/mediacoder/ScriptC_Filters;->forEach_RGB888YUV444(Landroid/support/v8/renderscript/Allocation;)V

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mScript:Lcom/lifevibes/mediacoder/ScriptC_Filters;

    iget-object v6, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->ain3:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/lifevibes/mediacoder/ScriptC_Filters;->set_output(Landroid/support/v8/renderscript/Allocation;)V

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mScript:Lcom/lifevibes/mediacoder/ScriptC_Filters;

    iget-object v6, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->ain:Landroid/support/v8/renderscript/Allocation;

    iget-object v7, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->aout:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5, v6, v7}, Lcom/lifevibes/mediacoder/ScriptC_Filters;->forEach_YUVPackedToPlanar(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mScript:Lcom/lifevibes/mediacoder/ScriptC_Filters;

    iget-object v6, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->ain3:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/lifevibes/mediacoder/ScriptC_Filters;->set_output1(Landroid/support/v8/renderscript/Allocation;)V

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mScript:Lcom/lifevibes/mediacoder/ScriptC_Filters;

    iget-object v6, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->ain4:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/lifevibes/mediacoder/ScriptC_Filters;->set_output2(Landroid/support/v8/renderscript/Allocation;)V

    iget v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSupportedColorFormat:I

    const/16 v6, 0x13

    if-ne v5, v6, :cond_182

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mScript:Lcom/lifevibes/mediacoder/ScriptC_Filters;

    iget-object v6, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->ain4:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/lifevibes/mediacoder/ScriptC_Filters;->forEach_YUV444ToYUV420(Landroid/support/v8/renderscript/Allocation;)V

    :goto_160
    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->ain3:Landroid/support/v8/renderscript/Allocation;

    iget-object v6, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->tempBuffer:[B

    invoke-virtual {v5, v6}, Landroid/support/v8/renderscript/Allocation;->copyTo([B)V

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->ain4:Landroid/support/v8/renderscript/Allocation;

    iget-object v6, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->tempBuffer1:[B

    invoke-virtual {v5, v6}, Landroid/support/v8/renderscript/Allocation;->copyTo([B)V

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->tempBuffer:[B

    iget-object v6, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVData:[B

    invoke-static {v5, v9, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->tempBuffer1:[B

    iget-object v6, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVData:[B

    const v7, 0x1c200

    invoke-static {v5, v9, v6, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVData:[B

    return-object v5

    :cond_182
    iget v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSupportedColorFormat:I

    const/16 v6, 0x15

    if-ne v5, v6, :cond_190

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mScript:Lcom/lifevibes/mediacoder/ScriptC_Filters;

    iget-object v6, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->ain4:Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {v5, v6}, Lcom/lifevibes/mediacoder/ScriptC_Filters;->forEach_YUV444ToYUV420SemiPlanar(Landroid/support/v8/renderscript/Allocation;)V

    goto :goto_160

    :cond_190
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RenderScript doesn\'t have color conversion filter for Color Format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSupportedColorFormat:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private deleteOutputFile()V
    .registers 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutputFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_10
    return-void
.end method

.method private dumpH264DataToFile([B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/mnt/sdcard/Twitter/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    const-string v2, "/mnt/sdcard/Twitter/Encoded Video.h264"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutputH264Dump:Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutputH264Dump:Ljava/io/FileOutputStream;

    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutputH264Dump:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    return-void

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while dumping H264 data to file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private encodeAudioFrame([BII)Ljava/nio/ShortBuffer;
    .registers 24

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isAudioEncoderRunning:Z

    if-nez v2, :cond_14

    const-string v2, "[LVMediaCoderImpl] LVMediaCoder is not running."

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "LVMediaCoder is not running."

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_14
    add-int v2, p2, p3

    move-object/from16 v0, p1

    array-length v4, v0

    if-le v2, v4, :cond_69

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LVMediaCoderImpl] Index out of bound. Length of pcmFrame is: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    array-length v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " however (Start + ShortCount) = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int v4, p2, p3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Index out of bound. Length of pcmFrame is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Start + ShortCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int v5, p2, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LVMediaCoderImpl] \t\tencodeAudio(): Length of input pcmFrame# "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioFrameNumber:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    array-length v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", Length: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", Position: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mPCMFrameData:[B

    if-nez v2, :cond_c0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v2, v2, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioChannelCount:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_e3

    const/16 v2, 0x800

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mPCMFrameData:[B

    :cond_c0
    :goto_c0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v2, v2, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioChannelCount:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_ec

    const/16 v2, 0x800

    move/from16 v0, p3

    if-ne v0, v2, :cond_ec

    const/4 v12, 0x0

    move/from16 v11, p2

    :goto_d2
    add-int v2, p2, p3

    if-ge v11, v2, :cond_1ba

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mPCMFrameData:[B

    aget-byte v4, p1, v11

    aput-byte v4, v2, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_d2

    :cond_e3
    const/16 v2, 0x1000

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mPCMFrameData:[B

    goto :goto_c0

    :cond_ec
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v2, v2, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioChannelCount:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_167

    const/16 v2, 0x800

    move/from16 v0, p3

    if-eq v0, v2, :cond_167

    const/16 v2, 0x800

    move/from16 v0, p3

    if-ge v0, v2, :cond_146

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LVMediaCoderImpl] \t\tencodeAudio(): pcmFrame# "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioFrameNumber:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Length < PCM_MONO, hence wraping it in 2048 byte array."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    const/4 v12, 0x0

    move/from16 v11, p2

    :goto_125
    add-int v2, p2, p3

    if-ge v11, v2, :cond_136

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mPCMFrameData:[B

    aget-byte v4, p1, v11

    aput-byte v4, v2, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_125

    :cond_136
    move/from16 v11, p3

    :goto_138
    const/16 v2, 0x800

    if-ge v11, v2, :cond_1ba

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mPCMFrameData:[B

    const/4 v4, 0x0

    aput-byte v4, v2, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_138

    :cond_146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LVMediaCoderImpl] Check the size of input PCM data. For Mono PCM Data, this should be 1024 bytes.\nSize of input pcmFrame: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Check the size of input PCM data. For Mono PCM Data, this should be 1024 bytes."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v2, v2, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioChannelCount:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_197

    const/16 v2, 0x1000

    move/from16 v0, p3

    if-eq v0, v2, :cond_197

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LVMediaCoderImpl] Check the size of input PCM data. For Stereo PCM Data, this should be 2048 bytes.\nSize of input pcmFrame: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Check the size of input PCM data. For Stereo PCM Data, this should be 2048 bytes."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v2, v2, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioChannelCount:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1ba

    const/16 v2, 0x1000

    move/from16 v0, p3

    if-ne v0, v2, :cond_1ba

    const/4 v12, 0x0

    move/from16 v11, p2

    :goto_1a9
    add-int v2, p2, p3

    if-ge v11, v2, :cond_1ba

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mPCMFrameData:[B

    aget-byte v4, p1, v11

    aput-byte v4, v2, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_1a9

    :cond_1ba
    sget-boolean v2, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->DUMPS:Z

    if-eqz v2, :cond_1c5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mPCMFrameData:[B

    invoke-static {v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->dumpInputAudioData([B)V

    :cond_1c5
    const/4 v9, 0x0

    :cond_1c6
    :goto_1c6
    if-nez v9, :cond_221

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LVMediaCoderImpl] \t\tencodeAudio(): Audio Input BufferIndex: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    const/4 v2, -0x1

    if-eq v3, v2, :cond_221

    if-ltz v3, :cond_221

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mPCMFrameData:[B

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mInputAudioBuffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mInputAudioBuffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v3

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    array-length v5, v0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioFrameNumber:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioFrameNumber:I

    :cond_221
    if-eqz v9, :cond_1c6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    if-nez v2, :cond_232

    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    :cond_232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioEncoder:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LVMediaCoderImpl] \t\tencodeAudio(): Audio Output BufferIndex: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    const/4 v2, -0x1

    if-eq v15, v2, :cond_1c6

    const/4 v2, -0x2

    if-eq v15, v2, :cond_1c6

    const/4 v2, -0x3

    if-ne v15, v2, :cond_26e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutputAudioBuffers:[Ljava/nio/ByteBuffer;

    goto/16 :goto_1c6

    :cond_26e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutputAudioBuffers:[Ljava/nio/ByteBuffer;

    aget-object v14, v2, v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v13, v2, [B

    invoke-virtual {v14, v13}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2a7

    :cond_28c
    :goto_28c
    array-length v2, v13

    invoke-static {v2}, Ljava/nio/ShortBuffer;->allocate(I)Ljava/nio/ShortBuffer;

    move-result-object v18

    array-length v0, v13

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [S

    move-object/from16 v17, v0

    const/4 v12, 0x0

    :goto_29b
    move/from16 v0, v19

    if-ge v12, v0, :cond_2c7

    aget-byte v2, v13, v12

    int-to-short v2, v2

    aput-short v2, v17, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_29b

    :cond_2a7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v2, v15, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioFrameNumber:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_28c

    sget-object v2, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioDSI:[B

    if-nez v2, :cond_28c

    sput-object v13, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioDSI:[B

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioFrameNumber:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioFrameNumber:I

    goto :goto_28c

    :cond_2c7
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    sget-boolean v2, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->DEBUG:Z

    if-eqz v2, :cond_2d7

    :try_start_2d2
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->writeAACToFile([B)V
    :try_end_2d7
    .catch Ljava/lang/Exception; {:try_start_2d2 .. :try_end_2d7} :catch_2f8

    :cond_2d7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LVMediaCoderImpl] \t\tencodeAudio(): Operation Ended! returning "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    array-length v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " bytes."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    return-object v18

    :catch_2f8
    move-exception v10

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private encodeICSAudioFrame([BII)Ljava/nio/ShortBuffer;
    .registers 14

    const/4 v9, 0x2

    const/16 v8, 0x1000

    const/16 v7, 0x800

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v3, "[LVMediaCoderImpl] ICS: encodeICSAudioFrame"

    invoke-static {v3, v6}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    iget-boolean v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isAudioEncoderRunning:Z

    if-nez v3, :cond_1d

    const-string v3, "[LVMediaCoderImpl] LVMediaCoder is not running."

    invoke-static {v3, v5}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "LVMediaCoder is not running."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1d
    add-int v3, p2, p3

    array-length v4, p1

    if-le v3, v4, :cond_6b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LVMediaCoderImpl] Index out of bound. Length of pcmFrame is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " however (Start + ShortCount) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int v4, p2, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Index out of bound. Length of pcmFrame is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Start + ShortCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int v5, p2, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LVMediaCoderImpl] \t\tencodeAudio(): Length of input pcmFrame# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioFrameNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mPCMFrameData:[B

    if-nez v3, :cond_b0

    iget-object v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v3, v3, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioChannelCount:I

    if-ne v3, v5, :cond_c9

    new-array v3, v7, [B

    iput-object v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mPCMFrameData:[B

    :cond_b0
    :goto_b0
    iget-object v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v3, v3, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioChannelCount:I

    if-ne v3, v5, :cond_ce

    if-ne p3, v7, :cond_ce

    const/4 v1, 0x0

    move v0, p2

    :goto_ba
    add-int v3, p2, p3

    if-ge v0, v3, :cond_16e

    iget-object v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mPCMFrameData:[B

    aget-byte v4, p1, v0

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_ba

    :cond_c9
    new-array v3, v8, [B

    iput-object v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mPCMFrameData:[B

    goto :goto_b0

    :cond_ce
    iget-object v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v3, v3, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioChannelCount:I

    if-ne v3, v5, :cond_12f

    if-eq p3, v7, :cond_12f

    if-ge p3, v7, :cond_111

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LVMediaCoderImpl] \t\tencodeAudio(): pcmFrame# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioFrameNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Length < PCM_MONO, hence wraping it in 2048 byte array."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    move v0, p2

    :goto_f8
    add-int v3, p2, p3

    if-ge v0, v3, :cond_107

    iget-object v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mPCMFrameData:[B

    aget-byte v4, p1, v0

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_f8

    :cond_107
    move v0, p3

    :goto_108
    if-ge v0, v7, :cond_16e

    iget-object v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mPCMFrameData:[B

    aput-byte v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_108

    :cond_111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LVMediaCoderImpl] Check the size of input PCM data. For Mono PCM Data, this should be 1024 bytes.\nSize of input pcmFrame: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Check the size of input PCM data. For Mono PCM Data, this should be 1024 bytes."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_12f
    iget-object v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v3, v3, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioChannelCount:I

    if-ne v3, v9, :cond_155

    if-eq p3, v8, :cond_155

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LVMediaCoderImpl] Check the size of input PCM data. For Stereo PCM Data, this should be 2048 bytes.\nSize of input pcmFrame: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Check the size of input PCM data. For Stereo PCM Data, this should be 2048 bytes."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_155
    iget-object v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v3, v3, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioChannelCount:I

    if-ne v3, v9, :cond_16e

    if-ne p3, v8, :cond_16e

    const/4 v1, 0x0

    move v0, p2

    :goto_15f
    add-int v3, p2, p3

    if-ge v0, v3, :cond_16e

    iget-object v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mPCMFrameData:[B

    aget-byte v4, p1, v0

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_15f

    :cond_16e
    sget-boolean v3, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->DUMPS:Z

    if-eqz v3, :cond_177

    iget-object v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mPCMFrameData:[B

    invoke-static {v3}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->dumpInputAudioData([B)V

    :cond_177
    iget-object v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mICSAudioEncoder:Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;

    iget-object v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mPCMFrameData:[B

    invoke-virtual {v3, v4}, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->encode([B)Ljava/nio/ShortBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LVMediaCoderImpl] \t\tencodeAudio(): Operation Ended! returning "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->limit()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    return-object v2
.end method

.method private encodeICSVideo(Ljava/nio/ByteBuffer;IZ)Ljava/nio/ByteBuffer;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v5, 0x1

    if-nez p2, :cond_18

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    iget v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRGBBufferSize:I

    if-eq v3, v4, :cond_18

    const-string v3, "[LVMediaCoderImpl] encodeVideo(): Improper size of input RGB data."

    invoke-static {v3, v5}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Improper size of input RGB data."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_18
    if-ne p2, v5, :cond_2f

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    iget v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRGBABufferSize:I

    if-eq v3, v4, :cond_2f

    const-string v3, "[LVMediaCoderImpl] encodeVideo(): Improper size of input RGBA data."

    invoke-static {v3, v5}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Improper size of input RGBA data."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2f
    const-string v3, "[LVMediaCoderImpl] encodeVideo(): Called."

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    invoke-direct {p0, p1, p2}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->convertICSRGBToYUV(Ljava/nio/ByteBuffer;I)[B

    move-result-object v2

    sget-boolean v3, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->DEBUG:Z

    if-eqz v3, :cond_40

    :try_start_3d
    invoke-direct {p0, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->writeYUVToFile([B)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_47

    :cond_40
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mICSVideoEncoder:Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;

    invoke-virtual {v3, v2, p3}, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->encode([BZ)V

    return-object v0

    :catch_47
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private encodeVideoAsyncPull()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-boolean v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isRunningOnICS:Z

    if-eqz v0, :cond_13

    monitor-enter p0

    :try_start_5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lifevibes/mediacoder/LVMediaCoderImpl$1;

    invoke-direct {v1, p0}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl$1;-><init>(Lcom/lifevibes/mediacoder/LVMediaCoderImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    monitor-exit p0

    :cond_13
    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private encodeYUVToH264([B)Ljava/nio/ByteBuffer;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_10

    const-string v1, "[LVMediaCoderImpl] encodeYUVToH264(): YUV Data is null"

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "YUV Data is null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    const/4 v8, 0x0

    :cond_11
    :goto_11
    if-nez v8, :cond_79

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoEncoder:Landroid/media/MediaCodec;

    const-wide/16 v3, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LVMediaCoderImpl] encodeYUVToH264(): Video InputBufferIndex : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for frame# "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoFrameNumber:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    const/4 v1, -0x1

    if-eq v2, v1, :cond_79

    if-ltz v2, :cond_79

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mInputVideoBuffers:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mInputVideoBuffers:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoEncoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoFrameNumber:I

    mul-int/lit8 v5, v5, 0x21

    int-to-long v5, v5

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoFrameNumber:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoFrameNumber:I

    :cond_79
    if-eqz v8, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    if-nez v1, :cond_8a

    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    :cond_8a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoEncoder:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v15

    sget-boolean v1, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z

    if-eqz v1, :cond_c1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LVMediaCoderImpl] encodeYUVToH264(): Video OutputBufferIndex : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for frame# "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoFrameNumber:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    :cond_c1
    const/4 v1, -0x1

    if-eq v15, v1, :cond_11

    const/4 v1, -0x2

    if-eq v15, v1, :cond_11

    const/4 v1, -0x3

    if-ne v15, v1, :cond_d8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutputVideoBuffers:[Ljava/nio/ByteBuffer;

    goto/16 :goto_11

    :cond_d8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutputVideoBuffers:[Ljava/nio/ByteBuffer;

    aget-object v14, v1, v15

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->skipExtraBytesAtStart:Z

    if-eqz v1, :cond_16f

    move-object/from16 v0, p0

    iget v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoFrameNumber:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_16f

    const/4 v13, 0x1

    :goto_ec
    if-eqz v13, :cond_172

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    sget-object v3, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDSI:[B

    array-length v3, v3

    add-int v16, v1, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LVMediaCoderImpl] OutputBufferSize: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "mBufferInfo.size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "mVideoDSI.length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDSI:[B

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    :goto_131
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_143

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    move/from16 v0, v16

    if-ge v1, v0, :cond_14b

    :cond_143
    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutBuffer:Ljava/nio/ByteBuffer;

    :cond_14b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutBuffer:Ljava/nio/ByteBuffer;

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v12, 0x0

    :goto_15d
    move/from16 v0, v16

    if-ge v12, v0, :cond_17b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v12, v12, 0x1

    goto :goto_15d

    :cond_16f
    const/4 v13, 0x0

    goto/16 :goto_ec

    :cond_172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v16, v0

    goto :goto_131

    :cond_17b
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1b9

    const-string v1, "[LVMediaCoderImpl] encodeYUVToH264(): BUFFER_FLAG_END_OF_STREAM. Breaking out!!!!"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    :goto_18e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LVMediaCoderImpl] encodeYUVToH264(): Returning "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " bytes."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutBuffer:Ljava/nio/ByteBuffer;

    return-object v1

    :cond_1b9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-nez v1, :cond_1e6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-nez v1, :cond_1e6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-nez v1, :cond_1e6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_201

    :cond_1e6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LVMediaCoderImpl] encodeYUVToH264(): Header missing! for Frame: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoFrameNumber:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    :cond_201
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoEncoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v1, v15, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoFrameNumber:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_296

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    sput-object v1, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDSI:[B

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutBuffer:Ljava/nio/ByteBuffer;

    sget-object v3, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDSI:[B

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isRecordingSession:Z

    if-eqz v1, :cond_268

    sget-boolean v1, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->DEBUG:Z

    if-eqz v1, :cond_268

    new-instance v1, Ljava/io/File;

    const-string v3, "/mnt/sdcard/Twitter/"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    const-string v11, "/mnt/sdcard/Twitter/Encoded Video.h264"

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_248
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutputH264Dump:Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutputH264Dump:Ljava/io/FileOutputStream;

    sget-object v3, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDSI:[B

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutputH264Dump:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutputH264Dump:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_268
    .catch Ljava/io/IOException; {:try_start_248 .. :try_end_268} :catch_275

    :cond_268
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoFrameNumber:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoFrameNumber:I

    const/4 v8, 0x0

    goto/16 :goto_11

    :catch_275
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    new-instance v1, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while writing VideoDSI to debug file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_296
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoFrameNumber:I

    const/4 v3, 0x1

    if-le v1, v3, :cond_11

    goto/16 :goto_18e
.end method

.method private generateAudioDSI()V
    .registers 5

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v1, v1, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioChannelCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :goto_12
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->encodeAudio([BII)Ljava/nio/ShortBuffer;

    return-void

    :cond_20
    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_12
.end method

.method private generateVideoDSI()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v2, "video/avc"

    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoEncoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoEncoder:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoFormat:Landroid/media/MediaFormat;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v5, v5, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    iget-object v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mInputVideoBuffers:[Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutputVideoBuffers:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mYUVBufferSize:I

    new-array v1, v2, [B

    :try_start_2b
    invoke-direct {p0, v1}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->encodeYUVToH264([B)Ljava/nio/ByteBuffer;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_43

    iget-object v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V

    iget-object v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    iput-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoEncoder:Landroid/media/MediaCodec;

    iput-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mInputVideoBuffers:[Ljava/nio/ByteBuffer;

    iput-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutputVideoBuffers:[Ljava/nio/ByteBuffer;

    iput v6, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoFrameNumber:I

    iput-boolean v6, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isVideoEncoderRunning:Z

    return-void

    :catch_43
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    throw v0
.end method

.method private getAudioTimeStamp(I)I
    .registers 3

    iget v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioFrameDuration:I

    mul-int/2addr v0, p1

    return v0
.end method

.method private getColorFormat()I
    .registers 16

    const/4 v14, 0x0

    const/4 v8, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_8
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v12

    if-ge v6, v12, :cond_3c

    invoke-static {v6}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v12

    if-nez v12, :cond_1b

    :cond_18
    :goto_18
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_1b
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    array-length v9, v0

    const/4 v7, 0x0

    :goto_22
    if-ge v7, v9, :cond_18

    aget-object v11, v0, v7

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "avc"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_39

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v6

    goto :goto_18

    :cond_39
    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    :cond_3c
    invoke-static {v8}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v12

    const-string v13, "video/avc"

    invoke-virtual {v12, v13}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_49
    iget-object v12, v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v12, v12

    if-ge v6, v12, :cond_70

    iget-object v12, v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v5, v12, v6

    sparse-switch v5, :sswitch_data_8c

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[LVMediaCoderImpl] Skipping unsupported color format "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v14}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    :goto_6b
    add-int/lit8 v6, v6, 0x1

    goto :goto_49

    :sswitch_6e
    move v3, v5

    goto :goto_6b

    :cond_70
    iput v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSupportedColorFormat:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[LVMediaCoderImpl] Color format selected: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSupportedColorFormat:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v14}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    return v3

    nop

    :sswitch_data_8c
    .sparse-switch
        0x13 -> :sswitch_6e
        0x14 -> :sswitch_6e
        0x15 -> :sswitch_6e
        0x27 -> :sswitch_6e
        0x7f000100 -> :sswitch_6e
    .end sparse-switch
.end method

.method private writeAACToFile([B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x1

    new-instance v1, Ljava/io/File;

    const-string v3, "mnt/sdcard/Twitter/"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ljava/io/File;

    const-string v3, "mnt/sdcard/Twitter/Twitter_Audio.aac"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_12
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LVMediaCoderImpl] writeAACToFile(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes written to file."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_3f} :catch_40

    return-void

    :catch_40
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LVMediaCoderImpl] writeAACToFile(): Error writting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes to file."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeAACToFile(): Error writting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes to file."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private writeYUVToFile([B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x1

    new-instance v1, Ljava/io/File;

    const-string v3, "mnt/sdcard/Twitter/"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mnt/sdcard/Twitter/YUV_CF_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSupportedColorFormat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".yuv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_2b
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LVMediaCoderImpl] writeYUVToFile(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes written to file."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_58} :catch_59

    return-void

    :catch_59
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LVMediaCoderImpl] writeYUVToFile(): Error writting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes to file."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes to file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public cancel()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-boolean v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isRunningOnICS:Z

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->cancelEncodingICS()V

    :cond_7
    invoke-virtual {p0}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->stop()V

    iget-boolean v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isRecordingSession:Z

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->deleteOutputFile()V

    :cond_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isVideoEncoderRunning:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isAudioEncoderRunning:Z

    if-nez v0, :cond_7

    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Encoder is not running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodeAudio([BII)Ljava/nio/ShortBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-boolean v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isRunningOnICS:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2, p3}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->encodeICSAudioFrame([BII)Ljava/nio/ShortBuffer;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->encodeAudioFrame([BII)Ljava/nio/ShortBuffer;

    move-result-object v0

    goto :goto_8
.end method

.method public encodeVideo(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v4, "[LVMediaCoderImpl] encodeVideo(): Called."

    invoke-static {v4, v7}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    sget-boolean v4, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isRunningOnICS:Z

    if-eqz v4, :cond_13

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "LVMediaCoder is running on ICS. Call encodeVideoAsync instead."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_13
    iget-boolean v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isVideoEncoderRunning:Z

    if-nez v4, :cond_24

    const-string v4, "[LVMediaCoderImpl] encodeVideo(): LVMediaCoder is not running."

    invoke-static {v4, v6}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "LVMediaCoder is not running."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_24
    if-nez p2, :cond_3b

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    iget v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRGBBufferSize:I

    if-eq v4, v5, :cond_3b

    const-string v4, "[LVMediaCoderImpl] encodeVideo(): Improper size of input RGB data."

    invoke-static {v4, v6}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Improper size of input RGB data."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3b
    if-ne p2, v6, :cond_6d

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    iget v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRGBABufferSize:I

    if-eq v4, v5, :cond_6d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LVMediaCoderImpl] encodeVideo(): Improper size of input RGBA data."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Improper size of input RGBA data."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6d
    invoke-direct {p0, p1, p2}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->convertRGBToYUV(Ljava/nio/ByteBuffer;I)[B

    move-result-object v3

    sget-boolean v4, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->DEBUG:Z

    if-eqz v4, :cond_78

    :try_start_75
    invoke-direct {p0, v3}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->writeYUVToFile([B)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_a9

    :cond_78
    :try_start_78
    invoke-direct {p0, v3}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->encodeYUVToH264([B)Ljava/nio/ByteBuffer;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_b7

    move-result-object v0

    sget-boolean v4, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->DEBUG:Z

    if-eqz v4, :cond_87

    :try_start_80
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->dumpH264DataToFile([B)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_87} :catch_c5

    :cond_87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LVMediaCoderImpl] encodeVideo(): Returning "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    return-object v0

    :catch_a9
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_b7
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_c5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public encodeVideoAsync(Ljava/nio/ByteBuffer;IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isVideoEncoderRunning:Z

    if-nez v0, :cond_13

    const-string v0, "[LVMediaCoderImpl] encodeVideo(): LVMediaCoder is not running."

    invoke-static {v0, v1}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LVMediaCoder is not running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    sget-boolean v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isRunningOnICS:Z

    if-eqz v0, :cond_49

    iget-boolean v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->run:Z

    if-nez v0, :cond_25

    invoke-direct {p0}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->encodeVideoAsyncPull()V

    const-string v0, "[LVMediaCoderImpl] Starting encodeVideoAsyncPull()"

    invoke-static {v0, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->run:Z

    :cond_25
    iput-boolean p3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isEndOfStream:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[LVMediaCoderImpl] Sending RGB frame "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSuppliedEncodedFrameCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    invoke-direct {p0, p1, p2, p3}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->encodeICSVideo(Ljava/nio/ByteBuffer;IZ)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSuppliedEncodedFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSuppliedEncodedFrameCount:I

    return-void

    :cond_49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method encodeVideoAsync is not supported on JB and above."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConfiguration()Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;
    .registers 2

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    return-object v0
.end method

.method public getOutputFilePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutputFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public recordAudio(Ljava/nio/ShortBuffer;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isAudioEncoderRunning:Z

    if-nez v1, :cond_14

    const-string v1, "[LVMediaCoderImpl] LVMediaCoder is not running."

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "LVMediaCoder is not running."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isRecordingSession:Z

    if-nez v1, :cond_28

    const-string v1, "[LVMediaCoderImpl] Current session is not configured for audio-recording."

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Current session is not configured for audio-recording."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LVMediaCoderImpl] recordAudio(): Capacity of input aacFrame #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioFramesRecorded:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " shorts, Remaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioFramesRecorded:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->getAudioTimeStamp(I)I

    move-result v15

    move-object/from16 v0, p0

    iget v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioFramesRecorded:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioFramesRecorded:I

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    new-array v9, v1, [S

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    move-object v10, v9

    array-length v13, v10

    const/4 v12, 0x0

    :goto_89
    if-ge v12, v13, :cond_94

    aget-short v14, v10, v12

    int-to-byte v1, v14

    invoke-virtual {v11, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v12, v12, 0x1

    goto :goto_89

    :cond_94
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mWriterJNIContext:I

    if-nez v1, :cond_ac

    const-string v1, "[LVMediaCoderImpl] recordAudio(): WriterJNIContext is NULL"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "recordAudio(): WriterJNIContext is NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_ac
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mWriterJNIContext:I

    array-length v2, v7

    int-to-double v3, v15

    int-to-double v5, v15

    const/4 v8, 0x1

    invoke-static/range {v1 .. v8}, Lcom/lifevibes/mediacoder/LVMediaCoderWriterJNI;->LVMediaCoderWriterProcess(IIDD[BI)I

    return-void
.end method

.method public recordVideo(Ljava/nio/ByteBuffer;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isVideoEncoderRunning:Z

    if-nez v0, :cond_13

    const-string v0, "[LVMediaCoderImpl] LVMediaCoder is not running."

    invoke-static {v0, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LVMediaCoder is not running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iget-boolean v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isRecordingSession:Z

    if-nez v0, :cond_24

    const-string v0, "[LVMediaCoderImpl] Current session is not configured for video-recording."

    invoke-static {v0, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current session is not configured for video-recording."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[LVMediaCoderImpl] recordVideo(): Size of input h264Frame #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoFramesRecorded:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Limit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Capacity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v6, v0, [B

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoFramesRecorded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoFramesRecorded:I

    iget v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mWriterJNIContext:I

    if-nez v0, :cond_9a

    const-string v0, "[LVMediaCoderImpl] recordVideo(): WriterJNIContext is NULL"

    invoke-static {v0, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "recordVideo(): WriterJNIContext is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9a
    iget v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mWriterJNIContext:I

    array-length v1, v6

    int-to-double v2, p2

    int-to-double v4, p2

    invoke-static/range {v0 .. v7}, Lcom/lifevibes/mediacoder/LVMediaCoderWriterJNI;->LVMediaCoderWriterProcess(IIDD[BI)I

    return-void
.end method

.method public setEncoderVideoAsyncListener(Lcom/lifevibes/mediacoder/LVMediaCoder$LVMediaCoderICSEncoderProgressListener;)V
    .registers 2

    iput-object p1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mICSVideoEncoderListener:Lcom/lifevibes/mediacoder/LVMediaCoder$LVMediaCoderICSEncoderProgressListener;

    return-void
.end method

.method public startEncoding()V
    .registers 4

    iget-boolean v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isAudioEncoderRunning:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isVideoEncoderRunning:Z

    if-eqz v1, :cond_16

    :cond_8
    const-string v1, "[LVMediaCoderImpl] LVMediaCoder is already running."

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "LVMediaCoder is already running."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isRecordingSession:Z

    sget-boolean v1, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isRunningOnICS:Z

    if-eqz v1, :cond_21

    invoke-direct {p0}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->configureLVSFSession()V

    :goto_20
    return-void

    :cond_21
    :try_start_21
    invoke-direct {p0}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->configureSession()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_20

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startRecording(Ljava/lang/String;)V
    .registers 13

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isAudioEncoderRunning:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isVideoEncoderRunning:Z

    if-eqz v0, :cond_16

    :cond_9
    const-string v0, "[LVMediaCoderImpl] LVMediaCoder is already running."

    invoke-static {v0, v3}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LVMediaCoder is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    if-eqz p1, :cond_20

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_20
    const-string v0, "[LVMediaCoderImpl] Invalid output filepath"

    invoke-static {v0, v3}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid output filepath parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    iput-object p1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutputFilePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutputFilePath:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const-string v9, ""

    const/4 v8, 0x0

    :goto_3a
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    if-ge v8, v0, :cond_68

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v6, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_3a

    :cond_68
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    iput-boolean v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isRecordingSession:Z

    sget-boolean v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isRunningOnICS:Z

    if-eqz v0, :cond_d5

    invoke-direct {p0}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->configureLVSFSession()V

    :goto_79
    iget v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioFrameDuration:I

    if-nez v0, :cond_9a

    const/16 v10, 0x400

    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v0, v0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioChannelCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_88

    const/16 v10, 0x800

    :cond_88
    mul-int/lit8 v0, v10, 0x2

    mul-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v1, v1, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioSampleRate:I

    iget-object v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v2, v2, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioChannelCount:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    div-int/2addr v0, v1

    iput v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioFrameDuration:I

    :cond_9a
    iget-object v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/lifevibes/mediacoder/LVMediaCoderWriterJNI;->LVMediaCoderInitWriter(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mWriterJNIContext:I

    iget v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mWriterJNIContext:I

    if-nez v0, :cond_e7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[LVMediaCoderImpl] LVMediaCoderInitWriter failed! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LVMediaCoderInitWriter failed! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d5
    :try_start_d5
    invoke-direct {p0}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->configureSession()V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_d8} :catch_d9

    goto :goto_79

    :catch_d9
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e7
    sget-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDSI:[B

    if-nez v0, :cond_f8

    const-string v0, "[LVMediaCoderImpl] startRecording(): Problem getting the Video DSI."

    invoke-static {v0, v3}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Problem getting the Video DSI."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f8
    sget-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioDSI:[B

    if-nez v0, :cond_109

    const-string v0, "[LVMediaCoderImpl] startRecording(): Problem getting the Audio DSI"

    invoke-static {v0, v3}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Problem getting the Audio DSI."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_109
    iget v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mWriterJNIContext:I

    sget-object v1, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDSI:[B

    iget-object v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v2, v2, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoWidth:I

    iget-object v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v3, v3, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoHeight:I

    sget-object v4, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDSI:[B

    array-length v4, v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lifevibes/mediacoder/LVMediaCoderWriterJNI;->LVMediaCoderWriterAddStreamVideo(I[BIII)I

    iget v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mWriterJNIContext:I

    sget-object v1, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioDSI:[B

    sget-object v2, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioDSI:[B

    array-length v2, v2

    iget-object v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v3, v3, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioBitRate:I

    iget-object v4, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v4, v4, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioSampleRate:I

    iget-object v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mConfiguration:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;

    iget v5, v5, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioChannelCount:I

    invoke-static/range {v0 .. v5}, Lcom/lifevibes/mediacoder/LVMediaCoderWriterJNI;->LVMediaCoderWriterAddStreamAudio(I[BIIII)I

    return-void
.end method

.method public stop()V
    .registers 5

    const/4 v3, 0x1

    :try_start_1
    sget-boolean v1, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isRunningOnICS:Z

    if-eqz v1, :cond_b2

    :goto_5
    iget v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRetrievedEncodedFrameCount:I

    iget v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSuppliedEncodedFrameCount:I

    if-ge v1, v2, :cond_75

    const-string v1, "[LVMediaCoderImpl] WAITING to complete frame extraction .... ..... ... !!!!!! "

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LVMediaCoderImpl] Got : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRetrievedEncodedFrameCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sent :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSuppliedEncodedFrameCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->pullerFlagExit:Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_39} :catch_3a

    goto :goto_5

    :catch_3a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LVMediaCoderImpl] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Error while executing stop()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_75
    :try_start_75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LVMediaCoderImpl] Got : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRetrievedEncodedFrameCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sent :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSuppliedEncodedFrameCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    iget v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSuppliedEncodedFrameCount:I

    iget v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRetrievedEncodedFrameCount:I

    if-ne v1, v2, :cond_af

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->pullerFlagExit:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mSuppliedEncodedFrameCount:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mRetrievedEncodedFrameCount:I

    const-string v1, "[LVMediaCoderImpl] stop(): DONE with frame extraction .... ..... ... !!!!!! "

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    :cond_af
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->run:Z

    :cond_b2
    iget-boolean v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isRecordingSession:Z

    if-eqz v1, :cond_bb

    iget v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mWriterJNIContext:I

    invoke-static {v1}, Lcom/lifevibes/mediacoder/LVMediaCoderWriterJNI;->LVMediaCoderWriterClose(I)I

    :cond_bb
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isRecordingSession:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isAudioEncoderRunning:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isVideoEncoderRunning:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mInputVideoBuffers:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutputVideoBuffers:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mInputAudioBuffers:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mOutputAudioBuffers:[Ljava/nio/ByteBuffer;

    sget-boolean v1, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isRunningOnICS:Z

    if-nez v1, :cond_e5

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioEncoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_e5

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioEncoder:Landroid/media/MediaCodec;

    :cond_e5
    sget-boolean v1, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isRunningOnICS:Z

    if-eqz v1, :cond_f5

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mICSAudioEncoder:Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;

    if-eqz v1, :cond_f5

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mICSAudioEncoder:Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;

    invoke-virtual {v1}, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->stop()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mICSAudioEncoder:Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;

    :cond_f5
    sget-boolean v1, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isRunningOnICS:Z

    if-nez v1, :cond_10a

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoEncoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_10a

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoEncoder:Landroid/media/MediaCodec;

    :cond_10a
    sget-boolean v1, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isRunningOnICS:Z

    if-eqz v1, :cond_11a

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mICSVideoEncoder:Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;

    if-eqz v1, :cond_11a

    iget-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mICSVideoEncoder:Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;

    invoke-virtual {v1}, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->stop()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mICSVideoEncoder:Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;

    :cond_11a
    const/4 v1, 0x0

    iput v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mWriterJNIContext:I

    const/4 v1, 0x0

    sput-object v1, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioDSI:[B

    const/4 v1, 0x0

    sput-object v1, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDSI:[B

    const-string v1, "[LVMediaCoderImpl] LVMediaCoder stopped!"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_129} :catch_3a

    return-void
.end method
