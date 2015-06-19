.class public final Lcom/instagram/android/a/b/aj;
.super Ljava/lang/Object;
.source "ReviewPhotoMapTypeRow.java"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/view/View;
    .registers 4

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->row_review_map:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/a/b/al;

    invoke-direct {v2}, Lcom/instagram/android/a/b/al;-><init>()V

    sget v0, Lcom/facebook/av;->row_review_map_textview_expanded_copy:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/a/b/al;->c:Landroid/widget/TextView;

    sget v0, Lcom/facebook/av;->row_review_map_textview_count:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/a/b/al;->a:Landroid/widget/TextView;

    sget v0, Lcom/facebook/av;->row_review_map_imageview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/ui/widget/imageview/IgImageView;

    iput-object v0, v2, Lcom/instagram/android/a/b/al;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    sget v0, Lcom/facebook/av;->row_review_map_button_deselect_cluster:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/instagram/android/a/b/al;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;Lcom/instagram/android/a/b/al;Lcom/instagram/android/a/q;)V
    .registers 13

    const/4 v4, 0x0

    const/4 v2, 0x1

    iget-object v0, p1, Lcom/instagram/android/a/b/al;->a:Landroid/widget/TextView;

    iget v1, p2, Lcom/instagram/android/a/q;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p2, Lcom/instagram/android/a/q;->c:I

    if-le v0, v2, :cond_88

    iget-object v0, p1, Lcom/instagram/android/a/b/al;->c:Landroid/widget/TextView;

    sget v1, Lcom/facebook/az;->you_geotagged_x_photos_near_here:I

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p2, Lcom/instagram/android/a/q;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_26
    iget-object v7, p1, Lcom/instagram/android/a/b/al;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    iget-object v0, p1, Lcom/instagram/android/a/b/al;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-virtual {v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v1, 0x0

    const-string v2, "12"

    iget-object v3, p1, Lcom/instagram/android/a/b/al;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-virtual {v3}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/instagram/common/u/f;->a(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/facebook/at;->map_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p2, Lcom/instagram/android/a/q;->b:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v5}, Lcom/instagram/android/maps/b/h;->c()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget-object v6, p2, Lcom/instagram/android/a/q;->b:Lcom/instagram/android/maps/b/h;

    invoke-virtual {v6}, Lcom/instagram/android/maps/b/h;->f()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/instagram/android/widget/j;->a(FLcom/instagram/venue/model/Venue;Ljava/lang/String;IILjava/lang/Double;Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setUrl(Ljava/lang/String;)V

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    iget-object v1, p2, Lcom/instagram/android/a/q;->a:Lcom/instagram/android/maps/b/f;

    invoke-virtual {v1}, Lcom/instagram/android/maps/b/f;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->b(Ljava/util/List;)Z

    move-result v0

    iget-object v1, p1, Lcom/instagram/android/a/b/al;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_9e

    const/16 v0, 0x80

    :goto_7a
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v0, p1, Lcom/instagram/android/a/b/al;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/instagram/android/a/b/ak;

    invoke-direct {v1, p2, p1}, Lcom/instagram/android/a/b/ak;-><init>(Lcom/instagram/android/a/q;Lcom/instagram/android/a/b/al;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_88
    iget-object v0, p1, Lcom/instagram/android/a/b/al;->c:Landroid/widget/TextView;

    sget v1, Lcom/facebook/az;->you_geotagged_x_photo_near_here:I

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p2, Lcom/instagram/android/a/q;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_26

    :cond_9e
    const/16 v0, 0xff

    goto :goto_7a
.end method
