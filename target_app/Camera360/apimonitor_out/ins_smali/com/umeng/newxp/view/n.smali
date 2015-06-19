.class  Lcom/umeng/newxp/view/n;
.super Ljava/lang/Object;
.source "CloudDialog.java"
.implements Landroid/webkit/DownloadListener;
.field final synthetic a:Lcom/umeng/newxp/view/i;
.method constructor <init>(Lcom/umeng/newxp/view/i;)V
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/view/n;->a:Lcom/umeng/newxp/view/i;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.registers 13
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/umeng/newxp/view/n; onDownloadStart "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_22
const-wide/16 v0, 0x0
cmp-long v0, p5, v0
if-lez v0, :cond_22
new-instance v0, Lcom/umeng/common/net/a;
iget-object v1, p0, Lcom/umeng/newxp/view/n;->a:Lcom/umeng/newxp/view/i;
invoke-static {v1}, Lcom/umeng/newxp/view/i;->f(Lcom/umeng/newxp/view/i;)Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "xp"
const-string/jumbo v3, ""
const/4 v5, 0x0
move-object v4, p1
invoke-direct/range {v0 .. v5}, Lcom/umeng/common/net/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/common/net/k;)V
invoke-virtual {v0}, Lcom/umeng/common/net/a;->a()V
:cond_22
const-string v1, " - Lcom/umeng/newxp/view/n; onDownloadStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method