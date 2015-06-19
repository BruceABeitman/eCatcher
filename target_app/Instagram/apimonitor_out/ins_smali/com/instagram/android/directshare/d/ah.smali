.class final Lcom/instagram/android/directshare/d/ah;
.super Ljava/lang/Object;
.source "DirectSharePermalinkMoreOptionsDialog.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/instagram/android/directshare/d/ad;
.method constructor <init>(Lcom/instagram/android/directshare/d/ad;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/directshare/d/ah;->a:Lcom/instagram/android/directshare/d/ad;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/directshare/d/ah; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/instagram/f/a/a/p;
iget-object v1, p0, Lcom/instagram/android/directshare/d/ah;->a:Lcom/instagram/android/directshare/d/ad;
invoke-static {v1}, Lcom/instagram/android/directshare/d/ad;->c(Lcom/instagram/android/directshare/d/ad;)Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/directshare/d/ah;->a:Lcom/instagram/android/directshare/d/ad;
invoke-static {v2}, Lcom/instagram/android/directshare/d/ad;->i(Lcom/instagram/android/directshare/d/ad;)Landroid/support/v4/app/an;
move-result-object v2
iget-object v3, p0, Lcom/instagram/android/directshare/d/ah;->a:Lcom/instagram/android/directshare/d/ad;
invoke-static {v3}, Lcom/instagram/android/directshare/d/ad;->f(Lcom/instagram/android/directshare/d/ad;)Lcom/instagram/feed/d/l;
move-result-object v3
invoke-direct {v0, v1, v2, v3}, Lcom/instagram/f/a/a/p;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;)V
invoke-virtual {v0}, Lcom/instagram/f/a/a/p;->h()V
invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/k/b/a;->l()Z
move-result v0
if-nez v0, :cond_34
iget-object v0, p0, Lcom/instagram/android/directshare/d/ah;->a:Lcom/instagram/android/directshare/d/ad;
invoke-static {v0}, Lcom/instagram/android/directshare/d/ad;->c(Lcom/instagram/android/directshare/d/ad;)Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/instagram/android/directshare/b/a;->a(Landroid/content/Context;)V
invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/k/b/a;->m()Z
:cond_34
const-string v1, " - Lcom/instagram/android/directshare/d/ah; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method