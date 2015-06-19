.class public Lcom/pinguo/camera360/shop/view/LoadingPictureView;
.super Landroid/widget/ViewFlipper;
.source "LoadingPictureView.java"
.field private mAtText:Landroid/widget/TextView;
.field private mEffectBitmap:Landroid/graphics/Bitmap;
.field private mEffectIndex:I
.field private mListener:Lcom/pinguo/camera360/shop/view/LoadingPictureView$OnReloadClickListener;
.field private mLoadingFailView:Lcom/pinguo/camera360/shop/view/LoadingFailView;
.field private mLoadingView:Lcom/pinguo/camera360/shop/view/LoadingView;
.field private mOriBitmap:Landroid/graphics/Bitmap;
.field private mPictureImage:Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, -0x1
iput v0, p0, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->mEffectIndex:I
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/shop/view/LoadingPictureView;)Lcom/pinguo/camera360/shop/view/LoadingPictureView$OnReloadClickListener;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->mListener:Lcom/pinguo/camera360/shop/view/LoadingPictureView$OnReloadClickListener;
return-object v0
.end method
.method public getEffectBitmap()Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->mEffectBitmap:Landroid/graphics/Bitmap;
return-object v0
.end method
.method public getEffectIndex()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->mEffectIndex:I
return v0
.end method
.method public getImageView()Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->mPictureImage:Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;
return-object v0
.end method
.method public getOriBitmap()Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->mOriBitmap:Landroid/graphics/Bitmap;
return-object v0
.end method
.method public isLoadinging()Z
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->getDisplayedChild()I
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public loading()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->setDisplayedChild(I)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->mLoadingView:Lcom/pinguo/camera360/shop/view/LoadingView;
invoke-virtual {v0}, Lcom/pinguo/camera360/shop/view/LoadingView;->startAnimation()V
return-void
.end method
.method protected onFinishInflate()V
.registers 3
invoke-super {p0}, Landroid/widget/ViewFlipper;->onFinishInflate()V
const v0, 0x7f0a040a
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;
iput-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->mPictureImage:Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->mPictureImage:Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;->setCacheInMemory(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->mPictureImage:Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;
const v1, 0x3f69fbe7
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;->setRate(F)V
const v0, 0x7f0a040b
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->mAtText:Landroid/widget/TextView;
const v0, 0x7f0a0409
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/shop/view/LoadingView;
iput-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->mLoadingView:Lcom/pinguo/camera360/shop/view/LoadingView;
const v0, 0x7f0a040c
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/shop/view/LoadingFailView;
iput-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->mLoadingFailView:Lcom/pinguo/camera360/shop/view/LoadingFailView;
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->mLoadingFailView:Lcom/pinguo/camera360/shop/view/LoadingFailView;
new-instance v1, Lcom/pinguo/camera360/shop/view/LoadingPictureView$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/shop/view/LoadingPictureView$1;-><init>(Lcom/pinguo/camera360/shop/view/LoadingPictureView;)V
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/LoadingFailView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method public onLoadingComplete()V
.registers 2
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->setDisplayedChild(I)V
return-void
.end method
.method public onLoadingFail()V
.registers 2
const/4 v0, 0x2
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->setDisplayedChild(I)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->mLoadingFailView:Lcom/pinguo/camera360/shop/view/LoadingFailView;
invoke-virtual {v0}, Lcom/pinguo/camera360/shop/view/LoadingFailView;->startAnimtion()V
return-void
.end method
.method protected onMeasure(II)V
.registers 5
invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I
const/high16 v1, 0x4000
invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v1
invoke-super {p0, v1, p2}, Landroid/widget/ViewFlipper;->onMeasure(II)V
return-void
.end method
.method public setAtNameText(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->mAtText:Landroid/widget/TextView;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "@ "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setEffectBitmap(Landroid/graphics/Bitmap;I)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->mEffectBitmap:Landroid/graphics/Bitmap;
iput p2, p0, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->mEffectIndex:I
return-void
.end method
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->mPictureImage:Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;->setImageBitmap(Landroid/graphics/Bitmap;)V
return-void
.end method
.method public setImageLoadingListener(Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->mPictureImage:Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;->setImageLoadingListener(Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V
return-void
.end method
.method public setImageUrl(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->mPictureImage:Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;->setImageUrl(Ljava/lang/String;)V
return-void
.end method
.method public setOnReloadClickListener(Lcom/pinguo/camera360/shop/view/LoadingPictureView$OnReloadClickListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->mListener:Lcom/pinguo/camera360/shop/view/LoadingPictureView$OnReloadClickListener;
return-void
.end method
.method public setOriBitmap(Landroid/graphics/Bitmap;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->mOriBitmap:Landroid/graphics/Bitmap;
return-void
.end method
.method public showAtNameText()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->mAtText:Landroid/widget/TextView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
return-void
.end method