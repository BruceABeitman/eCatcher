.class  Lcom/umeng/newxp/view/E;
.super Ljava/lang/Object;
.source "ExchangeViewManager.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/umeng/newxp/view/D;
.method constructor <init>(Lcom/umeng/newxp/view/D;)V
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/view/E;->a:Lcom/umeng/newxp/view/D;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/umeng/newxp/view/E; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/umeng/newxp/view/E;->a:Lcom/umeng/newxp/view/D;
invoke-static {v0}, Lcom/umeng/newxp/view/D;->a(Lcom/umeng/newxp/view/D;)Lcom/umeng/newxp/view/ExchangeViewManager;
move-result-object v0
iget-object v0, v0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;
iget-object v1, p0, Lcom/umeng/newxp/view/E;->a:Lcom/umeng/newxp/view/D;
invoke-static {v1}, Lcom/umeng/newxp/view/D;->a(Lcom/umeng/newxp/view/D;)Lcom/umeng/newxp/view/ExchangeViewManager;
move-result-object v1
invoke-static {v1}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/controller/ExchangeDataService;
move-result-object v1
const/4 v2, 0x0
iget-object v3, p0, Lcom/umeng/newxp/view/E;->a:Lcom/umeng/newxp/view/D;
invoke-static {v3}, Lcom/umeng/newxp/view/D;->a(Lcom/umeng/newxp/view/D;)Lcom/umeng/newxp/view/ExchangeViewManager;
move-result-object v3
invoke-static {v3}, Lcom/umeng/newxp/view/ExchangeViewManager;->b(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/view/GridTemplateConfig;
move-result-object v3
iget-object v4, p0, Lcom/umeng/newxp/view/E;->a:Lcom/umeng/newxp/view/D;
invoke-static {v4}, Lcom/umeng/newxp/view/D;->a(Lcom/umeng/newxp/view/D;)Lcom/umeng/newxp/view/ExchangeViewManager;
move-result-object v4
invoke-static {v4}, Lcom/umeng/newxp/view/ExchangeViewManager;->c(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/view/ExHeader;
move-result-object v4
invoke-static {v0, v1, v2, v3, v4}, Lcom/umeng/newxp/view/au;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Ljava/util/List;Lcom/umeng/newxp/view/GridTemplateConfig;Lcom/umeng/newxp/view/ExHeader;)V
const-string v1, " - Lcom/umeng/newxp/view/E; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method