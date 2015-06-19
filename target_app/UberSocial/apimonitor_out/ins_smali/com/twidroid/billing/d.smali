.class  Lcom/twidroid/billing/d;
.super Lcom/twidroid/billing/a;
.source "SourceFile"
.field  c:J
.field final d:[Ljava/lang/String;
.field final synthetic e:Lcom/twidroid/billing/BillingService;
.method public constructor <init>(Lcom/twidroid/billing/BillingService;I[Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/twidroid/billing/d;->e:Lcom/twidroid/billing/BillingService;
invoke-direct {p0, p1, p2}, Lcom/twidroid/billing/a;-><init>(Lcom/twidroid/billing/BillingService;I)V
iput-object p3, p0, Lcom/twidroid/billing/d;->d:[Ljava/lang/String;
return-void
.end method
.method protected a(Landroid/os/RemoteException;)V
.registers 4
invoke-super {p0, p1}, Lcom/twidroid/billing/a;->a(Landroid/os/RemoteException;)V
iget-wide v0, p0, Lcom/twidroid/billing/d;->c:J
invoke-static {v0, v1}, Lcom/twidroid/billing/l;->a(J)V
return-void
.end method
.method protected d()J
.registers 5
invoke-static {}, Lcom/twidroid/billing/l;->a()J
move-result-wide v0
iput-wide v0, p0, Lcom/twidroid/billing/d;->c:J
const-string v0, "GET_PURCHASE_INFORMATION"
invoke-virtual {p0, v0}, Lcom/twidroid/billing/d;->a(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "NONCE"
iget-wide v2, p0, Lcom/twidroid/billing/d;->c:J
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v1, "NOTIFY_IDS"
iget-object v2, p0, Lcom/twidroid/billing/d;->d:[Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
invoke-static {}, Lcom/twidroid/billing/BillingService;->e()Lcom/android/vending/billing/IMarketBillingService;
move-result-object v1
invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->a(Landroid/os/Bundle;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "getPurchaseInformation"
invoke-virtual {p0, v1, v0}, Lcom/twidroid/billing/d;->a(Ljava/lang/String;Landroid/os/Bundle;)V
const-string v1, "REQUEST_ID"
sget-wide v2, Lcom/twidroid/billing/g;->x:J
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v0
return-wide v0
.end method