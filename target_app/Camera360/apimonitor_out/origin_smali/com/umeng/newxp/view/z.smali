.class Lcom/umeng/newxp/view/Z;
.super Ljava/lang/Object;
.source "GridTemplate.java"

# interfaces
.implements Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/GridTemplate;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/GridTemplate;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/Z;->a:Lcom/umeng/newxp/view/GridTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dataReceived(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_12

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    iget-object v0, p0, Lcom/umeng/newxp/view/Z;->a:Lcom/umeng/newxp/view/GridTemplate;

    invoke-static {v0, p2}, Lcom/umeng/newxp/view/GridTemplate;->a(Lcom/umeng/newxp/view/GridTemplate;Ljava/util/List;)V

    iget-object v0, p0, Lcom/umeng/newxp/view/Z;->a:Lcom/umeng/newxp/view/GridTemplate;

    invoke-static {v0}, Lcom/umeng/newxp/view/GridTemplate;->a(Lcom/umeng/newxp/view/GridTemplate;)V

    :cond_12
    return-void
.end method
