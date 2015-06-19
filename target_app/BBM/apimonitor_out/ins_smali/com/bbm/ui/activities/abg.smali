.class final Lcom/bbm/ui/activities/abg;
.super Ljava/lang/Object;
.source "PaymentSwitcherActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/PaymentSwitcherActivity;
.method constructor <init>(Lcom/bbm/ui/activities/PaymentSwitcherActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/abg;->a:Lcom/bbm/ui/activities/PaymentSwitcherActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/abg; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/abg;->a:Lcom/bbm/ui/activities/PaymentSwitcherActivity;
const/16 v1, 0x3e8
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/activities/PaymentSwitcherActivity;->setResult(ILandroid/content/Intent;)V
invoke-virtual {v0}, Lcom/bbm/ui/activities/PaymentSwitcherActivity;->finish()V
const-string v1, " - Lcom/bbm/ui/activities/abg; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method