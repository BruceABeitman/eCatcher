.class  Lco/vine/android/player/SdkVideoView$7;
.super Ljava/lang/Object;
.source "SdkVideoView.java"
.implements Landroid/media/MediaPlayer$OnErrorListener;
.field final synthetic this$0:Lco/vine/android/player/SdkVideoView;
.method constructor <init>(Lco/vine/android/player/SdkVideoView;)V
.registers 2
iput-object p1, p0, Lco/vine/android/player/SdkVideoView$7;->this$0:Lco/vine/android/player/SdkVideoView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onError(Landroid/media/MediaPlayer;II)Z
.registers 5
iget-object v0, p0, Lco/vine/android/player/SdkVideoView$7;->this$0:Lco/vine/android/player/SdkVideoView;
#calls: Lco/vine/android/player/SdkVideoView;->onError(II)Z
invoke-static {v0, p2, p3}, Lco/vine/android/player/SdkVideoView;->access$2100(Lco/vine/android/player/SdkVideoView;II)Z
const/4 v0, 0x1
return v0
.end method