.class  Lcom/umeng/newxp/view/g;
.super Ljava/lang/Object;
.source "Banner.java"
.implements Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;
.field final synthetic a:Lcom/umeng/newxp/view/f;
.method constructor <init>(Lcom/umeng/newxp/view/f;)V
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/view/g;->a:Lcom/umeng/newxp/view/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public dataReceived(ILjava/util/List;)V
.registers 5
iget-object v0, p0, Lcom/umeng/newxp/view/g;->a:Lcom/umeng/newxp/view/f;
invoke-static {v0}, Lcom/umeng/newxp/view/f;->c(Lcom/umeng/newxp/view/f;)Lcom/umeng/newxp/controller/ExchangeDataService;
move-result-object v0
iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->initializeListener:Lcom/umeng/newxp/controller/XpListenersCenter$InitializeListener;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/umeng/newxp/view/g;->a:Lcom/umeng/newxp/view/f;
invoke-static {v0}, Lcom/umeng/newxp/view/f;->c(Lcom/umeng/newxp/view/f;)Lcom/umeng/newxp/controller/ExchangeDataService;
move-result-object v0
iget-object v1, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->initializeListener:Lcom/umeng/newxp/controller/XpListenersCenter$InitializeListener;
if-nez p2, :cond_23
const/4 v0, 0x0
:goto_15
invoke-interface {v1, v0}, Lcom/umeng/newxp/controller/XpListenersCenter$InitializeListener;->onReceived(I)V
:cond_18
if-nez p1, :cond_28
sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
const-string/jumbo v1, "failed to get request data"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_22
return-void
:cond_23
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v0
goto :goto_15
:cond_28
iget-object v0, p0, Lcom/umeng/newxp/view/g;->a:Lcom/umeng/newxp/view/f;
invoke-static {v0, p2}, Lcom/umeng/newxp/view/f;->a(Lcom/umeng/newxp/view/f;Ljava/util/List;)V
goto :goto_22
.end method