.class public Lco/vine/android/UsersAutoCompleteAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "UsersAutoCompleteAdapter.java"
.field private mAppController:Lco/vine/android/client/AppController;
.field private final mProfileImageSize:I
.field protected final mViewHolders:Ljava/util/ArrayList;
.method public constructor <init>(Landroid/app/Activity;Lco/vine/android/client/AppController;)V
.registers 5
const/4 v0, 0x0
const/4 v1, 0x1
invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
iput-object p2, p0, Lco/vine/android/UsersAutoCompleteAdapter;->mAppController:Lco/vine/android/client/AppController;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lco/vine/android/UsersAutoCompleteAdapter;->mViewHolders:Ljava/util/ArrayList;
invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0b0087
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v0
iput v0, p0, Lco/vine/android/UsersAutoCompleteAdapter;->mProfileImageSize:I
return-void
.end method
.method private setUserImage(Lco/vine/android/UsersAutoCompleteAdapter$UserDropDownViewHolder;Landroid/graphics/Bitmap;)V
.registers 6
iget-object v0, p1, Lco/vine/android/UsersAutoCompleteAdapter$UserDropDownViewHolder;->image:Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V
if-eqz p2, :cond_19
iget-object v0, p1, Lco/vine/android/UsersAutoCompleteAdapter$UserDropDownViewHolder;->image:Landroid/widget/ImageView;
new-instance v1, Lco/vine/android/drawable/RecyclableBitmapDrawable;
iget-object v2, p0, Lco/vine/android/UsersAutoCompleteAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-direct {v1, v2, p2}, Lco/vine/android/drawable/RecyclableBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:goto_18
return-void
:cond_19
iget-object v0, p1, Lco/vine/android/UsersAutoCompleteAdapter$UserDropDownViewHolder;->image:Landroid/widget/ImageView;
const v1, 0x7f0200f7
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_18
.end method
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.registers 12
const/4 v5, 0x1
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/UsersAutoCompleteAdapter$UserDropDownViewHolder;
invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v3
iput-wide v3, v0, Lco/vine/android/UsersAutoCompleteAdapter$UserDropDownViewHolder;->userId:J
const/4 v3, 0x3
invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_68
new-instance v1, Lco/vine/android/util/image/ImageKey;
iget v3, p0, Lco/vine/android/UsersAutoCompleteAdapter;->mProfileImageSize:I
iget v4, p0, Lco/vine/android/UsersAutoCompleteAdapter;->mProfileImageSize:I
invoke-direct {v1, v2, v3, v4, v5}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;IIZ)V
invoke-static {v2}, Lco/vine/android/util/Util;->isDefaultAvatarUrl(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_5c
iget-object v3, v0, Lco/vine/android/UsersAutoCompleteAdapter$UserDropDownViewHolder;->image:Landroid/widget/ImageView;
sget-object v4, Lco/vine/android/util/Util$ProfileImageSize;->MEDIUM:Lco/vine/android/util/Util$ProfileImageSize;
const/high16 v5, -0x100
iget-object v6, p0, Lco/vine/android/UsersAutoCompleteAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v6
const v7, 0x7f090096
invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I
move-result v6
or-int/2addr v5, v6
invoke-static {v3, v4, v5}, Lco/vine/android/util/Util;->safeSetDefaultAvatar(Landroid/widget/ImageView;Lco/vine/android/util/Util$ProfileImageSize;I)V
:goto_3e
iget-object v3, v0, Lco/vine/android/UsersAutoCompleteAdapter$UserDropDownViewHolder;->userNameView:Landroid/widget/TextView;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "@"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const/4 v5, 0x2
invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
:cond_5c
iput-object v1, v0, Lco/vine/android/UsersAutoCompleteAdapter$UserDropDownViewHolder;->avatarUrl:Lco/vine/android/util/image/ImageKey;
iget-object v3, p0, Lco/vine/android/UsersAutoCompleteAdapter;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v3, v1}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;
move-result-object v3
invoke-direct {p0, v0, v3}, Lco/vine/android/UsersAutoCompleteAdapter;->setUserImage(Lco/vine/android/UsersAutoCompleteAdapter$UserDropDownViewHolder;Landroid/graphics/Bitmap;)V
goto :goto_3e
:cond_68
const/4 v3, 0x0
invoke-direct {p0, v0, v3}, Lco/vine/android/UsersAutoCompleteAdapter;->setUserImage(Lco/vine/android/UsersAutoCompleteAdapter$UserDropDownViewHolder;Landroid/graphics/Bitmap;)V
goto :goto_3e
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 8
invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/database/Cursor;
if-eqz v0, :cond_1a
const/4 v4, 0x1
invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v1
const/4 v4, 0x2
invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
:goto_12
new-instance v4, Lco/vine/android/api/VineTypeAhead;
const-string v5, "mention"
invoke-direct {v4, v5, v3, v1, v2}, Lco/vine/android/api/VineTypeAhead;-><init>(Ljava/lang/String;Ljava/lang/String;J)V
return-object v4
:cond_1a
const-wide/16 v1, 0x0
const-string v3, ""
goto :goto_12
.end method
.method public getItemId(I)J
.registers 5
invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/database/Cursor;
if-eqz v0, :cond_e
const/4 v1, 0x1
invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v1
:goto_d
return-wide v1
:cond_e
const-wide/16 v1, 0x0
goto :goto_d
.end method
.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 9
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v3, 0x7f0300a0
const/4 v4, 0x0
invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
new-instance v2, Lco/vine/android/UsersAutoCompleteAdapter$UserDropDownViewHolder;
invoke-direct {v2, p0, v1}, Lco/vine/android/UsersAutoCompleteAdapter$UserDropDownViewHolder;-><init>(Lco/vine/android/UsersAutoCompleteAdapter;Landroid/view/View;)V
iget-object v3, v2, Lco/vine/android/UsersAutoCompleteAdapter$UserDropDownViewHolder;->image:Landroid/widget/ImageView;
sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
iget-object v3, p0, Lco/vine/android/UsersAutoCompleteAdapter;->mViewHolders:Ljava/util/ArrayList;
new-instance v4, Ljava/lang/ref/WeakReference;
invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
return-object v1
.end method
.method public declared-synchronized setUserImages(Ljava/util/HashMap;)V
.registers 9
monitor-enter p0
:try_start_1
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
iget-object v6, p0, Lco/vine/android/UsersAutoCompleteAdapter;->mViewHolders:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_c
:goto_c
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_3d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/ref/WeakReference;
invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/UsersAutoCompleteAdapter$UserDropDownViewHolder;
if-nez v0, :cond_27
invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_23
.catchall {:try_start_1 .. :try_end_23} :catchall_24
goto :goto_c
:catchall_24
move-exception v6
monitor-exit p0
throw v6
:try_start_27
:cond_27
iget-object v6, v0, Lco/vine/android/UsersAutoCompleteAdapter$UserDropDownViewHolder;->avatarUrl:Lco/vine/android/util/image/ImageKey;
invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/util/image/UrlImage;
if-eqz v2, :cond_c
invoke-virtual {v2}, Lco/vine/android/util/image/UrlImage;->isValid()Z
move-result v6
if-eqz v6, :cond_c
iget-object v6, v2, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;
invoke-direct {p0, v0, v6}, Lco/vine/android/UsersAutoCompleteAdapter;->setUserImage(Lco/vine/android/UsersAutoCompleteAdapter$UserDropDownViewHolder;Landroid/graphics/Bitmap;)V
goto :goto_c
:cond_3d
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_41
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_53
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/ref/WeakReference;
iget-object v6, p0, Lco/vine/android/UsersAutoCompleteAdapter;->mViewHolders:Ljava/util/ArrayList;
invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
:try_end_52
.catchall {:try_start_27 .. :try_end_52} :catchall_24
goto :goto_41
:cond_53
monitor-exit p0
return-void
.end method