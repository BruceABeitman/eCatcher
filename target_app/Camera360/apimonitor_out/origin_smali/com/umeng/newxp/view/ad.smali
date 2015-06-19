.class Lcom/umeng/newxp/view/ad;
.super Ljava/lang/Object;
.source "GridTemplate.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/GridTemplate;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/GridTemplate;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/ad;->a:Lcom/umeng/newxp/view/GridTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/ad;)Lcom/umeng/newxp/view/GridTemplate;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/ad;->a:Lcom/umeng/newxp/view/GridTemplate;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v2, 0x1

    new-instance v0, Lcom/umeng/newxp/view/ae;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/view/ae;-><init>(Lcom/umeng/newxp/view/ad;)V

    iget-object v1, p0, Lcom/umeng/newxp/view/ad;->a:Lcom/umeng/newxp/view/GridTemplate;

    invoke-static {v1}, Lcom/umeng/newxp/view/GridTemplate;->d(Lcom/umeng/newxp/view/GridTemplate;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iput-boolean v2, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->pagination:Z

    iget-object v1, p0, Lcom/umeng/newxp/view/ad;->a:Lcom/umeng/newxp/view/GridTemplate;

    invoke-static {v1}, Lcom/umeng/newxp/view/GridTemplate;->d(Lcom/umeng/newxp/view/GridTemplate;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iget v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    if-ge v1, v2, :cond_20

    iget-object v1, p0, Lcom/umeng/newxp/view/ad;->a:Lcom/umeng/newxp/view/GridTemplate;

    invoke-static {v1}, Lcom/umeng/newxp/view/GridTemplate;->d(Lcom/umeng/newxp/view/GridTemplate;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iput v2, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    :cond_20
    iget-object v1, p0, Lcom/umeng/newxp/view/ad;->a:Lcom/umeng/newxp/view/GridTemplate;

    invoke-static {v1}, Lcom/umeng/newxp/view/GridTemplate;->d(Lcom/umeng/newxp/view/GridTemplate;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iget v2, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    iget-object v1, p0, Lcom/umeng/newxp/view/ad;->a:Lcom/umeng/newxp/view/GridTemplate;

    invoke-static {v1}, Lcom/umeng/newxp/view/GridTemplate;->d(Lcom/umeng/newxp/view/GridTemplate;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/newxp/view/ad;->a:Lcom/umeng/newxp/view/GridTemplate;

    invoke-static {v2}, Lcom/umeng/newxp/view/GridTemplate;->c(Lcom/umeng/newxp/view/GridTemplate;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V

    return-void
.end method
