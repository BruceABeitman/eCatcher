.class public interface abstract Lco/vine/android/player/VideoViewInterface;
.super Ljava/lang/Object;
.source "VideoViewInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/player/VideoViewInterface$OnErrorListener;,
        Lco/vine/android/player/VideoViewInterface$OnCompletionListener;,
        Lco/vine/android/player/VideoViewInterface$OnPreparedListener;
    }
.end annotation


# virtual methods
.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getPlayingPosition()I
.end method

.method public abstract getTag()Ljava/lang/Object;
.end method

.method public abstract hasStarted()Z
.end method

.method public abstract isInPlaybackState()Z
.end method

.method public abstract isPaused()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract onPrepared()V
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract setAutoPlayOnPrepared(Z)V
.end method

.method public abstract setKeepScreenOn(Z)V
.end method

.method public abstract setLooping(Z)V
.end method

.method public abstract setOnCompletionListener(Lco/vine/android/player/VideoViewInterface$OnCompletionListener;)V
.end method

.method public abstract setOnErrorListener(Lco/vine/android/player/VideoViewInterface$OnErrorListener;)V
.end method

.method public abstract setOnPreparedListener(Lco/vine/android/player/VideoViewInterface$OnPreparedListener;)V
.end method

.method public abstract setVideoPath(Ljava/lang/String;)V
.end method

.method public abstract setVideoPathDirect(Ljava/lang/String;)V
.end method

.method public abstract start()V
.end method

.method public abstract stopPlayback()V
.end method

.method public abstract suspend()V
.end method
