.class  Lcom/umeng/newxp/view/ac;
.super Ljava/lang/Object;
.source "GridTemplate.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/umeng/newxp/view/ab;
.field private final synthetic b:Lcom/umeng/newxp/Promoter;
.method constructor <init>(Lcom/umeng/newxp/view/ab;Lcom/umeng/newxp/Promoter;)V
.registers 3
iput-object p1, p0, Lcom/umeng/newxp/view/ac;->a:Lcom/umeng/newxp/view/ab;
iput-object p2, p0, Lcom/umeng/newxp/view/ac;->b:Lcom/umeng/newxp/Promoter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/umeng/newxp/view/ac; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x0
new-instance v0, Lcom/umeng/newxp/controller/a$a;
iget-object v1, p0, Lcom/umeng/newxp/view/ac;->b:Lcom/umeng/newxp/Promoter;
invoke-direct {v0, v1, v4}, Lcom/umeng/newxp/controller/a$a;-><init>(Lcom/umeng/newxp/Promoter;I)V
iget-object v1, p0, Lcom/umeng/newxp/view/ac;->a:Lcom/umeng/newxp/view/ab;
invoke-static {v1}, Lcom/umeng/newxp/view/ab;->a(Lcom/umeng/newxp/view/ab;)Lcom/umeng/newxp/view/GridTemplate;
move-result-object v1
invoke-static {v1}, Lcom/umeng/newxp/view/GridTemplate;->c(Lcom/umeng/newxp/view/GridTemplate;)Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/umeng/newxp/view/ac;->a:Lcom/umeng/newxp/view/ab;
invoke-static {v2}, Lcom/umeng/newxp/view/ab;->a(Lcom/umeng/newxp/view/ab;)Lcom/umeng/newxp/view/GridTemplate;
move-result-object v2
invoke-static {v2}, Lcom/umeng/newxp/view/GridTemplate;->d(Lcom/umeng/newxp/view/GridTemplate;)Lcom/umeng/newxp/controller/ExchangeDataService;
move-result-object v2
iget-object v3, p0, Lcom/umeng/newxp/view/ac;->a:Lcom/umeng/newxp/view/ab;
invoke-static {v3}, Lcom/umeng/newxp/view/ab;->a(Lcom/umeng/newxp/view/ab;)Lcom/umeng/newxp/view/GridTemplate;
move-result-object v3
invoke-static {v3}, Lcom/umeng/newxp/view/GridTemplate;->e(Lcom/umeng/newxp/view/GridTemplate;)I
move-result v3
move v5, v4
invoke-static/range {v0 .. v5}, Lcom/umeng/newxp/controller/b;->a(Lcom/umeng/newxp/controller/a$a;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;IZI)V
const-string v1, " - Lcom/umeng/newxp/view/ac; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method