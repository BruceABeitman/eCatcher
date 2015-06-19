.class public Lcom/facebook/katana/PhotosAdapter;
.super Landroid/widget/CursorAdapter;
.source "PhotosAdapter.java"
.field private final mAlbumId:Ljava/lang/String;
.field private final mAppSession:Lcom/facebook/katana/binding/AppSession;
.field private final mContext:Landroid/content/Context;
.field private final mDownloadPending:Ljava/util/Map;
.field private final mViewHolders:Ljava/util/List;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JLcom/facebook/katana/binding/AppSession;)V
.registers 13
const/4 v5, 0x0
move-object v0, p1
check-cast v0, Landroid/app/Activity;
move-object v1, v0
sget-object v2, Lcom/facebook/katana/provider/PhotosProvider;->PHOTOS_CONTENT_URI:Landroid/net/Uri;
sget-object v3, Lcom/facebook/katana/PhotosAdapter$PhotosQuery;->PROJECTION:[Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string v6, "aid="
invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v6, " AND "
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v6, "owner"
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v6, "="
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
move-object v6, v5
invoke-virtual/range {v1 .. v6}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v1
const/4 v2, 0x1
invoke-direct {p0, p1, v1, v2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
iput-object p1, p0, Lcom/facebook/katana/PhotosAdapter;->mContext:Landroid/content/Context;
iput-object p2, p0, Lcom/facebook/katana/PhotosAdapter;->mAlbumId:Ljava/lang/String;
iput-object p5, p0, Lcom/facebook/katana/PhotosAdapter;->mAppSession:Lcom/facebook/katana/binding/AppSession;
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
iput-object v1, p0, Lcom/facebook/katana/PhotosAdapter;->mDownloadPending:Ljava/util/Map;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Lcom/facebook/katana/PhotosAdapter;->mViewHolders:Ljava/util/List;
return-void
.end method
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.registers 12
const/4 v5, 0x1
invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/facebook/katana/ViewHolder;
invoke-virtual {v4, v2}, Lcom/facebook/katana/ViewHolder;->setItemId(Ljava/lang/Object;)V
const/4 v5, 0x3
invoke-interface {p3, v5}, Landroid/database/Cursor;->getBlob(I)[B
move-result-object v1
if-eqz v1, :cond_21
const/4 v5, 0x0
array-length v6, v1
invoke-static {v1, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
move-result-object v0
iget-object v5, v4, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:cond_20
:goto_20
return-void
:cond_21
const/4 v5, 0x2
invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_47
iget-object v5, v4, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
const v6, 0x7f0200bd
invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v5, p0, Lcom/facebook/katana/PhotosAdapter;->mDownloadPending:Ljava/util/Map;
invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_20
iget-object v5, p0, Lcom/facebook/katana/PhotosAdapter;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v6, p0, Lcom/facebook/katana/PhotosAdapter;->mContext:Landroid/content/Context;
iget-object v7, p0, Lcom/facebook/katana/PhotosAdapter;->mAlbumId:Ljava/lang/String;
invoke-virtual {v5, v6, v7, v2, v3}, Lcom/facebook/katana/binding/AppSession;->downloadPhotoThumbail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
iget-object v5, p0, Lcom/facebook/katana/PhotosAdapter;->mDownloadPending:Ljava/util/Map;
invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_20
:cond_47
iget-object v5, v4, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
const v6, 0x7f0200bc
invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_20
.end method
.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 9
iget-object v3, p0, Lcom/facebook/katana/PhotosAdapter;->mContext:Landroid/content/Context;
const-string v4, "layout_inflater"
invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/view/LayoutInflater;
const v3, 0x7f030030
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/facebook/katana/ViewHolder;
const v3, 0x7f0b0086
invoke-direct {v1, v0, v3}, Lcom/facebook/katana/ViewHolder;-><init>(Landroid/view/View;I)V
invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
iget-object v3, p0, Lcom/facebook/katana/PhotosAdapter;->mViewHolders:Ljava/util/List;
invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object v0
.end method
.method protected onContentChanged()V
.registers 1
invoke-super {p0}, Landroid/widget/CursorAdapter;->onContentChanged()V
return-void
.end method
.method public onDownloadPhotoError(Ljava/lang/String;)V
.registers 5
iget-object v1, p0, Lcom/facebook/katana/PhotosAdapter;->mViewHolders:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_d
:goto_c
return-void
:cond_d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/katana/ViewHolder;
invoke-virtual {v0}, Lcom/facebook/katana/ViewHolder;->getItemId()Ljava/lang/Object;
move-result-object v2
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
iget-object v1, v0, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
const v2, 0x7f0200bc
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_c
.end method