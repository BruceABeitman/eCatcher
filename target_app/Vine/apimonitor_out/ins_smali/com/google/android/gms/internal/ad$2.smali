.class  Lcom/google/android/gms/internal/ad$2;
.super Landroid/content/BroadcastReceiver;
.field final synthetic lK:Lcom/google/android/gms/internal/ad;
.method constructor <init>(Lcom/google/android/gms/internal/ad;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/ad$2;->lK:Lcom/google/android/gms/internal/ad;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/ad$2;->lK:Lcom/google/android/gms/internal/ad;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ad;->e(Z)V
return-void
.end method