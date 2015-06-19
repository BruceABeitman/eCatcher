.class public final Lcom/instagram/android/j/a/a;
.super Ljava/lang/Object;
.source "SimilarAccountsViewBinder.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/instagram/user/follow/h;Lcom/instagram/user/follow/h;Landroid/view/View;)Landroid/view/View;
    .registers 13

    const/4 v7, 0x3

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->similar_accounts_flyout:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/instagram/android/j/a/e;

    invoke-direct {v3}, Lcom/instagram/android/j/a/e;-><init>()V

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v3, Lcom/instagram/android/j/a/e;->a:Landroid/view/ViewGroup;

    sget v0, Lcom/facebook/av;->similar_accounts_header_x:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/instagram/android/j/a/e;->c:Landroid/widget/ImageView;

    iget-object v0, v3, Lcom/instagram/android/j/a/e;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/facebook/as;->accent_blue_medium:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v4, Lcom/instagram/android/l/a/g;

    invoke-direct {v4}, Lcom/instagram/android/l/a/g;-><init>()V

    new-array v0, v7, [Landroid/view/View;

    iput-object v0, v3, Lcom/instagram/android/j/a/e;->d:[Landroid/view/View;

    move v0, v2

    :goto_46
    if-ge v0, v7, :cond_5d

    invoke-virtual {v4, p0, p2, p3, v2}, Lcom/instagram/android/l/a/g;->a(Landroid/content/Context;Lcom/instagram/user/follow/h;Lcom/instagram/user/follow/h;Z)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, v3, Lcom/instagram/android/j/a/e;->d:[Landroid/view/View;

    aput-object v5, v6, v0

    iget-object v6, v3, Lcom/instagram/android/j/a/e;->a:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :cond_5d
    sget v0, Lcom/facebook/av;->similar_accounts_notch:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/widget/triangleshape/TriangleShape;

    iput-object v0, v3, Lcom/instagram/android/j/a/e;->b:Lcom/instagram/ui/widget/triangleshape/TriangleShape;

    iget-object v0, v3, Lcom/instagram/android/j/a/e;->b:Lcom/instagram/ui/widget/triangleshape/TriangleShape;

    invoke-virtual {v0, p4}, Lcom/instagram/ui/widget/triangleshape/TriangleShape;->setNotchCenterXOn(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static a(Lcom/instagram/android/j/a/e;Ljava/util/List;Landroid/support/v4/app/an;Landroid/support/v4/app/s;Lcom/instagram/android/j/a/d;Ljava/lang/String;Ljava/lang/String;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/j/a/e;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;",
            "Landroid/support/v4/app/an;",
            "Landroid/support/v4/app/s;",
            "Lcom/instagram/android/j/a/d;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v4, Lcom/instagram/android/l/a/g;

    invoke-direct {v4}, Lcom/instagram/android/l/a/g;-><init>()V

    if-eqz p1, :cond_7c

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7c

    const/4 v5, 0x0

    move v15, v5

    :goto_f
    const/4 v5, 0x3

    if-ge v15, v5, :cond_7c

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v15, v5, :cond_70

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/instagram/android/j/a/e;->d:[Landroid/view/View;

    aget-object v5, v5, v15

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/instagram/android/l/a/k;

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/instagram/user/c/a;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v13, 0x0

    new-instance v14, Lcom/instagram/android/j/a/b;

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v14, v0, v1, v2}, Lcom/instagram/android/j/a/b;-><init>(Landroid/support/v4/app/s;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual/range {v4 .. v14}, Lcom/instagram/android/l/a/g;->a(Lcom/instagram/android/l/a/k;Lcom/instagram/user/c/a;ZZZZLandroid/support/v4/app/an;Landroid/support/v4/app/s;Ljava/util/List;Lcom/instagram/android/j/d;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/instagram/android/j/a/e;->d:[Landroid/view/View;

    aget-object v5, v5, v15

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    sget v5, Lcom/facebook/av;->layout_container_main:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/instagram/common/analytics/e;

    sget-object v7, Lcom/instagram/android/j/a;->a:Lcom/instagram/android/j/a;

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/instagram/user/c/a;

    invoke-virtual {v6}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-static {v5, v7, v0, v6, v1}, Lcom/instagram/android/j/b;->a(Lcom/instagram/common/analytics/e;Lcom/instagram/android/j/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6c
    add-int/lit8 v5, v15, 0x1

    move v15, v5

    goto :goto_f

    :cond_70
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/instagram/android/j/a/e;->d:[Landroid/view/View;

    aget-object v5, v5, v15

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6c

    :cond_7c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/instagram/android/j/a/e;->c:Landroid/widget/ImageView;

    new-instance v5, Lcom/instagram/android/j/a/c;

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/instagram/android/j/a/c;-><init>(Lcom/instagram/android/j/a/d;Landroid/support/v4/app/s;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
