.class  Lco/vine/android/recorder/BasicVineRecorder$1;
.super Ljava/lang/Object;
.source "BasicVineRecorder.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/recorder/BasicVineRecorder;
.field final synthetic val$tag:Ljava/lang/String;
.method constructor <init>(Lco/vine/android/recorder/BasicVineRecorder;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lco/vine/android/recorder/BasicVineRecorder$1;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
iput-object p2, p0, Lco/vine/android/recorder/BasicVineRecorder$1;->val$tag:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder$1;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
iget-object v1, p0, Lco/vine/android/recorder/BasicVineRecorder$1;->val$tag:Ljava/lang/String;
invoke-virtual {v0, v1}, Lco/vine/android/recorder/BasicVineRecorder;->guardedStartRecording(Ljava/lang/String;)V
return-void
.end method