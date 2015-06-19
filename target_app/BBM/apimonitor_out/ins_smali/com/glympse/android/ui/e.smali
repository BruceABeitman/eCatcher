.class  Lcom/glympse/android/ui/e;
.super Lcom/glympse/android/ui/c;
.source "NotificationProvider.java"
.field final synthetic vN:Lcom/glympse/android/ui/NotificationProvider;
.field private vS:Landroid/support/v4/app/ag;
.method private constructor <init>(Lcom/glympse/android/ui/NotificationProvider;Lcom/glympse/android/api/GUserTicket;)V
.registers 8
const/4 v4, 0x1
iput-object p1, p0, Lcom/glympse/android/ui/e;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-direct {p0, p1}, Lcom/glympse/android/ui/c;-><init>(Lcom/glympse/android/ui/NotificationProvider;)V
invoke-static {p1}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/GlympseService;->getServiceNotificationIntent(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v0
invoke-static {p1}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;
move-result-object v1
invoke-static {v1, v0, v4}, Lcom/glympse/android/ui/NotificationProvider;->createPendingServiceIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
new-instance v1, Landroid/support/v4/app/ag;
invoke-static {p1}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;
move-result-object v2
invoke-direct {v1, v2}, Landroid/support/v4/app/ag;-><init>(Landroid/content/Context;)V
invoke-interface {p2}, Lcom/glympse/android/api/GUserTicket;->getUser()Lcom/glympse/android/api/GUser;
move-result-object v2
invoke-interface {v2}, Lcom/glympse/android/api/GUser;->getNickname()Ljava/lang/String;
move-result-object v2
iput-object v2, v1, Landroid/support/v4/app/ag;->b:Ljava/lang/CharSequence;
invoke-static {p1}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;
move-result-object v2
sget v3, Lcom/glympse/android/api/R$string;->glympse_was_received:I
invoke-virtual {v2, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;
move-result-object v2
iput-object v2, v1, Landroid/support/v4/app/ag;->c:Ljava/lang/CharSequence;
invoke-virtual {v1, v4}, Landroid/support/v4/app/ag;->setLocalOnly(Z)Landroid/support/v4/app/NotificationCompat$Builder;
move-result-object v1
const/16 v2, 0x10
invoke-virtual {v1, v2}, Landroid/support/v4/app/ag;->c(I)V
iput-object v0, v1, Landroid/support/v4/app/ag;->d:Landroid/app/PendingIntent;
sget v0, Lcom/glympse/android/api/R$drawable;->notification_received:I
invoke-virtual {v1, v0}, Landroid/support/v4/app/ag;->a(I)Landroid/support/v4/app/ag;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/ui/e;->vS:Landroid/support/v4/app/ag;
invoke-static {p1}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;
move-result-object v0
iget v1, p0, Lcom/glympse/android/ui/e;->vP:I
iget-object v2, p0, Lcom/glympse/android/ui/e;->vS:Landroid/support/v4/app/ag;
invoke-virtual {v2}, Landroid/support/v4/app/ag;->a()Landroid/app/Notification;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V
return-void
.end method
.method synthetic constructor <init>(Lcom/glympse/android/ui/NotificationProvider;Lcom/glympse/android/api/GUserTicket;Lcom/glympse/android/ui/NotificationProvider$1;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/glympse/android/ui/e;-><init>(Lcom/glympse/android/ui/NotificationProvider;Lcom/glympse/android/api/GUserTicket;)V
return-void
.end method