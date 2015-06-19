.class Lco/vine/android/player/OldSdkVideoView$1;
.super Ljava/lang/Object;
.source "OldSdkVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/player/OldSdkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/player/OldSdkVideoView;


# direct methods
.method constructor <init>(Lco/vine/android/player/OldSdkVideoView;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/player/OldSdkVideoView$1;->this$0:Lco/vine/android/player/OldSdkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4

    const-string v0, "Videoview prepared."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView$1;->this$0:Lco/vine/android/player/OldSdkVideoView;

    #getter for: Lco/vine/android/player/OldSdkVideoView;->mAutoPlay:Z
    invoke-static {v0}, Lco/vine/android/player/OldSdkVideoView;->access$000(Lco/vine/android/player/OldSdkVideoView;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    :cond_10
    iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView$1;->this$0:Lco/vine/android/player/OldSdkVideoView;

    #getter for: Lco/vine/android/player/OldSdkVideoView;->mLooping:Z
    invoke-static {v0}, Lco/vine/android/player/OldSdkVideoView;->access$100(Lco/vine/android/player/OldSdkVideoView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView$1;->this$0:Lco/vine/android/player/OldSdkVideoView;

    #getter for: Lco/vine/android/player/OldSdkVideoView;->mCustomOnPreParedListener:Lco/vine/android/player/VideoViewInterface$OnPreparedListener;
    invoke-static {v0}, Lco/vine/android/player/OldSdkVideoView;->access$200(Lco/vine/android/player/OldSdkVideoView;)Lco/vine/android/player/VideoViewInterface$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView$1;->this$0:Lco/vine/android/player/OldSdkVideoView;

    #getter for: Lco/vine/android/player/OldSdkVideoView;->mCustomOnPreParedListener:Lco/vine/android/player/VideoViewInterface$OnPreparedListener;
    invoke-static {v0}, Lco/vine/android/player/OldSdkVideoView;->access$200(Lco/vine/android/player/OldSdkVideoView;)Lco/vine/android/player/VideoViewInterface$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView$1;->this$0:Lco/vine/android/player/OldSdkVideoView;

    invoke-interface {v0, v1}, Lco/vine/android/player/VideoViewInterface$OnPreparedListener;->onPrepared(Lco/vine/android/player/VideoViewInterface;)V

    :cond_2c
    return-void
.end method
