.class  Lcom/twidroid/billing/c;
.super Lcom/twidroid/billing/a;
.source "SourceFile"
.field final c:[Ljava/lang/String;
.field final synthetic d:Lcom/twidroid/billing/BillingService;
.method public constructor <init>(Lcom/twidroid/billing/BillingService;I[Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/twidroid/billing/c;->d:Lcom/twidroid/billing/BillingService;
invoke-direct {p0, p1, p2}, Lcom/twidroid/billing/a;-><init>(Lcom/twidroid/billing/BillingService;I)V
iput-object p3, p0, Lcom/twidroid/billing/c;->c:[Ljava/lang/String;
return-void
.end method
.method protected d()J
.registers 5
const-string v0, "CONFIRM_NOTIFICATIONS"
invoke-virtual {p0, v0}, Lcom/twidroid/billing/c;->a(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "NOTIFY_IDS"
iget-object v2, p0, Lcom/twidroid/billing/c;->c:[Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
invoke-static {}, Lcom/twidroid/billing/BillingService;->e()Lcom/android/vending/billing/IMarketBillingService;
move-result-object v1
invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->a(Landroid/os/Bundle;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "confirmNotifications"
invoke-virtual {p0, v1, v0}, Lcom/twidroid/billing/c;->a(Ljava/lang/String;Landroid/os/Bundle;)V
const-string v1, "REQUEST_ID"
sget-wide v2, Lcom/twidroid/billing/g;->x:J
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v0
return-wide v0
.end method