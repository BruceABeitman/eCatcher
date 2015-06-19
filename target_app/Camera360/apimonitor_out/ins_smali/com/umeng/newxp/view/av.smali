.class  Lcom/umeng/newxp/view/av;
.super Ljava/lang/Object;
.source "ListDialog.java"
.implements Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;
.field final synthetic a:Lcom/umeng/newxp/view/au;
.method constructor <init>(Lcom/umeng/newxp/view/au;)V
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/view/av;->a:Lcom/umeng/newxp/view/au;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public dataReceived(ILjava/util/List;)V
.registers 5
if-nez p1, :cond_3
:goto_2
:cond_2
return-void
:cond_3
iget-object v0, p0, Lcom/umeng/newxp/view/av;->a:Lcom/umeng/newxp/view/au;
const/4 v1, 0x0
invoke-static {v1, p2}, Lcom/umeng/newxp/common/g;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
move-result-object v1
invoke-static {v0, v1}, Lcom/umeng/newxp/view/au;->a(Lcom/umeng/newxp/view/au;Ljava/util/List;)V
iget-object v0, p0, Lcom/umeng/newxp/view/av;->a:Lcom/umeng/newxp/view/au;
invoke-static {v0}, Lcom/umeng/newxp/view/au;->a(Lcom/umeng/newxp/view/au;)V
iget-object v0, p0, Lcom/umeng/newxp/view/av;->a:Lcom/umeng/newxp/view/au;
iget-object v0, v0, Lcom/umeng/newxp/view/au;->a:Lcom/umeng/newxp/view/aG;
if-eqz v0, :cond_2
iget-object v0, p0, Lcom/umeng/newxp/view/av;->a:Lcom/umeng/newxp/view/au;
iget-object v0, v0, Lcom/umeng/newxp/view/au;->a:Lcom/umeng/newxp/view/aG;
invoke-virtual {v0}, Lcom/umeng/newxp/view/aG;->b()V
goto :goto_2
.end method