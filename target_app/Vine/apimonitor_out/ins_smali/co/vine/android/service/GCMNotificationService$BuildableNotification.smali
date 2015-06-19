.class public Lco/vine/android/service/GCMNotificationService$BuildableNotification;
.super Ljava/lang/Object;
.source "GCMNotificationService.java"
.field final event:Lco/vine/android/service/GCMNotificationService$NotificationEvent;
.field final notification:Lco/vine/android/api/VineSingleNotification;
.field final synthetic this$0:Lco/vine/android/service/GCMNotificationService;
.method public constructor <init>(Lco/vine/android/service/GCMNotificationService;Lco/vine/android/api/VineSingleNotification;Lco/vine/android/service/GCMNotificationService$NotificationEvent;)V
.registers 4
iput-object p1, p0, Lco/vine/android/service/GCMNotificationService$BuildableNotification;->this$0:Lco/vine/android/service/GCMNotificationService;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lco/vine/android/service/GCMNotificationService$BuildableNotification;->notification:Lco/vine/android/api/VineSingleNotification;
iput-object p3, p0, Lco/vine/android/service/GCMNotificationService$BuildableNotification;->event:Lco/vine/android/service/GCMNotificationService$NotificationEvent;
return-void
.end method
.method public build()V
.registers 4
iget-object v0, p0, Lco/vine/android/service/GCMNotificationService$BuildableNotification;->this$0:Lco/vine/android/service/GCMNotificationService;
iget-object v1, p0, Lco/vine/android/service/GCMNotificationService$BuildableNotification;->notification:Lco/vine/android/api/VineSingleNotification;
iget-object v2, p0, Lco/vine/android/service/GCMNotificationService$BuildableNotification;->event:Lco/vine/android/service/GCMNotificationService$NotificationEvent;
#calls: Lco/vine/android/service/GCMNotificationService;->buildNotification(Lco/vine/android/api/VineSingleNotification;Lco/vine/android/service/GCMNotificationService$NotificationEvent;)V
invoke-static {v0, v1, v2}, Lco/vine/android/service/GCMNotificationService;->access$900(Lco/vine/android/service/GCMNotificationService;Lco/vine/android/api/VineSingleNotification;Lco/vine/android/service/GCMNotificationService$NotificationEvent;)V
return-void
.end method