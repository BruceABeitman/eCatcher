.class  Lco/vine/android/player/SdkVideoView$3;
.super Ljava/lang/Object;
.source "SdkVideoView.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/player/SdkVideoView;
.field final synthetic val$keepScreenOn:Z
.method constructor <init>(Lco/vine/android/player/SdkVideoView;Z)V
.registers 3
iput-object p1, p0, Lco/vine/android/player/SdkVideoView$3;->this$0:Lco/vine/android/player/SdkVideoView;
iput-boolean p2, p0, Lco/vine/android/player/SdkVideoView$3;->val$keepScreenOn:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lco/vine/android/player/SdkVideoView$3;->this$0:Lco/vine/android/player/SdkVideoView;
iget-boolean v1, p0, Lco/vine/android/player/SdkVideoView$3;->val$keepScreenOn:Z
#calls: Landroid/view/View;->setKeepScreenOn(Z)V
invoke-static {v0, v1}, Lco/vine/android/player/SdkVideoView;->access$1601(Lco/vine/android/player/SdkVideoView;Z)V
return-void
.end method