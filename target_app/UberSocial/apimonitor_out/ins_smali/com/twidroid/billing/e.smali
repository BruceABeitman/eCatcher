.class public Lcom/twidroid/billing/e;
.super Lcom/twidroid/billing/a;
.source "SourceFile"
.field public final c:Ljava/lang/String;
.field public final d:Ljava/lang/String;
.field public final e:Ljava/lang/String;
.field final synthetic f:Lcom/twidroid/billing/BillingService;
.method public constructor <init>(Lcom/twidroid/billing/BillingService;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0, v0}, Lcom/twidroid/billing/e;-><init>(Lcom/twidroid/billing/BillingService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Lcom/twidroid/billing/BillingService;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0, p3}, Lcom/twidroid/billing/e;-><init>(Lcom/twidroid/billing/BillingService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Lcom/twidroid/billing/BillingService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
iput-object p1, p0, Lcom/twidroid/billing/e;->f:Lcom/twidroid/billing/BillingService;
const/4 v0, -0x1
invoke-direct {p0, p1, v0}, Lcom/twidroid/billing/a;-><init>(Lcom/twidroid/billing/BillingService;I)V
iput-object p2, p0, Lcom/twidroid/billing/e;->c:Ljava/lang/String;
iput-object p4, p0, Lcom/twidroid/billing/e;->d:Ljava/lang/String;
iput-object p3, p0, Lcom/twidroid/billing/e;->e:Ljava/lang/String;
return-void
.end method
.method public bridge synthetic a()I
.registers 2
invoke-super {p0}, Lcom/twidroid/billing/a;->a()I
move-result v0
return v0
.end method
.method protected a(Lcom/twidroid/billing/i;)V
.registers 3
iget-object v0, p0, Lcom/twidroid/billing/e;->f:Lcom/twidroid/billing/BillingService;
invoke-static {v0, p0, p1}, Lcom/twidroid/billing/k;->a(Landroid/content/Context;Lcom/twidroid/billing/e;Lcom/twidroid/billing/i;)V
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
const-string v0, "REQUEST_PURCHASE"
invoke-virtual {p0, v0}, Lcom/twidroid/billing/e;->a(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v0
const-string v1, "ITEM_ID"
iget-object v2, p0, Lcom/twidroid/billing/e;->c:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "ITEM_TYPE"
iget-object v2, p0, Lcom/twidroid/billing/e;->e:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/billing/e;->d:Ljava/lang/String;
if-eqz v1, :cond_1f
const-string v1, "DEVELOPER_PAYLOAD"
iget-object v2, p0, Lcom/twidroid/billing/e;->d:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_1f
invoke-static {}, Lcom/twidroid/billing/BillingService;->e()Lcom/android/vending/billing/IMarketBillingService;
move-result-object v1
invoke-interface {v1, v0}, Lcom/android/vending/billing/IMarketBillingService;->a(Landroid/os/Bundle;)Landroid/os/Bundle;
move-result-object v1
const-string v0, "PURCHASE_INTENT"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/app/PendingIntent;
if-nez v0, :cond_34
sget-wide v0, Lcom/twidroid/billing/g;->x:J
:goto_33
return-wide v0
:cond_34
new-instance v2, Landroid/content/Intent;
invoke-direct {v2}, Landroid/content/Intent;-><init>()V
invoke-static {v0, v2}, Lcom/twidroid/billing/k;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)V
const-string v0, "REQUEST_ID"
sget-wide v2, Lcom/twidroid/billing/g;->x:J
invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v0
goto :goto_33
.end method