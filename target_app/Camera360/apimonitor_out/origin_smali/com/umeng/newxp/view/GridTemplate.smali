.class public Lcom/umeng/newxp/view/GridTemplate;
.super Ljava/lang/Object;
.source "GridTemplate.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;"
        }
    .end annotation
.end field

.field public contentView:Landroid/view/View;

.field private d:Landroid/content/Context;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/view/widget/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/umeng/newxp/view/widget/SwipeView;

.field private g:Lcom/umeng/newxp/controller/ExchangeDataService;

.field private h:I

.field private i:Lcom/umeng/newxp/view/GridTemplateConfig;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/umeng/newxp/view/widget/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/umeng/newxp/view/GridTemplate;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/newxp/view/GridTemplate;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/umeng/newxp/controller/ExchangeDataService;Landroid/content/Context;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;",
            "Lcom/umeng/newxp/controller/ExchangeDataService;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/umeng/newxp/view/GridTemplate;-><init>(Ljava/util/List;Lcom/umeng/newxp/controller/ExchangeDataService;Landroid/content/Context;Lcom/umeng/newxp/view/GridTemplateConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/umeng/newxp/controller/ExchangeDataService;Landroid/content/Context;Lcom/umeng/newxp/view/GridTemplateConfig;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;",
            "Lcom/umeng/newxp/controller/ExchangeDataService;",
            "Landroid/content/Context;",
            "Lcom/umeng/newxp/view/GridTemplateConfig;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->j:Ljava/util/Map;

    if-eqz p1, :cond_1e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1e
    iput-object p3, p0, Lcom/umeng/newxp/view/GridTemplate;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/umeng/newxp/view/GridTemplate;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    if-nez p4, :cond_29

    new-instance p4, Lcom/umeng/newxp/view/GridTemplateConfig;

    invoke-direct {p4}, Lcom/umeng/newxp/view/GridTemplateConfig;-><init>()V

    :cond_29
    iput-object p4, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget v0, p2, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    iput v0, p0, Lcom/umeng/newxp/view/GridTemplate;->h:I

    invoke-direct {p0}, Lcom/umeng/newxp/view/GridTemplate;->e()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->contentView:Landroid/view/View;

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_45

    invoke-direct {p0}, Lcom/umeng/newxp/view/GridTemplate;->b()V

    :goto_44
    return-void

    :cond_45
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->d:Landroid/content/Context;

    new-instance v2, Lcom/umeng/newxp/view/Z;

    invoke-direct {v2, p0}, Lcom/umeng/newxp/view/Z;-><init>(Lcom/umeng/newxp/view/GridTemplate;)V

    invoke-virtual {v0, v1, v2}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V

    goto :goto_44
.end method

