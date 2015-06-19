.class  Lcom/umeng/newxp/view/c;
.super Ljava/lang/Object;
.source "AdvertiserAdapter.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/umeng/newxp/view/a;
.field private final synthetic b:Lcom/umeng/newxp/Promoter;
.field private final synthetic c:I
.method constructor <init>(Lcom/umeng/newxp/view/a;Lcom/umeng/newxp/Promoter;I)V
.registers 4
iput-object p1, p0, Lcom/umeng/newxp/view/c;->a:Lcom/umeng/newxp/view/a;
iput-object p2, p0, Lcom/umeng/newxp/view/c;->b:Lcom/umeng/newxp/Promoter;
iput p3, p0, Lcom/umeng/newxp/view/c;->c:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/umeng/newxp/view/c; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/umeng/newxp/view/c;->a:Lcom/umeng/newxp/view/a;
iget-object v0, v0, Lcom/umeng/newxp/view/a;->a:Lcom/umeng/newxp/controller/XpListenersCenter$ListClickListener;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/umeng/newxp/view/c;->a:Lcom/umeng/newxp/view/a;
iget-object v0, v0, Lcom/umeng/newxp/view/a;->a:Lcom/umeng/newxp/controller/XpListenersCenter$ListClickListener;
iget-object v1, p0, Lcom/umeng/newxp/view/c;->b:Lcom/umeng/newxp/Promoter;
invoke-interface {v0, v1}, Lcom/umeng/newxp/controller/XpListenersCenter$ListClickListener;->click(Lcom/umeng/newxp/Promoter;)V
:goto_f
const-string v1, " - Lcom/umeng/newxp/view/c; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_10
new-instance v0, Lcom/umeng/newxp/controller/a$a;
iget-object v1, p0, Lcom/umeng/newxp/view/c;->b:Lcom/umeng/newxp/Promoter;
iget v2, p0, Lcom/umeng/newxp/view/c;->c:I
invoke-direct {v0, v1, v2}, Lcom/umeng/newxp/controller/a$a;-><init>(Lcom/umeng/newxp/Promoter;I)V
iget-object v1, p0, Lcom/umeng/newxp/view/c;->a:Lcom/umeng/newxp/view/a;
invoke-static {v1}, Lcom/umeng/newxp/view/a;->a(Lcom/umeng/newxp/view/a;)Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/umeng/newxp/view/c;->a:Lcom/umeng/newxp/view/a;
invoke-static {v2}, Lcom/umeng/newxp/view/a;->b(Lcom/umeng/newxp/view/a;)Lcom/umeng/newxp/controller/ExchangeDataService;
move-result-object v2
iget-object v3, p0, Lcom/umeng/newxp/view/c;->a:Lcom/umeng/newxp/view/a;
invoke-static {v3}, Lcom/umeng/newxp/view/a;->c(Lcom/umeng/newxp/view/a;)I
move-result v3
const/4 v4, 0x0
iget v5, p0, Lcom/umeng/newxp/view/c;->c:I
invoke-static/range {v0 .. v5}, Lcom/umeng/newxp/controller/b;->a(Lcom/umeng/newxp/controller/a$a;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;IZI)V
goto :goto_f
.end method