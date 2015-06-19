.class public final Lcom/google/android/gms/internal/cx;
.super Lcom/google/android/gms/internal/dg$a;
.implements Landroid/content/ServiceConnection;
.field private mContext:Landroid/content/Context;
.field private oW:Lcom/google/android/gms/internal/cs;
.field private pd:Ljava/lang/String;
.field private ph:Lcom/google/android/gms/internal/cw;
.field private pm:Z
.field private pn:I
.field private po:Landroid/content/Intent;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/internal/cw;)V
.registers 8
invoke-direct {p0}, Lcom/google/android/gms/internal/dg$a;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/cx;->pm:Z
iput-object p2, p0, Lcom/google/android/gms/internal/cx;->pd:Ljava/lang/String;
iput p4, p0, Lcom/google/android/gms/internal/cx;->pn:I
iput-object p5, p0, Lcom/google/android/gms/internal/cx;->po:Landroid/content/Intent;
iput-boolean p3, p0, Lcom/google/android/gms/internal/cx;->pm:Z
iput-object p1, p0, Lcom/google/android/gms/internal/cx;->mContext:Landroid/content/Context;
iput-object p6, p0, Lcom/google/android/gms/internal/cx;->ph:Lcom/google/android/gms/internal/cw;
return-void
.end method
.method public finishPurchase()V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/cx;->po:Landroid/content/Intent;
invoke-static {v0}, Lcom/google/android/gms/internal/cz;->c(Landroid/content/Intent;)I
move-result v0
iget v1, p0, Lcom/google/android/gms/internal/cx;->pn:I
const/4 v2, -0x1
if-ne v1, v2, :cond_d
if-eqz v0, :cond_e
:goto_d
:cond_d
return-void
:cond_e
new-instance v0, Lcom/google/android/gms/internal/cs;
iget-object v1, p0, Lcom/google/android/gms/internal/cx;->mContext:Landroid/content/Context;
invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cs;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/google/android/gms/internal/cx;->oW:Lcom/google/android/gms/internal/cs;
iget-object v0, p0, Lcom/google/android/gms/internal/cx;->mContext:Landroid/content/Context;
new-instance v1, Landroid/content/Intent;
const-string v2, "com.android.vending.billing.InAppBillingService.BIND"
invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/google/android/gms/internal/cx;->mContext:Landroid/content/Context;
const/4 v2, 0x1
invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
goto :goto_d
.end method
.method public getProductId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/cx;->pd:Ljava/lang/String;
return-object v0
.end method
.method public getPurchaseData()Landroid/content/Intent;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/cx;->po:Landroid/content/Intent;
return-object v0
.end method
.method public getResultCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/cx;->pn:I
return v0
.end method
.method public isVerified()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/internal/cx;->pm:Z
return v0
.end method
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/google/android/gms/internal/cx; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "In-app billing service connected."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->B(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/cx;->oW:Lcom/google/android/gms/internal/cs;
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/cs;->o(Landroid/os/IBinder;)V
iget-object v0, p0, Lcom/google/android/gms/internal/cx;->po:Landroid/content/Intent;
invoke-static {v0}, Lcom/google/android/gms/internal/cz;->d(Landroid/content/Intent;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/cz;->q(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_17
:goto_16
const-string v1, " - Lcom/google/android/gms/internal/cx; onServiceConnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_17
iget-object v1, p0, Lcom/google/android/gms/internal/cx;->oW:Lcom/google/android/gms/internal/cs;
iget-object v2, p0, Lcom/google/android/gms/internal/cx;->mContext:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/cs;->a(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
if-nez v0, :cond_30
iget-object v0, p0, Lcom/google/android/gms/internal/cx;->mContext:Landroid/content/Context;
invoke-static {v0}, Lcom/google/android/gms/internal/cy;->h(Landroid/content/Context;)Lcom/google/android/gms/internal/cy;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/internal/cx;->ph:Lcom/google/android/gms/internal/cw;
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cy;->a(Lcom/google/android/gms/internal/cw;)V
:cond_30
iget-object v0, p0, Lcom/google/android/gms/internal/cx;->mContext:Landroid/content/Context;
invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
iget-object v0, p0, Lcom/google/android/gms/internal/cx;->oW:Lcom/google/android/gms/internal/cs;
invoke-virtual {v0}, Lcom/google/android/gms/internal/cs;->destroy()V
goto :goto_16
.end method
.method public onServiceDisconnected(Landroid/content/ComponentName;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/google/android/gms/internal/cx; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "In-app billing service disconnected."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->B(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/cx;->oW:Lcom/google/android/gms/internal/cs;
invoke-virtual {v0}, Lcom/google/android/gms/internal/cs;->destroy()V
const-string v1, " - Lcom/google/android/gms/internal/cx; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method