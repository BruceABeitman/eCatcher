.class final Lcom/instagram/android/feed/c/b;
.super Ljava/lang/Object;
.source "BlockUserDialogHelper.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/instagram/user/c/a;
.field final synthetic b:Lcom/instagram/android/feed/c/a;
.method constructor <init>(Lcom/instagram/android/feed/c/a;Lcom/instagram/user/c/a;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/feed/c/b;->b:Lcom/instagram/android/feed/c/a;
iput-object p2, p0, Lcom/instagram/android/feed/c/b;->a:Lcom/instagram/user/c/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/feed/c/b; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/feed/c/b;->a:Lcom/instagram/user/c/a;
iget-object v1, p0, Lcom/instagram/android/feed/c/b;->b:Lcom/instagram/android/feed/c/a;
invoke-static {v1}, Lcom/instagram/android/feed/c/a;->a(Lcom/instagram/android/feed/c/a;)Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/feed/c/b;->b:Lcom/instagram/android/feed/c/a;
invoke-static {v2}, Lcom/instagram/android/feed/c/a;->b(Lcom/instagram/android/feed/c/a;)Landroid/support/v4/app/an;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/instagram/android/h/b/a;->a(Lcom/instagram/user/c/a;Landroid/content/Context;Landroid/support/v4/app/an;)V
const-string v1, " - Lcom/instagram/android/feed/c/b; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method