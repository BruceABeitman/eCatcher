.class  Lco/vine/android/recorder/VineRecorder$11;
.super Ljava/lang/Object;
.source "VineRecorder.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;
.field final synthetic val$wasEditingAlready:Z
.method constructor <init>(Lco/vine/android/recorder/VineRecorder;Z)V
.registers 3
iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$11;->this$0:Lco/vine/android/recorder/VineRecorder;
iput-boolean p2, p0, Lco/vine/android/recorder/VineRecorder$11;->val$wasEditingAlready:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$11;->this$0:Lco/vine/android/recorder/VineRecorder;
iget-boolean v1, p0, Lco/vine/android/recorder/VineRecorder$11;->val$wasEditingAlready:Z
invoke-virtual {v0, v1}, Lco/vine/android/recorder/VineRecorder;->startEditMode(Z)V
return-void
.end method