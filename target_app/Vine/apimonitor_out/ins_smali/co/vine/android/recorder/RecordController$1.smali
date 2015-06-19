.class  Lco/vine/android/recorder/RecordController$1;
.super Ljava/lang/Object;
.source "RecordController.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/recorder/RecordController;
.method constructor <init>(Lco/vine/android/recorder/RecordController;)V
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/RecordController$1;->this$0:Lco/vine/android/recorder/RecordController;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/RecordController$1;->this$0:Lco/vine/android/recorder/RecordController;
const-string v1, "Stop on thread."
invoke-virtual {v0, v1}, Lco/vine/android/recorder/RecordController;->releaseCameraAndPreview(Ljava/lang/String;)V
return-void
.end method