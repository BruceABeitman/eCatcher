.class public final Lcom/instagram/android/feed/a/b/s;
.super Ljava/lang/Object;
.source "MediaSetRowViewBinder.java"


# direct methods
.method public static a(Landroid/content/Context;I)Landroid/view/View;
    .registers 9

    const/4 v1, 0x0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/instagram/android/feed/a/b/w;

    invoke-direct {v4, p1}, Lcom/instagram/android/feed/a/b/w;-><init>(I)V

    iput-object v3, v4, Lcom/instagram/android/feed/a/b/w;->b:Landroid/view/View;

    move v0, v1

    :goto_e
    iget v2, v4, Lcom/instagram/android/feed/a/b/w;->a:I

    if-ge v0, v2, :cond_39

    iget v2, v4, Lcom/instagram/android/feed/a/b/w;->a:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_37

    const/4 v2, 0x1

    :goto_19
    invoke-static {p0, v2}, Lcom/instagram/android/feed/a/b/s;->a(Landroid/content/Context;Z)Lcom/instagram/ui/widget/a/a;

    move-result-object v2

    iget-object v5, v4, Lcom/instagram/android/feed/a/b/w;->d:[Lcom/instagram/ui/widget/a/a;

    aput-object v2, v5, v0

    iget-object v5, v4, Lcom/instagram/android/feed/a/b/w;->c:[Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-virtual {v2}, Lcom/instagram/ui/widget/a/a;->getImageView()Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;

    move-result-object v6

    aput-object v6, v5, v0

    iget-object v5, v4, Lcom/instagram/android/feed/a/b/w;->f:[Landroid/view/View;

    invoke-virtual {v2}, Lcom/instagram/ui/widget/a/a;->getVideoOverlayView()Landroid/view/View;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_37
    move v2, v1

    goto :goto_19

    :cond_39
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    return-object v3
.end method

.method private static a(Landroid/content/Context;Z)Lcom/instagram/ui/widget/a/a;
    .registers 7

    new-instance v0, Lcom/instagram/ui/widget/a/a;

    invoke-direct {v0, p0}, Lcom/instagram/ui/widget/a/a;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f80

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/at;->photo_grid_spacing:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_1c
    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/a/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method static synthetic a(Landroid/widget/ImageView;Landroid/widget/CheckBox;Lcom/instagram/feed/d/z;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/instagram/android/feed/a/b/s;->b(Landroid/widget/ImageView;Landroid/widget/CheckBox;Lcom/instagram/feed/d/z;)V

    return-void
.end method

.method public static a(Lcom/instagram/android/feed/a/b/w;Ljava/util/List;ZI)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/feed/a/b/w;",
            "Ljava/util/List",
            "<+",
            "Lcom/instagram/feed/d/z;",
            ">;ZI)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/instagram/android/feed/a/b/s;->a(Lcom/instagram/android/feed/a/b/w;Ljava/util/List;ZZILcom/instagram/android/feed/a/b/v;)V

    return-void
.end method

.method public static a(Lcom/instagram/android/feed/a/b/w;Ljava/util/List;ZZILcom/instagram/android/feed/a/b/v;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/feed/a/b/w;",
            "Ljava/util/List",
            "<+",
            "Lcom/instagram/feed/d/z;",
            ">;ZZI",
            "Lcom/instagram/android/feed/a/b/v;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/w;->b:Landroid/view/View;

    if-eqz p2, :cond_36

    const/4 v0, 0x0

    :goto_5
    invoke-static {v1, v0}, Lcom/instagram/common/u/f;->a(Landroid/view/View;I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/w;->c:[Lcom/instagram/common/ui/widget/imageview/IgImageView;

    array-length v0, v0

    if-ge v1, v0, :cond_ca

    iget-object v0, p0, Lcom/instagram/android/feed/a/b/w;->c:[Lcom/instagram/common/ui/widget/imageview/IgImageView;

    aget-object v4, v0, v1

    iget-object v0, p0, Lcom/instagram/android/feed/a/b/w;->d:[Lcom/instagram/ui/widget/a/a;

    aget-object v5, v0, v1

    if-ge v1, v3, :cond_43

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/z;

    move-object v2, v0

    :goto_24
    if-nez v2, :cond_46

    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x4

    invoke-virtual {v5, v0}, Lcom/instagram/ui/widget/a/a;->setVisibility(I)V

    :cond_32
    :goto_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_36
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/w;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/at;->photo_grid_spacing:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_5

    :cond_43
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_24

    :cond_46
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setVisibility(I)V

    invoke-interface {v2}, Lcom/instagram/feed/d/z;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/instagram/ui/widget/a/a;->setVisibility(I)V

    if-nez p3, :cond_9b

    const/4 v0, 0x1

    :goto_58
    invoke-virtual {v5, v0}, Lcom/instagram/ui/widget/a/a;->setEnableTouchOverlay(Z)V

    if-eqz p3, :cond_a2

    iget-object v0, p0, Lcom/instagram/android/feed/a/b/w;->e:[Landroid/widget/CheckBox;

    aget-object v0, v0, v1

    if-nez v0, :cond_9d

    iget-object v6, p0, Lcom/instagram/android/feed/a/b/w;->e:[Landroid/widget/CheckBox;

    invoke-virtual {v5}, Lcom/instagram/ui/widget/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v7, Lcom/facebook/aw;->checkbox_media_grid:I

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v6, v1

    invoke-virtual {v5, v0}, Lcom/instagram/ui/widget/a/a;->addView(Landroid/view/View;)V

    :goto_7b
    invoke-static {v4, v0, v2}, Lcom/instagram/android/feed/a/b/s;->b(Landroid/widget/ImageView;Landroid/widget/CheckBox;Lcom/instagram/feed/d/z;)V

    new-instance v5, Lcom/instagram/android/feed/a/b/t;

    invoke-direct {v5, v2, v4, v0}, Lcom/instagram/android/feed/a/b/t;-><init>(Lcom/instagram/feed/d/z;Lcom/instagram/common/ui/widget/imageview/IgImageView;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_86
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/w;->f:[Landroid/view/View;

    aget-object v0, v0, v1

    if-eqz v0, :cond_32

    invoke-interface {v2}, Lcom/instagram/feed/d/z;->g()Z

    move-result v0

    if-eqz v0, :cond_bf

    iget-object v0, p0, Lcom/instagram/android/feed/a/b/w;->f:[Landroid/view/View;

    aget-object v0, v0, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_32

    :cond_9b
    const/4 v0, 0x0

    goto :goto_58

    :cond_9d
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/w;->e:[Landroid/widget/CheckBox;

    aget-object v0, v0, v1

    goto :goto_7b

    :cond_a2
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/w;->e:[Landroid/widget/CheckBox;

    aget-object v0, v0, v1

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/instagram/android/feed/a/b/w;->e:[Landroid/widget/CheckBox;

    aget-object v0, v0, v1

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    const/16 v0, 0xff

    invoke-virtual {v4, v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setAlpha(I)V

    :cond_b6
    new-instance v0, Lcom/instagram/android/feed/a/b/u;

    invoke-direct {v0, p5, p1, v1, p4}, Lcom/instagram/android/feed/a/b/u;-><init>(Lcom/instagram/android/feed/a/b/v;Ljava/util/List;II)V

    invoke-virtual {v4, v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_86

    :cond_bf
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/w;->f:[Landroid/view/View;

    aget-object v0, v0, v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_32

    :cond_ca
    return-void
.end method

.method private static b(Landroid/widget/ImageView;Landroid/widget/CheckBox;Lcom/instagram/feed/d/z;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/android/maps/e/a;->a(Lcom/instagram/feed/d/z;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/android/maps/e/a;->a(Lcom/instagram/feed/d/z;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v0, 0xff

    :goto_1b
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    return-void

    :cond_1f
    const/16 v0, 0x80

    goto :goto_1b
.end method
