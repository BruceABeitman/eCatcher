.class  Lco/vine/android/ImageFragment$ImageSessionListener;
.super Lco/vine/android/client/AppSessionListener;
.source "ImageFragment.java"
.field final synthetic this$0:Lco/vine/android/ImageFragment;
.method private constructor <init>(Lco/vine/android/ImageFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/ImageFragment$ImageSessionListener;->this$0:Lco/vine/android/ImageFragment;
invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lco/vine/android/ImageFragment;Lco/vine/android/ImageFragment$1;)V
.registers 3
invoke-direct {p0, p1}, Lco/vine/android/ImageFragment$ImageSessionListener;-><init>(Lco/vine/android/ImageFragment;)V
return-void
.end method
.method private finishFailed()V
.registers 3
iget-object v0, p0, Lco/vine/android/ImageFragment$ImageSessionListener;->this$0:Lco/vine/android/ImageFragment;
#getter for: Lco/vine/android/ImageFragment;->mHandler:Landroid/os/Handler;
invoke-static {v0}, Lco/vine/android/ImageFragment;->access$400(Lco/vine/android/ImageFragment;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lco/vine/android/ImageFragment$ImageSessionListener$1;
invoke-direct {v1, p0}, Lco/vine/android/ImageFragment$ImageSessionListener$1;-><init>(Lco/vine/android/ImageFragment$ImageSessionListener;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public onPhotoImageError(Lco/vine/android/util/image/ImageKey;Lco/vine/android/network/HttpResult;)V
.registers 4
iget-object v0, p0, Lco/vine/android/ImageFragment$ImageSessionListener;->this$0:Lco/vine/android/ImageFragment;
#getter for: Lco/vine/android/ImageFragment;->mImageKey:Lco/vine/android/util/image/ImageKey;
invoke-static {v0}, Lco/vine/android/ImageFragment;->access$100(Lco/vine/android/ImageFragment;)Lco/vine/android/util/image/ImageKey;
move-result-object v0
invoke-virtual {p1, v0}, Lco/vine/android/util/image/ImageKey;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_f
invoke-direct {p0}, Lco/vine/android/ImageFragment$ImageSessionListener;->finishFailed()V
:cond_f
return-void
.end method
.method public onPhotoImageLoaded(Ljava/util/HashMap;)V
.registers 7
iget-object v1, p0, Lco/vine/android/ImageFragment$ImageSessionListener;->this$0:Lco/vine/android/ImageFragment;
#getter for: Lco/vine/android/ImageFragment;->mImageKey:Lco/vine/android/util/image/ImageKey;
invoke-static {v1}, Lco/vine/android/ImageFragment;->access$100(Lco/vine/android/ImageFragment;)Lco/vine/android/util/image/ImageKey;
move-result-object v1
invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/util/image/UrlImage;
if-eqz v0, :cond_39
invoke-virtual {v0}, Lco/vine/android/util/image/UrlImage;->isValid()Z
move-result v1
if-eqz v1, :cond_39
iget-object v1, p0, Lco/vine/android/ImageFragment$ImageSessionListener;->this$0:Lco/vine/android/ImageFragment;
#getter for: Lco/vine/android/ImageFragment;->mProgress:Landroid/widget/ProgressBar;
invoke-static {v1}, Lco/vine/android/ImageFragment;->access$200(Lco/vine/android/ImageFragment;)Landroid/widget/ProgressBar;
move-result-object v1
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V
iget-object v1, p0, Lco/vine/android/ImageFragment$ImageSessionListener;->this$0:Lco/vine/android/ImageFragment;
#getter for: Lco/vine/android/ImageFragment;->mImageView:Landroid/widget/ImageView;
invoke-static {v1}, Lco/vine/android/ImageFragment;->access$300(Lco/vine/android/ImageFragment;)Landroid/widget/ImageView;
move-result-object v1
new-instance v2, Lco/vine/android/drawable/RecyclableBitmapDrawable;
iget-object v3, p0, Lco/vine/android/ImageFragment$ImageSessionListener;->this$0:Lco/vine/android/ImageFragment;
#getter for: Lco/vine/android/ImageFragment;->mImageView:Landroid/widget/ImageView;
invoke-static {v3}, Lco/vine/android/ImageFragment;->access$300(Lco/vine/android/ImageFragment;)Landroid/widget/ImageView;
move-result-object v3
invoke-virtual {v3}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;
move-result-object v3
iget-object v4, v0, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;
invoke-direct {v2, v3, v4}, Lco/vine/android/drawable/RecyclableBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_39
return-void
.end method