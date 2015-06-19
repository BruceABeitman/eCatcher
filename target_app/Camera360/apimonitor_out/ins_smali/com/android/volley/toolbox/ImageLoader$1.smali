.class  Lcom/android/volley/toolbox/ImageLoader$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;
.field private final synthetic val$defaultImageResId:I
.field private final synthetic val$errorImageResId:I
.field private final synthetic val$view:Landroid/widget/ImageView;
.method constructor <init>(ILandroid/widget/ImageView;I)V
.registers 4
iput p1, p0, Lcom/android/volley/toolbox/ImageLoader$1;->val$errorImageResId:I
iput-object p2, p0, Lcom/android/volley/toolbox/ImageLoader$1;->val$view:Landroid/widget/ImageView;
iput p3, p0, Lcom/android/volley/toolbox/ImageLoader$1;->val$defaultImageResId:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
.registers 4
iget v0, p0, Lcom/android/volley/toolbox/ImageLoader$1;->val$errorImageResId:I
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$1;->val$view:Landroid/widget/ImageView;
iget v1, p0, Lcom/android/volley/toolbox/ImageLoader$1;->val$errorImageResId:I
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
:cond_b
return-void
.end method
.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
.registers 5
invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$1;->val$view:Landroid/widget/ImageView;
invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:goto_f
:cond_f
return-void
:cond_10
iget v0, p0, Lcom/android/volley/toolbox/ImageLoader$1;->val$defaultImageResId:I
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$1;->val$view:Landroid/widget/ImageView;
iget v1, p0, Lcom/android/volley/toolbox/ImageLoader$1;->val$defaultImageResId:I
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_f
.end method