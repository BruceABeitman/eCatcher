.class abstract Lcom/twidroid/billing/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field protected a:J
.field final synthetic b:Lcom/twidroid/billing/BillingService;
.field private final c:I
.method public constructor <init>(Lcom/twidroid/billing/BillingService;I)V
.registers 3
iput-object p1, p0, Lcom/twidroid/billing/a;->b:Lcom/twidroid/billing/BillingService;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p2, p0, Lcom/twidroid/billing/a;->c:I
return-void
.end method
.method public a()I
.registers 2
iget v0, p0, Lcom/twidroid/billing/a;->c:I
return v0
.end method
.method protected a(Ljava/lang/String;)Landroid/os/Bundle;
.registers 5
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "BILLING_REQUEST"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "API_VERSION"
const/4 v2, 0x2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "PACKAGE_NAME"
iget-object v2, p0, Lcom/twidroid/billing/a;->b:Lcom/twidroid/billing/BillingService;
invoke-virtual {v2}, Lcom/twidroid/billing/BillingService;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method protected a(Landroid/os/RemoteException;)V
.registers 4
const-string v0, "BillingService"
const-string v1, "remote billing service crashed"
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x0
invoke-static {v0}, Lcom/twidroid/billing/BillingService;->a(Lcom/android/vending/billing/IMarketBillingService;)Lcom/android/vending/billing/IMarketBillingService;
return-void
.end method
.method protected a(Lcom/twidroid/billing/i;)V
.registers 2
return-void
.end method
.method protected a(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 7
const-string v0, "RESPONSE_CODE"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
invoke-static {v0}, Lcom/twidroid/billing/i;->a(I)Lcom/twidroid/billing/i;
move-result-object v0
const-string v1, "BillingService"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "logResponseCode: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " code:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public b()Z
.registers 3
const/4 v0, 0x1
invoke-virtual {p0}, Lcom/twidroid/billing/a;->c()Z
move-result v1
if-eqz v1, :cond_8
:goto_7
return v0
:cond_8
iget-object v1, p0, Lcom/twidroid/billing/a;->b:Lcom/twidroid/billing/BillingService;
invoke-static {v1}, Lcom/twidroid/billing/BillingService;->a(Lcom/twidroid/billing/BillingService;)Z
move-result v1
if-eqz v1, :cond_18
invoke-static {}, Lcom/twidroid/billing/BillingService;->d()Ljava/util/LinkedList;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
goto :goto_7
:cond_18
const/4 v0, 0x0
goto :goto_7
.end method
.method public c()Z
.registers 5
invoke-static {}, Lcom/twidroid/billing/BillingService;->e()Lcom/android/vending/billing/IMarketBillingService;
move-result-object v0
if-eqz v0, :cond_27
:try_start_6
invoke-virtual {p0}, Lcom/twidroid/billing/a;->d()J
move-result-wide v0
iput-wide v0, p0, Lcom/twidroid/billing/a;->a:J
iget-wide v0, p0, Lcom/twidroid/billing/a;->a:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-ltz v0, :cond_21
invoke-static {}, Lcom/twidroid/billing/BillingService;->f()Ljava/util/HashMap;
move-result-object v0
iget-wide v1, p0, Lcom/twidroid/billing/a;->a:J
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_21
:try_end_21
.catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_21} :catch_23
const/4 v0, 0x1
:goto_22
return v0
:catch_23
move-exception v0
invoke-virtual {p0, v0}, Lcom/twidroid/billing/a;->a(Landroid/os/RemoteException;)V
:cond_27
const/4 v0, 0x0
goto :goto_22
.end method
.method protected abstract d()J
.end method