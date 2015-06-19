.class public Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;
.super Ljava/lang/Object;
.source "LVMediaCoderSFAudioEncoder.java"


# static fields
.field private static MAX_DSI_LEN:I = 0x0

.field static MAX_FRAME_LEN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LVSF_AudioEncoder"

.field static mAudioBitrate:I

.field static mAudioDataInput:[B

.field static mAudioMime:Ljava/lang/String;

.field static mChannels:I

.field static mOutEncodedData:[B

.field static mSampleRate:I


# instance fields
.field private LVSFAudioContext:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/16 v0, 0x80

    sput v0, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->MAX_DSI_LEN:I

    sput v1, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->mSampleRate:I

    sput v1, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->mAudioBitrate:I

    sput v1, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->mChannels:I

    const/16 v0, 0x1000

    sput v0, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->MAX_FRAME_LEN:I

    sget v0, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->MAX_FRAME_LEN:I

    new-array v0, v0, [B

    sput-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->mOutEncodedData:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->LVSFAudioContext:I

    return-void
.end method

.method private static native LVSFAudioEncoderEncode(I[B[BI)I
.end method

.method private static native LVSFAudioEncoderGetDSIInfo(I[B)I
.end method

.method private static native LVSFAudioEncoderInit(III)I
.end method

.method private static native LVSFAudioEncoderStop(I)I
.end method

.method public static create(Ljava/lang/String;)Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;
    .registers 3

    sput-object p0, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->mAudioMime:Ljava/lang/String;

    const-string v0, "audio/mp4a-latm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "[LVSF_AudioEncoder] Creation not supported for non AAC mime"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;

    invoke-direct {v0}, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;-><init>()V

    goto :goto_11
.end method


# virtual methods
.method public configure(III)V
    .registers 4

    sput p1, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->mAudioBitrate:I

    sput p2, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->mSampleRate:I

    sput p3, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->mChannels:I

    return-void
.end method

.method public encode([B)Ljava/nio/ShortBuffer;
    .registers 9

    sget v5, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->mChannels:I

    mul-int/lit16 v1, v5, 0x800

    iget v5, p0, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->LVSFAudioContext:I

    sget-object v6, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->mOutEncodedData:[B

    invoke-static {v5, p1, v6, v1}, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->LVSFAudioEncoderEncode(I[B[BI)I

    move-result v4

    invoke-static {v4}, Ljava/nio/ShortBuffer;->allocate(I)Ljava/nio/ShortBuffer;

    move-result-object v3

    new-array v2, v4, [S

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v4, :cond_1f

    sget-object v5, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->mOutEncodedData:[B

    aget-byte v5, v5, v0

    int-to-short v5, v5

    aput-short v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_1f
    invoke-virtual {v3, v2}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    return-object v3
.end method

.method public getDSI()V
    .registers 6

    sget v3, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->MAX_DSI_LEN:I

    new-array v2, v3, [B

    const/4 v0, 0x0

    iget v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->LVSFAudioContext:I

    if-eqz v3, :cond_1f

    iget v3, p0, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->LVSFAudioContext:I

    invoke-static {v3, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->LVSFAudioEncoderGetDSIInfo(I[B)I

    move-result v0

    new-array v3, v0, [B

    sput-object v3, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioDSI:[B

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_1f

    sget-object v3, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mAudioDSI:[B

    aget-byte v4, v2, v1

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_1f
    return-void
.end method

.method public start()V
    .registers 4

    sget v0, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->mAudioBitrate:I

    sget v1, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->mSampleRate:I

    sget v2, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->mChannels:I

    invoke-static {v0, v1, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->LVSFAudioEncoderInit(III)I

    move-result v0

    iput v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->LVSFAudioContext:I

    iget v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->LVSFAudioContext:I

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LVSF Native ICS Audio Encoder creation failed ..!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    return-void
.end method

.method public stop()V
    .registers 4

    iget v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->LVSFAudioContext:I

    invoke-static {v1}, Lcom/lifevibes/mediacoder/LVMediaCoderSFAudioEncoder;->LVSFAudioEncoderStop(I)I

    move-result v0

    if-eqz v0, :cond_10

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "LVSF Native ICS Audio Encoder stop failed ..!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    return-void
.end method
