.class  Lcom/glympse/android/ui/c;
.super Landroid/app/Notification;
.source "NotificationProvider.java"
.field final synthetic vN:Lcom/glympse/android/ui/NotificationProvider;
.field protected final vP:I
.field protected vQ:Ljava/lang/String;
.field protected vR:Ljava/lang/String;
.method public constructor <init>(Lcom/glympse/android/ui/NotificationProvider;)V
.registers 3
iput-object p1, p0, Lcom/glympse/android/ui/c;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-direct {p0}, Landroid/app/Notification;-><init>()V
iget-object v0, p0, Lcom/glympse/android/ui/c;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-static {v0}, Lcom/glympse/android/ui/NotificationProvider;->a(Lcom/glympse/android/ui/NotificationProvider;)I
move-result v0
iput v0, p0, Lcom/glympse/android/ui/c;->vP:I
return-void
.end method
.method protected f(Ljava/lang/String;Ljava/lang/String;)V
.registers 7
if-eqz p1, :cond_4
iput-object p1, p0, Lcom/glympse/android/ui/c;->vQ:Ljava/lang/String;
:cond_4
if-eqz p2, :cond_8
iput-object p2, p0, Lcom/glympse/android/ui/c;->vR:Ljava/lang/String;
:cond_8
iget-object v0, p0, Lcom/glympse/android/ui/c;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-static {v0}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/ui/c;->vQ:Ljava/lang/String;
iget-object v2, p0, Lcom/glympse/android/ui/c;->vR:Ljava/lang/String;
iget-object v3, p0, Lcom/glympse/android/ui/c;->contentIntent:Landroid/app/PendingIntent;
invoke-virtual {p0, v0, v1, v2, v3}, Lcom/glympse/android/ui/c;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
return-void
.end method
.method public remove()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/ui/c;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-virtual {v0}, Lcom/glympse/android/ui/NotificationProvider;->getNotificationManager()Landroid/app/NotificationManager;
move-result-object v0
iget v1, p0, Lcom/glympse/android/ui/c;->vP:I
invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
return-void
.end method