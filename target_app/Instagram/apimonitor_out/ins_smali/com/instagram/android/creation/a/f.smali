.class final Lcom/instagram/android/creation/a/f;
.super Ljava/lang/Object;
.source "DirectShareFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/creation/a/d;
.method constructor <init>(Lcom/instagram/android/creation/a/d;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/creation/a/f;->a:Lcom/instagram/android/creation/a/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/creation/a/f; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/creation/a/f;->a:Lcom/instagram/android/creation/a/d;
invoke-static {v0}, Lcom/instagram/android/creation/a/d;->k(Lcom/instagram/android/creation/a/d;)V
iget-object v0, p0, Lcom/instagram/android/creation/a/f;->a:Lcom/instagram/android/creation/a/d;
invoke-static {v0}, Lcom/instagram/android/creation/a/d;->l(Lcom/instagram/android/creation/a/d;)Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->requestFocus()Z
iget-object v0, p0, Lcom/instagram/android/creation/a/f;->a:Lcom/instagram/android/creation/a/d;
iget-object v1, p0, Lcom/instagram/android/creation/a/f;->a:Lcom/instagram/android/creation/a/d;
invoke-static {v1}, Lcom/instagram/android/creation/a/d;->l(Lcom/instagram/android/creation/a/d;)Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/android/creation/a/d;->a(Lcom/instagram/android/creation/a/d;Landroid/view/View;)V
const-string v1, " - Lcom/instagram/android/creation/a/f; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method