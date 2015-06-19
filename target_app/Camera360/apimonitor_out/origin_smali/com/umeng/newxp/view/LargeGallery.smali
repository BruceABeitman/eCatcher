.class public Lcom/umeng/newxp/view/LargeGallery;
.super Lcom/umeng/newxp/view/widget/SwipeView;
.source "LargeGallery.java"

# interfaces
.implements Lcom/umeng/newxp/controller/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/newxp/view/LargeGallery$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/umeng/newxp/view/LargeGalleryConfig;

.field private f:Lcom/umeng/newxp/controller/ExchangeDataService;

.field private g:Z

.field private final h:I

.field private i:Z

.field private j:Lcom/umeng/newxp/controller/g;

.field private k:Landroid/view/View$OnTouchListener;

.field private l:Landroid/view/View$OnTouchListener;

.field private m:Lcom/umeng/newxp/view/LargeGallery$a;

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/umeng/newxp/view/LargeGallery;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/newxp/view/LargeGallery;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/umeng/newxp/view/widget/SwipeView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/newxp/view/LargeGallery;->g:Z

    const/16 v0, 0xa

    iput v0, p0, Lcom/umeng/newxp/view/LargeGallery;->h:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/newxp/view/LargeGallery;->n:I

    iput-object p1, p0, Lcom/umeng/newxp/view/LargeGallery;->c:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/umeng/newxp/view/widget/SwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/newxp/view/LargeGallery;->g:Z

    const/16 v0, 0xa

    iput v0, p0, Lcom/umeng/newxp/view/LargeGallery;->h:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/newxp/view/LargeGallery;->n:I

    iput-object p1, p0, Lcom/umeng/newxp/view/LargeGallery;->c:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/newxp/view/widget/SwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/newxp/view/LargeGallery;->g:Z

    const/16 v0, 0xa

    iput v0, p0, Lcom/umeng/newxp/view/LargeGallery;->h:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/newxp/view/LargeGallery;->n:I

    iput-object p1, p0, Lcom/umeng/newxp/view/LargeGallery;->c:Landroid/content/Context;

    return-void
.end method

.method private a(I)I
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/umeng/newxp/view/LargeGallery;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_d

    if-nez p1, :cond_14

    :cond_d
    iget v1, p0, Lcom/umeng/newxp/view/LargeGallery;->n:I

    if-ne v1, v0, :cond_12

    const/4 v0, -0x1

    :cond_12
    iput v0, p0, Lcom/umeng/newxp/view/LargeGallery;->n:I

    :cond_14
    iget v0, p0, Lcom/umeng/newxp/view/LargeGallery;->n:I

    add-int/2addr v0, p1

    return v0
.end method

