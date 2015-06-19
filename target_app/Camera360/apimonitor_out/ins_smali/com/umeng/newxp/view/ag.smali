.class  Lcom/umeng/newxp/view/ag;
.super Ljava/lang/Object;
.source "Hypertextlink.java"
.implements Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;
.field final synthetic a:Lcom/umeng/newxp/view/af;
.method constructor <init>(Lcom/umeng/newxp/view/af;)V
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/view/ag;->a:Lcom/umeng/newxp/view/af;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public dataReceived(ILjava/util/List;)V
.registers 5
if-nez p1, :cond_b
sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
const-string/jumbo v1, "failed to get request data"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_a
return-void
:cond_b
iget-object v0, p0, Lcom/umeng/newxp/view/ag;->a:Lcom/umeng/newxp/view/af;
invoke-static {v0, p2}, Lcom/umeng/newxp/view/af;->a(Lcom/umeng/newxp/view/af;Ljava/util/List;)V
goto :goto_a
.end method