.class  Lcom/umeng/newxp/view/H;
.super Ljava/lang/Object;
.source "ExchangeViewManager.java"
.implements Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;
.field final synthetic a:Lcom/umeng/newxp/view/ExchangeViewManager;
.field private final synthetic b:Lcom/umeng/newxp/view/FloatDialogConfig;
.method constructor <init>(Lcom/umeng/newxp/view/ExchangeViewManager;Lcom/umeng/newxp/view/FloatDialogConfig;)V
.registers 3
iput-object p1, p0, Lcom/umeng/newxp/view/H;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
iput-object p2, p0, Lcom/umeng/newxp/view/H;->b:Lcom/umeng/newxp/view/FloatDialogConfig;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public dataReceived(ILjava/util/List;)V
.registers 6
iget-object v0, p0, Lcom/umeng/newxp/view/H;->b:Lcom/umeng/newxp/view/FloatDialogConfig;
invoke-virtual {v0}, Lcom/umeng/newxp/view/FloatDialogConfig;->getListener()Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/umeng/newxp/view/H;->b:Lcom/umeng/newxp/view/FloatDialogConfig;
invoke-virtual {v0}, Lcom/umeng/newxp/view/FloatDialogConfig;->getListener()Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;->onPrepared(I)V
:cond_11
iget-object v0, p0, Lcom/umeng/newxp/view/H;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
invoke-static {v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/controller/ExchangeDataService;
move-result-object v0
iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->opensize:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_53
if-eqz p2, :cond_43
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_43
const-string/jumbo v1, "0.04"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_43
const/4 v0, 0x0
invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/umeng/newxp/Promoter;
iget-object v1, p0, Lcom/umeng/newxp/view/H;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
iget-object v2, p0, Lcom/umeng/newxp/view/H;->b:Lcom/umeng/newxp/view/FloatDialogConfig;
invoke-virtual {v2}, Lcom/umeng/newxp/view/FloatDialogConfig;->getListener()Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;
move-result-object v2
invoke-static {v1, v0, v2}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/view/ExchangeViewManager;Lcom/umeng/newxp/Promoter;Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;)V
:goto_42
return-void
:cond_43
iget-object v0, p0, Lcom/umeng/newxp/view/H;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
iget-object v0, v0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;
iget-object v1, p0, Lcom/umeng/newxp/view/H;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
invoke-static {v1}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/controller/ExchangeDataService;
move-result-object v1
iget-object v2, p0, Lcom/umeng/newxp/view/H;->b:Lcom/umeng/newxp/view/FloatDialogConfig;
invoke-static {v0, v1, v2, p2}, Lcom/umeng/newxp/view/X;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/view/FloatDialogConfig;Ljava/util/List;)V
goto :goto_42
:cond_53
iget-object v0, p0, Lcom/umeng/newxp/view/H;->a:Lcom/umeng/newxp/view/ExchangeViewManager;
invoke-static {v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->d(Lcom/umeng/newxp/view/ExchangeViewManager;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "Unshow the suspended window. opensize is null"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_42
.end method