.class  Lco/vine/android/service/VineUploadService$1;
.super Ljava/lang/Object;
.source "VineUploadService.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/service/VineUploadService;
.method constructor <init>(Lco/vine/android/service/VineUploadService;)V
.registers 2
iput-object p1, p0, Lco/vine/android/service/VineUploadService$1;->this$0:Lco/vine/android/service/VineUploadService;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lco/vine/android/service/VineUploadService$1;->this$0:Lco/vine/android/service/VineUploadService;
#calls: Lco/vine/android/service/VineUploadService;->stopIfNoTasksLeft()V
invoke-static {v0}, Lco/vine/android/service/VineUploadService;->access$500(Lco/vine/android/service/VineUploadService;)V
return-void
.end method