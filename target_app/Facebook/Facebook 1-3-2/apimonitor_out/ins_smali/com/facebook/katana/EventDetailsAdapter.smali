.class public Lcom/facebook/katana/EventDetailsAdapter;
.super Landroid/widget/BaseAdapter;
.source "EventDetailsAdapter.java"
.field private final mContext:Landroid/content/Context;
.field private mCreatorId:J
.field private mCursor:Landroid/database/Cursor;
.field private mEventId:J
.field private mEventImage:Landroid/widget/ImageView;
.field private final mInflater:Landroid/view/LayoutInflater;
.field private final mItems:Ljava/util/List;
.field private final mPhotosCache:Lcom/facebook/katana/binding/StreamPhotosCache;
.field private mRsvpStatus:I
.field private mUrl:Ljava/lang/String;
.field private mUserId:J
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/binding/StreamPhotosCache;Landroid/database/Cursor;JJ)V
.registers 9
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
iput-object p1, p0, Lcom/facebook/katana/EventDetailsAdapter;->mContext:Landroid/content/Context;
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/EventDetailsAdapter;->mInflater:Landroid/view/LayoutInflater;
iput-object p2, p0, Lcom/facebook/katana/EventDetailsAdapter;->mPhotosCache:Lcom/facebook/katana/binding/StreamPhotosCache;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/EventDetailsAdapter;->mItems:Ljava/util/List;
iput-object p3, p0, Lcom/facebook/katana/EventDetailsAdapter;->mCursor:Landroid/database/Cursor;
iput-wide p4, p0, Lcom/facebook/katana/EventDetailsAdapter;->mEventId:J
iput-wide p6, p0, Lcom/facebook/katana/EventDetailsAdapter;->mUserId:J
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/facebook/katana/EventDetailsAdapter;->mItems:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public getCreatorId()J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/EventDetailsAdapter;->mCreatorId:J
return-wide v0
.end method
.method public getEventId()J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/EventDetailsAdapter;->mEventId:J
return-wide v0
.end method
.method public getFooterView()Landroid/view/View;
.registers 8
const/4 v6, 0x3
const/4 v2, 0x0
iget-object v3, p0, Lcom/facebook/katana/EventDetailsAdapter;->mInflater:Landroid/view/LayoutInflater;
const v4, 0x7f030006
const/4 v5, 0x0
invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
const v3, 0x7f0b0017
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget-object v3, p0, Lcom/facebook/katana/EventDetailsAdapter;->mCursor:Landroid/database/Cursor;
invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_23
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v3
if-nez v3, :cond_30
:cond_23
const v3, 0x7f0b0016
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
const/16 v4, 0x8
invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V
:goto_2f
return-object v2
:cond_30
iget-object v3, p0, Lcom/facebook/katana/EventDetailsAdapter;->mCursor:Landroid/database/Cursor;
invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_2f
.end method
.method public getHeaderDivider()Landroid/view/View;
.registers 4
iget-object v0, p0, Lcom/facebook/katana/EventDetailsAdapter;->mInflater:Landroid/view/LayoutInflater;
const v1, 0x7f030008
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public getHeaderView()Landroid/view/View;
.registers 15
const/4 v4, 0x0
iget-object v10, p0, Lcom/facebook/katana/EventDetailsAdapter;->mInflater:Landroid/view/LayoutInflater;
const v11, 0x7f030007
const/4 v12, 0x0
invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v4
const v10, 0x7f0b001b
invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
iget-object v10, p0, Lcom/facebook/katana/EventDetailsAdapter;->mCursor:Landroid/database/Cursor;
const/4 v11, 0x1
invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v10
invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v10, p0, Lcom/facebook/katana/EventDetailsAdapter;->mCursor:Landroid/database/Cursor;
const/16 v11, 0x8
invoke-interface {v10, v11}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v5
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
iget-object v10, p0, Lcom/facebook/katana/EventDetailsAdapter;->mContext:Landroid/content/Context;
const/4 v11, -0x1
const-wide/16 v12, 0x3e8
mul-long/2addr v12, v5
invoke-static {v10, v11, v12, v13}, Lcom/facebook/katana/util/TimeUtils;->getTimeAsStringForTimePeriod(Landroid/content/Context;IJ)Ljava/lang/String;
move-result-object v10
invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v10, p0, Lcom/facebook/katana/EventDetailsAdapter;->mCursor:Landroid/database/Cursor;
const/16 v11, 0x9
invoke-interface {v10, v11}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v1
const-string v10, "\n"
invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v10, p0, Lcom/facebook/katana/EventDetailsAdapter;->mContext:Landroid/content/Context;
const/4 v11, -0x1
const-wide/16 v12, 0x3e8
mul-long/2addr v12, v1
invoke-static {v10, v11, v12, v13}, Lcom/facebook/katana/util/TimeUtils;->getTimeAsStringForTimePeriod(Landroid/content/Context;IJ)Ljava/lang/String;
move-result-object v10
invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const v10, 0x7f0b001c
invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v8
check-cast v8, Landroid/widget/TextView;
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v10, 0x7f0b0019
invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/facebook/katana/EventDetailsAdapter;->mEventImage:Landroid/widget/ImageView;
iget-object v10, p0, Lcom/facebook/katana/EventDetailsAdapter;->mCursor:Landroid/database/Cursor;
const/4 v11, 0x2
invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
iput-object v9, p0, Lcom/facebook/katana/EventDetailsAdapter;->mUrl:Ljava/lang/String;
if-eqz v9, :cond_92
iget-object v10, p0, Lcom/facebook/katana/EventDetailsAdapter;->mPhotosCache:Lcom/facebook/katana/binding/StreamPhotosCache;
iget-object v11, p0, Lcom/facebook/katana/EventDetailsAdapter;->mContext:Landroid/content/Context;
const/4 v12, 0x3
invoke-virtual {v10, v11, v9, v12}, Lcom/facebook/katana/binding/StreamPhotosCache;->get(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_89
iget-object v10, p0, Lcom/facebook/katana/EventDetailsAdapter;->mEventImage:Landroid/widget/ImageView;
invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:goto_88
return-object v4
:cond_89
iget-object v10, p0, Lcom/facebook/katana/EventDetailsAdapter;->mEventImage:Landroid/widget/ImageView;
const v11, 0x7f0200a5
invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_88
:cond_92
iget-object v10, p0, Lcom/facebook/katana/EventDetailsAdapter;->mEventImage:Landroid/widget/ImageView;
const v11, 0x7f0200a5
invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_88
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/facebook/katana/EventDetailsAdapter;->mItems:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public getRsvpStatus()I
.registers 2
iget v0, p0, Lcom/facebook/katana/EventDetailsAdapter;->mRsvpStatus:I
return v0
.end method
.method public getRsvpView()Landroid/view/View;
.registers 5
iget-object v1, p0, Lcom/facebook/katana/EventDetailsAdapter;->mInflater:Landroid/view/LayoutInflater;
const v2, 0x7f030009
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
const v1, 0x7f0b001f
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
iget-object v2, p0, Lcom/facebook/katana/EventDetailsAdapter;->mCursor:Landroid/database/Cursor;
const/16 v3, 0xb
invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I
move-result v2
invoke-virtual {p0, v1, v2}, Lcom/facebook/katana/EventDetailsAdapter;->setRsvpStatus(Landroid/view/View;I)V
return-object v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 11
const/4 v6, 0x1
const/4 v2, 0x0
iget-object v3, p0, Lcom/facebook/katana/EventDetailsAdapter;->mItems:Ljava/util/List;
invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/katana/EventDetailsAdapter$Item;
iget-object v3, p0, Lcom/facebook/katana/EventDetailsAdapter;->mInflater:Landroid/view/LayoutInflater;
const v4, 0x7f03000b
const/4 v5, 0x0
invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
const v0, 0x7f02004a
if-nez p1, :cond_46
invoke-virtual {p0}, Lcom/facebook/katana/EventDetailsAdapter;->getCount()I
move-result v3
if-ne v3, v6, :cond_46
const v0, 0x7f020048
:cond_22
:goto_22
invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V
const v3, 0x7f0b001e
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p0
check-cast p0, Landroid/widget/TextView;
invoke-virtual {v1}, Lcom/facebook/katana/EventDetailsAdapter$Item;->getLabel()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v3, 0x7f0b0021
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p0
check-cast p0, Landroid/widget/TextView;
invoke-virtual {v1}, Lcom/facebook/katana/EventDetailsAdapter$Item;->getString()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-object v2
:cond_46
if-nez p1, :cond_4c
const v0, 0x7f02004b
goto :goto_22
:cond_4c
invoke-virtual {p0}, Lcom/facebook/katana/EventDetailsAdapter;->getCount()I
move-result v3
sub-int/2addr v3, v6
if-ne p1, v3, :cond_22
const v0, 0x7f020049
goto :goto_22
.end method
.method public isEnabled(I)Z
.registers 3
iget-object v0, p0, Lcom/facebook/katana/EventDetailsAdapter;->mItems:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/facebook/katana/EventDetailsAdapter$Item;
invoke-virtual {p0}, Lcom/facebook/katana/EventDetailsAdapter$Item;->getEnabled()Z
move-result v0
return v0
.end method
.method public setEventInfo()V
.registers 16
iget-object v9, p0, Lcom/facebook/katana/EventDetailsAdapter;->mItems:Ljava/util/List;
invoke-interface {v9}, Ljava/util/List;->clear()V
iget-object v9, p0, Lcom/facebook/katana/EventDetailsAdapter;->mCursor:Landroid/database/Cursor;
const/16 v10, 0xa
invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v9
iput-wide v9, p0, Lcom/facebook/katana/EventDetailsAdapter;->mCreatorId:J
iget-object v9, p0, Lcom/facebook/katana/EventDetailsAdapter;->mItems:Ljava/util/List;
new-instance v10, Lcom/facebook/katana/EventDetailsAdapter$Item;
const/4 v11, 0x0
iget-object v12, p0, Lcom/facebook/katana/EventDetailsAdapter;->mContext:Landroid/content/Context;
const v13, 0x7f080049
invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v12
iget-object v13, p0, Lcom/facebook/katana/EventDetailsAdapter;->mCursor:Landroid/database/Cursor;
const/4 v14, 0x4
invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v13
const/4 v14, 0x1
invoke-direct {v10, v11, v12, v13, v14}, Lcom/facebook/katana/EventDetailsAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V
invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v9, p0, Lcom/facebook/katana/EventDetailsAdapter;->mCursor:Landroid/database/Cursor;
const/4 v10, 0x5
invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v4
if-eqz v4, :cond_4f
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v9
if-eqz v9, :cond_4f
iget-object v9, p0, Lcom/facebook/katana/EventDetailsAdapter;->mItems:Ljava/util/List;
new-instance v10, Lcom/facebook/katana/EventDetailsAdapter$Item;
const/4 v11, 0x1
iget-object v12, p0, Lcom/facebook/katana/EventDetailsAdapter;->mContext:Landroid/content/Context;
const v13, 0x7f08004a
invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v12
const/4 v13, 0x0
invoke-direct {v10, v11, v12, v4, v13}, Lcom/facebook/katana/EventDetailsAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V
invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_4f
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
:try_start_54
iget-object v9, p0, Lcom/facebook/katana/EventDetailsAdapter;->mCursor:Landroid/database/Cursor;
const/4 v10, 0x6
invoke-interface {v9, v10}, Landroid/database/Cursor;->getBlob(I)[B
move-result-object v9
invoke-static {v9}, Lcom/facebook/katana/service/api/FacebookEvent;->deserializeVenue([B)Ljava/util/Map;
move-result-object v7
const-string v9, "street"
invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/io/Serializable;
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v9
if-eqz v9, :cond_74
invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_74
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "city"
invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/io/Serializable;
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v9
if-eqz v9, :cond_8e
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_8e
const-string v9, "state"
invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/io/Serializable;
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v9
if-eqz v9, :cond_ae
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v9
if-eqz v9, :cond_ab
const-string v9, ", "
invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_ab
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_ae
invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I
move-result v9
if-eqz v9, :cond_bc
const-string v9, "\n"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
:cond_bc
const-string v9, "country"
invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/io/Serializable;
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v9
if-eqz v9, :cond_d6
const-string v9, "\n"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_d6
invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I
move-result v9
if-eqz v9, :cond_f5
iget-object v9, p0, Lcom/facebook/katana/EventDetailsAdapter;->mItems:Ljava/util/List;
new-instance v10, Lcom/facebook/katana/EventDetailsAdapter$Item;
const/4 v11, 0x2
iget-object v12, p0, Lcom/facebook/katana/EventDetailsAdapter;->mContext:Landroid/content/Context;
const v13, 0x7f080047
invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v12
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
const/4 v14, 0x1
invoke-direct {v10, v11, v12, v13, v14}, Lcom/facebook/katana/EventDetailsAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V
invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_f5
:cond_f5
:try_end_f5
.catch Ljava/io/IOException; {:try_start_54 .. :try_end_f5} :catch_12f
iget-object v9, p0, Lcom/facebook/katana/EventDetailsAdapter;->mCursor:Landroid/database/Cursor;
const/16 v10, 0xc
invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I
move-result v9
if-eqz v9, :cond_10d
iget-object v9, p0, Lcom/facebook/katana/EventDetailsAdapter;->mCursor:Landroid/database/Cursor;
const/16 v10, 0xa
invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v9
iget-wide v11, p0, Lcom/facebook/katana/EventDetailsAdapter;->mUserId:J
cmp-long v9, v9, v11
if-nez v9, :cond_12b
:cond_10d
iget-object v9, p0, Lcom/facebook/katana/EventDetailsAdapter;->mItems:Ljava/util/List;
new-instance v10, Lcom/facebook/katana/EventDetailsAdapter$Item;
const/4 v11, 0x3
iget-object v12, p0, Lcom/facebook/katana/EventDetailsAdapter;->mContext:Landroid/content/Context;
const v13, 0x7f080048
invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v12
iget-object v13, p0, Lcom/facebook/katana/EventDetailsAdapter;->mContext:Landroid/content/Context;
const v14, 0x7f08004c
invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v13
const/4 v14, 0x1
invoke-direct {v10, v11, v12, v13, v14}, Lcom/facebook/katana/EventDetailsAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V
invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_12b
invoke-virtual {p0}, Lcom/facebook/katana/EventDetailsAdapter;->notifyDataSetChanged()V
return-void
:catch_12f
move-exception v9
move-object v3, v9
const-string v9, "EventDetails Activity"
const-string v10, "Deserialization failed for event."
invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_f5
.end method
.method public setRsvpStatus(Landroid/view/View;I)V
.registers 6
iput p2, p0, Lcom/facebook/katana/EventDetailsAdapter;->mRsvpStatus:I
move-object v0, p1
check-cast v0, Landroid/widget/TextView;
move-object v1, v0
iget-object v2, p0, Lcom/facebook/katana/EventDetailsAdapter;->mContext:Landroid/content/Context;
invoke-static {v2, p2}, Lcom/facebook/katana/util/StringUtils;->rsvpStatusToString(Landroid/content/Context;I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method public updatePhoto(Landroid/graphics/Bitmap;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/facebook/katana/EventDetailsAdapter;->mUrl:Ljava/lang/String;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/facebook/katana/EventDetailsAdapter;->mUrl:Ljava/lang/String;
invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/facebook/katana/EventDetailsAdapter;->mEventImage:Landroid/widget/ImageView;
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:cond_11
return-void
.end method