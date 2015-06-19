.class public Lcom/facebook/katana/EventBirthdaysAdapter;
.super Landroid/widget/BaseAdapter;
.source "EventBirthdaysAdapter.java"
.field private final mContext:Landroid/content/Context;
.field private final mInflater:Landroid/view/LayoutInflater;
.field private mItems:Ljava/util/List;
.field private final mUserImagesCache:Lcom/facebook/katana/binding/UserImagesCache;
.field private final mViewHolders:Ljava/util/List;
.field private final mWhere:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/binding/UserImagesCache;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
iput-object p1, p0, Lcom/facebook/katana/EventBirthdaysAdapter;->mContext:Landroid/content/Context;
iput-object p2, p0, Lcom/facebook/katana/EventBirthdaysAdapter;->mUserImagesCache:Lcom/facebook/katana/binding/UserImagesCache;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/EventBirthdaysAdapter;->mViewHolders:Ljava/util/List;
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/EventBirthdaysAdapter;->mInflater:Landroid/view/LayoutInflater;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/EventBirthdaysAdapter;->mItems:Ljava/util/List;
iput-object p3, p0, Lcom/facebook/katana/EventBirthdaysAdapter;->mWhere:Ljava/lang/String;
invoke-virtual {p0}, Lcom/facebook/katana/EventBirthdaysAdapter;->setItemsInfo()V
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/facebook/katana/EventBirthdaysAdapter;->mItems:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/facebook/katana/EventBirthdaysAdapter;->mItems:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 26
const/4 v13, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/EventBirthdaysAdapter;->mItems:Ljava/util/List;
move-object/from16 v17, v0
move-object/from16 v0, v17
move/from16 v1, p1
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v10
check-cast v10, Lcom/facebook/katana/EventBirthdaysAdapter$Item;
if-nez p2, :cond_119
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/EventBirthdaysAdapter;->mInflater:Landroid/view/LayoutInflater;
move-object/from16 v17, v0
const v18, 0x7f03000c
const/16 v19, 0x0
invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v13
new-instance v14, Lcom/facebook/katana/ViewHolder;
const v17, 0x7f0b0019
move-object v0, v14
move-object v1, v13
move/from16 v2, v17
invoke-direct {v0, v1, v2}, Lcom/facebook/katana/ViewHolder;-><init>(Landroid/view/View;I)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/EventBirthdaysAdapter;->mViewHolders:Ljava/util/List;
move-object/from16 v17, v0
move-object/from16 v0, v17
move-object v1, v14
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v13, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
:goto_3d
const v17, 0x7f0b0022
move-object v0, v13
move/from16 v1, v17
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v7
check-cast v7, Landroid/widget/TextView;
invoke-virtual {v10}, Lcom/facebook/katana/EventBirthdaysAdapter$Item;->getBar()Ljava/lang/String;
move-result-object v8
const/4 v12, 0x0
if-lez p1, :cond_64
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/EventBirthdaysAdapter;->mItems:Ljava/util/List;
move-object/from16 v17, v0
const/16 v18, 0x1
sub-int v18, p1, v18
invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object p1
check-cast p1, Lcom/facebook/katana/EventBirthdaysAdapter$Item;
invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/EventBirthdaysAdapter$Item;->getBar()Ljava/lang/String;
move-result-object v12
:cond_64
if-eqz v12, :cond_6c
invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-nez v17, :cond_11d
:cond_6c
invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/16 v17, 0x0
move-object v0, v7
move/from16 v1, v17
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
:goto_77
invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v16
check-cast v16, Lcom/facebook/katana/ViewHolder;
invoke-virtual {v10}, Lcom/facebook/katana/EventBirthdaysAdapter$Item;->getUserId()J
move-result-wide v17
invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
invoke-virtual/range {v16 .. v17}, Lcom/facebook/katana/ViewHolder;->setItemId(Ljava/lang/Object;)V
invoke-virtual {v10}, Lcom/facebook/katana/EventBirthdaysAdapter$Item;->getImageURL()Ljava/lang/String;
move-result-object v15
if-eqz v15, :cond_134
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/EventBirthdaysAdapter;->mUserImagesCache:Lcom/facebook/katana/binding/UserImagesCache;
move-object/from16 v17, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/EventBirthdaysAdapter;->mContext:Landroid/content/Context;
move-object/from16 v18, v0
invoke-virtual {v10}, Lcom/facebook/katana/EventBirthdaysAdapter$Item;->getUserId()J
move-result-wide v19
move-object/from16 v0, v17
move-object/from16 v1, v18
move-wide/from16 v2, v19
move-object v4, v15
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/katana/binding/UserImagesCache;->get(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v9
if-eqz v9, :cond_127
move-object/from16 v0, v16
iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
move-object/from16 v17, v0
move-object/from16 v0, v17
move-object v1, v9
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:goto_b7
const v17, 0x7f0b001b
move-object v0, v13
move/from16 v1, v17
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v11
check-cast v11, Landroid/widget/TextView;
invoke-virtual {v10}, Lcom/facebook/katana/EventBirthdaysAdapter$Item;->getDisplayName()Ljava/lang/String;
move-result-object v17
move-object v0, v11
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v17, 0x7f0b0023
move-object v0, v13
move/from16 v1, v17
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/widget/TextView;
invoke-virtual {v10}, Lcom/facebook/katana/EventBirthdaysAdapter$Item;->getYear()I
move-result v17
const/16 v18, -0x1
move/from16 v0, v17
move/from16 v1, v18
if-eq v0, v1, :cond_142
invoke-virtual {v10}, Lcom/facebook/katana/EventBirthdaysAdapter$Item;->getYear()I
move-result v17
invoke-virtual {v10}, Lcom/facebook/katana/EventBirthdaysAdapter$Item;->getStartingTime()J
move-result-wide v18
const-wide/16 v20, 0x3e8
mul-long v18, v18, v20
invoke-static/range {v17 .. v19}, Lcom/facebook/katana/util/TimeUtils;->getAge(IJ)I
move-result v6
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/EventBirthdaysAdapter;->mContext:Landroid/content/Context;
move-object/from16 v17, v0
const v18, 0x7f080021
const/16 v19, 0x1
move/from16 v0, v19
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v19, v0
const/16 v20, 0x0
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v21
aput-object v21, v19, v20
invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v17
move-object v0, v5
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_118
return-object v13
:cond_119
move-object/from16 v13, p2
goto/16 :goto_3d
:cond_11d
const/16 v17, 0x8
move-object v0, v7
move/from16 v1, v17
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_77
:cond_127
move-object/from16 v0, v16
iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
move-object/from16 v17, v0
const v18, 0x7f0200b3
invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_b7
:cond_134
move-object/from16 v0, v16
iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
move-object/from16 v17, v0
const v18, 0x7f0200b3
invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageResource(I)V
goto/16 :goto_b7
:cond_142
const-string v17, ""
move-object v0, v5
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_118
.end method
.method public setItemsInfo()V
.registers 21
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/EventBirthdaysAdapter;->mItems:Ljava/util/List;
move-object v5, v0
invoke-interface {v5}, Ljava/util/List;->clear()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/EventBirthdaysAdapter;->mContext:Landroid/content/Context;
move-object v4, v0
check-cast v4, Landroid/app/Activity;
sget-object v5, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_BIRTHDAY_CONTENT_URI:Landroid/net/Uri;
sget-object v6, Lcom/facebook/katana/EventBirthdaysAdapter$BirthdaysQuery;->PROJECTION:[Ljava/lang/String;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/EventBirthdaysAdapter;->mWhere:Ljava/lang/String;
move-object v7, v0
const/4 v8, 0x0
const/4 v9, 0x0
invoke-virtual/range {v4 .. v9}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v16
invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z
invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I
move-result v15
:goto_25
if-gtz v15, :cond_38
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/EventBirthdaysAdapter;->mItems:Ljava/util/List;
move-object v5, v0
new-instance v6, Lcom/facebook/katana/EventBirthdaysAdapter$byTime;
move-object v0, v6
move-object/from16 v1, p0
invoke-direct {v0, v1}, Lcom/facebook/katana/EventBirthdaysAdapter$byTime;-><init>(Lcom/facebook/katana/EventBirthdaysAdapter;)V
invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
return-void
:cond_38
const/4 v5, 0x3
move-object/from16 v0, v16
move v1, v5
invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v8
const/4 v5, 0x4
move-object/from16 v0, v16
move v1, v5
invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v9
const/4 v5, 0x1
sub-int v5, v8, v5
const/4 v6, 0x0
invoke-static {v5, v9, v6}, Lcom/facebook/katana/util/TimeUtils;->timeInSeconds(IIZ)J
move-result-wide v12
const-wide/16 v5, 0x3e8
mul-long/2addr v5, v12
invoke-static {v5, v6}, Lcom/facebook/katana/util/TimeUtils;->getTimePeriod(J)I
move-result v5
const/4 v6, -0x1
if-ne v5, v6, :cond_62
const/4 v5, 0x1
sub-int v5, v8, v5
const/4 v6, 0x1
invoke-static {v5, v9, v6}, Lcom/facebook/katana/util/TimeUtils;->timeInSeconds(IIZ)J
move-result-wide v12
:cond_62
new-instance v4, Lcom/facebook/katana/EventBirthdaysAdapter$Item;
const/4 v5, 0x1
move-object/from16 v0, v16
move v1, v5
invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v5
const/4 v7, 0x2
move-object/from16 v0, v16
move v1, v7
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v7
const/4 v10, 0x5
move-object/from16 v0, v16
move v1, v10
invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v10
const/4 v11, 0x6
move-object/from16 v0, v16
move v1, v11
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v11
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/EventBirthdaysAdapter;->mContext:Landroid/content/Context;
move-object v14, v0
const/16 v17, 0x64
const-wide/16 v18, 0x3e8
mul-long v18, v18, v12
move-object v0, v14
move/from16 v1, v17
move-wide/from16 v2, v18
invoke-static {v0, v1, v2, v3}, Lcom/facebook/katana/util/TimeUtils;->getTimeAsStringForTimePeriod(Landroid/content/Context;IJ)Ljava/lang/String;
move-result-object v14
invoke-direct/range {v4 .. v14}, Lcom/facebook/katana/EventBirthdaysAdapter$Item;-><init>(JLjava/lang/String;IIILjava/lang/String;JLjava/lang/String;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/EventBirthdaysAdapter;->mItems:Ljava/util/List;
move-object v5, v0
invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v15, v15, -0x1
invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
goto/16 :goto_25
.end method
.method public updateUserImage(Lcom/facebook/katana/binding/UserImage;)V
.registers 7
iget-object v2, p0, Lcom/facebook/katana/EventBirthdaysAdapter;->mViewHolders:Ljava/util/List;
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