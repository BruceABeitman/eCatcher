.class public Lcom/facebook/katana/FriendsAdapter;
.super Landroid/widget/CursorAdapter;
.source "FriendsAdapter.java"
.implements Landroid/widget/SectionIndexer;
.field private final mAlphabetIndex:Landroid/widget/AlphabetIndexer;
.field private final mContext:Landroid/content/Context;
.field private final mFilter:Landroid/widget/Filter;
.field private final mMyUsername:Ljava/lang/String;
.field private final mRowLayoutResId:I
.field private final mUserImagesCache:Lcom/facebook/katana/binding/UserImagesCache;
.field private final mViewHolders:Ljava/util/List;
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Lcom/facebook/katana/binding/UserImagesCache;)V
.registers 8
const v2, 0x7f030012
invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V
iput-object p1, p0, Lcom/facebook/katana/FriendsAdapter;->mContext:Landroid/content/Context;
iput-object p3, p0, Lcom/facebook/katana/FriendsAdapter;->mMyUsername:Ljava/lang/String;
iput-object p4, p0, Lcom/facebook/katana/FriendsAdapter;->mUserImagesCache:Lcom/facebook/katana/binding/UserImagesCache;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Lcom/facebook/katana/FriendsAdapter;->mViewHolders:Ljava/util/List;
new-instance v1, Lcom/facebook/katana/FriendsAdapter$1;
invoke-direct {v1, p0, p1}, Lcom/facebook/katana/FriendsAdapter$1;-><init>(Lcom/facebook/katana/FriendsAdapter;Landroid/content/Context;)V
iput-object v1, p0, Lcom/facebook/katana/FriendsAdapter;->mFilter:Landroid/widget/Filter;
invoke-static {p1}, Lcom/facebook/katana/util/PlatformUtils;->platformStorageSupported(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_43
invoke-static {p1, p3}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->isSyncEnabled(Landroid/content/Context;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_40
const v1, 0x7f030011
iput v1, p0, Lcom/facebook/katana/FriendsAdapter;->mRowLayoutResId:I
:goto_2b
const v1, 0x7f08001d
invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
new-instance v1, Landroid/widget/AlphabetIndexer;
const/4 v2, 0x4
invoke-direct {v1, p2, v2, v0}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V
iput-object v1, p0, Lcom/facebook/katana/FriendsAdapter;->mAlphabetIndex:Landroid/widget/AlphabetIndexer;
iget-object v1, p0, Lcom/facebook/katana/FriendsAdapter;->mAlphabetIndex:Landroid/widget/AlphabetIndexer;
invoke-virtual {p0, v1}, Lcom/facebook/katana/FriendsAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
return-void
:cond_40
iput v2, p0, Lcom/facebook/katana/FriendsAdapter;->mRowLayoutResId:I
goto :goto_2b
:cond_43
iput v2, p0, Lcom/facebook/katana/FriendsAdapter;->mRowLayoutResId:I
goto :goto_2b
.end method
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.registers 19
const v12, 0x7f0b002d
move-object/from16 v0, p1
move v1, v12
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/widget/TextView;
invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I
move-result v4
iget-object v12, p0, Lcom/facebook/katana/FriendsAdapter;->mAlphabetIndex:Landroid/widget/AlphabetIndexer;
invoke-virtual {v12, v4}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I
move-result v3
if-lez v4, :cond_9b
iget-object v12, p0, Lcom/facebook/katana/FriendsAdapter;->mAlphabetIndex:Landroid/widget/AlphabetIndexer;
invoke-virtual {v12, v3}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I
move-result v12
if-ne v4, v12, :cond_95
iget-object v12, p0, Lcom/facebook/katana/FriendsAdapter;->mAlphabetIndex:Landroid/widget/AlphabetIndexer;
invoke-virtual {v12}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;
move-result-object v12
aget-object v12, v12, v3
invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/4 v12, 0x0
invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V
:goto_33
const/4 v12, 0x1
move-object/from16 v0, p3
move v1, v12
invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v9
invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v11
check-cast v11, Lcom/facebook/katana/ViewHolder;
invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v12
invoke-virtual {v11, v12}, Lcom/facebook/katana/ViewHolder;->setItemId(Ljava/lang/Object;)V
iget v12, p0, Lcom/facebook/katana/FriendsAdapter;->mRowLayoutResId:I
const v13, 0x7f030011
if-ne v12, v13, :cond_59
iget-object v12, v11, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
iget-object v13, p0, Lcom/facebook/katana/FriendsAdapter;->mMyUsername:Ljava/lang/String;
const/4 v14, 0x0
new-array v14, v14, [Ljava/lang/String;
invoke-static {v12, v13, v9, v10, v14}, Lcom/facebook/katana/platform/PlatformFastTrack;->prepareBadge(Landroid/view/View;Ljava/lang/String;J[Ljava/lang/String;)V
:cond_59
const/4 v12, 0x5
move-object/from16 v0, p3
move v1, v12
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v8
if-eqz v8, :cond_b8
iget-object v12, p0, Lcom/facebook/katana/FriendsAdapter;->mUserImagesCache:Lcom/facebook/katana/binding/UserImagesCache;
iget-object v13, p0, Lcom/facebook/katana/FriendsAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v12, v13, v9, v10, v8}, Lcom/facebook/katana/binding/UserImagesCache;->get(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v2
if-eqz v2, :cond_af
iget-object v12, v11, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:goto_72
const/4 v12, 0x4
move-object/from16 v0, p3
move v1, v12
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v6
if-nez v6, :cond_85
iget-object v12, p0, Lcom/facebook/katana/FriendsAdapter;->mContext:Landroid/content/Context;
const v13, 0x7f080050
invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v6
:cond_85
const v12, 0x7f0b002f
move-object/from16 v0, p1
move v1, v12
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p0
check-cast p0, Landroid/widget/TextView;
invoke-virtual {p0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
:cond_95
const/16 v12, 0x8
invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_33
:cond_9b
iget-object v12, p0, Lcom/facebook/katana/FriendsAdapter;->mAlphabetIndex:Landroid/widget/AlphabetIndexer;
invoke-virtual {v12}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;
move-result-object v12
aget-object v12, v12, v3
invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v12
invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/4 v12, 0x0
invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_33
:cond_af
iget-object v12, v11, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
const v13, 0x7f0200b3
invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_72
:cond_b8
iget-object v12, v11, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
const v13, 0x7f0200b3
invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_72
.end method
.method public changeCursor(Landroid/database/Cursor;)V
.registers 3
invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V
iget-object v0, p0, Lcom/facebook/katana/FriendsAdapter;->mAlphabetIndex:Landroid/widget/AlphabetIndexer;
invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->setCursor(Landroid/database/Cursor;)V
return-void
.end method
.method public getFilter()Landroid/widget/Filter;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/FriendsAdapter;->mFilter:Landroid/widget/Filter;
return-object v0
.end method
.method public getPositionForSection(I)I
.registers 3
iget-object v0, p0, Lcom/facebook/katana/FriendsAdapter;->mAlphabetIndex:Landroid/widget/AlphabetIndexer;
invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I
move-result v0
return v0
.end method
.method public getSectionForPosition(I)I
.registers 3
iget-object v0, p0, Lcom/facebook/katana/FriendsAdapter;->mAlphabetIndex:Landroid/widget/AlphabetIndexer;
invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I
move-result v0
return v0
.end method
.method public getSections()[Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/FriendsAdapter;->mAlphabetIndex:Landroid/widget/AlphabetIndexer;
invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public isEmpty()Z
.registers 3
invoke-virtual {p0}, Lcom/facebook/katana/FriendsAdapter;->getCursor()Landroid/database/Cursor;
move-result-object v1
if-nez v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
invoke-super {p0}, Landroid/widget/CursorAdapter;->isEmpty()Z
move-result v0
goto :goto_7
.end method
.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 9
iget-object v3, p0, Lcom/facebook/katana/FriendsAdapter;->mContext:Landroid/content/Context;
const-string v4, "layout_inflater"
invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/view/LayoutInflater;
iget v3, p0, Lcom/facebook/katana/FriendsAdapter;->mRowLayoutResId:I
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/facebook/katana/ViewHolder;
const v3, 0x7f0b002e
invoke-direct {v1, v0, v3}, Lcom/facebook/katana/ViewHolder;-><init>(Landroid/view/View;I)V
invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
iget-object v3, p0, Lcom/facebook/katana/FriendsAdapter;->mViewHolders:Ljava/util/List;
invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object v0
.end method
.method public updateUserImage(Lcom/facebook/katana/binding/UserImage;)V
.registers 7
iget-object v2, p0, Lcom/facebook/katana/FriendsAdapter;->mViewHolders:Ljava/util/List;
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