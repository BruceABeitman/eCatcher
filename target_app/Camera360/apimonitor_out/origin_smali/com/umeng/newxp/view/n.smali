.class Lcom/umeng/newxp/view/N;
.super Ljava/lang/Object;
.source "ExchangeViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/ExchangeViewManager;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/ExchangeViewManager;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/N;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lcom/umeng/newxp/view/N;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iget-object v0, v0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/newxp/view/N;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v1}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/umeng/newxp/view/N;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v3}, Lcom/umeng/newxp/view/ExchangeViewManager;->b(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/view/GridTemplateConfig;

    move-result-object v3

    iget-object v4, p0, Lcom/umeng/newxp/view/N;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v4}, Lcom/umeng/newxp/view/ExchangeViewManager;->c(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/view/ExHeader;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/umeng/newxp/view/au;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Ljava/util/List;Lcom/umeng/newxp/view/GridTemplateConfig;Lcom/umeng/newxp/view/ExHeader;)V

    iget-object v0, p0, Lcom/umeng/newxp/view/N;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iget-object v0, v0, Lcom/umeng/newxp/view/ExchangeViewManager;->e:Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/umeng/newxp/view/N;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iget-object v0, v0, Lcom/umeng/newxp/view/ExchangeViewManager;->e:Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;

    iget-object v1, p0, Lcom/umeng/newxp/view/N;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v1}, Lcom/umeng/newxp/view/ExchangeViewManager;->e(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;->onClick(Landroid/view/View;)V

    :cond_2d
    return-void
.end method
