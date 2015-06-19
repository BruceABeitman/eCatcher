.class final Lcom/instagram/android/directshare/d/p;
.super Ljava/lang/Object;
.source "DirectSharePermalinkFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/model/b/a;
.field final synthetic b:Lcom/instagram/android/directshare/d/c;
.method constructor <init>(Lcom/instagram/android/directshare/d/c;Lcom/instagram/model/b/a;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/directshare/d/p;->b:Lcom/instagram/android/directshare/d/c;
iput-object p2, p0, Lcom/instagram/android/directshare/d/p;->a:Lcom/instagram/model/b/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/directshare/d/p; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/directshare/d/p;->b:Lcom/instagram/android/directshare/d/c;
invoke-virtual {v1}, Lcom/instagram/android/directshare/d/c;->p()Landroid/support/v4/app/s;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/directshare/d/p;->a:Lcom/instagram/model/b/a;
invoke-virtual {v2}, Lcom/instagram/model/b/a;->a()Lcom/instagram/user/c/a;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/instagram/n/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
const-string v1, " - Lcom/instagram/android/directshare/d/p; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method