.class final Landroid/support/v7/internal/view/menu/z;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/view/menu/y;

.field private b:Landroid/support/v7/internal/view/menu/n;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/y;Landroid/support/v7/internal/view/menu/n;)V
    .registers 4

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/z;->a:Landroid/support/v7/internal/view/menu/y;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/internal/view/menu/z;->c:I

    iput-object p2, p0, Landroid/support/v7/internal/view/menu/z;->b:Landroid/support/v7/internal/view/menu/n;

    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/z;->a()V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/view/menu/z;)Landroid/support/v7/internal/view/menu/n;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->b:Landroid/support/v7/internal/view/menu/n;

    return-object v0
.end method

.method private a()V
    .registers 6

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->a:Landroid/support/v7/internal/view/menu/y;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/y;->c(Landroid/support/v7/internal/view/menu/y;)Landroid/support/v7/internal/view/menu/n;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->q()Landroid/support/v7/internal/view/menu/r;

    move-result-object v2

    if-eqz v2, :cond_2d

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->a:Landroid/support/v7/internal/view/menu/y;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/y;->c(Landroid/support/v7/internal/view/menu/y;)Landroid/support/v7/internal/view/menu/n;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->n()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_1c
    if-ge v1, v4, :cond_2d

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/r;

    if-ne v0, v2, :cond_29

    iput v1, p0, Landroid/support/v7/internal/view/menu/z;->c:I

    :goto_28
    return-void

    :cond_29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1c

    :cond_2d
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/internal/view/menu/z;->c:I

    goto :goto_28
.end method


# virtual methods
.method public final a(I)Landroid/support/v7/internal/view/menu/r;
    .registers 4

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->a:Landroid/support/v7/internal/view/menu/y;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/y;->a(Landroid/support/v7/internal/view/menu/y;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->b:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->n()Ljava/util/ArrayList;

    move-result-object v0

    :goto_e
    iget v1, p0, Landroid/support/v7/internal/view/menu/z;->c:I

    if-ltz v1, :cond_18

    iget v1, p0, Landroid/support/v7/internal/view/menu/z;->c:I

    if-lt p1, v1, :cond_18

    add-int/lit8 p1, p1, 0x1

    :cond_18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/r;

    return-object v0

    :cond_1f
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->b:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->k()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_e
.end method

.method public final getCount()I
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->a:Landroid/support/v7/internal/view/menu/y;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/y;->a(Landroid/support/v7/internal/view/menu/y;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->b:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->n()Ljava/util/ArrayList;

    move-result-object v0

    :goto_e
    iget v1, p0, Landroid/support/v7/internal/view/menu/z;->c:I

    if-gez v1, :cond_1e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->b:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->k()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_e

    :cond_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_16
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/z;->a(I)Landroid/support/v7/internal/view/menu/r;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    if-nez p2, :cond_26

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/z;->a:Landroid/support/v7/internal/view/menu/y;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/y;->b(Landroid/support/v7/internal/view/menu/y;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/internal/view/menu/y;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_f
    move-object v0, v1

    check-cast v0, Landroid/support/v7/internal/view/menu/ad;

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/z;->a:Landroid/support/v7/internal/view/menu/y;

    iget-boolean v2, v2, Landroid/support/v7/internal/view/menu/y;->c:Z

    if-eqz v2, :cond_1e

    move-object v2, v1

    check-cast v2, Landroid/support/v7/internal/view/menu/ListMenuItemView;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/ListMenuItemView;->c()V

    :cond_1e
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/z;->a(I)Landroid/support/v7/internal/view/menu/r;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/support/v7/internal/view/menu/ad;->a(Landroid/support/v7/internal/view/menu/r;)V

    return-object v1

    :cond_26
    move-object v1, p2

    goto :goto_f
.end method

.method public final notifyDataSetChanged()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/z;->a()V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
