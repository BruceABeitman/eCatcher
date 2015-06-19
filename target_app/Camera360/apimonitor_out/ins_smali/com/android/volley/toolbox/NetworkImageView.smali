.class public Lcom/android/volley/toolbox/NetworkImageView;
.super Landroid/widget/ImageView;
.source "NetworkImageView.java"
.field private mDefaultImageId:I
.field private mErrorImageId:I
.field private mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
.field private mImageLoader:Lcom/android/volley/toolbox/ImageLoader;
.field private mUrl:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/android/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method static synthetic access$0(Lcom/android/volley/toolbox/NetworkImageView;)I
.registers 2
iget v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mErrorImageId:I
return v0
.end method
.method static synthetic access$1(Lcom/android/volley/toolbox/NetworkImageView;)I
.registers 2
iget v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mDefaultImageId:I
return v0
.end method
.method private setDefaultImageOrNull()V
.registers 2
iget v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mDefaultImageId:I
if-eqz v0, :cond_a
iget v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mDefaultImageId:I
invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/NetworkImageView;->setImageResource(I)V
:goto_9
return-void
:cond_a
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
goto :goto_9
.end method
.method protected drawableStateChanged()V
.registers 1
invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V
invoke-virtual {p0}, Lcom/android/volley/toolbox/NetworkImageView;->invalidate()V
return-void
.end method
.method  loadImageIfNecessary(Z)V
.registers 14
const/4 v11, -0x2
const/4 v8, 0x1
const/4 v9, 0x0
invoke-virtual {p0}, Lcom/android/volley/toolbox/NetworkImageView;->getWidth()I
move-result v5
invoke-virtual {p0}, Lcom/android/volley/toolbox/NetworkImageView;->getHeight()I
move-result v0
const/4 v7, 0x0
const/4 v6, 0x0
invoke-virtual {p0}, Lcom/android/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v10
if-eqz v10, :cond_25
invoke-virtual {p0}, Lcom/android/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v10
iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->width:I
if-ne v10, v11, :cond_31
move v7, v8
:goto_1c
invoke-virtual {p0}, Lcom/android/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v10
iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->height:I
if-ne v10, v11, :cond_33
move v6, v8
:goto_25
:cond_25
if-eqz v7, :cond_35
if-eqz v6, :cond_35
move v1, v8
:goto_2a
if-nez v5, :cond_37
if-nez v0, :cond_37
if-nez v1, :cond_37
:goto_30
:cond_30
return-void
:cond_31
move v7, v9
goto :goto_1c
:cond_33
move v6, v9
goto :goto_25
:cond_35
move v1, v9
goto :goto_2a
:cond_37
iget-object v8, p0, Lcom/android/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;
invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v8
if-eqz v8, :cond_4f
iget-object v8, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
if-eqz v8, :cond_4b
iget-object v8, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
invoke-virtual {v8}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V
const/4 v8, 0x0
iput-object v8, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
:cond_4b
invoke-direct {p0}, Lcom/android/volley/toolbox/NetworkImageView;->setDefaultImageOrNull()V
goto :goto_30
:cond_4f
iget-object v8, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
if-eqz v8, :cond_71
iget-object v8, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
invoke-virtual {v8}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;
move-result-object v8
if-eqz v8, :cond_71
iget-object v8, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
invoke-virtual {v8}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;
move-result-object v8
iget-object v10, p0, Lcom/android/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;
invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-nez v8, :cond_30
iget-object v8, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
invoke-virtual {v8}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V
invoke-direct {p0}, Lcom/android/volley/toolbox/NetworkImageView;->setDefaultImageOrNull()V
:cond_71
if-eqz v7, :cond_87
move v3, v9
:goto_74
if-eqz v6, :cond_89
move v2, v9
:goto_77
iget-object v8, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;
iget-object v9, p0, Lcom/android/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;
new-instance v10, Lcom/android/volley/toolbox/NetworkImageView$1;
invoke-direct {v10, p0, p1}, Lcom/android/volley/toolbox/NetworkImageView$1;-><init>(Lcom/android/volley/toolbox/NetworkImageView;Z)V
invoke-virtual {v8, v9, v10, v3, v2}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;II)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
move-result-object v4
iput-object v4, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
goto :goto_30
:cond_87
move v3, v5
goto :goto_74
:cond_89
move v2, v0
goto :goto_77
.end method
.method protected onDetachedFromWindow()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V
invoke-virtual {p0, v1}, Lcom/android/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iput-object v1, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
:cond_f
invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 7
invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V
return-void
.end method
.method public setDefaultImageResId(I)V
.registers 2
iput p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->mDefaultImageId:I
return-void
.end method
.method public setErrorImageResId(I)V
.registers 2
iput p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->mErrorImageId:I
return-void
.end method
.method public setImageUrl(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader;)V
.registers 4
iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;
iput-object p2, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V
return-void
.end method