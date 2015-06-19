.class public Lcom/twidroid/billing/f;
.super Lcom/twidroid/billing/a;
.source "SourceFile"
.field  c:J
.field final synthetic d:Lcom/twidroid/billing/BillingService;
.method public constructor <init>(Lcom/twidroid/billing/BillingService;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/billing/f;->d:Lcom/twidroid/billing/BillingService;
const/4 v0, -0x1
invoke-direct {p0, p1, v0}, Lcom/twidroid/billing/a;-><init>(Lcom/twidroid/billing/BillingService;I)V
return-void
.end method
.method public bridge synthetic a()I
.registers 2
invoke-super {p0}, Lcom/twidroid/billing/a;->a()I
move-result v0
return v0
.end method
.method protected a(Landroid/os/RemoteException;)V
.registers 4
invoke-super {p0, p1}, Lcom/twidroid/billing/a;->a(Landroid/os/RemoteException;)V
iget-wide v0, p0, Lcom/twidroid/billing/f;->c:J
invoke-static {v0, v1}, Lcom/twidroid/billing/l;->a(J)V
return-void
.end method
.method protected a(Lcom/twidroid/billing/i;)V
.registers 3
iget-object v0, p0, Lcom/twidroid/billing/f;->d:Lcom/twidroid/billing/BillingService;
invoke-static {v0, p0, p1}, Lcom/twidroid/billing/k;->a(Landroid/content/Context;Lcom/twidroid/billing/f;Lcom/twidroid/billing/i;)V
return-void
.end method
.method public bridge synthetic b()Z
.registers 2
invoke-super {p0}, Lcom/twidroid/billing/a;->b()Z
move-result v0
return v0
.end method
.method public bridge synthetic c()Z
.registers 2
invoke-super {p0}, Lcom/twidroid/billing/a;->c()Z
move-result v0
return v0
.end method
.method protected d()J
.registers 5
invoke-static {}, Lcom/twidroid/billing/l;->a()J
move-result-wide v0
iput-wide v0, p0, Lcom/twidroid/billing/f;->c:J
const-string v0, "RESTORE_TRANSACTIONS"
invoke-virtual {p0, v0}, Lcom/twidroid/billing/f;->a(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "NONCE"
iget-wide v2, p0, Lcom/twidroid/billing/f;->c:J
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
invoke-static {}, Lcom/twidroid/billing/BillingService;->e()Lcom/android/vending/billing/IMarketBillingService;
move-result-object v1
invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->a(Landroid/os/Bundle;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "restoreTransactions"
invoke-virtual {p0, v1, v0}, Lcom/twidroid/billing/f;->a(Ljava/lang/String;Landroid/os/Bundle;)V
const-string v1, "REQUEST_ID"
sget-wide v2, Lcom/twidroid/billing/g;->x:J
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v0
return-wide v0
.end method