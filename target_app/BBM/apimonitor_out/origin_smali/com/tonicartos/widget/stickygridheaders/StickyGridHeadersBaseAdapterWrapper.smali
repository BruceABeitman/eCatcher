.class public final Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "StickyGridHeadersBaseAdapterWrapper.java"


# instance fields
.field a:I

.field b:Z

.field c:Landroid/database/DataSetObserver;

.field final d:Lcom/tonicartos/widget/stickygridheaders/a;

.field e:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

.field f:Landroid/view/View;

.field g:Landroid/view/View;

.field h:I

.field private final i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Lcom/tonicartos/widget/stickygridheaders/a;)V
    .registers 6

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->b:Z

    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/b;

    invoke-direct {v0, p0}, Lcom/tonicartos/widget/stickygridheaders/b;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;)V

    iput-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->c:Landroid/database/DataSetObserver;

    const/4 v0, 0x1

    iput v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->h:I

    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->i:Landroid/content/Context;

    iput-object p3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d:Lcom/tonicartos/widget/stickygridheaders/a;

    iput-object p2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->e:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d:Lcom/tonicartos/widget/stickygridheaders/a;

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->c:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/a;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;
    .registers 4

    check-cast p1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;

    if-nez p1, :cond_b

    new-instance p1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->i:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;Landroid/content/Context;)V

    :cond_b
    invoke-virtual {p1, p2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;->setMeasureTarget(Landroid/view/View;)V

    return-object p1
.end method

.method static synthetic a(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;)Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
    .registers 2

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->e:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    return-object v0
.end method

.method private c(I)I
    .registers 4

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d:Lcom/tonicartos/widget/stickygridheaders/a;

    invoke-interface {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/a;->a(I)I

    move-result v0

    iget v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->h:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_d

    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    iget v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->h:I

    sub-int v0, v1, v0

    goto :goto_c
.end method

.method private d(I)Lcom/tonicartos/widget/stickygridheaders/c;
    .registers 9

    const/4 v1, 0x0

    const/4 v6, -0x1

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d:Lcom/tonicartos/widget/stickygridheaders/a;

    invoke-interface {v0}, Lcom/tonicartos/widget/stickygridheaders/a;->b()I

    move-result v3

    if-nez v3, :cond_1e

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d:Lcom/tonicartos/widget/stickygridheaders/a;

    invoke-interface {v0}, Lcom/tonicartos/widget/stickygridheaders/a;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_18

    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/c;

    invoke-direct {v0, p0, v6, v1}, Lcom/tonicartos/widget/stickygridheaders/c;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;II)V

    :goto_17
    return-object v0

    :cond_18
    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/c;

    invoke-direct {v0, p0, p1, v1}, Lcom/tonicartos/widget/stickygridheaders/c;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;II)V

    goto :goto_17

    :cond_1e
    move v0, p1

    :goto_1f
    if-ge v1, v3, :cond_5e

    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d:Lcom/tonicartos/widget/stickygridheaders/a;

    invoke-interface {v2, v1}, Lcom/tonicartos/widget/stickygridheaders/a;->a(I)I

    move-result v2

    if-nez v0, :cond_30

    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/c;

    const/4 v2, -0x2

    invoke-direct {v0, p0, v2, v1}, Lcom/tonicartos/widget/stickygridheaders/c;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;II)V

    goto :goto_17

    :cond_30
    iget v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->h:I

    sub-int/2addr v0, v4

    if-gez v0, :cond_3c

    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/c;

    const/4 v2, -0x3

    invoke-direct {v0, p0, v2, v1}, Lcom/tonicartos/widget/stickygridheaders/c;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;II)V

    goto :goto_17

    :cond_3c
    iget v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->h:I

    sub-int v4, p1, v4

    if-ge v0, v2, :cond_48

    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/c;

    invoke-direct {v0, p0, v4, v1}, Lcom/tonicartos/widget/stickygridheaders/c;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;II)V

    goto :goto_17

    :cond_48
    invoke-direct {p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->c(I)I

    move-result v5

    sub-int p1, v4, v5

    add-int/2addr v2, v5

    sub-int v2, v0, v2

    if-gez v2, :cond_59

    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/c;

    invoke-direct {v0, p0, v6, v1}, Lcom/tonicartos/widget/stickygridheaders/c;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;II)V

    goto :goto_17

    :cond_59
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_1f

    :cond_5e
    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/c;

    invoke-direct {v0, p0, v6, v1}, Lcom/tonicartos/widget/stickygridheaders/c;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;II)V

    goto :goto_17
