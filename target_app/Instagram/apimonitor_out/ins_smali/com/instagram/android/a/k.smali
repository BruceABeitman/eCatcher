.class final Lcom/instagram/android/a/k;
.super Ljava/lang/Object;
.source "NearbyVenuesAdapter.java"
.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
sget v0, Lcom/facebook/aw;->row_venue:I
const/4 v1, 0x0
invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/instagram/android/a/l;
invoke-direct {v2}, Lcom/instagram/android/a/l;-><init>()V
invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
sget v0, Lcom/facebook/av;->row_venue_image:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, v2, Lcom/instagram/android/a/l;->c:Landroid/widget/ImageView;
sget v0, Lcom/facebook/av;->row_venue_title:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/instagram/android/a/l;->a:Landroid/widget/TextView;
sget v0, Lcom/facebook/av;->row_venue_subtitle:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/instagram/android/a/l;->b:Landroid/widget/TextView;
return-object v1
.end method
.method public static a(Landroid/content/Context;Lcom/instagram/android/a/l;Ljava/lang/String;)V
.registers 8
const/4 v4, 0x0
iget-object v0, p1, Lcom/instagram/android/a/l;->c:Landroid/widget/ImageView;
sget v1, Lcom/facebook/au;->share_location:I
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p1, Lcom/instagram/android/a/l;->c:Landroid/widget/ImageView;
invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p1, Lcom/instagram/android/a/l;->a:Landroid/widget/TextView;
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/az;->add_a_location:I
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
aput-object p2, v3, v4
invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p1, Lcom/instagram/android/a/l;->b:Landroid/widget/TextView;
sget v1, Lcom/facebook/az;->create_a_custom_location:I
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
return-void
.end method
.method public static a(Lcom/instagram/android/a/l;Lcom/instagram/venue/model/Venue;)V
.registers 5
const/16 v2, 0x8
iget-object v0, p0, Lcom/instagram/android/a/l;->a:Landroid/widget/TextView;
invoke-virtual {p1}, Lcom/instagram/venue/model/Venue;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/instagram/android/a/l;->c:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
invoke-virtual {p1}, Lcom/instagram/venue/model/Venue;->d()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_24
invoke-virtual {p1}, Lcom/instagram/venue/model/Venue;->i()Z
move-result v0
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/instagram/android/a/l;->b:Landroid/widget/TextView;
sget v1, Lcom/facebook/az;->custom_location:I
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
:goto_23
return-void
:cond_24
invoke-virtual {p1}, Lcom/instagram/venue/model/Venue;->d()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_3e
iget-object v0, p0, Lcom/instagram/android/a/l;->b:Landroid/widget/TextView;
invoke-virtual {p1}, Lcom/instagram/venue/model/Venue;->d()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/instagram/android/a/l;->b:Landroid/widget/TextView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_23
:cond_3e
iget-object v0, p0, Lcom/instagram/android/a/l;->b:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_23
.end method
.method public static b(Landroid/content/Context;Lcom/instagram/android/a/l;Ljava/lang/String;)V
.registers 8
const/4 v4, 0x0
iget-object v0, p1, Lcom/instagram/android/a/l;->c:Landroid/widget/ImageView;
sget v1, Lcom/facebook/au;->nav_search:I
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p1, Lcom/instagram/android/a/l;->c:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v0
const v1, -0xa39b95
invoke-static {v1}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
iget-object v0, p1, Lcom/instagram/android/a/l;->c:Landroid/widget/ImageView;
invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p1, Lcom/instagram/android/a/l;->a:Landroid/widget/TextView;
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/az;->search_for_a_location:I
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
aput-object p2, v3, v4
invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p1, Lcom/instagram/android/a/l;->b:Landroid/widget/TextView;
sget v1, Lcom/facebook/az;->search_places_nearby:I
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
return-void
.end method