.class  Lcom/umeng/newxp/view/aE;
.super Ljava/lang/Object;
.source "PartnersBanner.java"
.implements Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;
.field final synthetic a:Lcom/umeng/newxp/view/aD;
.method constructor <init>(Lcom/umeng/newxp/view/aD;)V
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/view/aE;->a:Lcom/umeng/newxp/view/aD;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public dataReceived(ILjava/util/List;)V
.registers 5
if-nez p1, :cond_b
sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
const-string/jumbo v1, "failed to get request data"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_a
:goto_a
return-void
:cond_b
iget-object v0, p0, Lcom/umeng/newxp/view/aE;->a:Lcom/umeng/newxp/view/aD;
new-instance v1, Lcom/umeng/newxp/controller/a;
invoke-direct {v1, p2}, Lcom/umeng/newxp/controller/a;-><init>(Ljava/util/List;)V
invoke-static {v0, v1}, Lcom/umeng/newxp/view/aD;->a(Lcom/umeng/newxp/view/aD;Lcom/umeng/newxp/controller/a;)V
iget-object v0, p0, Lcom/umeng/newxp/view/aE;->a:Lcom/umeng/newxp/view/aD;
invoke-static {v0, p2}, Lcom/umeng/newxp/view/aD;->a(Lcom/umeng/newxp/view/aD;Ljava/util/List;)V
iget-object v0, p0, Lcom/umeng/newxp/view/aE;->a:Lcom/umeng/newxp/view/aD;
invoke-static {v0}, Lcom/umeng/newxp/view/aD;->d(Lcom/umeng/newxp/view/aD;)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/umeng/newxp/view/aE;->a:Lcom/umeng/newxp/view/aD;
invoke-static {v0}, Lcom/umeng/newxp/view/aD;->d(Lcom/umeng/newxp/view/aD;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/umeng/newxp/view/aE;->a:Lcom/umeng/newxp/view/aD;
invoke-virtual {v0}, Lcom/umeng/newxp/view/aD;->a()V
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v0
const/4 v1, 0x1
if-le v0, v1, :cond_a
new-instance v0, Lcom/umeng/newxp/controller/g;
iget-object v1, p0, Lcom/umeng/newxp/view/aE;->a:Lcom/umeng/newxp/view/aD;
invoke-direct {v0, v1}, Lcom/umeng/newxp/controller/g;-><init>(Lcom/umeng/newxp/controller/f$a;)V
invoke-virtual {v0}, Lcom/umeng/newxp/controller/g;->start()V
goto :goto_a
.end method