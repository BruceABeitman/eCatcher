.class final Lcom/flurry/android/l;
.super Landroid/widget/LinearLayout;
.source "SourceFile"
.method public constructor <init>(Lcom/flurry/android/CatalogActivity;Landroid/content/Context;)V
.registers 9
const/4 v5, -0x2
const/4 v4, 0x0
invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
const/4 v0, -0x1
invoke-virtual {p0, v0}, Lcom/flurry/android/l;->setBackgroundColor(I)V
invoke-static {p1}, Lcom/flurry/android/CatalogActivity;->c(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/n;
move-result-object v0
invoke-virtual {v0}, Lcom/flurry/android/n;->k()Lcom/flurry/android/AdImage;
move-result-object v0
if-eqz v0, :cond_46
new-instance v1, Landroid/widget/ImageView;
invoke-direct {v1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
const/16 v2, 0x2710
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V
iget-object v2, v0, Lcom/flurry/android/AdImage;->d:[B
array-length v3, v2
invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget v2, v0, Lcom/flurry/android/AdImage;->b:I
invoke-static {p2, v2}, Lcom/flurry/android/h;->a(Landroid/content/Context;I)I
move-result v2
iget v0, v0, Lcom/flurry/android/AdImage;->c:I
invoke-static {p2, v0}, Lcom/flurry/android/h;->a(Landroid/content/Context;I)I
move-result v0
invoke-static {p2, v1, v2, v0}, Lcom/flurry/android/h;->a(Landroid/content/Context;Landroid/widget/ImageView;II)V
new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
const/4 v2, -0x3
invoke-virtual {v0, v4, v4, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
const/4 v2, 0x3
invoke-virtual {p0, v2}, Lcom/flurry/android/l;->setGravity(I)V
invoke-virtual {p0, v1, v0}, Lcom/flurry/android/l;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:cond_46
return-void
.end method