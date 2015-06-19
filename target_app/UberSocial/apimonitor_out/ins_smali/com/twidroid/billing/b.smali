.class  Lcom/twidroid/billing/b;
.super Lcom/twidroid/billing/a;
.source "SourceFile"
.field public c:Ljava/lang/String;
.field final synthetic d:Lcom/twidroid/billing/BillingService;
.method public constructor <init>(Lcom/twidroid/billing/BillingService;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/billing/b;->d:Lcom/twidroid/billing/BillingService;
const/4 v0, -0x1
invoke-direct {p0, p1, v0}, Lcom/twidroid/billing/a;-><init>(Lcom/twidroid/billing/BillingService;I)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/billing/b;->c:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/twidroid/billing/BillingService;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/twidroid/billing/b;->d:Lcom/twidroid/billing/BillingService;
const/4 v0, -0x1
invoke-direct {p0, p1, v0}, Lcom/twidroid/billing/a;-><init>(Lcom/twidroid/billing/BillingService;I)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/billing/b;->c:Ljava/lang/String;
iput-object p2, p0, Lcom/twidroid/billing/b;->c:Ljava/lang/String;
return-void
.end method
.method protected d()J
.registers 4
const-string v0, "CHECK_BILLING_SUPPORTED"
invoke-virtual {p0, v0}, Lcom/twidroid/billing/b;->a(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/billing/b;->c:Ljava/lang/String;
if-eqz v1, :cond_11
const-string v1, "ITEM_TYPE"
iget-object v2, p0, Lcom/twidroid/billing/b;->c:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_11
invoke-static {}, Lcom/twidroid/billing/BillingService;->e()Lcom/android/vending/billing/IMarketBillingService;
move-result-object v1
invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->a(Landroid/os/Bundle;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "RESPONSE_CODE"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
sget-object v1, Lcom/twidroid/billing/i;->a:Lcom/twidroid/billing/i;
invoke-virtual {v1}, Lcom/twidroid/billing/i;->ordinal()I
move-result v1
if-ne v0, v1, :cond_30
const/4 v0, 0x1
:goto_28
iget-object v1, p0, Lcom/twidroid/billing/b;->c:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/twidroid/billing/k;->a(ZLjava/lang/String;)V
sget-wide v0, Lcom/twidroid/billing/g;->x:J
return-wide v0
:cond_30
const/4 v0, 0x0
goto :goto_28
.end method