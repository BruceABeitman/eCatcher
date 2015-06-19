.class  Lcom/pinguo/share/bind/BindManager$WebSitesThread;
.super Ljava/lang/Thread;
.source "BindManager.java"
.field private mActivity:Landroid/app/Activity;
.field private mBindProcess:Lcom/pinguo/share/bind/IBindProcess;
.method public constructor <init>(Lcom/pinguo/share/bind/IBindProcess;Landroid/app/Activity;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
iput-object p1, p0, Lcom/pinguo/share/bind/BindManager$WebSitesThread;->mBindProcess:Lcom/pinguo/share/bind/IBindProcess;
iput-object p2, p0, Lcom/pinguo/share/bind/BindManager$WebSitesThread;->mActivity:Landroid/app/Activity;
return-void
.end method
.method public getWebSites()V
.registers 3
iget-object v1, p0, Lcom/pinguo/share/bind/BindManager$WebSitesThread;->mActivity:Landroid/app/Activity;
invoke-static {v1}, Lcom/pinguo/share/bind/BindManager;->isNeedDispatch(Landroid/app/Activity;)Z
move-result v0
if-nez v0, :cond_e
iget-object v1, p0, Lcom/pinguo/share/bind/BindManager$WebSitesThread;->mBindProcess:Lcom/pinguo/share/bind/IBindProcess;
invoke-interface {v1}, Lcom/pinguo/share/bind/IBindProcess;->finishBind()V
:goto_d
return-void
:cond_e
iget-object v1, p0, Lcom/pinguo/share/bind/BindManager$WebSitesThread;->mBindProcess:Lcom/pinguo/share/bind/IBindProcess;
invoke-interface {v1}, Lcom/pinguo/share/bind/IBindProcess;->beforeThread()V
invoke-virtual {p0}, Lcom/pinguo/share/bind/BindManager$WebSitesThread;->start()V
goto :goto_d
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/pinguo/share/bind/BindManager$WebSitesThread;->mActivity:Landroid/app/Activity;
iget-object v1, p0, Lcom/pinguo/share/bind/BindManager$WebSitesThread;->mBindProcess:Lcom/pinguo/share/bind/IBindProcess;
invoke-static {v0, v1}, Lcom/pinguo/share/bind/BindManager;->requestDispatch(Landroid/content/Context;Lcom/pinguo/share/bind/IBindProcess;)V
return-void
.end method