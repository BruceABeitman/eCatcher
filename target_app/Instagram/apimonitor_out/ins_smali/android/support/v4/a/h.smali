.class final Landroid/support/v4/a/h;
.super Ljava/lang/Object;
.source "LocalBroadcastManager.java"
.field final a:Landroid/content/IntentFilter;
.field final b:Landroid/content/BroadcastReceiver;
.field  c:Z
.method constructor <init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v4/a/h;->a:Landroid/content/IntentFilter;
iput-object p2, p0, Landroid/support/v4/a/h;->b:Landroid/content/BroadcastReceiver;
return-void
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x80
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v1, "Receiver{"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Landroid/support/v4/a/h;->b:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
const-string v1, " filter="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Landroid/support/v4/a/h;->a:Landroid/content/IntentFilter;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
const-string v1, "}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method