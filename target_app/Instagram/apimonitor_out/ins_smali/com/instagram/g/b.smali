.class final Lcom/instagram/g/b;
.super Ljava/lang/Object;
.source "FeedbackAlertDialogFragment.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Ljava/lang/String;
.field final synthetic c:Lcom/instagram/g/a;
.method constructor <init>(Lcom/instagram/g/a;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/instagram/g/b;->c:Lcom/instagram/g/a;
iput-object p2, p0, Lcom/instagram/g/b;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/instagram/g/b;->b:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/g/b; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/g/b;->c:Lcom/instagram/g/a;
invoke-virtual {v0}, Lcom/instagram/g/a;->l()Landroid/support/v4/app/k;
move-result-object v0
iget-object v1, p0, Lcom/instagram/g/b;->a:Ljava/lang/String;
iget-object v2, p0, Lcom/instagram/g/b;->b:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/instagram/simplewebview/SimpleWebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, " - Lcom/instagram/g/b; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method