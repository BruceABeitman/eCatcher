.class  Lcom/umeng/newxp/view/aJ;
.super Ljava/lang/Object;
.source "SimpleDownloadDialog.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/umeng/newxp/view/aI;
.field private final synthetic b:Lcom/umeng/newxp/controller/ExchangeDataService;
.method constructor <init>(Lcom/umeng/newxp/view/aI;Lcom/umeng/newxp/controller/ExchangeDataService;)V
.registers 3
iput-object p1, p0, Lcom/umeng/newxp/view/aJ;->a:Lcom/umeng/newxp/view/aI;
iput-object p2, p0, Lcom/umeng/newxp/view/aJ;->b:Lcom/umeng/newxp/controller/ExchangeDataService;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/umeng/newxp/view/aJ; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x1
new-instance v0, Lcom/umeng/newxp/net/e$a;
iget-object v1, p0, Lcom/umeng/newxp/view/aJ;->a:Lcom/umeng/newxp/view/aI;
invoke-static {v1}, Lcom/umeng/newxp/view/aI;->a(Lcom/umeng/newxp/view/aI;)Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V
const/4 v1, 0x3
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;
move-result-object v0
iget-object v1, p0, Lcom/umeng/newxp/view/aJ;->b:Lcom/umeng/newxp/controller/ExchangeDataService;
invoke-virtual {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
iget-object v1, p0, Lcom/umeng/newxp/view/aJ;->a:Lcom/umeng/newxp/view/aI;
invoke-static {v1}, Lcom/umeng/newxp/view/aI;->b(Lcom/umeng/newxp/view/aI;)I
move-result v1
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;
move-result-object v0
iget-object v1, p0, Lcom/umeng/newxp/view/aJ;->a:Lcom/umeng/newxp/view/aI;
invoke-static {v1}, Lcom/umeng/newxp/view/aI;->c(Lcom/umeng/newxp/view/aI;)I
move-result v1
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;
move-result-object v0
new-array v1, v2, [Lcom/umeng/newxp/Promoter;
const/4 v2, 0x0
iget-object v3, p0, Lcom/umeng/newxp/view/aJ;->a:Lcom/umeng/newxp/view/aI;
invoke-static {v3}, Lcom/umeng/newxp/view/aI;->d(Lcom/umeng/newxp/view/aI;)Lcom/umeng/newxp/Promoter;
move-result-object v3
aput-object v3, v1, v2
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
iget-object v1, p0, Lcom/umeng/newxp/view/aJ;->a:Lcom/umeng/newxp/view/aI;
invoke-static {v1}, Lcom/umeng/newxp/view/aI;->a(Lcom/umeng/newxp/view/aI;)Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/umeng/newxp/view/aJ;->b:Lcom/umeng/newxp/controller/ExchangeDataService;
invoke-static {v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
iget-object v1, p0, Lcom/umeng/newxp/view/aJ;->b:Lcom/umeng/newxp/controller/ExchangeDataService;
iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
iget-object v1, p0, Lcom/umeng/newxp/view/aJ;->b:Lcom/umeng/newxp/controller/ExchangeDataService;
iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
new-instance v1, Lcom/umeng/newxp/net/c;
iget-object v2, p0, Lcom/umeng/newxp/view/aJ;->a:Lcom/umeng/newxp/view/aI;
invoke-static {v2}, Lcom/umeng/newxp/view/aI;->a(Lcom/umeng/newxp/view/aI;)Landroid/content/Context;
move-result-object v2
iget-object v3, p0, Lcom/umeng/newxp/view/aJ;->a:Lcom/umeng/newxp/view/aI;
invoke-static {v3}, Lcom/umeng/newxp/view/aI;->d(Lcom/umeng/newxp/view/aI;)Lcom/umeng/newxp/Promoter;
move-result-object v3
invoke-direct {v1, v2, v3, v0}, Lcom/umeng/newxp/net/c;-><init>(Landroid/content/Context;Lcom/umeng/newxp/Promoter;Lcom/umeng/newxp/net/e$a;)V
invoke-virtual {v1}, Lcom/umeng/newxp/net/c;->a()V
const-string v1, " - Lcom/umeng/newxp/view/aJ; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method