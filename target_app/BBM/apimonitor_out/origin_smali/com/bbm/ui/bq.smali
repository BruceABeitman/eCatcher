.class final Lcom/bbm/ui/bq;
.super Landroid/widget/BaseAdapter;
.source "EmoticonPicker.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/EmoticonPicker;


# direct methods
.method private constructor <init>(Lcom/bbm/ui/EmoticonPicker;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/bq;->a:Lcom/bbm/ui/EmoticonPicker;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbm/ui/EmoticonPicker;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbm/ui/bq;-><init>(Lcom/bbm/ui/EmoticonPicker;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/bq;->a:Lcom/bbm/ui/EmoticonPicker;

    invoke-static {v0}, Lcom/bbm/ui/EmoticonPicker;->b(Lcom/bbm/ui/EmoticonPicker;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/bq;->a:Lcom/bbm/ui/EmoticonPicker;

    invoke-static {v0}, Lcom/bbm/ui/EmoticonPicker;->c(Lcom/bbm/ui/EmoticonPicker;)Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/ui/bq;->a:Lcom/bbm/ui/EmoticonPicker;

    invoke-static {v0}, Lcom/bbm/ui/EmoticonPicker;->b(Lcom/bbm/ui/EmoticonPicker;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    if-nez p2, :cond_7e

    new-instance v1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bbm/ui/bq;->a:Lcom/bbm/ui/EmoticonPicker;

    invoke-virtual {v0}, Lcom/bbm/ui/EmoticonPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget-object v2, p0, Lcom/bbm/ui/bq;->a:Lcom/bbm/ui/EmoticonPicker;

    invoke-static {v2}, Lcom/bbm/ui/EmoticonPicker;->d(Lcom/bbm/ui/EmoticonPicker;)I

    move-result v2

    iget-object v3, p0, Lcom/bbm/ui/bq;->a:Lcom/bbm/ui/EmoticonPicker;

    invoke-static {v3}, Lcom/bbm/ui/EmoticonPicker;->e(Lcom/bbm/ui/EmoticonPicker;)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a0021

    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    :goto_27
    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/bbm/ui/bq;->a:Lcom/bbm/ui/EmoticonPicker;

    invoke-virtual {v2}, Lcom/bbm/ui/EmoticonPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bbm/util/c/c;->a(Landroid/content/Context;)Lcom/bbm/util/c/c;

    move-result-object v3

    iget-object v2, p0, Lcom/bbm/ui/bq;->a:Lcom/bbm/ui/EmoticonPicker;

    invoke-static {v2}, Lcom/bbm/ui/EmoticonPicker;->b(Lcom/bbm/ui/EmoticonPicker;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p0, Lcom/bbm/ui/bq;->a:Lcom/bbm/ui/EmoticonPicker;

    invoke-static {v4}, Lcom/bbm/ui/EmoticonPicker;->e(Lcom/bbm/ui/EmoticonPicker;)I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lcom/bbm/util/c/g;->a:Lcom/bbm/util/c/g;

    invoke-virtual {v3, v2, v4, v5}, Lcom/bbm/util/c/c;->a(IFLcom/bbm/util/c/g;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/bbm/ui/bq;->a:Lcom/bbm/ui/EmoticonPicker;

    invoke-static {v0}, Lcom/bbm/ui/EmoticonPicker;->c(Lcom/bbm/ui/EmoticonPicker;)Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/bbm/ui/bq;->a:Lcom/bbm/ui/EmoticonPicker;

    invoke-static {v0}, Lcom/bbm/ui/EmoticonPicker;->b(Lcom/bbm/ui/EmoticonPicker;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/c/e;

    iget-object v0, v0, Lcom/bbm/util/c/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1

    :cond_7e
    move-object v1, p2

    goto :goto_27
.end method
