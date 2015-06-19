.class  Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;
.super Ljava/lang/Object;
.source "EffectDetailActivity.java"
.implements Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter$OnEffectItemClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;)Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
return-object v0
.end method
.method public onEffectItemClick(ILandroid/view/View;)V
.registers 25
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;
invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$1(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/BannerView;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/shop/view/BannerView;->getCurrentItem()I
move-result v16
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;
invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$1(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/BannerView;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/shop/view/BannerView;->getGallery()Lcom/pinguo/camera360/shop/view/ScrollGallery;
move-result-object v2
move/from16 v0, v16
invoke-virtual {v2, v0}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->getChildAt(I)Landroid/view/View;
move-result-object v10
check-cast v10, Lcom/pinguo/camera360/shop/view/LoadingPictureView;
if-eqz v10, :cond_29
invoke-virtual {v10}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->isLoadinging()Z
move-result v2
if-eqz v2, :cond_29
:cond_28
:goto_28
return-void
:cond_29
const/16 v19, 0x0
const/4 v8, 0x1
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$6(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;
move-result-object v2
iget-object v2, v2, Lcom/pinguo/camera360/shop/model/entity/Product;->requirements:Lcom/pinguo/camera360/shop/model/entity/Requirements;
if-eqz v2, :cond_48
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$6(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;
move-result-object v2
iget-object v2, v2, Lcom/pinguo/camera360/shop/model/entity/Product;->requirements:Lcom/pinguo/camera360/shop/model/entity/Requirements;
iget-boolean v2, v2, Lcom/pinguo/camera360/shop/model/entity/Requirements;->preferPregen:Z
if-eqz v2, :cond_48
const/16 v19, 0x1
:cond_48
invoke-static {}, Lcom/pinguo/lib/util/Util;->getVersionCode()I
move-result v21
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$6(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;
move-result-object v2
iget-object v2, v2, Lcom/pinguo/camera360/shop/model/entity/Product;->requirements:Lcom/pinguo/camera360/shop/model/entity/Requirements;
if-eqz v2, :cond_69
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$6(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;
move-result-object v2
iget-object v2, v2, Lcom/pinguo/camera360/shop/model/entity/Product;->requirements:Lcom/pinguo/camera360/shop/model/entity/Requirements;
iget v2, v2, Lcom/pinguo/camera360/shop/model/entity/Requirements;->sdkMin:I
move/from16 v0, v21
if-ge v0, v2, :cond_69
const/4 v8, 0x0
:cond_69
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mHoriScrollEffectsContainer:Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$10(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->deselectAll()V
const/4 v2, 0x1
move-object/from16 v0, p2
invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mHoriScrollAdapter:Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;
invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$21(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;
move-result-object v2
move/from16 v0, p1
invoke-virtual {v2, v0}, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v12
check-cast v12, Lcom/pinguo/camera360/effect/model/entity/Effect;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;
invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$1(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/BannerView;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/shop/view/BannerView;->getCurrentItem()I
move-result v9
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mDetailPicAdapter:Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;
invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$2(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;
move-result-object v2
invoke-virtual {v2, v9}, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v20
check-cast v20, Ljava/lang/String;
invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
move-result-object v2
invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getDiscCache()Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;
move-result-object v2
move-object/from16 v0, v20
invoke-interface {v2, v0}, Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;->get(Ljava/lang/String;)Ljava/io/File;
move-result-object v15
if-eqz v15, :cond_28
invoke-virtual {v15}, Ljava/io/File;->exists()Z
move-result v2
if-eqz v2, :cond_28
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mShortPicFlag:Z
invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$12(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Z
move-result v2
if-eqz v2, :cond_145
const/4 v14, 0x1
:goto_c5
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;
invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$6(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;
move-result-object v2
move/from16 v0, p1
invoke-virtual {v2, v9, v0, v14}, Lcom/pinguo/camera360/shop/model/entity/Product;->getPregen(III)Ljava/lang/String;
move-result-object v13
if-eqz v8, :cond_14b
if-nez v19, :cond_14b
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mEffectProgress:Landroid/view/View;
invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$22(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Landroid/view/View;
move-result-object v2
const/4 v5, 0x0
invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V
const/4 v4, 0x0
const/16 v18, 0x0
:try_start_e6
invoke-static {v15}, Lcom/pinguo/lib/util/FileUtils;->getFileData(Ljava/io/File;)[B
move-result-object v4
invoke-static {v4}, Lcom/pinguo/lib/image/Exif;->getOrientation([B)I
:try_end_ed
.catch Ljava/io/IOException; {:try_start_e6 .. :try_end_ed} :catch_148
move-result v18
:goto_ee
new-instance v3, Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-direct {v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;-><init>()V
const/4 v2, 0x0
invoke-virtual {v3, v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPictureType(I)V
invoke-virtual {v3, v12}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffect(Lcom/pinguo/camera360/effect/model/entity/Effect;)V
iget-object v2, v12, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
const/4 v5, 0x0
invoke-static {v2, v5}, Lcom/pinguo/camera360/photoedit/effect/EffectFactory;->getEffectAppend(Ljava/lang/String;Ljava/lang/String;)Lcom/pinguo/camera360/photoedit/effect/EffectAppend;
move-result-object v2
invoke-virtual {v3, v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectAppendix(Lcom/pinguo/camera360/photoedit/effect/EffectAppend;)V
const/4 v2, 0x1
invoke-virtual {v3, v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setMakeGPU(Z)V
move/from16 v0, v18
invoke-virtual {v3, v0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setRotation(I)V
invoke-static {}, Lcom/pinguo/lib/UIContants;->getPreviewLength()I
move-result v2
invoke-virtual {v3, v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setPreviewLength(I)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
invoke-virtual {v3, v5, v6}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setTakenTime(J)V
invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v3, v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setOrgPath(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;
move-result-object v2
new-instance v5, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1;
move-object/from16 v0, p0
move/from16 v1, p1
invoke-direct {v5, v0, v9, v1}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1;-><init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;II)V
move-object/from16 v0, p0
iget-object v6, v0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mReuseData:Z
invoke-static {v6}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$24(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Z
move-result v6
const/4 v7, 0x0
invoke-virtual/range {v2 .. v7}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->makePreview(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/IPreviewCallback;ZZ)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
const/4 v5, 0x1
#setter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mReuseData:Z
invoke-static {v2, v5}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$9(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;Z)V
goto/16 :goto_28
:cond_145
const/4 v14, 0x2
goto/16 :goto_c5
:catch_148
move-exception v11
const/4 v4, 0x0
goto :goto_ee
:cond_14b
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;
invoke-static {v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$1(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/BannerView;
move-result-object v2
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "loading_picture_"
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, v5}, Lcom/pinguo/camera360/shop/view/BannerView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v17
check-cast v17, Lcom/pinguo/camera360/shop/view/LoadingPictureView;
move-object/from16 v0, v17
invoke-virtual {v0, v13}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->setImageUrl(Ljava/lang/String;)V
invoke-virtual/range {v17 .. v17}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->getImageView()Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;
move-result-object v2
invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-virtual {v2, v5}, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;->setTag(Ljava/lang/Object;)V
goto/16 :goto_28
.end method