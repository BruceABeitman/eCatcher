.class  Lco/vine/android/recorder/ProgressView$1;
.super Ljava/lang/Object;
.source "ProgressView.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/recorder/ProgressView;
.method constructor <init>(Lco/vine/android/recorder/ProgressView;)V
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/ProgressView$1;->this$0:Lco/vine/android/recorder/ProgressView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/ProgressView$1;->this$0:Lco/vine/android/recorder/ProgressView;
invoke-virtual {v0}, Lco/vine/android/recorder/ProgressView;->invalidate()V
return-void
.end method