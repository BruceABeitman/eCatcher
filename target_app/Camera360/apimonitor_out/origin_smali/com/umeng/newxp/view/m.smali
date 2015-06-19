.class Lcom/umeng/newxp/view/M;
.super Ljava/lang/Object;
.source "ExchangeViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/L;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/L;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/umeng/newxp/view/M;->a:Lcom/umeng/newxp/view/L;

    iput-object p2, p0, Lcom/umeng/newxp/view/M;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/umeng/newxp/view/M;->b:Ljava/util/List;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/umeng/newxp/view/M;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1b

    iget-object v1, p0, Lcom/umeng/newxp/view/M;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/umeng/newxp/view/M;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1b
    iget-object v0, p0, Lcom/umeng/newxp/view/M;->a:Lcom/umeng/newxp/view/L;

    invoke-static {v0}, Lcom/umeng/newxp/view/L;->a(Lcom/umeng/newxp/view/L;)Lcom/umeng/newxp/view/ExchangeViewManager;

    move-result-object v0

    iget-object v0, v0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/newxp/view/M;->a:Lcom/umeng/newxp/view/L;

    invoke-static {v1}, Lcom/umeng/newxp/view/L;->a(Lcom/umeng/newxp/view/L;)Lcom/umeng/newxp/view/ExchangeViewManager;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/umeng/newxp/view/M;->a:Lcom/umeng/newxp/view/L;

    invoke-static {v3}, Lcom/umeng/newxp/view/L;->a(Lcom/umeng/newxp/view/L;)Lcom/umeng/newxp/view/ExchangeViewManager;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/newxp/view/ExchangeViewManager;->b(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/view/GridTemplateConfig;

    move-result-object v3

    iget-object v4, p0, Lcom/umeng/newxp/view/M;->a:Lcom/umeng/newxp/view/L;

    invoke-static {v4}, Lcom/umeng/newxp/view/L;->a(Lcom/umeng/newxp/view/L;)Lcom/umeng/newxp/view/ExchangeViewManager;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/newxp/view/ExchangeViewManager;->c(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/view/ExHeader;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/umeng/newxp/view/au;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Ljava/util/List;Lcom/umeng/newxp/view/GridTemplateConfig;Lcom/umeng/newxp/view/ExHeader;)V

    iget-object v0, p0, Lcom/umeng/newxp/view/M;->a:Lcom/umeng/newxp/view/L;

    invoke-static {v0}, Lcom/umeng/newxp/view/L;->a(Lcom/umeng/newxp/view/L;)Lcom/umeng/newxp/view/ExchangeViewManager;

    move-result-object v0

    iget-object v0, v0, Lcom/umeng/newxp/view/ExchangeViewManager;->e:Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/umeng/newxp/view/M;->a:Lcom/umeng/newxp/view/L;

    invoke-static {v0}, Lcom/umeng/newxp/view/L;->a(Lcom/umeng/newxp/view/L;)Lcom/umeng/newxp/view/ExchangeViewManager;

    move-result-object v0

    iget-object v0, v0, Lcom/umeng/newxp/view/ExchangeViewManager;->e:Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;

    iget-object v1, p0, Lcom/umeng/newxp/view/M;->a:Lcom/umeng/newxp/view/L;

    invoke-static {v1}, Lcom/umeng/newxp/view/L;->a(Lcom/umeng/newxp/view/L;)Lcom/umeng/newxp/view/ExchangeViewManager;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/view/ExchangeViewManager;->e(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;->onClick(Landroid/view/View;)V

    :cond_64
    return-void
.end method
