.class final Lcom/instagram/android/fragment/co;
.super Ljava/lang/Object;
.source "LinkedAccountsFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/widget/x;
.field final synthetic b:Lcom/instagram/android/fragment/cn;
.method constructor <init>(Lcom/instagram/android/fragment/cn;Lcom/instagram/android/widget/x;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/fragment/co;->b:Lcom/instagram/android/fragment/cn;
iput-object p2, p0, Lcom/instagram/android/fragment/co;->a:Lcom/instagram/android/widget/x;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/fragment/co; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/fragment/co;->a:Lcom/instagram/android/widget/x;
invoke-virtual {v0}, Lcom/instagram/android/widget/x;->c()Z
move-result v0
if-eqz v0, :cond_2e
iget-object v0, p0, Lcom/instagram/android/fragment/co;->a:Lcom/instagram/android/widget/x;
sget-object v1, Lcom/instagram/android/widget/x;->a:Lcom/instagram/android/widget/x;
if-ne v0, v1, :cond_26
new-instance v0, Lcom/instagram/base/a/a/a;
iget-object v1, p0, Lcom/instagram/android/fragment/co;->b:Lcom/instagram/android/fragment/cn;
invoke-virtual {v1}, Lcom/instagram/android/fragment/cn;->p()Landroid/support/v4/app/s;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
new-instance v1, Lcom/instagram/android/fragment/av;
invoke-direct {v1}, Lcom/instagram/android/fragment/av;-><init>()V
invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
:goto_25
const-string v1, " - Lcom/instagram/android/fragment/co; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_26
iget-object v0, p0, Lcom/instagram/android/fragment/co;->b:Lcom/instagram/android/fragment/cn;
iget-object v1, p0, Lcom/instagram/android/fragment/co;->a:Lcom/instagram/android/widget/x;
invoke-static {v0, p1, v1}, Lcom/instagram/android/fragment/cn;->a(Lcom/instagram/android/fragment/cn;Landroid/view/View;Lcom/instagram/android/widget/x;)V
goto :goto_25
:cond_2e
iget-object v0, p0, Lcom/instagram/android/fragment/co;->a:Lcom/instagram/android/widget/x;
iget-object v1, p0, Lcom/instagram/android/fragment/co;->b:Lcom/instagram/android/fragment/cn;
iget-object v2, p0, Lcom/instagram/android/fragment/co;->b:Lcom/instagram/android/fragment/cn;
invoke-static {v2}, Lcom/instagram/android/fragment/cn;->a(Lcom/instagram/android/fragment/cn;)Lcom/instagram/android/fragment/cq;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/x;->a(Landroid/support/v4/app/Fragment;Lcom/facebook/b/e;)V
goto :goto_25
.end method