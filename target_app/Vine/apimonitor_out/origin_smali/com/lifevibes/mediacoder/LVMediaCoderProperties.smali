.class public Lcom/lifevibes/mediacoder/LVMediaCoderProperties;
.super Ljava/lang/Object;
.source "LVMediaCoderProperties.java"


# static fields
.field public static final AUDIO_CHANNEL_COUNT_1:I = 0x1

.field static final AUDIO_CHANNEL_COUNT_2:I = 0x2

.field public static final AUDIO_SAMPLE_RATE_11025:I = 0x2b11

.field public static final AUDIO_SAMPLE_RATE_12000:I = 0x2ee0

.field public static final AUDIO_SAMPLE_RATE_16000:I = 0x3e80

.field public static final AUDIO_SAMPLE_RATE_22050:I = 0x5622

.field public static final AUDIO_SAMPLE_RATE_24000:I = 0x5dc0

.field public static final AUDIO_SAMPLE_RATE_32000:I = 0x7d00

.field public static final AUDIO_SAMPLE_RATE_4096:I = 0x1000

.field public static final AUDIO_SAMPLE_RATE_44100:I = 0xac44

.field public static final AUDIO_SAMPLE_RATE_48000:I = 0xbb80

.field public static final AUDIO_SAMPLE_RATE_64000:I = 0xfa00

.field public static final AUDIO_SAMPLE_RATE_7350:I = 0x1cb6

.field public static final AUDIO_SAMPLE_RATE_8000:I = 0x1f40

.field public static final AUDIO_SAMPLE_RATE_88200:I = 0x15888

.field public static final AUDIO_SAMPLE_RATE_96000:I = 0x17700

.field public static final BITRATE_1M:I = 0xfa000

.field public static final BITRATE_2M:I = 0x1f4000

.field public static final BITRATE_3M:I = 0x2ee000

.field public static final BITRATE_512K:I = 0x7d000

.field public static final BITRATE_5M:I = 0x4e2000

.field public static final BITRATE_8M:I = 0x7d0000

.field public static final BITRATE_AUDIO_128K:I = 0x1f400

.field public static final BITRATE_AUDIO_64K:I = 0xfa00

.field static DEBUG:Z = false

.field static DUMPS:Z = false

.field public static final ENCODE_AUDIO:I = 0x1

.field public static final ENCODE_VIDEO:I = 0x0

.field protected static final ERROR_BLACK_FRAME:I = -0x1

.field public static final FRAMERATE_15:I = 0xf

.field public static final FRAMERATE_24:I = 0x18

.field public static final FRAMERATE_25:I = 0x19

.field public static final FRAMERATE_30:I = 0x1e

.field public static final INPUT_TYPE_RGB:I = 0x0

.field public static final INPUT_TYPE_RGBA:I = 0x1

.field static final RS_FILTERS_ENABLED:Z = false

.field private static final SUPPORTED_AUDIO_BITRATES:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_AUDIO_CHANNELCOUNTS:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_AUDIO_SAMPLERATES:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_FRAMERATES:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_HEIGHT_WIDTH:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_VIDEO_BITRATES:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_HEIGHT_240:I = 0xf0

.field public static final VIDEO_HEIGHT_320:I = 0x140

.field public static final VIDEO_HEIGHT_480:I = 0x1e0

.field public static final VIDEO_HEIGHT_640:I = 0x280

.field public static final VIDEO_HEIGHT_720:I = 0x2d0

.field public static final VIDEO_WIDTH_240:I = 0xf0

.field public static final VIDEO_WIDTH_320:I = 0x140

.field public static final VIDEO_WIDTH_480:I = 0x1e0

.field public static final VIDEO_WIDTH_640:I = 0x280

.field public static final VIDEO_WIDTH_720:I = 0x2d0


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/lifevibes/mediacoder/LVMediaCoderProperties$1;

    invoke-direct {v0}, Lcom/lifevibes/mediacoder/LVMediaCoderProperties$1;-><init>()V

    sput-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->SUPPORTED_HEIGHT_WIDTH:Ljava/util/ArrayList;

    new-instance v0, Lcom/lifevibes/mediacoder/LVMediaCoderProperties$2;

    invoke-direct {v0}, Lcom/lifevibes/mediacoder/LVMediaCoderProperties$2;-><init>()V

    sput-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->SUPPORTED_AUDIO_BITRATES:Ljava/util/ArrayList;

    new-instance v0, Lcom/lifevibes/mediacoder/LVMediaCoderProperties$3;

    invoke-direct {v0}, Lcom/lifevibes/mediacoder/LVMediaCoderProperties$3;-><init>()V

    sput-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->SUPPORTED_VIDEO_BITRATES:Ljava/util/ArrayList;

    new-instance v0, Lcom/lifevibes/mediacoder/LVMediaCoderProperties$4;

    invoke-direct {v0}, Lcom/lifevibes/mediacoder/LVMediaCoderProperties$4;-><init>()V

    sput-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->SUPPORTED_AUDIO_CHANNELCOUNTS:Ljava/util/ArrayList;

    new-instance v0, Lcom/lifevibes/mediacoder/LVMediaCoderProperties$5;

    invoke-direct {v0}, Lcom/lifevibes/mediacoder/LVMediaCoderProperties$5;-><init>()V

    sput-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->SUPPORTED_FRAMERATES:Ljava/util/ArrayList;

    new-instance v0, Lcom/lifevibes/mediacoder/LVMediaCoderProperties$6;

    invoke-direct {v0}, Lcom/lifevibes/mediacoder/LVMediaCoderProperties$6;-><init>()V

    sput-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->SUPPORTED_AUDIO_SAMPLERATES:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSupportedAudioBitrates()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->SUPPORTED_AUDIO_BITRATES:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getSupportedChannelCounts()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->SUPPORTED_AUDIO_CHANNELCOUNTS:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getSupportedFrameRates()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->SUPPORTED_FRAMERATES:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getSupportedHeightAndWidth()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->SUPPORTED_HEIGHT_WIDTH:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getSupportedSampleRates()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->SUPPORTED_AUDIO_SAMPLERATES:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getSupportedVideoBitrates()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->SUPPORTED_VIDEO_BITRATES:Ljava/util/ArrayList;

    return-object v0
.end method
