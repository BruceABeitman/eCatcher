.class public Lcom/tencent/weibo/sdk/android/api/adapter/GalleryAdapter;
.super Landroid/widget/BaseAdapter;
.source "GalleryAdapter.java"
.field private imageList:Ljava/util/ArrayList;
.field private imageLoader:Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync;
.field private myContext:Landroid/content/Context;
.field private popView:Landroid/widget/PopupWindow;
.method public constructor <init>(Landroid/content/Context;Landroid/widget/PopupWindow;Ljava/util/ArrayList;)V
.registers 5
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/api/adapter/GalleryAdapter;->myContext:Landroid/content/Context;
iput-object p3, p0, Lcom/tencent/weibo/sdk/android/api/adapter/GalleryAdapter;->imageList:Ljava/util/ArrayList;
new-instance v0, Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync;
invoke-direct {v0}, Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync;-><init>()V
iput-object v0, p0, Lcom/tencent/weibo/sdk/android/api/adapter/GalleryAdapter;->imageLoader:Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync;
iput-object p2, p0, Lcom/tencent/weibo/sdk/android/api/adapter/GalleryAdapter;->popView:Landroid/widget/PopupWindow;
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/api/adapter/GalleryAdapter;->imageList:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/api/adapter/GalleryAdapter;->imageList:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 10
const/4 v5, -0x1
new-instance v2, Landroid/widget/ImageView;
iget-object v3, p0, Lcom/tencent/weibo/sdk/android/api/adapter/GalleryAdapter;->myContext:Landroid/content/Context;
invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
iget-object v3, p0, Lcom/tencent/weibo/sdk/android/api/adapter/GalleryAdapter;->imageList:Ljava/util/ArrayList;
invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/tencent/weibo/sdk/android/model/ImageInfo;
invoke-virtual {v3}, Lcom/tencent/weibo/sdk/android/model/ImageInfo;->getImagePath()Ljava/lang/String;
move-result-object v1
iget-object v3, p0, Lcom/tencent/weibo/sdk/android/api/adapter/GalleryAdapter;->imageLoader:Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync;
new-instance v4, Lcom/tencent/weibo/sdk/android/api/adapter/GalleryAdapter$1;
invoke-direct {v4, p0, v2}, Lcom/tencent/weibo/sdk/android/api/adapter/GalleryAdapter$1;-><init>(Lcom/tencent/weibo/sdk/android/api/adapter/GalleryAdapter;Landroid/widget/ImageView;)V
invoke-virtual {v3, v1, v4}, Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync;->loadImage(Ljava/lang/String;Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync$callBackImage;)Landroid/graphics/drawable/Drawable;
move-result-object v0
sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
new-instance v3, Landroid/widget/Gallery$LayoutParams;
invoke-direct {v3, v5, v5}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v3, p0, Lcom/tencent/weibo/sdk/android/api/adapter/GalleryAdapter;->popView:Landroid/widget/PopupWindow;
if-eqz v3, :cond_3d
iget-object v3, p0, Lcom/tencent/weibo/sdk/android/api/adapter/GalleryAdapter;->popView:Landroid/widget/PopupWindow;
invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z
move-result v3
if-eqz v3, :cond_3d
iget-object v3, p0, Lcom/tencent/weibo/sdk/android/api/adapter/GalleryAdapter;->popView:Landroid/widget/PopupWindow;
invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V
:cond_3d
return-object v2
.end method