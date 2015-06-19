.class public Lcom/facebook/katana/EventGuestsAdapter;
.super Landroid/widget/BaseAdapter;
.source "EventGuestsAdapter.java"
.field private final mContext:Landroid/content/Context;
.field private final mInflater:Landroid/view/LayoutInflater;
.field private mItems:Ljava/util/List;
.field private final mUserImagesCache:Lcom/facebook/katana/binding/UserImagesCache;
.field private final mViewHolders:Ljava/util/List;
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/binding/UserImagesCache;)V
.registers 4
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
iput-object p1, p0, Lcom/facebook/katana/EventGuestsAdapter;->mContext:Landroid/content/Context;
iput-object p2, p0, Lcom/facebook/katana/EventGuestsAdapter;->mUserImagesCache:Lcom/facebook/katana/binding/UserImagesCache;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/EventGuestsAdapter;->mViewHolders:Ljava/util/List;
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/EventGuestsAdapter;->mInflater:Landroid/view/LayoutInflater;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/EventGuestsAdapter;->mItems:Ljava/util/List;
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/facebook/katana/EventGuestsAdapter;->mItems:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/facebook/katana/EventGuestsAdapter;->mItems:Ljava/util/List;
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
.registers 17
const/4 v5, 0x0
iget-object v9, p0, Lcom/facebook/katana/EventGuestsAdapter;->mItems:Ljava/util/List;
invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/facebook/katana/EventGuestsAdapter$Item;
if-nez p2, :cond_9f
iget-object v9, p0, Lcom/facebook/katana/EventGuestsAdapter;->mInflater:Landroid/view/LayoutInflater;
const v10, 0x7f03000c
const/4 v11, 0x0
invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v5
new-instance v6, Lcom/facebook/katana/ViewHolder;
const v9, 0x7f0b0019
invoke-direct {v6, v5, v9}, Lcom/facebook/katana/ViewHolder;-><init>(Landroid/view/View;I)V
iget-object v9, p0, Lcom/facebook/katana/EventGuestsAdapter;->mViewHolders:Ljava/util/List;
invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
:goto_25
const v9, 0x7f0b0022
invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v3}, Lcom/facebook/katana/EventGuestsAdapter$Item;->getStatus()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
if-eqz p1, :cond_50
invoke-virtual {v3}, Lcom/facebook/katana/EventGuestsAdapter$Item;->getStatus()Ljava/lang/String;
move-result-object v9
iget-object v10, p0, Lcom/facebook/katana/EventGuestsAdapter;->mItems:Ljava/util/List;
const/4 v11, 0x1
sub-int v11, p1, v11
invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object p1
check-cast p1, Lcom/facebook/katana/EventGuestsAdapter$Item;
invoke-virtual {p1}, Lcom/facebook/katana/EventGuestsAdapter$Item;->getStatus()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-nez v9, :cond_a1
:cond_50
const/4 v9, 0x0
invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V
:goto_54
invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/facebook/katana/ViewHolder;
invoke-virtual {v3}, Lcom/facebook/katana/EventGuestsAdapter$Item;->getUser()Lcom/facebook/katana/service/api/FacebookUser;
move-result-object v9
invoke-virtual {v9}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J
move-result-wide v9
invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v9
invoke-virtual {v8, v9}, Lcom/facebook/katana/ViewHolder;->setItemId(Ljava/lang/Object;)V
invoke-virtual {v3}, Lcom/facebook/katana/EventGuestsAdapter$Item;->getUser()Lcom/facebook/katana/service/api/FacebookUser;
move-result-object v9
invoke-virtual {v9}, Lcom/facebook/katana/service/api/FacebookUser;->getImageUrl()Ljava/lang/String;
move-result-object v7
if-eqz v7, :cond_b0
iget-object v9, p0, Lcom/facebook/katana/EventGuestsAdapter;->mUserImagesCache:Lcom/facebook/katana/binding/UserImagesCache;
iget-object v10, p0, Lcom/facebook/katana/EventGuestsAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v3}, Lcom/facebook/katana/EventGuestsAdapter$Item;->getUser()Lcom/facebook/katana/service/api/FacebookUser;
move-result-object v11
invoke-virtual {v11}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J
move-result-wide v11
invoke-virtual {v9, v10, v11, v12, v7}, Lcom/facebook/katana/binding/UserImagesCache;->get(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v2
if-eqz v2, :cond_a7
iget-object v9, v8, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:goto_8a
const v9, 0x7f0b001b
invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/TextView;
invoke-virtual {v3}, Lcom/facebook/katana/EventGuestsAdapter$Item;->getUser()Lcom/facebook/katana/service/api/FacebookUser;
move-result-object v9
invoke-virtual {v9}, Lcom/facebook/katana/service/api/FacebookUser;->getDisplayName()Ljava/lang/String;
move-result-object v9
invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-object v5
:cond_9f
move-object v5, p2
goto :goto_25
:cond_a1
const/16 v9, 0x8
invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_54
:cond_a7
iget-object v9, v8, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
const v10, 0x7f0200b3
invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_8a
:cond_b0
iget-object v9, v8, Lcom/facebook/katana/ViewHolder;->mImageView:Landroid/widget/ImageView;
const v10, 0x7f0200b3
invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_8a
.end method
.method public setItemsInfo(Ljava/util/Map;)V
.registers 10
iget-object v4, p0, Lcom/facebook/katana/EventGuestsAdapter;->mItems:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->clear()V
invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v4
invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v5
:cond_d
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-nez v4, :cond_21
iget-object v4, p0, Lcom/facebook/katana/EventGuestsAdapter;->mItems:Ljava/util/List;
new-instance v5, Lcom/facebook/katana/EventGuestsAdapter$byStatusAndName;
invoke-direct {v5, p0}, Lcom/facebook/katana/EventGuestsAdapter$byStatusAndName;-><init>(Lcom/facebook/katana/EventGuestsAdapter;)V
invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
invoke-virtual {p0}, Lcom/facebook/katana/EventGuestsAdapter;->notifyDataSetChanged()V
return-void
:cond_21
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
iget-object v6, p0, Lcom/facebook/katana/EventGuestsAdapter;->mContext:Landroid/content/Context;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;
iget-object v4, v4, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;->status:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->ordinal()I
move-result v4
invoke-static {v6, v4}, Lcom/facebook/katana/util/StringUtils;->rsvpStatusToString(Landroid/content/Context;I)Ljava/lang/String;
move-result-object v1
const/4 v3, 0x0
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;
iget-object v4, v4, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;->status:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;
sget-object v6, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->ATTENDING:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;
if-ne v4, v6, :cond_68
const/4 v3, 0x0
:goto_47
:cond_47
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_51
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_d
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/facebook/katana/service/api/FacebookUser;
iget-object v6, p0, Lcom/facebook/katana/EventGuestsAdapter;->mItems:Ljava/util/List;
new-instance v7, Lcom/facebook/katana/EventGuestsAdapter$Item;
invoke-direct {v7, v1, v2, v3}, Lcom/facebook/katana/EventGuestsAdapter$Item;-><init>(Ljava/lang/String;Lcom/facebook/katana/service/api/FacebookUser;I)V
invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_51
:cond_68
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;
iget-object v4, v4, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;->status:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;
sget-object v6, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->UNSURE:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;
if-ne v4, v6, :cond_76
const/4 v3, 0x1
goto :goto_47
:cond_76
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;
iget-object v4, v4, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;->status:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;
sget-object v6, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->DECLINED:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;
if-ne v4, v6, :cond_84
const/4 v3, 0x2
goto :goto_47
:cond_84
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;
iget-object v4, v4, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;->status:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;
sget-object v6, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;->NOT_REPLIED:Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatusEnum;
if-ne v4, v6, :cond_47
const/4 v3, 0x3
goto :goto_47
.end method
.method public updateUserImage(Lcom/facebook/katana/binding/UserImage;)V
.registers 7
iget-object v2, p0, Lcom/facebook/katana/EventGuestsAdapter;->mViewHolders:Ljava/util/List;
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