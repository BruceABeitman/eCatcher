.class public Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;
.super Ljava/lang/Object;
.source "LVMediaCoderSFVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder$LVSF_mediaDSI;
    }
.end annotation


# static fields
.field public static LVMC_STREAM_AUDIO:I = 0x0

.field public static LVMC_STREAM_VIDEO:I = 0x0

.field private static LVSFVideoContext:I = 0x0

.field private static MAX_DSI_LEN:I = 0x0

.field static MAX_FRAME_LEN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LVSF_VideoEncoder"

.field static mFrameHeight:I

.field static mFrameWidth:I

.field static mFramerate:I

.field static mOutEncodedData:[B

.field static mVideoBitrate:I

.field static mVideoMime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput v0, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->LVMC_STREAM_VIDEO:I

    const/4 v0, 0x2

    sput v0, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->LVMC_STREAM_AUDIO:I

    const/16 v0, 0x80

    sput v0, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->MAX_DSI_LEN:I

    sput v1, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->LVSFVideoContext:I

    sput v1, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->mFrameWidth:I

    sput v1, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->mFrameHeight:I

    sput v1, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->mVideoBitrate:I

    sput v1, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->mFramerate:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native LVSFVideoEncoderInit(Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder$LVSF_mediaDSI;IIII)I
.end method

.method private static native LifeVibesICSMediaCoderDestroy(I)I
.end method

.method private static native LifeVibesICSMediaCoderEncode(I[B[BZ)I
.end method

.method private static native LifeVibesICSPollEncoderForOutput(I[B)I
.end method

.method public static create(Ljava/lang/String;)Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;
    .registers 3

    sput-object p0, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->mVideoMime:Ljava/lang/String;

    const-string v0, "video/avc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "[LVSF_VideoEncoder] Creation not supported for non H264 mime"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;

    invoke-direct {v0}, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;-><init>()V

    goto :goto_11
.end method


# virtual methods
.method public configure(IIII)V
    .registers 9

    sput p2, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->mFrameWidth:I

    sput p1, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->mFrameHeight:I

    sput p3, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->mVideoBitrate:I

    sput p4, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->mFramerate:I

    sget v0, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->mFrameHeight:I

    sget v1, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->mFrameWidth:I

    mul-int/2addr v0, v1

    int-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->MAX_FRAME_LEN:I

    sget v0, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->MAX_FRAME_LEN:I

    new-array v0, v0, [B

    sput-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->mOutEncodedData:[B

    return-void
.end method

.method public encode([BZ)V
    .registers 6

    const/4 v0, 0x0

    sget v1, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->LVSFVideoContext:I

    sget-object v2, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->mOutEncodedData:[B

    invoke-static {v1, p1, v2, p2}, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->LifeVibesICSMediaCoderEncode(I[B[BZ)I

    move-result v0

    return-void
.end method

.method public pollEncoderForOutput()Ljava/nio/ByteBuffer;
    .registers 7

    const/4 v0, 0x0

    sget v4, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->LVSFVideoContext:I

    sget-object v5, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->mOutEncodedData:[B

    invoke-static {v4, v5}, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->LifeVibesICSPollEncoderForOutput(I[B)I

    move-result v0

    if-nez v0, :cond_13

    const-string v4, "[LVSF_VideoEncoder] LVSF Native ICS Video Encode poll has DataLen = 0 !"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    :goto_12
    return-object v1

    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LVSF_VideoEncoder] LVSF Native ICS Video Encode poll has DataLen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-array v3, v0, [B

    const/4 v2, 0x0

    :goto_2d
    if-ge v2, v0, :cond_38

    sget-object v4, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->mOutEncodedData:[B

    aget-byte v4, v4, v2

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_38
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_12
.end method

.method public start()V
    .registers 7

    const/4 v0, 0x0

    new-instance v0, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder$LVSF_mediaDSI;

    invoke-direct {v0}, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder$LVSF_mediaDSI;-><init>()V

    sget v2, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->MAX_DSI_LEN:I

    new-array v2, v2, [B

    iput-object v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder$LVSF_mediaDSI;->bufferDSI:[B

    const/4 v2, 0x0

    iput v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder$LVSF_mediaDSI;->bufferSize:I

    sget v2, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->mFrameWidth:I

    sget v3, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->mFrameHeight:I

    sget v4, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->mVideoBitrate:I

    sget v5, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->mFramerate:I

    invoke-static {v0, v2, v3, v4, v5}, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->LVSFVideoEncoderInit(Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder$LVSF_mediaDSI;IIII)I

    move-result v2

    sput v2, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->LVSFVideoContext:I

    sget v2, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->LVSFVideoContext:I

    if-nez v2, :cond_2f

    const-string v2, "[LVSF_VideoEncoder] LVSF Native ICS Video Encoder creation failed"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "LVSF Native ICS Video Encoder creation failed ..!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2f
    iget v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder$LVSF_mediaDSI;->bufferSize:I

    new-array v2, v2, [B

    sput-object v2, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDSI:[B

    const/4 v1, 0x0

    :goto_36
    iget v2, v0, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder$LVSF_mediaDSI;->bufferSize:I

    if-ge v1, v2, :cond_45

    sget-object v2, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->mVideoDSI:[B

    iget-object v3, v0, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder$LVSF_mediaDSI;->bufferDSI:[B

    aget-byte v3, v3, v1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_45
    return-void
.end method

.method public stop()V
    .registers 4

    sget v1, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->LVSFVideoContext:I

    invoke-static {v1}, Lcom/lifevibes/mediacoder/LVMediaCoderSFVideoEncoder;->LifeVibesICSMediaCoderDestroy(I)I

    move-result v0

    if-eqz v0, :cond_16

    const-string v1, "[LVSF_VideoEncoder] LVSF Native ICS Video stop failed "

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "LVSF Native ICS Video stop failed ..!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    return-void
.end method
