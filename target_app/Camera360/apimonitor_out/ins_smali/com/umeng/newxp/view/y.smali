.class  Lcom/umeng/newxp/view/y;
.super Ljava/lang/Object;
.source "EncapsulatedList.java"
.implements Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;
.field final synthetic a:Lcom/umeng/newxp/view/w;
.method constructor <init>(Lcom/umeng/newxp/view/w;)V
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/view/y;->a:Lcom/umeng/newxp/view/w;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public dataReceived(ILjava/util/List;)V
.registers 4
if-eqz p2, :cond_12
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_12
iget-object v0, p0, Lcom/umeng/newxp/view/y;->a:Lcom/umeng/newxp/view/w;
invoke-static {v0, p2}, Lcom/umeng/newxp/view/w;->a(Lcom/umeng/newxp/view/w;Ljava/util/List;)V
iget-object v0, p0, Lcom/umeng/newxp/view/y;->a:Lcom/umeng/newxp/view/w;
invoke-static {v0}, Lcom/umeng/newxp/view/w;->f(Lcom/umeng/newxp/view/w;)V
:cond_12
return-void
.end method