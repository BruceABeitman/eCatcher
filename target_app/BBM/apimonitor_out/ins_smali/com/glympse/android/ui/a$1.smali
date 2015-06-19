.class  Lcom/glympse/android/ui/a$1;
.super Landroid/os/CountDownTimer;
.source "NotificationProvider.java"
.field final synthetic vO:Lcom/glympse/android/ui/a;
.method constructor <init>(Lcom/glympse/android/ui/a;JJ)V
.registers 6
iput-object p1, p0, Lcom/glympse/android/ui/a$1;->vO:Lcom/glympse/android/ui/a;
invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V
return-void
.end method
.method public onFinish()V
.registers 2
iget-object v0, p0, Lcom/glympse/android/ui/a$1;->vO:Lcom/glympse/android/ui/a;
iget-object v0, v0, Lcom/glympse/android/ui/a;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-static {v0}, Lcom/glympse/android/ui/NotificationProvider;->e(Lcom/glympse/android/ui/NotificationProvider;)Lcom/glympse/android/ui/a;
move-result-object v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/glympse/android/ui/a$1;->vO:Lcom/glympse/android/ui/a;
iget-object v0, v0, Lcom/glympse/android/ui/a;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-static {v0}, Lcom/glympse/android/ui/NotificationProvider;->e(Lcom/glympse/android/ui/NotificationProvider;)Lcom/glympse/android/ui/a;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/ui/a;->b(Lcom/glympse/android/ui/a;)V
:cond_15
return-void
.end method
.method public onTick(J)V
.registers 8
const/4 v4, 0x1
iget-object v0, p0, Lcom/glympse/android/ui/a$1;->vO:Lcom/glympse/android/ui/a;
iget-object v0, v0, Lcom/glympse/android/ui/a;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-static {v0}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;
move-result-object v0
sget v1, Lcom/glympse/android/api/R$string;->remaining_title:I
invoke-virtual {v0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;
move-result-object v0
new-array v1, v4, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/glympse/android/ui/a$1;->vO:Lcom/glympse/android/ui/a;
iget-object v3, v3, Lcom/glympse/android/ui/a;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-static {v3}, Lcom/glympse/android/ui/NotificationProvider;->b(Lcom/glympse/android/ui/NotificationProvider;)Landroid/app/Service;
move-result-object v3
invoke-static {v3, p1, p2, v4}, Lcom/glympse/android/hal/Helpers;->formatDuration(Landroid/content/Context;JZ)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/ui/a$1;->vO:Lcom/glympse/android/ui/a;
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Lcom/glympse/android/ui/a;->f(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/ui/a$1;->vO:Lcom/glympse/android/ui/a;
iget-object v0, v0, Lcom/glympse/android/ui/a;->vN:Lcom/glympse/android/ui/NotificationProvider;
invoke-virtual {v0}, Lcom/glympse/android/ui/NotificationProvider;->getNotificationManager()Landroid/app/NotificationManager;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/ui/a$1;->vO:Lcom/glympse/android/ui/a;
iget v1, v1, Lcom/glympse/android/ui/a;->vP:I
iget-object v2, p0, Lcom/glympse/android/ui/a$1;->vO:Lcom/glympse/android/ui/a;
invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
return-void
.end method