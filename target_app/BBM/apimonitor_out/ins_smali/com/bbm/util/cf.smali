.class final Lcom/bbm/util/cf;
.super Landroid/text/style/ClickableSpan;
.source "LinkifyUtil.java"
.field final synthetic a:Landroid/content/Context;
.field final synthetic b:Ljava/lang/String;
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/bbm/util/cf;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/bbm/util/cf;->b:Ljava/lang/String;
invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/util/cf; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "clickableSpan clicked"
const-class v1, Lcom/bbm/util/LinkifyUtil;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/util/cf;->a:Landroid/content/Context;
check-cast v0, Landroid/app/Activity;
iget-object v1, p0, Lcom/bbm/util/cf;->b:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/bbm/h/aq;->a(Landroid/app/Activity;Ljava/lang/String;)V
const-string v1, " - Lcom/bbm/util/cf; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method