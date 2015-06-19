.class public final Lcom/spotify/android/paste/widget/internal/ListItemImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/internal/ListItemImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_a
invoke-direct {p0, v0}, Lcom/spotify/android/paste/widget/internal/ListItemImageView;->a(Z)V
return-void
:cond_e
const/4 v0, 0x0
goto :goto_a
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/internal/ListItemImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_a
invoke-direct {p0, v0}, Lcom/spotify/android/paste/widget/internal/ListItemImageView;->a(Z)V
return-void
:cond_e
const/4 v0, 0x0
goto :goto_a
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/internal/ListItemImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_a
invoke-direct {p0, v0}, Lcom/spotify/android/paste/widget/internal/ListItemImageView;->a(Z)V
return-void
:cond_e
const/4 v0, 0x0
goto :goto_a
.end method
.method private a(Z)V
.registers 3
if-eqz p1, :cond_7
const/4 v0, 0x0
:goto_3
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/internal/ListItemImageView;->setVisibility(I)V
return-void
:cond_7
const/16 v0, 0x8
goto :goto_3
.end method
.method protected final onMeasure(II)V
.registers 6
const/high16 v2, 0x4000
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/internal/ListItemImageView;->getSuggestedMinimumWidth()I
move-result v0
invoke-static {v0, p1}, Lcom/spotify/android/paste/widget/internal/ListItemImageView;->getDefaultSize(II)I
move-result v0
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/internal/ListItemImageView;->getSuggestedMinimumHeight()I
move-result v1
invoke-static {v1, p2}, Lcom/spotify/android/paste/widget/internal/ListItemImageView;->getDefaultSize(II)I
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v1
invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
invoke-super {p0, v1, v0}, Landroid/widget/ImageView;->onMeasure(II)V
return-void
.end method
.method public final setImageBitmap(Landroid/graphics/Bitmap;)V
.registers 3
if-eqz p1, :cond_a
const/4 v0, 0x1
:goto_3
invoke-direct {p0, v0}, Lcom/spotify/android/paste/widget/internal/ListItemImageView;->a(Z)V
invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
return-void
:cond_a
const/4 v0, 0x0
goto :goto_3
.end method
.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 3
if-eqz p1, :cond_a
const/4 v0, 0x1
:goto_3
invoke-direct {p0, v0}, Lcom/spotify/android/paste/widget/internal/ListItemImageView;->a(Z)V
invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
:cond_a
const/4 v0, 0x0
goto :goto_3
.end method
.method public final setImageResource(I)V
.registers 3
if-eqz p1, :cond_a
const/4 v0, 0x1
:goto_3
invoke-direct {p0, v0}, Lcom/spotify/android/paste/widget/internal/ListItemImageView;->a(Z)V
invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V
return-void
:cond_a
const/4 v0, 0x0
goto :goto_3
.end method
.method public final setImageURI(Landroid/net/Uri;)V
.registers 3
if-eqz p1, :cond_12
sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;
invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_12
const/4 v0, 0x1
:goto_b
invoke-direct {p0, v0}, Lcom/spotify/android/paste/widget/internal/ListItemImageView;->a(Z)V
invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V
return-void
:cond_12
const/4 v0, 0x0
goto :goto_b
.end method