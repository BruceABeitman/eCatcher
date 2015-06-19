.class public final Lcom/instagram/android/a/b/q;
.super Ljava/lang/Object;
.source "PendingMediaRowViewBinder.java"


# direct methods
.method public static a(Landroid/content/Context;I)Landroid/view/View;
    .registers 5

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v0, Lcom/instagram/android/a/b/w;->a:I

    if-ne p1, v0, :cond_6f

    sget v0, Lcom/facebook/aw;->row_pending_media:I

    :goto_a
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/a/b/u;

    invoke-direct {v2}, Lcom/instagram/android/a/b/u;-><init>()V

    sget v0, Lcom/facebook/av;->row_pending_media_imageview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/instagram/android/a/b/u;->b:Landroid/widget/ImageView;

    sget v0, Lcom/facebook/av;->row_pending_media_imageview_overlay:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/instagram/android/a/b/u;->c:Landroid/widget/ImageView;

    sget v0, Lcom/facebook/av;->row_pending_media_retry_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/a/b/u;->d:Landroid/view/View;

    sget v0, Lcom/facebook/av;->row_pending_media_cancel_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/a/b/u;->e:Landroid/view/View;

    sget v0, Lcom/facebook/av;->row_pending_media_progress_bar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v2, Lcom/instagram/android/a/b/u;->f:Landroid/widget/ProgressBar;

    sget v0, Lcom/facebook/av;->row_pending_media_text_view_status:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/a/b/u;->g:Landroid/widget/TextView;

    sget v0, Lcom/facebook/av;->row_pending_media_user_profile:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    iput-object v0, v2, Lcom/instagram/android/a/b/u;->h:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    sget v0, Lcom/facebook/av;->vertical_divider:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/a/b/u;->i:Landroid/view/View;

    sget v0, Lcom/facebook/av;->row_pending_media_imageview_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/a/b/u;->j:Landroid/view/View;

    iget-object v0, v2, Lcom/instagram/android/a/b/u;->f:Landroid/widget/ProgressBar;

    invoke-static {v0}, Lcom/instagram/android/a/b/q;->a(Landroid/widget/ProgressBar;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1

    :cond_6f
    sget v0, Lcom/facebook/aw;->row_pending_direct_share:I

    goto :goto_a
.end method

.method public static a(Landroid/content/Context;Lcom/instagram/android/a/b/u;Lcom/instagram/creation/b/a/b;)V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/instagram/android/a/b/u;->a:Lcom/instagram/creation/b/a/b;

    if-eqz v0, :cond_12

    iget-object v0, p1, Lcom/instagram/android/a/b/u;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->x()Lcom/instagram/creation/b/a/c;

    move-result-object v0

    if-ne v0, p1, :cond_12

    iget-object v0, p1, Lcom/instagram/android/a/b/u;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0, v2}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/c;)V

    :cond_12
    iput-object p2, p1, Lcom/instagram/android/a/b/u;->a:Lcom/instagram/creation/b/a/b;

    invoke-virtual {p2, p1}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/c;)V

    iget-object v0, p1, Lcom/instagram/android/a/b/u;->b:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/instagram/creation/b/a/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    invoke-virtual {p2}, Lcom/instagram/creation/b/a/b;->O()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p1, Lcom/instagram/android/a/b/u;->h:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setUrl(Ljava/lang/String;)V

    :goto_3b
    invoke-static {p1, p2}, Lcom/instagram/android/a/b/q;->b(Lcom/instagram/android/a/b/u;Lcom/instagram/creation/b/a/b;)V

    invoke-static {p0}, Lcom/instagram/creation/b/c/a;->a(Landroid/content/Context;)Lcom/instagram/creation/b/c/a;

    move-result-object v0

    iget-object v1, p1, Lcom/instagram/android/a/b/u;->d:Landroid/view/View;

    new-instance v2, Lcom/instagram/android/a/b/r;

    invoke-direct {v2, v0, p2, p0}, Lcom/instagram/android/a/b/r;-><init>(Lcom/instagram/creation/b/c/a;Lcom/instagram/creation/b/a/b;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lcom/instagram/android/a/b/u;->e:Landroid/view/View;

    new-instance v2, Lcom/instagram/android/a/b/s;

    invoke-direct {v2, v0, p2, p0}, Lcom/instagram/android/a/b/s;-><init>(Lcom/instagram/creation/b/c/a;Lcom/instagram/creation/b/a/b;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_57
    invoke-virtual {p2}, Lcom/instagram/creation/b/a/b;->N()Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p1, Lcom/instagram/android/a/b/u;->c:Landroid/widget/ImageView;

    sget v1, Lcom/facebook/au;->grid_camera_icon_small:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3b

    :cond_65
    iget-object v0, p1, Lcom/instagram/android/a/b/u;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3b
.end method

.method private static a(Landroid/widget/ProgressBar;)V
    .registers 7

    const v5, 0x102000d

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    new-instance v1, Lcom/instagram/android/feed/ui/a;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/au;->upload_track:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/android/feed/ui/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v5, v1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/at;->indeterminate_progress_foreground_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    new-instance v2, Lcom/instagram/android/feed/ui/e;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/au;->upload_track:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/instagram/android/feed/ui/e;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, v5, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/a/b/u;Lcom/instagram/creation/b/a/b;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/instagram/android/a/b/q;->b(Lcom/instagram/android/a/b/u;Lcom/instagram/creation/b/a/b;)V

    return-void
.end method

.method private static b(Lcom/instagram/android/a/b/u;Lcom/instagram/creation/b/a/b;)V
    .registers 7

    const/4 v4, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/instagram/android/a/b/u;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/instagram/android/a/b/u;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->v()Z

    move-result v0

    if-nez v0, :cond_48

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->y()Lcom/instagram/creation/b/a/d;

    move-result-object v0

    sget-object v1, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    if-eq v0, v1, :cond_48

    iget-object v0, p0, Lcom/instagram/android/a/b/u;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/android/a/b/u;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/android/a/b/u;->i:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/android/a/b/u;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/android/a/b/u;->g:Landroid/widget/TextView;

    sget v1, Lcom/facebook/az;->failed_to_upload:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/instagram/android/a/b/u;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->O()Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/instagram/android/a/b/u;->j:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_47
    :goto_47
    return-void

    :cond_48
    iget-object v0, p0, Lcom/instagram/android/a/b/u;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/android/a/b/u;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/android/a/b/u;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->O()Z

    move-result v0

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/instagram/android/a/b/u;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_62
    sget-object v0, Lcom/instagram/android/a/b/t;->a:[I

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->y()Lcom/instagram/creation/b/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_fc

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->m()Lcom/instagram/model/a/a;

    move-result-object v0

    sget-object v1, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;

    if-ne v0, v1, :cond_e7

    iget-object v0, p0, Lcom/instagram/android/a/b/u;->f:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/instagram/android/a/b/u;->f:Landroid/widget/ProgressBar;

    sget v1, Lcom/facebook/au;->upload_indeterminate_background:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setBackgroundResource(I)V

    :goto_86
    iget-object v0, p0, Lcom/instagram/android/a/b/u;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/android/a/b/u;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_47

    :pswitch_91
    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->O()Z

    move-result v0

    if-nez v0, :cond_ca

    iget-object v0, p0, Lcom/instagram/android/a/b/u;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/au;->check:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/a/b/u;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/as;->grey_medium:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lcom/instagram/android/a/b/u;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/instagram/android/a/b/u;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/instagram/android/a/b/u;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_ca
    iget-object v1, p0, Lcom/instagram/android/a/b/u;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->O()Z

    move-result v0

    if-eqz v0, :cond_e4

    sget v0, Lcom/facebook/az;->directshare_sending:I

    :goto_d4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/instagram/android/a/b/u;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/android/a/b/u;->f:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_47

    :cond_e4
    sget v0, Lcom/facebook/az;->finishing_up:I

    goto :goto_d4

    :cond_e7
    iget-object v0, p0, Lcom/instagram/android/a/b/u;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/instagram/android/a/b/u;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/instagram/android/a/b/u;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/instagram/creation/b/a/b;->w()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_86

    nop

    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_91
        :pswitch_91
    .end packed-switch
.end method
