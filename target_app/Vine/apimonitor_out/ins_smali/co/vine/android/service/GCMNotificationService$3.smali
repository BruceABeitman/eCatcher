.class  Lco/vine/android/service/GCMNotificationService$3;
.super Ljava/lang/Object;
.source "GCMNotificationService.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/service/GCMNotificationService;
.method constructor <init>(Lco/vine/android/service/GCMNotificationService;)V
.registers 2
iput-object p1, p0, Lco/vine/android/service/GCMNotificationService$3;->this$0:Lco/vine/android/service/GCMNotificationService;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lco/vine/android/service/GCMNotificationService$3;->this$0:Lco/vine/android/service/GCMNotificationService;
#calls: Lco/vine/android/service/GCMNotificationService;->stopService()V
invoke-static {v0}, Lco/vine/android/service/GCMNotificationService;->access$500(Lco/vine/android/service/GCMNotificationService;)V
return-void
.end method