.method static synthetic a(Lcom/umeng/newxp/view/LargeGallery;)Lcom/umeng/newxp/controller/g;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGallery;->j:Lcom/umeng/newxp/controller/g;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/newxp/view/LargeGallery;Lcom/umeng/newxp/controller/g;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/LargeGallery;->j:Lcom/umeng/newxp/controller/g;

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/LargeGallery;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/umeng/newxp/view/LargeGallery;->b(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/LargeGallery;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/umeng/newxp/view/LargeGallery;->i:Z

    return-void
.end method

.method private b(I)Landroid/view/ViewGroup;
    .registers 3

    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGallery;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/LargeGallery;->onLoadPage(Lcom/umeng/newxp/Promoter;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/newxp/view/LargeGallery;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGallery;->d:Ljava/util/List;

    return-object v0
.end method

.method private b(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/umeng/newxp/view/LargeGallery;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGallery;->d:Ljava/util/List;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/umeng/newxp/view/LargeGallery;->d()V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGallery;->d:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/LargeGallery;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGallery;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/umeng/newxp/view/LargeGallery;->d()V

    goto :goto_9

    :cond_1b
    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGallery;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_2f

    const/16 v0, 0x9

    :goto_27
    iget-object v1, p0, Lcom/umeng/newxp/view/LargeGallery;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_4c

    :cond_2f
    invoke-virtual {p0}, Lcom/umeng/newxp/view/LargeGallery;->a()V

    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGallery;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/umeng/newxp/view/LargeGallery;->g:Z

    if-eqz v0, :cond_9

    new-instance v0, Lcom/umeng/newxp/controller/g;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/controller/g;-><init>(Lcom/umeng/newxp/controller/f$a;)V

    iput-object v0, p0, Lcom/umeng/newxp/view/LargeGallery;->j:Lcom/umeng/newxp/controller/g;

    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGallery;->j:Lcom/umeng/newxp/controller/g;

    invoke-virtual {v0}, Lcom/umeng/newxp/controller/g;->start()V

    goto :goto_9

    :cond_4c
    iget-object v1, p0, Lcom/umeng/newxp/view/LargeGallery;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_27
.end method

.method static synthetic c(Lcom/umeng/newxp/view/LargeGallery;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/umeng/newxp/view/LargeGallery;->g:Z

    return v0
.end method

.method static synthetic d(Lcom/umeng/newxp/view/LargeGallery;)Landroid/view/View$OnTouchListener;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGallery;->l:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic e(Lcom/umeng/newxp/view/LargeGallery;)Lcom/umeng/newxp/view/LargeGalleryConfig;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGallery;->e:Lcom/umeng/newxp/view/LargeGalleryConfig;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/umeng/newxp/view/LargeGallery;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/umeng/newxp/view/LargeGallery;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGallery;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/umeng/newxp/view/LargeGallery;)Lcom/umeng/newxp/controller/ExchangeDataService;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGallery;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    return-object v0
.end method

.method private g()V
    .registers 2

    new-instance v0, Lcom/umeng/newxp/view/ap;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/view/ap;-><init>(Lcom/umeng/newxp/view/LargeGallery;)V

    iput-object v0, p0, Lcom/umeng/newxp/view/LargeGallery;->k:Landroid/view/View$OnTouchListener;

    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGallery;->k:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/LargeGallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private h()V
    .registers 2

    invoke-virtual {p0}, Lcom/umeng/newxp/view/LargeGallery;->getPageControl()Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/LargeGallery;->setPageControl(Lcom/umeng/newxp/view/widget/SwipeViewPointer;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 7

    const/4 v5, -0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGallery;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    const/4 v2, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    aput-wide v3, v0, v2

    move v0, v1

    :goto_e
    iget-object v2, p0, Lcom/umeng/newxp/view/LargeGallery;->d:Ljava/util/List;

    if-nez v2, :cond_6c

    move v2, v1

    :goto_13
    if-lt v0, v2, :cond_48

    invoke-direct {p0}, Lcom/umeng/newxp/view/LargeGallery;->h()V

    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGallery;->e:Lcom/umeng/newxp/view/LargeGalleryConfig;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/LargeGalleryConfig;->getPageChangedListener()Lcom/umeng/newxp/controller/XpListenersCenter$onPageChangedListener;

    move-result-object v2

    if-eqz v2, :cond_31

    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGallery;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    iget-object v3, p0, Lcom/umeng/newxp/view/LargeGallery;->e:Lcom/umeng/newxp/view/LargeGalleryConfig;

    invoke-virtual {v3}, Lcom/umeng/newxp/view/LargeGalleryConfig;->getParent()Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v1, v0, v3}, Lcom/umeng/newxp/controller/XpListenersCenter$onPageChangedListener;->onPageChanged(ILcom/umeng/newxp/Promoter;Landroid/view/View;)V

    :cond_31
    new-instance v0, Lcom/umeng/newxp/view/aq;

    invoke-direct {v0, p0, v2}, Lcom/umeng/newxp/view/aq;-><init>(Lcom/umeng/newxp/view/LargeGallery;Lcom/umeng/newxp/controller/XpListenersCenter$onPageChangedListener;)V

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/LargeGallery;->setOnPageChangedListener(Lcom/umeng/newxp/view/widget/SwipeView$a;)V

    invoke-virtual {p0}, Lcom/umeng/newxp/view/LargeGallery;->c()V

    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGallery;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    const/4 v1, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    return-void

    :cond_48
    invoke-direct {p0, v0}, Lcom/umeng/newxp/view/LargeGallery;->b(I)Landroid/view/ViewGroup;

    move-result-object v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lcom/umeng/newxp/view/LargeGallery;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Lcom/umeng/newxp/view/LargeGallery;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "load page  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_6c
    iget-object v2, p0, Lcom/umeng/newxp/view/LargeGallery;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_13
.end method

.method protected a(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_5
    if-gtz v1, :cond_8

    return-void

    :cond_8
    add-int/lit8 v0, v1, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    iget v2, v0, Lcom/umeng/newxp/Promoter;->display_type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2f

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lcom/umeng/newxp/view/LargeGallery;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "filter the promoter "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/umeng/newxp/Promoter;->ad_words:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_5
.end method

.method protected b()V
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGallery;->m:Lcom/umeng/newxp/view/LargeGallery$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGallery;->m:Lcom/umeng/newxp/view/LargeGallery$a;

    invoke-interface {v0}, Lcom/umeng/newxp/view/LargeGallery$a;->a()V

    :cond_9
    return-void
.end method

.method protected c()V
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGallery;->m:Lcom/umeng/newxp/view/LargeGallery$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGallery;->m:Lcom/umeng/newxp/view/LargeGallery$a;

    invoke-interface {v0}, Lcom/umeng/newxp/view/LargeGallery$a;->c()V

    :cond_9
    return-void
.end method

.method protected d()V
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGallery;->m:Lcom/umeng/newxp/view/LargeGallery$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGallery;->m:Lcom/umeng/newxp/view/LargeGallery$a;

    invoke-interface {v0}, Lcom/umeng/newxp/view/LargeGallery$a;->b()V

    :cond_9
    return-void
.end method

.method public onLoadPage(Lcom/umeng/newxp/Promoter;)Landroid/view/View;
    .registers 9

    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGallery;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/newxp/view/LargeGallery;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/d;->B(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/umeng/newxp/view/LargeGallery;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/c;->N(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/umeng/newxp/view/LargeGallery;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/newxp/a/c;->M(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_3a

    iget-object v3, p0, Lcom/umeng/newxp/view/LargeGallery;->c:Landroid/content/Context;

    iget-object v4, p1, Lcom/umeng/newxp/Promoter;->img:Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Lcom/umeng/newxp/view/ar;

    invoke-direct {v6, p0, v0, v2}, Lcom/umeng/newxp/view/ar;-><init>(Lcom/umeng/newxp/view/LargeGallery;Landroid/view/ViewGroup;Landroid/widget/ProgressBar;)V

    invoke-static {v3, v1, v4, v5, v6}, Lcom/umeng/common/net/p;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZLcom/umeng/common/net/p$a;)V

    :cond_3a
    new-instance v1, Lcom/umeng/newxp/view/as;

    invoke-direct {v1, p0, p1}, Lcom/umeng/newxp/view/as;-><init>(Lcom/umeng/newxp/view/LargeGallery;Lcom/umeng/newxp/Promoter;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public setLoadListener(Lcom/umeng/newxp/view/LargeGallery$a;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/LargeGallery;->m:Lcom/umeng/newxp/view/LargeGallery$a;

    return-void
.end method

.method public final setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 3

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGallery;->k:Landroid/view/View$OnTouchListener;

    if-ne p1, v0, :cond_a

    invoke-super {p0, p1}, Lcom/umeng/newxp/view/widget/SwipeView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_9
    return-void

    :cond_a
    iput-object p1, p0, Lcom/umeng/newxp/view/LargeGallery;->l:Landroid/view/View$OnTouchListener;

    goto :goto_9
.end method

.method public timeup()V
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/umeng/newxp/view/LargeGallery;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_4b

    move v0, v1

    :goto_a
    invoke-virtual {p0}, Lcom/umeng/newxp/view/LargeGallery;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3e

    iget-boolean v1, p0, Lcom/umeng/newxp/view/LargeGallery;->i:Z

    if-nez v1, :cond_3e

    iget-boolean v1, p0, Lcom/umeng/newxp/view/LargeGallery;->g:Z

    if-eqz v1, :cond_3e

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lcom/umeng/newxp/view/LargeGallery;->getCurrentPage()I

    move-result v0

    sget-object v1, Lcom/umeng/newxp/view/LargeGallery;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "timeup pos="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/umeng/newxp/view/LargeGallery;->getCurrentPage()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/umeng/newxp/view/LargeGallery;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/LargeGallery;->smoothScrollToPage(I)V

    :cond_3e
    new-instance v0, Lcom/umeng/newxp/controller/g;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/controller/g;-><init>(Lcom/umeng/newxp/controller/f$a;)V

    iput-object v0, p0, Lcom/umeng/newxp/view/LargeGallery;->j:Lcom/umeng/newxp/controller/g;

    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGallery;->j:Lcom/umeng/newxp/controller/g;

    invoke-virtual {v0}, Lcom/umeng/newxp/controller/g;->start()V

    return-void

    :cond_4b
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_5e

    const/4 v0, 0x1

    goto :goto_a

    :cond_5e
    move v0, v1

    goto :goto_a
.end method

.method public work(Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/view/LargeGalleryConfig;)V
    .registers 6

    if-nez p2, :cond_7

    new-instance p2, Lcom/umeng/newxp/view/LargeGalleryConfig;

    invoke-direct {p2}, Lcom/umeng/newxp/view/LargeGalleryConfig;-><init>()V

    :cond_7
    iput-object p2, p0, Lcom/umeng/newxp/view/LargeGallery;->e:Lcom/umeng/newxp/view/LargeGalleryConfig;

    iput-object p1, p0, Lcom/umeng/newxp/view/LargeGallery;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-direct {p0}, Lcom/umeng/newxp/view/LargeGallery;->g()V

    invoke-virtual {p0}, Lcom/umeng/newxp/view/LargeGallery;->b()V

    new-instance v0, Lcom/umeng/newxp/view/ao;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/view/ao;-><init>(Lcom/umeng/newxp/view/LargeGallery;)V

    iget-object v1, p0, Lcom/umeng/newxp/view/LargeGallery;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/umeng/newxp/view/LargeGallery;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    iget-object v1, v1, Lcom/umeng/newxp/a;->a:Lcom/umeng/newxp/a$a;

    sget-object v2, Lcom/umeng/newxp/a$a;->a:Lcom/umeng/newxp/a$a;

    if-ne v1, v2, :cond_3c

    iget-object v1, p0, Lcom/umeng/newxp/view/LargeGallery;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    invoke-virtual {v1}, Lcom/umeng/newxp/a;->b()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_38

    iget-object v1, p0, Lcom/umeng/newxp/view/LargeGallery;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, p0, Lcom/umeng/newxp/view/LargeGallery;->c:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V

    :goto_37
    return-void

    :cond_38
    invoke-direct {p0, v1}, Lcom/umeng/newxp/view/LargeGallery;->b(Ljava/util/List;)V

    goto :goto_37

    :cond_3c
    iget-object v1, p0, Lcom/umeng/newxp/view/LargeGallery;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, p0, Lcom/umeng/newxp/view/LargeGallery;->c:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V

    goto :goto_37
.end method
