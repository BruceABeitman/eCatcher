.class public Lcom/pinguo/Camera360Lib/ui/imageloader/ImageLoaderView;
.super Landroid/widget/ImageView;
.source "ImageLoaderView.java"
.field private mListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
.field private mOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x1
invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V
invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/Camera360Lib/ui/imageloader/ImageLoaderView;->mOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
const/4 v1, 0x1
invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V
invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/Camera360Lib/ui/imageloader/ImageLoaderView;->mOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 6
const/4 v1, 0x1
invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V
invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/Camera360Lib/ui/imageloader/ImageLoaderView;->mOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
return-void
.end method
.method public displayCircle()V
.registers 3
iget-object v0, p0, Lcom/pinguo/Camera360Lib/ui/imageloader/ImageLoaderView;->mOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
new-instance v1, Lcom/pinguo/Camera360Lib/ui/imageloader/CircleBitmapDisplayer;
invoke-direct {v1}, Lcom/pinguo/Camera360Lib/ui/imageloader/CircleBitmapDisplayer;-><init>()V
invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
return-void
.end method
.method public displayRoundCorner(I)V
.registers 4
iget-object v0, p0, Lcom/pinguo/Camera360Lib/ui/imageloader/ImageLoaderView;->mOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
new-instance v1, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;
invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V
invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
return-void
.end method
.method public displayWithFadeIn()V
.registers 4
iget-object v0, p0, Lcom/pinguo/Camera360Lib/ui/imageloader/ImageLoaderView;->mOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
new-instance v1, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;
const/16 v2, 0x190
invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;-><init>(I)V
invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
return-void
.end method
.method public getOptionsBuilder()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
.registers 2
iget-object v0, p0, Lcom/pinguo/Camera360Lib/ui/imageloader/ImageLoaderView;->mOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
return-object v0
.end method
.method public setDefaultImage(I)V
.registers 3
iget-object v0, p0, Lcom/pinguo/Camera360Lib/ui/imageloader/ImageLoaderView;->mOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
return-void
.end method
.method public setImageLoadingListener(Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/Camera360Lib/ui/imageloader/ImageLoaderView;->mListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
return-void
.end method
.method public setImageUrl(Ljava/lang/String;)V
.registers 5
if-nez p1, :cond_5
const-string/jumbo p1, ""
:cond_5
invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/Camera360Lib/ui/imageloader/ImageLoaderView;->mOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/Camera360Lib/ui/imageloader/ImageLoaderView;->mListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
invoke-virtual {v0, p1, p0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V
return-void
.end method
.method public setImageUrl(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_a
invoke-virtual {p0, p1}, Lcom/pinguo/Camera360Lib/ui/imageloader/ImageLoaderView;->setImageUrl(Ljava/lang/String;)V
:goto_9
return-void
:cond_a
invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/Camera360Lib/ui/imageloader/ImageLoaderView;->mOptionsBuilder:Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
move-result-object v1
new-instance v2, Lcom/pinguo/Camera360Lib/ui/imageloader/ImageLoaderView$1;
invoke-direct {v2, p0, p2}, Lcom/pinguo/Camera360Lib/ui/imageloader/ImageLoaderView$1;-><init>(Lcom/pinguo/Camera360Lib/ui/imageloader/ImageLoaderView;Ljava/lang/String;)V
invoke-virtual {v0, p1, p0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V
goto :goto_9
.end method