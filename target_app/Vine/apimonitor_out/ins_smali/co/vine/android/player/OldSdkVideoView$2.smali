.class  Lco/vine/android/player/OldSdkVideoView$2;
.super Ljava/lang/Object;
.source "OldSdkVideoView.java"
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.field final synthetic this$0:Lco/vine/android/player/OldSdkVideoView;
.method constructor <init>(Lco/vine/android/player/OldSdkVideoView;)V
.registers 2
iput-object p1, p0, Lco/vine/android/player/OldSdkVideoView$2;->this$0:Lco/vine/android/player/OldSdkVideoView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
.registers 7
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView$2;->this$0:Lco/vine/android/player/OldSdkVideoView;
invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I
move-result v1
#setter for: Lco/vine/android/player/OldSdkVideoView;->mVideoWidth:I
invoke-static {v0, v1}, Lco/vine/android/player/OldSdkVideoView;->access$302(Lco/vine/android/player/OldSdkVideoView;I)I
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView$2;->this$0:Lco/vine/android/player/OldSdkVideoView;
invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I
move-result v1
#setter for: Lco/vine/android/player/OldSdkVideoView;->mVideoHeight:I
invoke-static {v0, v1}, Lco/vine/android/player/OldSdkVideoView;->access$402(Lco/vine/android/player/OldSdkVideoView;I)I
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView$2;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mVideoWidth:I
invoke-static {v0}, Lco/vine/android/player/OldSdkVideoView;->access$300(Lco/vine/android/player/OldSdkVideoView;)I
move-result v0
if-eqz v0, :cond_3c
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView$2;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mVideoHeight:I
invoke-static {v0}, Lco/vine/android/player/OldSdkVideoView;->access$400(Lco/vine/android/player/OldSdkVideoView;)I
move-result v0
if-eqz v0, :cond_3c
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView$2;->this$0:Lco/vine/android/player/OldSdkVideoView;
invoke-virtual {v0}, Lco/vine/android/player/OldSdkVideoView;->getHolder()Landroid/view/SurfaceHolder;
move-result-object v0
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView$2;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mVideoWidth:I
invoke-static {v1}, Lco/vine/android/player/OldSdkVideoView;->access$300(Lco/vine/android/player/OldSdkVideoView;)I
move-result v1
iget-object v2, p0, Lco/vine/android/player/OldSdkVideoView$2;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mVideoHeight:I
invoke-static {v2}, Lco/vine/android/player/OldSdkVideoView;->access$400(Lco/vine/android/player/OldSdkVideoView;)I
move-result v2
invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView$2;->this$0:Lco/vine/android/player/OldSdkVideoView;
invoke-virtual {v0}, Lco/vine/android/player/OldSdkVideoView;->requestLayout()V
:cond_3c
return-void
.end method