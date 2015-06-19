.class public Lcom/google/android/exoplayer/ExoPlayer;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/ExoPlayer$Factory;,
        Lcom/google/android/exoplayer/ExoPlayer$Listener;
    }
.end annotation


# static fields
.field public static final STATE_BUFFERING:I = 0x3

.field public static final STATE_ENDED:I = 0x4

.field public static final STATE_IDLE:I = 0x1

.field public static final STATE_PREPARING:I = 0x2

.field public static final STATE_READY:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/android/exoplayer/ExoPlayer$Listener;)V
    .registers 2

    return-void
.end method

.method public blockingSendMessage(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    return-void
.end method

.method public getCurrentPosition()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getPlayWhenReady()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public prepare(Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;)V
    .registers 3

    return-void
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method public seekTo(I)V
    .registers 2

    return-void
.end method

.method public sendMessage(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .registers 2

    return-void
.end method

.method public stop()V
    .registers 1

    return-void
.end method