.method private a(Landroid/content/Context;Lcom/umeng/newxp/view/widget/a$b;)Landroid/view/View;
    .registers 7

    const/4 v3, -0x1

    new-instance v0, Lcom/umeng/newxp/view/ab;

    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/umeng/newxp/view/ab;-><init>(Lcom/umeng/newxp/view/GridTemplate;Ljava/util/List;Lcom/umeng/newxp/view/widget/a$b;Landroid/content/Context;)V

    new-instance v1, Lcom/umeng/newxp/view/widget/a;

    iget-object v2, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    invoke-direct {v1, p1, v0, v2}, Lcom/umeng/newxp/view/widget/a;-><init>(Landroid/content/Context;Lcom/umeng/newxp/view/widget/a$a;Lcom/umeng/newxp/view/GridTemplateConfig;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Lcom/umeng/newxp/view/widget/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/umeng/newxp/view/GridTemplate;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/util/List;III)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;III)",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/view/widget/a$b;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v2, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-lez p2, :cond_13

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget-boolean v0, v0, Lcom/umeng/newxp/view/GridTemplateConfig;->c:Z

    if-nez v0, :cond_13

    if-nez p1, :cond_13

    move-object v0, v4

    :goto_12
    return-object v0

    :cond_13
    if-nez p1, :cond_5b

    move v0, v2

    :goto_16
    sub-int v1, p3, p2

    if-ge v1, v0, :cond_1c

    sub-int v0, p3, p2

    :cond_1c
    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget v1, v1, Lcom/umeng/newxp/view/GridTemplateConfig;->maxPsize:I

    rem-int v1, v0, v1

    if-nez v1, :cond_60

    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget v1, v1, Lcom/umeng/newxp/view/GridTemplateConfig;->maxPsize:I

    div-int/2addr v0, v1

    :goto_29
    add-int/lit8 v6, p3, -0x1

    move v1, v2

    :goto_2c
    iget-object v3, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget-boolean v3, v3, Lcom/umeng/newxp/view/GridTemplateConfig;->c:Z

    if-eqz v3, :cond_92

    move v3, v0

    :goto_33
    if-lt v1, v3, :cond_68

    if-lez p4, :cond_3d

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_43

    :cond_3d
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_59

    :cond_43
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/view/widget/a$b;

    iget v1, v0, Lcom/umeng/newxp/view/widget/a$b;->b:I

    iget-object v3, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget v3, v3, Lcom/umeng/newxp/view/GridTemplateConfig;->maxPsize:I

    if-ge v1, v3, :cond_59

    iput-boolean v2, v0, Lcom/umeng/newxp/view/widget/a$b;->e:Z

    :cond_59
    move-object v0, v4

    goto :goto_12

    :cond_5b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_16

    :cond_60
    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget v1, v1, Lcom/umeng/newxp/view/GridTemplateConfig;->maxPsize:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_68
    iget-object v3, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget v3, v3, Lcom/umeng/newxp/view/GridTemplateConfig;->maxPsize:I

    add-int/2addr v3, p2

    add-int/lit8 v3, v3, -0x1

    sub-int v3, v6, v3

    new-instance v7, Lcom/umeng/newxp/view/widget/a$b;

    if-gez v3, :cond_8d

    iget-object v8, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget v8, v8, Lcom/umeng/newxp/view/GridTemplateConfig;->maxPsize:I

    add-int/2addr v3, v8

    :goto_7a
    invoke-direct {v7, p2, v3}, Lcom/umeng/newxp/view/widget/a$b;-><init>(II)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int v3, p4, v1

    iput v3, v7, Lcom/umeng/newxp/view/widget/a$b;->c:I

    iget v3, v7, Lcom/umeng/newxp/view/widget/a$b;->d:I

    add-int/lit8 p2, v3, 0x1

    iput-boolean v5, v7, Lcom/umeng/newxp/view/widget/a$b;->e:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_8d
    iget-object v3, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget v3, v3, Lcom/umeng/newxp/view/GridTemplateConfig;->maxPsize:I

    goto :goto_7a

    :cond_92
    move v3, v5

    goto :goto_33
.end method

