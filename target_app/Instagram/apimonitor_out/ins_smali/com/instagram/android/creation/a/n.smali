.class final Lcom/instagram/android/creation/a/n;
.super Ljava/lang/Object;
.source "DirectShareFragment.java"
.implements Landroid/widget/AbsListView$OnScrollListener;
.field final synthetic a:Lcom/instagram/android/creation/a/d;
.method constructor <init>(Lcom/instagram/android/creation/a/d;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/creation/a/n;->a:Lcom/instagram/android/creation/a/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onScroll(Landroid/widget/AbsListView;III)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/creation/a/n; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/instagram/android/creation/a/n; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/creation/a/n; onScrollStateChanged "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/creation/a/n;->a:Lcom/instagram/android/creation/a/d;
invoke-static {v0}, Lcom/instagram/android/creation/a/d;->l(Lcom/instagram/android/creation/a/d;)Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->hasFocus()Z
move-result v0
if-nez v0, :cond_18
iget-object v0, p0, Lcom/instagram/android/creation/a/n;->a:Lcom/instagram/android/creation/a/d;
invoke-static {v0}, Lcom/instagram/android/creation/a/d;->d(Lcom/instagram/android/creation/a/d;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z
move-result v0
if-eqz v0, :cond_36
:cond_18
iget-object v0, p0, Lcom/instagram/android/creation/a/n;->a:Lcom/instagram/android/creation/a/d;
invoke-static {v0}, Lcom/instagram/android/creation/a/d;->l(Lcom/instagram/android/creation/a/d;)Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/directshare/widget/DirectShareSearchEditText;->clearFocus()V
iget-object v0, p0, Lcom/instagram/android/creation/a/n;->a:Lcom/instagram/android/creation/a/d;
invoke-static {v0}, Lcom/instagram/android/creation/a/d;->d(Lcom/instagram/android/creation/a/d;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V
iget-object v0, p0, Lcom/instagram/android/creation/a/n;->a:Lcom/instagram/android/creation/a/d;
invoke-static {v0}, Lcom/instagram/android/creation/a/d;->n(Lcom/instagram/android/creation/a/d;)Landroid/os/Handler;
move-result-object v0
const/4 v1, 0x1
const-wide/16 v2, 0x14
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
:cond_36
const-string v1, " - Lcom/instagram/android/creation/a/n; onScrollStateChanged"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method