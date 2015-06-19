.class final Lcom/instagram/android/l/c/m;
.super Ljava/lang/Object;
.source "UserListFragment.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/instagram/android/l/c/l;
.method constructor <init>(Lcom/instagram/android/l/c/l;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/l/c/m;->a:Lcom/instagram/android/l/c/l;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/l/c/m; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/l/c/m;->a:Lcom/instagram/android/l/c/l;
iget-object v0, v0, Lcom/instagram/android/l/c/l;->a:Lcom/instagram/android/l/c/a;
invoke-static {v0}, Lcom/instagram/android/l/c/a;->f(Lcom/instagram/android/l/c/a;)V
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
const-string v1, " - Lcom/instagram/android/l/c/m; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method