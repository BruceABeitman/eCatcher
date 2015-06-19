.class final Lcom/bbm/ui/e/by;
.super Ljava/lang/Object;
.source "SharedUrlHolder.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/bbm/ui/e/bx;
.method constructor <init>(Lcom/bbm/ui/e/bx;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/e/by;->b:Lcom/bbm/ui/e/bx;
iput-object p2, p0, Lcom/bbm/ui/e/by;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/e/by; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.VIEW"
iget-object v2, p0, Lcom/bbm/ui/e/by;->a:Ljava/lang/String;
invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
iget-object v1, p0, Lcom/bbm/ui/e/by;->b:Lcom/bbm/ui/e/bx;
iget-object v1, v1, Lcom/bbm/ui/e/bx;->a:Landroid/content/Context;
invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
const-string v1, " - Lcom/bbm/ui/e/by; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method