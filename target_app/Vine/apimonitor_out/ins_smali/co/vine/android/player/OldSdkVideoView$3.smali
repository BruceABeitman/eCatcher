.class  Lco/vine/android/player/OldSdkVideoView$3;
.super Ljava/lang/Object;
.source "OldSdkVideoView.java"
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.field final synthetic this$0:Lco/vine/android/player/OldSdkVideoView;
.method constructor <init>(Lco/vine/android/player/OldSdkVideoView;)V
.registers 2
iput-object p1, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onPrepared(Landroid/media/MediaPlayer;)V
.registers 8
const/4 v5, 0x3
const/4 v4, 0x1
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
const/4 v2, 0x2
#setter for: Lco/vine/android/player/OldSdkVideoView;->mCurrentState:I
invoke-static {v1, v2}, Lco/vine/android/player/OldSdkVideoView;->access$502(Lco/vine/android/player/OldSdkVideoView;I)I
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
iget-object v2, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
iget-object v3, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
#setter for: Lco/vine/android/player/OldSdkVideoView;->mCanSeekForward:Z
invoke-static {v3, v4}, Lco/vine/android/player/OldSdkVideoView;->access$802(Lco/vine/android/player/OldSdkVideoView;Z)Z
move-result v3
#setter for: Lco/vine/android/player/OldSdkVideoView;->mCanSeekBack:Z
invoke-static {v2, v3}, Lco/vine/android/player/OldSdkVideoView;->access$702(Lco/vine/android/player/OldSdkVideoView;Z)Z
move-result v2
#setter for: Lco/vine/android/player/OldSdkVideoView;->mCanPause:Z
invoke-static {v1, v2}, Lco/vine/android/player/OldSdkVideoView;->access$602(Lco/vine/android/player/OldSdkVideoView;Z)Z
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
invoke-static {v1}, Lco/vine/android/player/OldSdkVideoView;->access$900(Lco/vine/android/player/OldSdkVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
move-result-object v1
if-eqz v1, :cond_30
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
invoke-static {v1}, Lco/vine/android/player/OldSdkVideoView;->access$900(Lco/vine/android/player/OldSdkVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
move-result-object v1
iget-object v2, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
invoke-static {v2}, Lco/vine/android/player/OldSdkVideoView;->access$1000(Lco/vine/android/player/OldSdkVideoView;)Landroid/media/MediaPlayer;
move-result-object v2
invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V
:cond_30
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-static {v1}, Lco/vine/android/player/OldSdkVideoView;->access$1100(Lco/vine/android/player/OldSdkVideoView;)Landroid/widget/MediaController;
move-result-object v1
if-eqz v1, :cond_41
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-static {v1}, Lco/vine/android/player/OldSdkVideoView;->access$1100(Lco/vine/android/player/OldSdkVideoView;)Landroid/widget/MediaController;
move-result-object v1
invoke-virtual {v1, v4}, Landroid/widget/MediaController;->setEnabled(Z)V
:cond_41
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I
move-result v2
#setter for: Lco/vine/android/player/OldSdkVideoView;->mVideoWidth:I
invoke-static {v1, v2}, Lco/vine/android/player/OldSdkVideoView;->access$302(Lco/vine/android/player/OldSdkVideoView;I)I
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I
move-result v2
#setter for: Lco/vine/android/player/OldSdkVideoView;->mVideoHeight:I
invoke-static {v1, v2}, Lco/vine/android/player/OldSdkVideoView;->access$402(Lco/vine/android/player/OldSdkVideoView;I)I
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mSeekWhenPrepared:I
invoke-static {v1}, Lco/vine/android/player/OldSdkVideoView;->access$1200(Lco/vine/android/player/OldSdkVideoView;)I
move-result v0
if-eqz v0, :cond_60
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
invoke-virtual {v1, v0}, Lco/vine/android/player/OldSdkVideoView;->seekTo(I)V
:cond_60
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mVideoWidth:I
invoke-static {v1}, Lco/vine/android/player/OldSdkVideoView;->access$300(Lco/vine/android/player/OldSdkVideoView;)I
move-result v1
if-eqz v1, :cond_e5
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mVideoHeight:I
invoke-static {v1}, Lco/vine/android/player/OldSdkVideoView;->access$400(Lco/vine/android/player/OldSdkVideoView;)I
move-result v1
if-eqz v1, :cond_e5
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
invoke-virtual {v1}, Lco/vine/android/player/OldSdkVideoView;->getHolder()Landroid/view/SurfaceHolder;
move-result-object v1
iget-object v2, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mVideoWidth:I
invoke-static {v2}, Lco/vine/android/player/OldSdkVideoView;->access$300(Lco/vine/android/player/OldSdkVideoView;)I
move-result v2
iget-object v3, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mVideoHeight:I
invoke-static {v3}, Lco/vine/android/player/OldSdkVideoView;->access$400(Lco/vine/android/player/OldSdkVideoView;)I
move-result v3
invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mSurfaceWidth:I
invoke-static {v1}, Lco/vine/android/player/OldSdkVideoView;->access$1300(Lco/vine/android/player/OldSdkVideoView;)I
move-result v1
iget-object v2, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mVideoWidth:I
invoke-static {v2}, Lco/vine/android/player/OldSdkVideoView;->access$300(Lco/vine/android/player/OldSdkVideoView;)I
move-result v2
if-ne v1, v2, :cond_bf
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mSurfaceHeight:I
invoke-static {v1}, Lco/vine/android/player/OldSdkVideoView;->access$1400(Lco/vine/android/player/OldSdkVideoView;)I
move-result v1
iget-object v2, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mVideoHeight:I
invoke-static {v2}, Lco/vine/android/player/OldSdkVideoView;->access$400(Lco/vine/android/player/OldSdkVideoView;)I
move-result v2
if-ne v1, v2, :cond_bf
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mTargetState:I
invoke-static {v1}, Lco/vine/android/player/OldSdkVideoView;->access$1500(Lco/vine/android/player/OldSdkVideoView;)I
move-result v1
if-ne v1, v5, :cond_c0
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
invoke-virtual {v1}, Lco/vine/android/player/OldSdkVideoView;->start()V
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-static {v1}, Lco/vine/android/player/OldSdkVideoView;->access$1100(Lco/vine/android/player/OldSdkVideoView;)Landroid/widget/MediaController;
move-result-object v1
if-eqz v1, :cond_bf
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-static {v1}, Lco/vine/android/player/OldSdkVideoView;->access$1100(Lco/vine/android/player/OldSdkVideoView;)Landroid/widget/MediaController;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/MediaController;->show()V
:goto_bf
:cond_bf
return-void
:cond_c0
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
invoke-virtual {v1}, Lco/vine/android/player/OldSdkVideoView;->isPlaying()Z
move-result v1
if-nez v1, :cond_bf
if-nez v0, :cond_d2
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
invoke-virtual {v1}, Lco/vine/android/player/OldSdkVideoView;->getCurrentPosition()I
move-result v1
if-lez v1, :cond_bf
:cond_d2
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-static {v1}, Lco/vine/android/player/OldSdkVideoView;->access$1100(Lco/vine/android/player/OldSdkVideoView;)Landroid/widget/MediaController;
move-result-object v1
if-eqz v1, :cond_bf
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-static {v1}, Lco/vine/android/player/OldSdkVideoView;->access$1100(Lco/vine/android/player/OldSdkVideoView;)Landroid/widget/MediaController;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/widget/MediaController;->show(I)V
goto :goto_bf
:cond_e5
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mTargetState:I
invoke-static {v1}, Lco/vine/android/player/OldSdkVideoView;->access$1500(Lco/vine/android/player/OldSdkVideoView;)I
move-result v1
if-ne v1, v5, :cond_bf
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView$3;->this$0:Lco/vine/android/player/OldSdkVideoView;
invoke-virtual {v1}, Lco/vine/android/player/OldSdkVideoView;->start()V
goto :goto_bf
.end method