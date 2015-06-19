.class final Lcom/google/android/gms/internal/c$2;
.super Landroid/content/BroadcastReceiver;
.field final synthetic a:Lcom/google/android/gms/internal/c;
.method constructor <init>(Lcom/google/android/gms/internal/c;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/c$2;->a:Lcom/google/android/gms/internal/c;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/c$2;->a:Lcom/google/android/gms/internal/c;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/c;->b(Z)V
return-void
.end method