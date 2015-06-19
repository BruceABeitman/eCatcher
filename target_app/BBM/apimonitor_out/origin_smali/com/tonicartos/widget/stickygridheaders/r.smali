.class public final Lcom/tonicartos/widget/stickygridheaders/r;
.super Landroid/widget/BaseAdapter;
.source "StickyGridHeadersSimpleAdapterWrapper.java"

# interfaces
.implements Lcom/tonicartos/widget/stickygridheaders/a;


# instance fields
.field private a:Lcom/tonicartos/widget/stickygridheaders/q;

.field private b:[Lcom/tonicartos/widget/stickygridheaders/t;


# direct methods
.method public constructor <init>(Lcom/tonicartos/widget/stickygridheaders/q;)V
    .registers 4

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/r;->a:Lcom/tonicartos/widget/stickygridheaders/q;

    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tonicartos/widget/stickygridheaders/s;-><init>(Lcom/tonicartos/widget/stickygridheaders/r;B)V

    invoke-interface {p1, v0}, Lcom/tonicartos/widget/stickygridheaders/q;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-virtual {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/r;->a(Lcom/tonicartos/widget/stickygridheaders/q;)[Lcom/tonicartos/widget/stickygridheaders/t;

    move-result-object v0

    iput-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/r;->b:[Lcom/tonicartos/widget/stickygridheaders/t;

    return-void
.end method

.method static synthetic a(Lcom/tonicartos/widget/stickygridheaders/r;)Lcom/tonicartos/widget/stickygridheaders/q;
    .registers 2

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/r;->a:Lcom/tonicartos/widget/stickygridheaders/q;

    return-object v0
.end method

.method static synthetic a(Lcom/tonicartos/widget/stickygridheaders/r;[Lcom/tonicartos/widget/stickygridheaders/t;)[Lcom/tonicartos/widget/stickygridheaders/t;
    .registers 2

    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/r;->b:[Lcom/tonicartos/widget/stickygridheaders/t;

    return-object p1
.end method


# virtual methods
.method public final a(I)I
    .registers 3

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/r;->b:[Lcom/tonicartos/widget/stickygridheaders/t;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/t;->a:I

    return v0
.end method

.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/r;->a:Lcom/tonicartos/widget/stickygridheaders/q;

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/r;->b:[Lcom/tonicartos/widget/stickygridheaders/t;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/tonicartos/widget/stickygridheaders/t;->b:I

    invoke-interface {v0}, Lcom/tonicartos/widget/stickygridheaders/q;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/tonicartos/widget/stickygridheaders/q;)[Lcom/tonicartos/widget/stickygridheaders/t;
    .registers 9

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    invoke-interface {p1}, Lcom/tonicartos/widget/stickygridheaders/q;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_3b

    invoke-interface {p1}, Lcom/tonicartos/widget/stickygridheaders/q;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonicartos/widget/stickygridheaders/t;

    if-nez v0, :cond_2a

    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/t;

    invoke-direct {v0, p0, v1}, Lcom/tonicartos/widget/stickygridheaders/t;-><init>(Lcom/tonicartos/widget/stickygridheaders/r;I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    iget v6, v0, Lcom/tonicartos/widget/stickygridheaders/t;->a:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/tonicartos/widget/stickygridheaders/t;->a:I

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_3b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/tonicartos/widget/stickygridheaders/t;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tonicartos/widget/stickygridheaders/t;

    return-object v0
.end method

.method public final b()I
    .registers 2

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/r;->b:[Lcom/tonicartos/widget/stickygridheaders/t;

    array-length v0, v0

    return v0
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/r;->a:Lcom/tonicartos/widget/stickygridheaders/q;

    invoke-interface {v0}, Lcom/tonicartos/widget/stickygridheaders/q;->getCount()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/r;->a:Lcom/tonicartos/widget/stickygridheaders/q;

    invoke-interface {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/q;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/r;->a:Lcom/tonicartos/widget/stickygridheaders/q;

    invoke-interface {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/q;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .registers 3

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/r;->a:Lcom/tonicartos/widget/stickygridheaders/q;

    invoke-interface {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/q;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/r;->a:Lcom/tonicartos/widget/stickygridheaders/q;

    invoke-interface {v0, p1, p2, p3}, Lcom/tonicartos/widget/stickygridheaders/q;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getViewTypeCount()I
    .registers 2

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/r;->a:Lcom/tonicartos/widget/stickygridheaders/q;

    invoke-interface {v0}, Lcom/tonicartos/widget/stickygridheaders/q;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public final hasStableIds()Z
    .registers 2

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/r;->a:Lcom/tonicartos/widget/stickygridheaders/q;

    invoke-interface {v0}, Lcom/tonicartos/widget/stickygridheaders/q;->hasStableIds()Z

    move-result v0

    return v0
.end method
