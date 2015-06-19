.class  Lcom/umeng/newxp/view/aw;
.super Ljava/lang/Object;
.source "ListDialog.java"
.implements Landroid/view/animation/Animation$AnimationListener;
.field final synthetic a:Lcom/umeng/newxp/view/au;
.method constructor <init>(Lcom/umeng/newxp/view/au;)V
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/view/aw;->a:Lcom/umeng/newxp/view/au;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 6
iget-object v0, p0, Lcom/umeng/newxp/view/aw;->a:Lcom/umeng/newxp/view/au;
invoke-static {v0}, Lcom/umeng/newxp/view/au;->b(Lcom/umeng/newxp/view/au;)I
move-result v0
const/4 v1, 0x1
if-eq v0, v1, :cond_67
iget-object v0, p0, Lcom/umeng/newxp/view/aw;->a:Lcom/umeng/newxp/view/au;
invoke-static {v0}, Lcom/umeng/newxp/view/au;->c(Lcom/umeng/newxp/view/au;)Lcom/umeng/newxp/controller/ExchangeDataService;
move-result-object v0
iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;
if-eqz v0, :cond_68
iget-object v0, p0, Lcom/umeng/newxp/view/aw;->a:Lcom/umeng/newxp/view/au;
invoke-static {v0}, Lcom/umeng/newxp/view/au;->c(Lcom/umeng/newxp/view/au;)Lcom/umeng/newxp/controller/ExchangeDataService;
move-result-object v0
iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;
iget-object v0, v0, Lcom/umeng/newxp/a;->a:Lcom/umeng/newxp/a$a;
sget-object v1, Lcom/umeng/newxp/a$a;->a:Lcom/umeng/newxp/a$a;
if-ne v0, v1, :cond_68
iget-object v0, p0, Lcom/umeng/newxp/view/aw;->a:Lcom/umeng/newxp/view/au;
invoke-static {v0}, Lcom/umeng/newxp/view/au;->c(Lcom/umeng/newxp/view/au;)Lcom/umeng/newxp/controller/ExchangeDataService;
move-result-object v0
iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;
invoke-virtual {v0}, Lcom/umeng/newxp/a;->b()Ljava/util/List;
move-result-object v0
iget-object v1, p0, Lcom/umeng/newxp/view/aw;->a:Lcom/umeng/newxp/view/au;
iget-object v1, v1, Lcom/umeng/newxp/view/au;->a:Lcom/umeng/newxp/view/aG;
if-eqz v1, :cond_3a
iget-object v1, p0, Lcom/umeng/newxp/view/aw;->a:Lcom/umeng/newxp/view/au;
iget-object v1, v1, Lcom/umeng/newxp/view/au;->a:Lcom/umeng/newxp/view/aG;
invoke-virtual {v1}, Lcom/umeng/newxp/view/aG;->b()V
:cond_3a
iget-object v1, p0, Lcom/umeng/newxp/view/aw;->a:Lcom/umeng/newxp/view/au;
invoke-static {v1}, Lcom/umeng/newxp/view/au;->a(Lcom/umeng/newxp/view/au;)V
iget-object v1, p0, Lcom/umeng/newxp/view/aw;->a:Lcom/umeng/newxp/view/au;
iget-object v2, p0, Lcom/umeng/newxp/view/aw;->a:Lcom/umeng/newxp/view/au;
invoke-static {v2}, Lcom/umeng/newxp/view/au;->d(Lcom/umeng/newxp/view/au;)Ljava/util/List;
move-result-object v2
invoke-static {v2, v0}, Lcom/umeng/newxp/common/g;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
move-result-object v2
invoke-static {v1, v2}, Lcom/umeng/newxp/view/au;->a(Lcom/umeng/newxp/view/au;Ljava/util/List;)V
sget-object v1, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "init view use preloadData.... "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
:cond_67
:goto_67
return-void
:cond_68
iget-object v0, p0, Lcom/umeng/newxp/view/aw;->a:Lcom/umeng/newxp/view/au;
invoke-static {v0}, Lcom/umeng/newxp/view/au;->c(Lcom/umeng/newxp/view/au;)Lcom/umeng/newxp/controller/ExchangeDataService;
move-result-object v0
const-string/jumbo v1, ""
iput-object v1, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;
iget-object v0, p0, Lcom/umeng/newxp/view/aw;->a:Lcom/umeng/newxp/view/au;
invoke-static {v0}, Lcom/umeng/newxp/view/au;->c(Lcom/umeng/newxp/view/au;)Lcom/umeng/newxp/controller/ExchangeDataService;
move-result-object v0
iget-object v1, p0, Lcom/umeng/newxp/view/aw;->a:Lcom/umeng/newxp/view/au;
invoke-static {v1}, Lcom/umeng/newxp/view/au;->e(Lcom/umeng/newxp/view/au;)Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/umeng/newxp/view/aw;->a:Lcom/umeng/newxp/view/au;
invoke-static {v2}, Lcom/umeng/newxp/view/au;->f(Lcom/umeng/newxp/view/au;)Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V
sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
const-string/jumbo v1, "init view use server data.... "
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_67
.end method
.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
.registers 2
return-void
.end method
.method public onAnimationStart(Landroid/view/animation/Animation;)V
.registers 4
iget-object v0, p0, Lcom/umeng/newxp/view/aw;->a:Lcom/umeng/newxp/view/au;
invoke-static {v0}, Lcom/umeng/newxp/view/au;->b(Lcom/umeng/newxp/view/au;)I
move-result v0
const/4 v1, 0x1
if-eq v0, v1, :cond_10
iget-object v0, p0, Lcom/umeng/newxp/view/aw;->a:Lcom/umeng/newxp/view/au;
iget-object v0, v0, Lcom/umeng/newxp/view/au;->a:Lcom/umeng/newxp/view/aG;
invoke-virtual {v0}, Lcom/umeng/newxp/view/aG;->a()V
:cond_10
return-void
.end method