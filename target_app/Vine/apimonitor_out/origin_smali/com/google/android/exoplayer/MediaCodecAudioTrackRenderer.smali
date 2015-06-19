.class public Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;
.super Ljava/lang/Object;
.source "MediaCodecAudioTrackRenderer.java"


# static fields
.field public static final MSG_SET_VOLUME:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->MSG_SET_VOLUME:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/FrameworkSampleSource;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
