.class Lco/vine/android/player/OldSdkVideoView$8;
.super Ljava/lang/Object;
.source "OldSdkVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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

    iput-object p1, p0, Lco/vine/android/player/OldSdkVideoView$8;->this$0:Lco/vine/android/player/OldSdkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 11

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lco/vine/android/player/OldSdkVideoView$8;->this$0:Lco/vine/android/player/OldSdkVideoView;

    #setter for: Lco/vine/android/player/OldSdkVideoView;->mSurfaceWidth:I
    invoke-static {v4, p3}, Lco/vine/android/player/OldSdkVideoView;->access$1302(Lco/vine/android/player/OldSdkVideoView;I)I

    iget-object v4, p0, Lco/vine/android/player/OldSdkVideoView$8;->this$0:Lco/vine/android/player/OldSdkVideoView;

    #setter for: Lco/vine/android/player/OldSdkVideoView;->mSurfaceHeight:I
    invoke-static {v4, p4}, Lco/vine/android/player/OldSdkVideoView;->access$1402(Lco/vine/android/player/OldSdkVideoView;I)I

    iget-object v4, p0, Lco/vine/android/player/OldSdkVideoView$8;->this$0:Lco/vine/android/player/OldSdkVideoView;

    #getter for: Lco/vine/android/player/OldSdkVideoView;->mTargetState:I
    invoke-static {v4}, Lco/vine/android/player/OldSdkVideoView;->access$1500(Lco/vine/android/player/OldSdkVideoView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4c

    move v1, v2

    :goto_16
    iget-object v4, p0, Lco/vine/android/player/OldSdkVideoView$8;->this$0:Lco/vine/android/player/OldSdkVideoView;

    #getter for: Lco/vine/android/player/OldSdkVideoView;->mVideoWidth:I
    invoke-static {v4}, Lco/vine/android/player/OldSdkVideoView;->access$300(Lco/vine/android/player/OldSdkVideoView;)I

    move-result v4

    if-ne v4, p3, :cond_4e

    iget-object v4, p0, Lco/vine/android/player/OldSdkVideoView$8;->this$0:Lco/vine/android/player/OldSdkVideoView;

    #getter for: Lco/vine/android/player/OldSdkVideoView;->mVideoHeight:I
    invoke-static {v4}, Lco/vine/android/player/OldSdkVideoView;->access$400(Lco/vine/android/player/OldSdkVideoView;)I

    move-result v4

    if-ne v4, p4, :cond_4e

    move v0, v2

    :goto_27
    iget-object v2, p0, Lco/vine/android/player/OldSdkVideoView$8;->this$0:Lco/vine/android/player/OldSdkVideoView;

    #getter for: Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lco/vine/android/player/OldSdkVideoView;->access$1000(Lco/vine/android/player/OldSdkVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_4b

    if-eqz v1, :cond_4b

    if-eqz v0, :cond_4b

    iget-object v2, p0, Lco/vine/android/player/OldSdkVideoView$8;->this$0:Lco/vine/android/player/OldSdkVideoView;

    #getter for: Lco/vine/android/player/OldSdkVideoView;->mSeekWhenPrepared:I
    invoke-static {v2}, Lco/vine/android/player/OldSdkVideoView;->access$1200(Lco/vine/android/player/OldSdkVideoView;)I

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, p0, Lco/vine/android/player/OldSdkVideoView$8;->this$0:Lco/vine/android/player/OldSdkVideoView;

    iget-object v3, p0, Lco/vine/android/player/OldSdkVideoView$8;->this$0:Lco/vine/android/player/OldSdkVideoView;

    #getter for: Lco/vine/android/player/OldSdkVideoView;->mSeekWhenPrepared:I
    invoke-static {v3}, Lco/vine/android/player/OldSdkVideoView;->access$1200(Lco/vine/android/player/OldSdkVideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lco/vine/android/player/OldSdkVideoView;->seekTo(I)V

    :cond_46
    iget-object v2, p0, Lco/vine/android/player/OldSdkVideoView$8;->this$0:Lco/vine/android/player/OldSdkVideoView;

    invoke-virtual {v2}, Lco/vine/android/player/OldSdkVideoView;->start()V

    :cond_4b
    return-void

    :cond_4c
    move v1, v3

    goto :goto_16

    :cond_4e
    move v0, v3

    goto :goto_27
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView$8;->this$0:Lco/vine/android/player/OldSdkVideoView;

    #setter for: Lco/vine/android/player/OldSdkVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, p1}, Lco/vine/android/player/OldSdkVideoView;->access$2002(Lco/vine/android/player/OldSdkVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView$8;->this$0:Lco/vine/android/player/OldSdkVideoView;

    #calls: Lco/vine/android/player/OldSdkVideoView;->openVideo()V
    invoke-static {v0}, Lco/vine/android/player/OldSdkVideoView;->access$2100(Lco/vine/android/player/OldSdkVideoView;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView$8;->this$0:Lco/vine/android/player/OldSdkVideoView;

    const/4 v1, 0x0

    #setter for: Lco/vine/android/player/OldSdkVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, v1}, Lco/vine/android/player/OldSdkVideoView;->access$2002(Lco/vine/android/player/OldSdkVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView$8;->this$0:Lco/vine/android/player/OldSdkVideoView;

    #getter for: Lco/vine/android/player/OldSdkVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lco/vine/android/player/OldSdkVideoView;->access$1100(Lco/vine/android/player/OldSdkVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView$8;->this$0:Lco/vine/android/player/OldSdkVideoView;

    #getter for: Lco/vine/android/player/OldSdkVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lco/vine/android/player/OldSdkVideoView;->access$1100(Lco/vine/android/player/OldSdkVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_17
    iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView$8;->this$0:Lco/vine/android/player/OldSdkVideoView;

    const/4 v1, 0x1

    #calls: Lco/vine/android/player/OldSdkVideoView;->release(Z)V
    invoke-static {v0, v1}, Lco/vine/android/player/OldSdkVideoView;->access$2200(Lco/vine/android/player/OldSdkVideoView;Z)V

    return-void
.end method
