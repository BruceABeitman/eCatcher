.class public Lco/vine/android/FriendSearchAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FriendSearchAdapter.java"
.field private final mAppController:Lco/vine/android/client/AppController;
.field private final mProfileImageSize:I
.field protected final mViewHolders:Ljava/util/ArrayList;
.field private final mVineGreen:I
.method public constructor <init>(Landroid/content/Context;Lco/vine/android/client/AppController;Ljava/util/List;)V
.registers 6
const/4 v0, 0x0
invoke-direct {p0, p1, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V
iput-object p2, p0, Lco/vine/android/FriendSearchAdapter;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0b0087
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v0
iput v0, p0, Lco/vine/android/FriendSearchAdapter;->mProfileImageSize:I
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lco/vine/android/FriendSearchAdapter;->mViewHolders:Ljava/util/ArrayList;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f090096
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
iput v0, p0, Lco/vine/android/FriendSearchAdapter;->mVineGreen:I
return-void
.end method
.method private setUserImage(Lco/vine/android/widget/UserViewHolder;Landroid/graphics/Bitmap;)V
.registers 6
iget-object v0, p1, Lco/vine/android/widget/UserViewHolder;->image:Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V
if-eqz p2, :cond_1b
iget-object v0, p1, Lco/vine/android/widget/UserViewHolder;->image:Landroid/widget/ImageView;
new-instance v1, Lco/vine/android/drawable/RecyclableBitmapDrawable;
invoke-virtual {p0}, Lco/vine/android/FriendSearchAdapter;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-direct {v1, v2, p2}, Lco/vine/android/drawable/RecyclableBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:goto_1a
return-void
:cond_1b
iget-object v0, p1, Lco/vine/android/widget/UserViewHolder;->image:Landroid/widget/ImageView;
const v1, 0x7f0200f7
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_1a
.end method
.method public getItemId(I)J
.registers 5
invoke-virtual {p0, p1}, Lco/vine/android/FriendSearchAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/api/VineUser;
iget-wide v1, v0, Lco/vine/android/api/VineUser;->userId:J
return-wide v1
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 13
if-eqz p2, :cond_47
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/widget/UserViewHolder;
iget-object v5, p0, Lco/vine/android/FriendSearchAdapter;->mViewHolders:Ljava/util/ArrayList;
new-instance v6, Ljava/lang/ref/WeakReference;
invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_12
invoke-virtual {p0, p1}, Lco/vine/android/FriendSearchAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/api/VineUser;
iget-object v5, v0, Lco/vine/android/widget/UserViewHolder;->username:Landroid/widget/TextView;
iget-object v6, v4, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;
invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v3, v4, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v5
if-nez v5, :cond_69
new-instance v2, Lco/vine/android/util/image/ImageKey;
iget v5, p0, Lco/vine/android/FriendSearchAdapter;->mProfileImageSize:I
iget v6, p0, Lco/vine/android/FriendSearchAdapter;->mProfileImageSize:I
const/4 v7, 0x1
invoke-direct {v2, v3, v5, v6, v7}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;IIZ)V
invoke-static {v3}, Lco/vine/android/util/Util;->isDefaultAvatarUrl(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_5d
iget-object v5, v0, Lco/vine/android/widget/UserViewHolder;->image:Landroid/widget/ImageView;
sget-object v6, Lco/vine/android/util/Util$ProfileImageSize;->MEDIUM:Lco/vine/android/util/Util$ProfileImageSize;
const/high16 v7, -0x100
iget v8, p0, Lco/vine/android/FriendSearchAdapter;->mVineGreen:I
or-int/2addr v7, v8
invoke-static {v5, v6, v7}, Lco/vine/android/util/Util;->safeSetDefaultAvatar(Landroid/widget/ImageView;Lco/vine/android/util/Util$ProfileImageSize;I)V
:goto_43
invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
return-object p2
:cond_47
invoke-virtual {p0}, Lco/vine/android/FriendSearchAdapter;->getContext()Landroid/content/Context;
move-result-object v5
invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v1
const v5, 0x7f0300a3
const/4 v6, 0x0
invoke-virtual {v1, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object p2
new-instance v0, Lco/vine/android/widget/UserViewHolder;
invoke-direct {v0, p2}, Lco/vine/android/widget/UserViewHolder;-><init>(Landroid/view/View;)V
goto :goto_12
:cond_5d
iput-object v2, v0, Lco/vine/android/widget/UserViewHolder;->avatarUrl:Lco/vine/android/util/image/ImageKey;
iget-object v5, p0, Lco/vine/android/FriendSearchAdapter;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v5, v2}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;
move-result-object v5
invoke-direct {p0, v0, v5}, Lco/vine/android/FriendSearchAdapter;->setUserImage(Lco/vine/android/widget/UserViewHolder;Landroid/graphics/Bitmap;)V
goto :goto_43
:cond_69
const/4 v5, 0x0
invoke-direct {p0, v0, v5}, Lco/vine/android/FriendSearchAdapter;->setUserImage(Lco/vine/android/widget/UserViewHolder;Landroid/graphics/Bitmap;)V
goto :goto_43
.end method
.method public setData(Ljava/util/List;)V
.registers 6
sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0xb
if-lt v2, v3, :cond_a
invoke-virtual {p0, p1}, Lco/vine/android/FriendSearchAdapter;->addAll(Ljava/util/Collection;)V
:cond_9
return-void
:cond_a
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_e
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_9
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/api/VineUser;
invoke-virtual {p0, v1}, Lco/vine/android/FriendSearchAdapter;->add(Ljava/lang/Object;)V
goto :goto_e
.end method
.method public declared-synchronized setUserImages(Ljava/util/HashMap;)V
.registers 9
monitor-enter p0
:try_start_1
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
iget-object v6, p0, Lco/vine/android/FriendSearchAdapter;->mViewHolders:Ljava/util/ArrayList;
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
check-cast v0, Lco/vine/android/widget/UserViewHolder;
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
iget-object v6, v0, Lco/vine/android/widget/UserViewHolder;->avatarUrl:Lco/vine/android/util/image/ImageKey;
invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/util/image/UrlImage;
if-eqz v2, :cond_c
invoke-virtual {v2}, Lco/vine/android/util/image/UrlImage;->isValid()Z
move-result v6
if-eqz v6, :cond_c
iget-object v6, v2, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;
invoke-direct {p0, v0, v6}, Lco/vine/android/FriendSearchAdapter;->setUserImage(Lco/vine/android/widget/UserViewHolder;Landroid/graphics/Bitmap;)V
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
iget-object v6, p0, Lco/vine/android/FriendSearchAdapter;->mViewHolders:Ljava/util/ArrayList;
invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
:try_end_52
.catchall {:try_start_27 .. :try_end_52} :catchall_24
goto :goto_41
:cond_53
monitor-exit p0
return-void
.end method