.method private a(III)V
    .registers 12

    const/4 v2, 0x0

    sub-int v0, p2, p1

    add-int/lit8 v3, v0, 0x1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_b
    if-lt v1, v3, :cond_8d

    sget-object v0, Lcom/umeng/newxp/view/GridTemplate;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "============"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "============="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_ca

    new-instance v0, Lcom/umeng/newxp/net/e$a;

    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-virtual {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v1

    new-array v0, v2, [Lcom/umeng/newxp/Promoter;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/newxp/Promoter;

    invoke-virtual {v1, v0}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/newxp/view/GridTemplate;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;

    move-result-object v0

    new-instance v1, Lcom/umeng/newxp/net/XpReportClient;

    iget-object v2, p0, Lcom/umeng/newxp/view/GridTemplate;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/n;Lcom/umeng/common/net/m$a;)V

    :goto_8c
    return-void

    :cond_8d
    :try_start_8d
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    add-int v5, p1, v1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/umeng/newxp/view/GridTemplate;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Report :"

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    add-int v7, p1, v1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    iget-object v0, v0, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_bb} :catch_c0

    :goto_bb
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_b

    :catch_c0
    move-exception v0

    sget-object v5, Lcom/umeng/newxp/view/GridTemplate;->a:Ljava/lang/String;

    const-string/jumbo v6, "report error "

    invoke-static {v5, v6, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_bb

    :cond_ca
    sget-object v0, Lcom/umeng/newxp/view/GridTemplate;->a:Ljava/lang/String;

    const-string/jumbo v1, "report error no promoter need report."

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8c
.end method

.method static synthetic a(Lcom/umeng/newxp/view/GridTemplate;)V
    .registers 1

    invoke-direct {p0}, Lcom/umeng/newxp/view/GridTemplate;->b()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/GridTemplate;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/newxp/view/GridTemplate;->a(III)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/GridTemplate;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic b(Lcom/umeng/newxp/view/GridTemplate;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->e:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->initializeListener:Lcom/umeng/newxp/controller/XpListenersCenter$InitializeListener;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->initializeListener:Lcom/umeng/newxp/controller/XpListenersCenter$InitializeListener;

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    if-nez v0, :cond_3f

    move v0, v1

    :goto_10
    invoke-interface {v2, v0}, Lcom/umeng/newxp/controller/XpListenersCenter$InitializeListener;->onReceived(I)V

    :cond_13
    iget-object v2, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    if-nez v0, :cond_46

    move v0, v1

    :goto_1a
    invoke-direct {p0, v2, v1, v0, v1}, Lcom/umeng/newxp/view/GridTemplate;->a(Ljava/util/List;III)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->e:Ljava/util/List;

    :try_start_20
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/view/widget/a$b;

    iget v1, v0, Lcom/umeng/newxp/view/widget/a$b;->a:I

    iget v2, v0, Lcom/umeng/newxp/view/widget/a$b;->d:I

    iget v0, v0, Lcom/umeng/newxp/view/widget/a$b;->c:I

    invoke-direct {p0, v1, v2, v0}, Lcom/umeng/newxp/view/GridTemplate;->a(III)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_32} :catch_4d

    :goto_32
    invoke-direct {p0}, Lcom/umeng/newxp/view/GridTemplate;->c()V

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget-boolean v0, v0, Lcom/umeng/newxp/view/GridTemplateConfig;->c:Z

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lcom/umeng/newxp/view/GridTemplate;->requestNextPage()V

    :cond_3e
    return-void

    :cond_3f
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_10

    :cond_46
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1a

    :catch_4d
    move-exception v0

    sget-object v1, Lcom/umeng/newxp/view/GridTemplate;->a:Ljava/lang/String;

    const-string/jumbo v2, "can`t send init page report "

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_32
.end method

.method static synthetic c(Lcom/umeng/newxp/view/GridTemplate;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->d:Landroid/content/Context;

    return-object v0
.end method

.method private c()V
    .registers 7

    const/4 v5, -0x1

    const/4 v3, 0x0

    move v2, v3

    :goto_3
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/view/widget/a$b;

    iget-boolean v1, v0, Lcom/umeng/newxp/view/widget/a$b;->e:Z

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->j:Ljava/util/Map;

    iget v4, v0, Lcom/umeng/newxp/view/widget/a$b;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->j:Ljava/util/Map;

    iget v4, v0, Lcom/umeng/newxp/view/widget/a$b;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/newxp/view/widget/a;

    iget-boolean v4, v0, Lcom/umeng/newxp/view/widget/a$b;->f:Z

    if-eqz v4, :cond_3d

    invoke-virtual {v1, v3}, Lcom/umeng/newxp/view/widget/a;->a(Z)V

    iput-boolean v3, v0, Lcom/umeng/newxp/view/widget/a$b;->f:Z

    :cond_3d
    :goto_3d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_41
    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->d:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/umeng/newxp/view/GridTemplate;->a(Landroid/content/Context;Lcom/umeng/newxp/view/widget/a$b;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/umeng/newxp/view/widget/a;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Lcom/umeng/newxp/view/widget/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/umeng/newxp/view/GridTemplate;->j:Ljava/util/Map;

    iget v0, v0, Lcom/umeng/newxp/view/widget/a$b;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->f:Lcom/umeng/newxp/view/widget/SwipeView;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/view/widget/SwipeView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget-boolean v0, v0, Lcom/umeng/newxp/view/GridTemplateConfig;->d:Z

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->f:Lcom/umeng/newxp/view/widget/SwipeView;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/widget/SwipeView;->getPageControl()Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    move-result-object v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->f:Lcom/umeng/newxp/view/widget/SwipeView;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/widget/SwipeView;->getPageControl()Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->addPageCount(I)V

    goto :goto_3d

    :cond_7a
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->f:Lcom/umeng/newxp/view/widget/SwipeView;

    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->b:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/view/widget/SwipeView;->setPageControl(Lcom/umeng/newxp/view/widget/SwipeViewPointer;)V

    goto :goto_3d
.end method

.method private d()I
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/view/widget/a$b;

    iget-boolean v0, v0, Lcom/umeng/newxp/view/widget/a$b;->e:Z

    if-eqz v0, :cond_8

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8
.end method

.method static synthetic d(Lcom/umeng/newxp/view/GridTemplate;)Lcom/umeng/newxp/controller/ExchangeDataService;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    return-object v0
.end method

.method static synthetic e(Lcom/umeng/newxp/view/GridTemplate;)I
    .registers 2

    iget v0, p0, Lcom/umeng/newxp/view/GridTemplate;->h:I

    return v0
.end method

.method private e()Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v1

    const-string/jumbo v2, "umeng_xp_handler_gallery"

    invoke-virtual {v1, v2}, Lcom/umeng/common/c;->d(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string/jumbo v2, "umeng_xp_gallery"

    invoke-virtual {v0, v2}, Lcom/umeng/common/c;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/view/widget/SwipeView;

    iput-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->f:Lcom/umeng/newxp/view/widget/SwipeView;

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->f:Lcom/umeng/newxp/view/widget/SwipeView;

    new-instance v2, Lcom/umeng/newxp/view/aa;

    invoke-direct {v2, p0}, Lcom/umeng/newxp/view/aa;-><init>(Lcom/umeng/newxp/view/GridTemplate;)V

    invoke-virtual {v0, v2}, Lcom/umeng/newxp/view/widget/SwipeView;->setOnPageChangedListener(Lcom/umeng/newxp/view/widget/SwipeView$a;)V

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string/jumbo v2, "umeng_xp_gallery_page_pointer"

    invoke-virtual {v0, v2}, Lcom/umeng/common/c;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    iput-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->b:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget-boolean v0, v0, Lcom/umeng/newxp/view/GridTemplateConfig;->d:Z

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->b:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->setVisibility(I)V

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget-object v0, v0, Lcom/umeng/newxp/view/GridTemplateConfig;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->b:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    iget-object v2, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget-object v2, v2, Lcom/umeng/newxp/view/GridTemplateConfig;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->setActiveDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_63
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget-object v0, v0, Lcom/umeng/newxp/view/GridTemplateConfig;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->b:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    iget-object v2, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget-object v2, v2, Lcom/umeng/newxp/view/GridTemplateConfig;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->setInactiveDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_72
    :goto_72
    return-object v1

    :cond_73
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->b:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->setVisibility(I)V

    goto :goto_72
.end method

.method static synthetic f(Lcom/umeng/newxp/view/GridTemplate;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public changed()V
    .registers 4

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/umeng/newxp/view/GridTemplate;->j:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/view/widget/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/umeng/newxp/view/widget/a;->a(Z)V

    goto :goto_a
.end method

.method public debugNextPage(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/umeng/newxp/view/GridTemplate;->notifyTotalDataChanged()V

    sget-object v0, Lcom/umeng/newxp/view/GridTemplate;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Total Data changed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifyTotalDataChanged()V
    .registers 8

    const/4 v2, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/view/widget/a$b;

    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v6, :cond_ee

    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/newxp/view/widget/a$b;

    iget v1, v1, Lcom/umeng/newxp/view/widget/a$b;->d:I

    :goto_24
    iget v3, v0, Lcom/umeng/newxp/view/widget/a$b;->d:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_86

    sget-object v3, Lcom/umeng/newxp/view/GridTemplate;->a:Ljava/lang/String;

    const-string/jumbo v4, "No data update...."

    invoke-static {v3, v4}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v6, v0, Lcom/umeng/newxp/view/widget/a$b;->e:Z

    :cond_3a
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/view/widget/a$b;

    if-lez v1, :cond_51

    iget v2, v0, Lcom/umeng/newxp/view/widget/a$b;->d:I

    if-ge v1, v2, :cond_51

    add-int/lit8 v1, v1, 0x1

    iget v2, v0, Lcom/umeng/newxp/view/widget/a$b;->d:I

    iget v0, v0, Lcom/umeng/newxp/view/widget/a$b;->c:I

    invoke-direct {p0, v1, v2, v0}, Lcom/umeng/newxp/view/GridTemplate;->a(III)V

    :cond_51
    sget-object v0, Lcom/umeng/newxp/view/GridTemplate;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "new PageSize "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/umeng/newxp/view/GridTemplate;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " show size :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/umeng/newxp/view/GridTemplate;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/umeng/newxp/view/GridTemplate;->c()V

    return-void

    :cond_86
    iget v3, v0, Lcom/umeng/newxp/view/widget/a$b;->b:I

    iget-object v4, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget v4, v4, Lcom/umeng/newxp/view/GridTemplateConfig;->maxPsize:I

    if-ge v3, v4, :cond_af

    iget-object v3, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget v3, v3, Lcom/umeng/newxp/view/GridTemplateConfig;->maxPsize:I

    iget v4, v0, Lcom/umeng/newxp/view/widget/a$b;->b:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget v5, v0, Lcom/umeng/newxp/view/widget/a$b;->d:I

    add-int/2addr v3, v5

    if-ge v3, v4, :cond_e9

    iput v3, v0, Lcom/umeng/newxp/view/widget/a$b;->d:I

    iput-boolean v6, v0, Lcom/umeng/newxp/view/widget/a$b;->e:Z

    :goto_a4
    iget v3, v0, Lcom/umeng/newxp/view/widget/a$b;->d:I

    iget v4, v0, Lcom/umeng/newxp/view/widget/a$b;->a:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/umeng/newxp/view/widget/a$b;->b:I

    iput-boolean v6, v0, Lcom/umeng/newxp/view/widget/a$b;->f:Z

    :cond_af
    iget v3, v0, Lcom/umeng/newxp/view/widget/a$b;->d:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/umeng/newxp/view/GridTemplate;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c1

    iget-object v4, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget-boolean v4, v4, Lcom/umeng/newxp/view/GridTemplateConfig;->c:Z

    if-eqz v4, :cond_3a

    :cond_c1
    iget-object v4, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    iget-object v5, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v0, v0, Lcom/umeng/newxp/view/widget/a$b;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v4, v3, v5, v0}, Lcom/umeng/newxp/view/GridTemplate;->a(Ljava/util/List;III)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/view/widget/a$b;

    iget-object v4, p0, Lcom/umeng/newxp/view/GridTemplate;->e:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d7

    :cond_e9
    add-int/lit8 v3, v4, -0x1

    iput v3, v0, Lcom/umeng/newxp/view/widget/a$b;->d:I

    goto :goto_a4

    :cond_ee
    move v1, v2

    goto/16 :goto_24
.end method

.method public requestNextPage()V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/umeng/newxp/view/ad;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/ad;-><init>(Lcom/umeng/newxp/view/GridTemplate;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
