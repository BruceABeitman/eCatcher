.class  Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$IdPhotoAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "IdCameraPictureFragment.java"
.implements Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
.field private mPaths:Ljava/util/ArrayList;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;
.method public constructor <init>(Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;Ljava/util/ArrayList;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$IdPhotoAdapter;->this$0:Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;
invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V
iput-object p2, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$IdPhotoAdapter;->mPaths:Ljava/util/ArrayList;
return-void
.end method
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
.registers 8
invoke-static {}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->access$6()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "destroyItem position "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
move-object v0, p3
check-cast v0, Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V
invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$IdPhotoAdapter;->mPaths:Ljava/util/ArrayList;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$IdPhotoAdapter;->mPaths:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
goto :goto_5
.end method
.method public getItemPosition(Ljava/lang/Object;)I
.registers 4
invoke-static {}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->access$6()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "getItemPosition"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, -0x2
return v0
.end method
.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.registers 8
const/4 v4, 0x0
invoke-static {}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->access$6()Ljava/lang/String;
move-result-object v2
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v3, "instantiateItem position = "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v3, "mPaths.get(position) ="
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$IdPhotoAdapter;->mPaths:Ljava/util/ArrayList;
invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v2, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$IdPhotoAdapter;->this$0:Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v4}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setCacheOnDisc(Z)V
invoke-virtual {v0, v4}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setCacheInMemory(Z)V
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setImageLoadingListener(Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V
sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
const v1, 0x7f02018c
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setDefaultImage(I)V
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v1, "file://"
invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdCameraPictureFragment$IdPhotoAdapter;->mPaths:Ljava/util/ArrayList;
invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setImageUrl(Ljava/lang/String;)V
invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
return-object v0
.end method
.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
.registers 4
check-cast p2, Landroid/view/View;
if-ne p1, p2, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
.registers 3
return-void
.end method
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
.registers 4
return-void
.end method
.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
.registers 4
return-void
.end method
.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
.registers 3
return-void
.end method