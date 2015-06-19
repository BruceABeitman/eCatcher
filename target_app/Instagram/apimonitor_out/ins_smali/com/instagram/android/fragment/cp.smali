.class final Lcom/instagram/android/fragment/cp;
.super Ljava/lang/Object;
.source "LinkedAccountsFragment.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/instagram/android/widget/x;
.field final synthetic b:Landroid/view/View;
.field final synthetic c:Lcom/instagram/android/fragment/cn;
.method constructor <init>(Lcom/instagram/android/fragment/cn;Lcom/instagram/android/widget/x;Landroid/view/View;)V
.registers 4
iput-object p1, p0, Lcom/instagram/android/fragment/cp;->c:Lcom/instagram/android/fragment/cn;
iput-object p2, p0, Lcom/instagram/android/fragment/cp;->a:Lcom/instagram/android/widget/x;
iput-object p3, p0, Lcom/instagram/android/fragment/cp;->b:Landroid/view/View;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/fragment/cp; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/fragment/cp;->a:Lcom/instagram/android/widget/x;
invoke-virtual {v0}, Lcom/instagram/android/widget/x;->d()V
iget-object v0, p0, Lcom/instagram/android/fragment/cp;->b:Landroid/view/View;
check-cast v0, Lcom/instagram/ui/menu/c;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/ui/menu/c;->setChecked(Z)V
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
const-string v1, " - Lcom/instagram/android/fragment/cp; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method