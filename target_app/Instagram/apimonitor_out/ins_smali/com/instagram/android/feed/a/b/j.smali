.class public final Lcom/instagram/android/feed/a/b/j;
.super Ljava/lang/Object;
.source "LocationRowViewBinder.java"
.method public static a(Landroid/content/Context;)Landroid/view/View;
.registers 5
invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Lcom/facebook/aw;->row_map_header:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/instagram/android/feed/a/b/l;
invoke-direct {v2}, Lcom/instagram/android/feed/a/b/l;-><init>()V
sget v0, Lcom/facebook/av;->foursquare_glyph:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
invoke-static {v2, v0}, Lcom/instagram/android/feed/a/b/l;->a(Lcom/instagram/android/feed/a/b/l;Landroid/widget/ImageView;)Landroid/widget/ImageView;
invoke-static {v2}, Lcom/instagram/android/feed/a/b/l;->a(Lcom/instagram/android/feed/a/b/l;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v0
const/16 v3, 0x80
invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
sget v0, Lcom/facebook/av;->row_map_header_imageview:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/common/ui/widget/imageview/IgImageView;
invoke-static {v2, v0}, Lcom/instagram/android/feed/a/b/l;->a(Lcom/instagram/android/feed/a/b/l;Lcom/instagram/common/ui/widget/imageview/IgImageView;)Lcom/instagram/common/ui/widget/imageview/IgImageView;
sget v0, Lcom/facebook/av;->layout_button_group_view_switcher_button_grid:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, v2, Lcom/instagram/android/feed/a/b/l;->a:Landroid/view/View;
sget v0, Lcom/facebook/av;->layout_button_group_view_switcher_button_list:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, v2, Lcom/instagram/android/feed/a/b/l;->b:Landroid/view/View;
invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
return-object v1
.end method
.method public static a(Lcom/instagram/android/feed/a/b/l;Lcom/instagram/venue/model/Venue;Landroid/content/Context;Lcom/instagram/android/feed/a/a;)V
.registers 12
iget-object v0, p0, Lcom/instagram/android/feed/a/b/l;->a:Landroid/view/View;
iget-object v1, p0, Lcom/instagram/android/feed/a/b/l;->b:Landroid/view/View;
invoke-static {v0, v1, p3}, Lcom/instagram/android/widget/ae;->a(Landroid/view/View;Landroid/view/View;Lcom/instagram/android/feed/a/a;)V
invoke-static {p0}, Lcom/instagram/android/feed/a/b/l;->a(Lcom/instagram/android/feed/a/b/l;)Landroid/widget/ImageView;
move-result-object v0
new-instance v1, Lcom/instagram/android/feed/a/b/k;
invoke-direct {v1, p1, p2}, Lcom/instagram/android/feed/a/b/k;-><init>(Lcom/instagram/venue/model/Venue;Landroid/content/Context;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-static {p0}, Lcom/instagram/android/feed/a/b/l;->a(Lcom/instagram/android/feed/a/b/l;)Landroid/widget/ImageView;
move-result-object v1
const-string v0, "foursquare"
invoke-virtual {p1}, Lcom/instagram/venue/model/Venue;->f()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_84
const/4 v0, 0x0
:goto_24
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
invoke-static {p0}, Lcom/instagram/android/feed/a/b/l;->b(Lcom/instagram/android/feed/a/b/l;)Lcom/instagram/common/ui/widget/imageview/IgImageView;
move-result-object v7
invoke-static {p0}, Lcom/instagram/android/feed/a/b/l;->b(Lcom/instagram/android/feed/a/b/l;)Lcom/instagram/common/ui/widget/imageview/IgImageView;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
const-string v2, "14"
invoke-static {p0}, Lcom/instagram/android/feed/a/b/l;->b(Lcom/instagram/android/feed/a/b/l;)Lcom/instagram/common/ui/widget/imageview/IgImageView;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/instagram/common/u/f;->a(Landroid/content/Context;)I
move-result v3
invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v4, Lcom/facebook/at;->map_height:I
invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v4
invoke-virtual {p1}, Lcom/instagram/venue/model/Venue;->g()Ljava/lang/Double;
move-result-object v5
invoke-virtual {p1}, Lcom/instagram/venue/model/Venue;->h()Ljava/lang/Double;
move-result-object v6
move-object v1, p1
invoke-static/range {v0 .. v6}, Lcom/instagram/android/widget/j;->a(FLcom/instagram/venue/model/Venue;Ljava/lang/String;IILjava/lang/Double;Ljava/lang/Double;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v7, v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setUrl(Ljava/lang/String;)V
invoke-static {p0}, Lcom/instagram/android/feed/a/b/l;->b(Lcom/instagram/android/feed/a/b/l;)Lcom/instagram/common/ui/widget/imageview/IgImageView;
move-result-object v6
new-instance v0, Lcom/instagram/android/widget/k;
invoke-static {p0}, Lcom/instagram/android/feed/a/b/l;->b(Lcom/instagram/android/feed/a/b/l;)Lcom/instagram/common/ui/widget/imageview/IgImageView;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {p1}, Lcom/instagram/venue/model/Venue;->g()Ljava/lang/Double;
move-result-object v2
invoke-virtual {p1}, Lcom/instagram/venue/model/Venue;->h()Ljava/lang/Double;
move-result-object v3
invoke-virtual {p1}, Lcom/instagram/venue/model/Venue;->c()Ljava/lang/String;
move-result-object v4
const-string v5, "14"
invoke-direct/range {v0 .. v5}, Lcom/instagram/android/widget/k;-><init>(Landroid/content/Context;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/CharSequence;Ljava/lang/String;)V
invoke-virtual {v6, v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
:cond_84
const/16 v0, 0x8
goto :goto_24
.end method