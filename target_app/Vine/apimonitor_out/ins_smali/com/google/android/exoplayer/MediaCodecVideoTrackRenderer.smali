.class public Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
.super Ljava/lang/Object;
.source "MediaCodecVideoTrackRenderer.java"
.field public static final MSG_SET_SURFACE:Ljava/lang/Object;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x1
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
sput-object v0, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;->MSG_SET_SURFACE:Ljava/lang/Object;
return-void
.end method
.method public constructor <init>(Lcom/google/android/exoplayer/FrameworkSampleSource;IILandroid/os/Handler;Lco/vine/android/player/SdkVideoView;I)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method