.end method


# virtual methods
.method protected final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d:Lcom/tonicartos/widget/stickygridheaders/a;

    invoke-interface {v0}, Lcom/tonicartos/widget/stickygridheaders/a;->b()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d:Lcom/tonicartos/widget/stickygridheaders/a;

    invoke-direct {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d(I)Lcom/tonicartos/widget/stickygridheaders/c;

    move-result-object v1

    iget v1, v1, Lcom/tonicartos/widget/stickygridheaders/c;->a:I

    invoke-interface {v0, v1, p2, p3}, Lcom/tonicartos/widget/stickygridheaders/a;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_9
.end method

.method public final a(I)V
    .registers 3

    iput p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->b:Z

    return-void
.end method

.method public final areAllItemsEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final b(I)J
    .registers 4

    invoke-direct {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d(I)Lcom/tonicartos/widget/stickygridheaders/c;

    move-result-object v0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/c;->a:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getCount()I
    .registers 7

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->b:Z

    if-eqz v1, :cond_9

    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->a:I

    :goto_8
    return v0

    :cond_9
    iput v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->a:I

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d:Lcom/tonicartos/widget/stickygridheaders/a;

    invoke-interface {v1}, Lcom/tonicartos/widget/stickygridheaders/a;->b()I

    move-result v1

    if-nez v1, :cond_20

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d:Lcom/tonicartos/widget/stickygridheaders/a;

    invoke-interface {v0}, Lcom/tonicartos/widget/stickygridheaders/a;->getCount()I

    move-result v0

    iput v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->a:I

    iput-boolean v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->b:Z

    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->a:I

    goto :goto_8

    :cond_20
    :goto_20
    if-ge v0, v1, :cond_38

    iget v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->a:I

    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d:Lcom/tonicartos/widget/stickygridheaders/a;

    invoke-interface {v3, v0}, Lcom/tonicartos/widget/stickygridheaders/a;->a(I)I

    move-result v3

    invoke-direct {p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->c(I)I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->h:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->a:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_38
    iput-boolean v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->b:Z

    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->a:I

    goto :goto_8
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 5

    invoke-direct {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d(I)Lcom/tonicartos/widget/stickygridheaders/c;

    move-result-object v0

    iget v1, v0, Lcom/tonicartos/widget/stickygridheaders/c;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    iget v1, v0, Lcom/tonicartos/widget/stickygridheaders/c;->b:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d:Lcom/tonicartos/widget/stickygridheaders/a;

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/c;->b:I

    invoke-interface {v1, v0}, Lcom/tonicartos/widget/stickygridheaders/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_f
.end method

.method public final getItemId(I)J
    .registers 5

    invoke-direct {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d(I)Lcom/tonicartos/widget/stickygridheaders/c;

    move-result-object v0

    iget v1, v0, Lcom/tonicartos/widget/stickygridheaders/c;->b:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_c

    const-wide/16 v0, -0x1

    :goto_b
    return-wide v0

    :cond_c
    iget v1, v0, Lcom/tonicartos/widget/stickygridheaders/c;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_14

    const-wide/16 v0, -0x2

    goto :goto_b

    :cond_14
    iget v1, v0, Lcom/tonicartos/widget/stickygridheaders/c;->b:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_1c

    const-wide/16 v0, -0x3

    goto :goto_b

    :cond_1c
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d:Lcom/tonicartos/widget/stickygridheaders/a;

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/c;->b:I

    invoke-interface {v1, v0}, Lcom/tonicartos/widget/stickygridheaders/a;->getItemId(I)J

    move-result-wide v0

    goto :goto_b
.end method

.method public final getItemViewType(I)I
    .registers 6

    const/4 v3, -0x1

    invoke-direct {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d(I)Lcom/tonicartos/widget/stickygridheaders/c;

    move-result-object v0

    iget v1, v0, Lcom/tonicartos/widget/stickygridheaders/c;->b:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_c

    const/4 v0, 0x1

    :cond_b
    :goto_b
    return v0

    :cond_c
    iget v1, v0, Lcom/tonicartos/widget/stickygridheaders/c;->b:I

    if-ne v1, v3, :cond_12

    const/4 v0, 0x0

    goto :goto_b

    :cond_12
    iget v1, v0, Lcom/tonicartos/widget/stickygridheaders/c;->b:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_19

    const/4 v0, 0x2

    goto :goto_b

    :cond_19
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d:Lcom/tonicartos/widget/stickygridheaders/a;

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/c;->b:I

    invoke-interface {v1, v0}, Lcom/tonicartos/widget/stickygridheaders/a;->getItemViewType(I)I

    move-result v0

    if-eq v0, v3, :cond_b

    add-int/lit8 v0, v0, 0x3

    goto :goto_b
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    invoke-direct {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d(I)Lcom/tonicartos/widget/stickygridheaders/c;

    move-result-object v0

    iget v1, v0, Lcom/tonicartos/widget/stickygridheaders/c;->b:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_3d

    iget v1, v0, Lcom/tonicartos/widget/stickygridheaders/c;->a:I

    check-cast p2, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;

    if-nez p2, :cond_16

    new-instance p2, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->i:Landroid/content/Context;

    invoke-direct {p2, p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;Landroid/content/Context;)V

    :cond_16
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d:Lcom/tonicartos/widget/stickygridheaders/a;

    iget v2, v0, Lcom/tonicartos/widget/stickygridheaders/c;->a:I

    invoke-virtual {p2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v2, v0, p3}, Lcom/tonicartos/widget/stickygridheaders/a;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->e:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {p2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v2, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->b(Landroid/view/View;)V

    invoke-virtual {p2, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->e:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a(Landroid/view/View;)V

    iput-object p2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->f:Landroid/view/View;

    invoke-virtual {p2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->forceLayout()V

    :goto_3c
    return-object p2

    :cond_3d
    iget v1, v0, Lcom/tonicartos/widget/stickygridheaders/c;->b:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_4c

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->f:Landroid/view/View;

    invoke-direct {p0, p2, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->a(Landroid/view/View;Landroid/view/View;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->forceLayout()V

    goto :goto_3c

    :cond_4c
    iget v1, v0, Lcom/tonicartos/widget/stickygridheaders/c;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_58

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->g:Landroid/view/View;

    invoke-direct {p0, p2, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->a(Landroid/view/View;Landroid/view/View;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$FillerView;

    move-result-object p2

    goto :goto_3c

    :cond_58
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d:Lcom/tonicartos/widget/stickygridheaders/a;

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/c;->b:I

    invoke-interface {v1, v0, p2, p3}, Lcom/tonicartos/widget/stickygridheaders/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->g:Landroid/view/View;

    goto :goto_3c
.end method

.method public final getViewTypeCount()I
    .registers 2

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d:Lcom/tonicartos/widget/stickygridheaders/a;

    invoke-interface {v0}, Lcom/tonicartos/widget/stickygridheaders/a;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final hasStableIds()Z
    .registers 2

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d:Lcom/tonicartos/widget/stickygridheaders/a;

    invoke-interface {v0}, Lcom/tonicartos/widget/stickygridheaders/a;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d:Lcom/tonicartos/widget/stickygridheaders/a;

    invoke-interface {v0}, Lcom/tonicartos/widget/stickygridheaders/a;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isEnabled(I)Z
    .registers 5

    invoke-direct {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d(I)Lcom/tonicartos/widget/stickygridheaders/c;

    move-result-object v0

    iget v1, v0, Lcom/tonicartos/widget/stickygridheaders/c;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    iget v1, v0, Lcom/tonicartos/widget/stickygridheaders/c;->b:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d:Lcom/tonicartos/widget/stickygridheaders/a;

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/c;->b:I

    invoke-interface {v1, v0}, Lcom/tonicartos/widget/stickygridheaders/a;->isEnabled(I)Z

    move-result v0

    goto :goto_f
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d:Lcom/tonicartos/widget/stickygridheaders/a;

    invoke-interface {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/a;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d:Lcom/tonicartos/widget/stickygridheaders/a;

    invoke-interface {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/a;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
