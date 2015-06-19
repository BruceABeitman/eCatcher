.class  Lco/vine/android/player/OldSdkVideoView$6;
.super Ljava/lang/Object;
.source "OldSdkVideoView.java"
.implements Landroid/media/MediaPlayer$OnErrorListener;
.field final synthetic this$0:Lco/vine/android/player/OldSdkVideoView;
.method constructor <init>(Lco/vine/android/player/OldSdkVideoView;)V
.registers 2
iput-object p1, p0, Lco/vine/android/player/OldSdkVideoView$6;->this$0:Lco/vine/android/player/OldSdkVideoView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onError(Landroid/media/MediaPlayer;II)Z
.registers 8
const/4 v3, 0x1
const/4 v2, -0x1
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Error: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ","
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView$6;->this$0:Lco/vine/android/player/OldSdkVideoView;
#setter for: Lco/vine/android/player/OldSdkVideoView;->mCurrentState:I
invoke-static {v0, v2}, Lco/vine/android/player/OldSdkVideoView;->access$502(Lco/vine/android/player/OldSdkVideoView;I)I
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView$6;->this$0:Lco/vine/android/player/OldSdkVideoView;
#setter for: Lco/vine/android/player/OldSdkVideoView;->mTargetState:I
invoke-static {v0, v2}, Lco/vine/android/player/OldSdkVideoView;->access$1502(Lco/vine/android/player/OldSdkVideoView;I)I
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView$6;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-static {v0}, Lco/vine/android/player/OldSdkVideoView;->access$1100(Lco/vine/android/player/OldSdkVideoView;)Landroid/widget/MediaController;
move-result-object v0
if-eqz v0, :cond_3d
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView$6;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mMediaController:Landroid/widget/MediaController;
invoke-static {v0}, Lco/vine/android/player/OldSdkVideoView;->access$1100(Lco/vine/android/player/OldSdkVideoView;)Landroid/widget/MediaController;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V
:cond_3d
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView$6;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mOnErrorListener:Lco/vine/android/player/VideoViewInterface$OnErrorListener;
invoke-static {v0}, Lco/vine/android/player/OldSdkVideoView;->access$1800(Lco/vine/android/player/OldSdkVideoView;)Lco/vine/android/player/VideoViewInterface$OnErrorListener;
move-result-object v0
if-eqz v0, :cond_54
iget-object v0, p0, Lco/vine/android/player/OldSdkVideoView$6;->this$0:Lco/vine/android/player/OldSdkVideoView;
#getter for: Lco/vine/android/player/OldSdkVideoView;->mOnErrorListener:Lco/vine/android/player/VideoViewInterface$OnErrorListener;
invoke-static {v0}, Lco/vine/android/player/OldSdkVideoView;->access$1800(Lco/vine/android/player/OldSdkVideoView;)Lco/vine/android/player/VideoViewInterface$OnErrorListener;
move-result-object v0
iget-object v1, p0, Lco/vine/android/player/OldSdkVideoView$6;->this$0:Lco/vine/android/player/OldSdkVideoView;
invoke-interface {v0, v1, p2, p3}, Lco/vine/android/player/VideoViewInterface$OnErrorListener;->onError(Lco/vine/android/player/VideoViewInterface;II)Z
move-result v0
if-eqz v0, :cond_54
:goto_53
return v3
:cond_54
const-string v0, "Cannot play this video."
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
goto :goto_53
.end method