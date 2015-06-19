.class final Landroid/support/v4/app/cd;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"
.implements Landroid/support/v4/app/ch;
.field final a:Ljava/lang/String;
.field final b:I
.field final c:Ljava/lang/String;
.field final d:Landroid/app/Notification;
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v4/app/cd;->a:Ljava/lang/String;
iput p2, p0, Landroid/support/v4/app/cd;->b:I
iput-object p3, p0, Landroid/support/v4/app/cd;->c:Ljava/lang/String;
iput-object p4, p0, Landroid/support/v4/app/cd;->d:Landroid/app/Notification;
return-void
.end method
.method public final a(Landroid/support/v4/app/ah;)V
.registers 6
iget-object v0, p0, Landroid/support/v4/app/cd;->a:Ljava/lang/String;
iget v1, p0, Landroid/support/v4/app/cd;->b:I
iget-object v2, p0, Landroid/support/v4/app/cd;->c:Ljava/lang/String;
iget-object v3, p0, Landroid/support/v4/app/cd;->d:Landroid/app/Notification;
invoke-interface {p1, v0, v1, v2, v3}, Landroid/support/v4/app/ah;->a(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
return-void
.end method
.method public final toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "NotifyTask["
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v1, "packageName:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Landroid/support/v4/app/cd;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, ", id:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Landroid/support/v4/app/cd;->b:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v1, ", tag:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Landroid/support/v4/app/cd;->c:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method