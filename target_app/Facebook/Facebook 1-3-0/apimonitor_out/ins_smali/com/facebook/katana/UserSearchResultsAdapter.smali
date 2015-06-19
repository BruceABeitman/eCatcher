.class public Lcom/facebook/katana/UserSearchResultsAdapter;
.super Landroid/widget/CursorAdapter;
.source "UserSearchResultsAdapter.java"
.field private final mContext:Landroid/content/Context;
.field private final mPhotosCache:Lcom/facebook/katana/binding/StreamPhotosCache;
.field private final mViewHolders:Ljava/util/List;
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/facebook/katana/binding/StreamPhotosCache;)V
.registers 5
invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V
iput-object p1, p0, Lcom/facebook/katana/UserSearchResultsAdapter;->mContext:Landroid/content/Context;
iput-object p3, p0, Lcom/facebook/katana/UserSearchResultsAdapter;->mPhotosCache:Lcom/facebook/katana/binding/StreamPhotosCache;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/UserSearchResultsAdapter;->mViewHolders:Ljava/util/List;
return-void
.end method
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.registers 12
const v7, 0x7f0200b3
const/4 v4, 0x5
invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/facebook/katana/ViewHolder;
invoke-virtual {v3, v2}, Lcom/facebook/katana/ViewHolder;->setItemId(Ljava/lang/Object;)V
if-eqz v2, :cond_46
iget-object v4, p0, Lcom/facebook/katana/UserSearchResultsAdapter;->mPhotosCache:Lcom/facebook/katana/binding/StreamPhotosCache;
iget-object v5, p0, Lcom/facebook/katana/UserSearchResultsAdapter;->mContext:Landroid/content/Context;
const/4 v6, 0x2
invoke-virtual {v4, v5, v2, v6}, Lcom/facebook/katana/binding/StreamPhotosCache;->get(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_40
iget-object v4, v3, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:goto_23
const/4 v4, 0x4
invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_33
iget-object v4, p0, Lcom/facebook/katana/UserSearchResultsAdapter;->mContext:Landroid/content/Context;
const v5, 0x7f080050
invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
:cond_33
const v4, 0x7f0b002f
invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p0
check-cast p0, Landroid/widget/TextView;
invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
:cond_40
iget-object v4, v3, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_23
:cond_46
iget-object v4, v3, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_23
.end method
.method public isEmpty()Z
.registers 2
invoke-virtual {p0}, Lcom/facebook/katana/UserSearchResultsAdapter;->getCursor()Landroid/database/Cursor;
move-result-object v0
if-nez v0, :cond_8
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
iget-object v3, p0, Lcom/facebook/katana/UserSearchResultsAdapter;->mContext:Landroid/content/Context;
const-string v4, "layout_inflater"
invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/view/LayoutInflater;
const v3, 0x7f030012
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/facebook/katana/ViewHolder;
const v3, 0x7f0b002e
invoke-direct {v1, v0, v3}, Lcom/facebook/katana/ViewHolder;-><init>(Landroid/view/View;I)V
invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
iget-object v3, p0, Lcom/facebook/katana/UserSearchResultsAdapter;->mViewHolders:Ljava/util/List;
invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object v0
.end method
.method public updatePhoto(Landroid/graphics/Bitmap;Ljava/lang/String;)V
.registers 7
iget-object v2, p0, Lcom/facebook/katana/UserSearchResultsAdapter;->mViewHolders:Ljava/util/List;
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
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_6
invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_6
iget-object v3, v1, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
goto :goto_6
.end method