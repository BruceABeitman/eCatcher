.class  Lco/vine/android/player/SdkVideoView$8;
.super Ljava/lang/Object;
.source "SdkVideoView.java"
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.field final synthetic this$0:Lco/vine/android/player/SdkVideoView;
.method constructor <init>(Lco/vine/android/player/SdkVideoView;)V
.registers 2
iput-object p1, p0, Lco/vine/android/player/SdkVideoView$8;->this$0:Lco/vine/android/player/SdkVideoView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
.registers 4
iget-object v0, p0, Lco/vine/android/player/SdkVideoView$8;->this$0:Lco/vine/android/player/SdkVideoView;
#setter for: Lco/vine/android/player/SdkVideoView;->mCurrentBufferPercentage:I
invoke-static {v0, p2}, Lco/vine/android/player/SdkVideoView;->access$2202(Lco/vine/android/player/SdkVideoView;I)I
return-void
.end method