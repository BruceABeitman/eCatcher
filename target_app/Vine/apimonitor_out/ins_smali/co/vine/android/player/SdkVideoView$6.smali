.class  Lco/vine/android/player/SdkVideoView$6;
.super Ljava/lang/Object;
.source "SdkVideoView.java"
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.field final synthetic this$0:Lco/vine/android/player/SdkVideoView;
.method constructor <init>(Lco/vine/android/player/SdkVideoView;)V
.registers 2
iput-object p1, p0, Lco/vine/android/player/SdkVideoView$6;->this$0:Lco/vine/android/player/SdkVideoView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCompletion(Landroid/media/MediaPlayer;)V
.registers 3
iget-object v0, p0, Lco/vine/android/player/SdkVideoView$6;->this$0:Lco/vine/android/player/SdkVideoView;
#calls: Lco/vine/android/player/SdkVideoView;->onComplete()V
invoke-static {v0}, Lco/vine/android/player/SdkVideoView;->access$2000(Lco/vine/android/player/SdkVideoView;)V
return-void
.end method