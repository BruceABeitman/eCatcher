.class Lco/vine/android/player/SdkVideoView$5;
.super Ljava/lang/Object;
.source "SdkVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/player/SdkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/player/SdkVideoView;


# direct methods
.method constructor <init>(Lco/vine/android/player/SdkVideoView;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/player/SdkVideoView$5;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_3c

    :goto_4
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$5;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mAutoPlayOnPrepared:Z
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$1700(Lco/vine/android/player/SdkVideoView;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    :cond_f
    :try_start_f
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$5;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lco/vine/android/player/SdkVideoView;->onVideoSizeChanged(II)V
    :try_end_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_1c} :catch_35

    :goto_1c
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$5;->this$0:Lco/vine/android/player/SdkVideoView;

    #calls: Lco/vine/android/player/SdkVideoView;->onPlayerPrepared()V
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$1800(Lco/vine/android/player/SdkVideoView;)V

    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$5;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mOnPreparedListener:Lco/vine/android/player/VideoViewInterface$OnPreparedListener;
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$1900(Lco/vine/android/player/SdkVideoView;)Lco/vine/android/player/VideoViewInterface$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$5;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mOnPreparedListener:Lco/vine/android/player/VideoViewInterface$OnPreparedListener;
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$1900(Lco/vine/android/player/SdkVideoView;)Lco/vine/android/player/VideoViewInterface$OnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/player/SdkVideoView$5;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-interface {v1, v2}, Lco/vine/android/player/VideoViewInterface$OnPreparedListener;->onPrepared(Lco/vine/android/player/VideoViewInterface;)V

    :cond_34
    return-void

    :catch_35
    move-exception v0

    const-string v1, "IllegalState happened. "

    invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V

    goto :goto_1c

    :catch_3c
    move-exception v1

    goto :goto_4
.end method
