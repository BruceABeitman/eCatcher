.class  Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhotoFeedbackActivity.java"
.field private final mComments:Ljava/util/List;
.field private final mContext:Landroid/content/Context;
.field private final mUserImagesCache:Lcom/facebook/katana/binding/UserImagesCache;
.field private final mViewHolders:Ljava/util/List;
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/binding/UserImagesCache;)V
.registers 4
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
iput-object p1, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;->mContext:Landroid/content/Context;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;->mComments:Ljava/util/List;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;->mViewHolders:Ljava/util/List;
iput-object p2, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;->mUserImagesCache:Lcom/facebook/katana/binding/UserImagesCache;
return-void
.end method
.method public addComment(Lcom/facebook/katana/service/api/FacebookPhotoComment;)V
.registers 3
iget-object v0, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;->mComments:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p0}, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;->notifyDataSetChanged()V
return-void
.end method
.method public getComments()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;->mComments:Ljava/util/List;
return-object v0
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;->mComments:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 22
const/4 v4, 0x0
const/4 v11, 0x0
if-nez p2, :cond_ad
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;->mContext:Landroid/content/Context;
move-object v12, v0
const-string v13, "layout_inflater"
invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v10
check-cast v10, Landroid/view/LayoutInflater;
const v12, 0x7f030003
const/4 v13, 0x0
invoke-virtual {v10, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v4
new-instance v11, Lcom/facebook/katana/ViewHolder;
const v12, 0x7f0b000c
invoke-direct {v11, v4, v12}, Lcom/facebook/katana/ViewHolder;-><init>(Landroid/view/View;I)V
invoke-virtual {v4, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;->mViewHolders:Ljava/util/List;
move-object v12, v0
invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_2c
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;->mComments:Ljava/util/List;
move-object v12, v0
move-object v0, v12
move/from16 v1, p1
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/facebook/katana/service/api/FacebookPhotoComment;
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPhotoComment;->getFromUserId()J
move-result-wide v8
invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v12
invoke-virtual {v11, v12}, Lcom/facebook/katana/ViewHolder;->setItemId(Ljava/lang/Object;)V
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPhotoComment;->getFromUser()Lcom/facebook/katana/service/api/FacebookUser;
move-result-object v7
invoke-virtual {v7}, Lcom/facebook/katana/service/api/FacebookUser;->getImageUrl()Ljava/lang/String;
move-result-object v6
if-eqz v6, :cond_c0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;->mUserImagesCache:Lcom/facebook/katana/binding/UserImagesCache;
move-object v12, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;->mContext:Landroid/content/Context;
move-object v13, v0
invoke-virtual {v12, v13, v8, v9, v6}, Lcom/facebook/katana/binding/UserImagesCache;->get(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v2
if-eqz v2, :cond_b7
iget-object v12, v11, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:goto_64
const v12, 0x7f0b000d
invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
invoke-virtual {v7}, Lcom/facebook/katana/service/api/FacebookUser;->getDisplayName()Ljava/lang/String;
move-result-object v12
move-object/from16 v0, p1
move-object v1, v12
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v12, 0x7f0b000f
invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPhotoComment;->getBody()Ljava/lang/String;
move-result-object v12
move-object/from16 v0, p1
move-object v1, v12
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;->mContext:Landroid/content/Context;
move-object v12, v0
sget-object v13, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->STREAM_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPhotoComment;->getTime()J
move-result-wide v14
const-wide/16 v16, 0x3e8
mul-long v14, v14, v16
invoke-static {v12, v13, v14, v15}, Lcom/facebook/katana/util/StringUtils;->getTimeAsString(Landroid/content/Context;Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;J)Ljava/lang/String;
move-result-object v5
const v12, 0x7f0b000e
invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p0
check-cast p0, Landroid/widget/TextView;
move-object/from16 v0, p0
move-object v1, v5
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-object v4
:cond_ad
move-object/from16 v4, p2
invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v11
check-cast v11, Lcom/facebook/katana/ViewHolder;
goto/16 :goto_2c
:cond_b7
iget-object v12, v11, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
const v13, 0x7f0200b3
invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_64
:cond_c0
iget-object v12, v11, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
const v13, 0x7f0200b3
invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_64
.end method
.method public setComments(Ljava/util/List;)V
.registers 3
iget-object v0, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;->mComments:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
iget-object v0, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;->mComments:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
invoke-virtual {p0}, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;->notifyDataSetChanged()V
return-void
.end method
.method public updateUserImage(Lcom/facebook/katana/binding/UserImage;)V
.registers 7
iget-object v2, p0, Lcom/facebook/katana/PhotoFeedbackActivity$PhotoFeedbackAdapter;->mViewHolders:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_6
:cond_6
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_d
return-void
:cond_d
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/katana/ViewHolder;
invoke-virtual {v1}, Lcom/facebook/katana/ViewHolder;->getItemId()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
if-eqz v0, :cond_6
invoke-virtual {p1}, Lcom/facebook/katana/binding/UserImage;->getFriendId()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_6
iget-object v3, v1, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
invoke-virtual {p1}, Lcom/facebook/katana/binding/UserImage;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
goto :goto_6
.end method