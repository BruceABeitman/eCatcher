.class Lcom/umeng/newxp/view/EmbededContainer$a;
.super Ljava/lang/Object;
.source "EmbededContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/newxp/view/EmbededContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/newxp/view/EmbededContainer$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/EmbededContainer;

.field private b:Lcom/umeng/newxp/view/d;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/umeng/newxp/view/EmbededContainer;Landroid/widget/ListView;Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;)V
    .registers 14

    const/4 v9, 0x0

    iput-object p1, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/umeng/newxp/view/EmbededContainer$a;->a()V

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v0

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    const/4 v1, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->c:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->c(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    new-instance v0, Lcom/umeng/newxp/view/s;

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->c(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/widget/ListView;

    move-result-object v2

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v3

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/a/d;->o(Landroid/content/Context;)I

    move-result v4

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->e(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/view/ExHeader;

    move-result-object v5

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->f(Lcom/umeng/newxp/view/EmbededContainer;)Ljava/util/List;

    move-result-object v6

    const/16 v7, 0x8

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/umeng/newxp/view/s;-><init>(Lcom/umeng/newxp/view/EmbededContainer$a;Landroid/widget/ListView;Landroid/content/Context;ILcom/umeng/newxp/view/ExHeader;Ljava/util/List;ILcom/umeng/newxp/controller/ExchangeDataService;)V

    iput-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->b:Lcom/umeng/newxp/view/d;

    if-eqz p3, :cond_51

    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->b:Lcom/umeng/newxp/view/d;

    invoke-virtual {v0, p3}, Lcom/umeng/newxp/view/d;->a(Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;)V

    :cond_51
    sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->CONTAINER_AUTOEXPANDED:Z

    if-nez v0, :cond_58

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->h(Lcom/umeng/newxp/view/EmbededContainer;)V

    :cond_58
    new-instance v0, Lcom/umeng/newxp/view/EmbededContainer$a$a;

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/umeng/newxp/view/EmbededContainer$a$a;-><init>(Lcom/umeng/newxp/view/EmbededContainer$a;Lcom/umeng/newxp/controller/ExchangeDataService;)V

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->c(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_74

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->c(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v0

    iput v9, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    :cond_74
    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v0

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    const/4 v1, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    new-instance v0, Lcom/umeng/newxp/net/e$a;

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v9}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->i(Lcom/umeng/newxp/view/EmbededContainer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget v1, p1, Lcom/umeng/newxp/view/EmbededContainer;->mType:I

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v1

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->f(Lcom/umeng/newxp/view/EmbededContainer;)Ljava/util/List;

    move-result-object v0

    new-array v2, v9, [Lcom/umeng/newxp/Promoter;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/newxp/Promoter;

    invoke-virtual {v1, v0}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;

    move-result-object v0

    new-instance v1, Lcom/umeng/newxp/net/XpReportClient;

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/n;Lcom/umeng/common/net/m$a;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/EmbededContainer$a;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a()V
    .registers 4

    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/a/d;->p(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/a/c;->I(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/umeng/newxp/view/EmbededContainer$a;->c()Landroid/text/SpannableString;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/a/c;->z(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    invoke-static {v2}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/newxp/a/a;->d(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/newxp/view/EmbededContainer;->a(Lcom/umeng/newxp/view/EmbededContainer;Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic b(Lcom/umeng/newxp/view/EmbededContainer$a;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .registers 4

    const/4 v2, 0x1

    new-instance v0, Lcom/umeng/newxp/view/t;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/view/t;-><init>(Lcom/umeng/newxp/view/EmbededContainer$a;)V

    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iput-boolean v2, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->pagination:Z

    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iget v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    if-ge v1, v2, :cond_20

    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iput v2, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    :cond_20
    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iget v2, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    invoke-static {v2}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V

    return-void
.end method

.method private c()Landroid/text/SpannableString;
    .registers 7

    const/16 v5, 0x21

    const/4 v4, 0x4

    invoke-static {}, Lcom/umeng/common/util/g;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u66f4\u65b0\u4e8e:     "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    const/high16 v2, 0x4140

    iget-object v3, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    invoke-static {v3}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    float-to-int v0, v0

    invoke-direct {v2, v0}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    invoke-virtual {v1, v2, v4, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v2, -0x777778

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v1, v0, v4, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method static synthetic c(Lcom/umeng/newxp/view/EmbededContainer$a;)V
    .registers 1

    invoke-direct {p0}, Lcom/umeng/newxp/view/EmbededContainer$a;->b()V

    return-void
.end method

.method static synthetic d(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/d;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->b:Lcom/umeng/newxp/view/d;

    return-object v0
.end method

.method static synthetic e(Lcom/umeng/newxp/view/EmbededContainer$a;)Landroid/text/SpannableString;
    .registers 2

    invoke-direct {p0}, Lcom/umeng/newxp/view/EmbededContainer$a;->c()Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/umeng/newxp/view/EmbededContainer$a;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    return-object v0
.end method
