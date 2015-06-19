.class final Lcom/instagram/android/l/c/i;
.super Ljava/lang/Object;
.source "UserListFragment.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/instagram/android/l/c/a;
.method constructor <init>(Lcom/instagram/android/l/c/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/l/c/i;->a:Lcom/instagram/android/l/c/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/l/c/i; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/l/c/i;->a:Lcom/instagram/android/l/c/a;
invoke-static {v0}, Lcom/instagram/android/l/c/a;->d(Lcom/instagram/android/l/c/a;)Lcom/instagram/common/a/a/m;
move-result-object v0
new-instance v1, Lcom/instagram/android/l/b/a;
invoke-direct {v1}, Lcom/instagram/android/l/b/a;-><init>()V
iget-object v2, p0, Lcom/instagram/android/l/c/i;->a:Lcom/instagram/android/l/c/a;
iget-object v2, v2, Lcom/instagram/android/l/c/a;->i:Lcom/instagram/api/k/a/h;
invoke-virtual {v1, v2}, Lcom/instagram/android/l/b/a;->a(Lcom/instagram/common/a/a/l;)Lcom/instagram/common/a/a/a;
move-result-object v1
invoke-interface {v0, v1}, Lcom/instagram/common/a/a/m;->a(Lcom/instagram/common/a/a/a;)V
const-string v1, " - Lcom/instagram/android/l/c/i; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method