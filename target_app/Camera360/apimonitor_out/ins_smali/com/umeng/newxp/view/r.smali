.class  Lcom/umeng/newxp/view/r;
.super Ljava/lang/Object;
.source "EmbededContainer.java"
.implements Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;
.field final synthetic a:Lcom/umeng/newxp/view/EmbededContainer;
.field private final synthetic b:Lcom/umeng/newxp/view/aG;
.method constructor <init>(Lcom/umeng/newxp/view/EmbededContainer;Lcom/umeng/newxp/view/aG;)V
.registers 3
iput-object p1, p0, Lcom/umeng/newxp/view/r;->a:Lcom/umeng/newxp/view/EmbededContainer;
iput-object p2, p0, Lcom/umeng/newxp/view/r;->b:Lcom/umeng/newxp/view/aG;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public dataReceived(ILjava/util/List;)V
.registers 5
iget-object v0, p0, Lcom/umeng/newxp/view/r;->a:Lcom/umeng/newxp/view/EmbededContainer;
iget-object v1, p0, Lcom/umeng/newxp/view/r;->b:Lcom/umeng/newxp/view/aG;
invoke-static {v0, v1, p1, p2}, Lcom/umeng/newxp/view/EmbededContainer;->a(Lcom/umeng/newxp/view/EmbededContainer;Lcom/umeng/newxp/view/aG;ILjava/util/List;)V
return-void
.end method