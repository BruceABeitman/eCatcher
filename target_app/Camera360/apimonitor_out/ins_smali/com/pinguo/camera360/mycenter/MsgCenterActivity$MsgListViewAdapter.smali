.class  Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "MsgCenterActivity.java"
.field private final ONE_HOUR_MILLIS:I
.field private final ONE_MINUTE_MILLIS:I
.field private final TAG:Ljava/lang/String;
.field private mFormat:Ljava/text/DateFormat;
.field private mMsgList:Ljava/util/List;
.field final synthetic this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
.method public constructor <init>(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
const-class v0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;->TAG:Ljava/lang/String;
const v0, 0x36ee80
iput v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;->ONE_HOUR_MILLIS:I
const v0, 0xea60
iput v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;->ONE_MINUTE_MILLIS:I
const-string/jumbo v0, "MM-dd HH:mm"
invoke-static {v0}, Lcom/pinguo/lib/util/TimeUtils;->getDateFormat(Ljava/lang/String;)Ljava/text/DateFormat;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;->mFormat:Ljava/text/DateFormat;
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getMsgList()Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;->mMsgList:Ljava/util/List;
return-void
.end method
.method private toReadableTime(J)Ljava/lang/String;
.registers 13
const-wide/32 v8, 0x36ee80
const-wide/32 v6, 0xea60
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
sub-long v0, v4, p1
const-wide/32 v4, 0x5265c00
cmp-long v4, v0, v4
if-ltz v4, :cond_1f
iget-object v4, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;->mFormat:Ljava/text/DateFormat;
new-instance v5, Ljava/util/Date;
invoke-direct {v5, p1, p2}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v4
:goto_1e
return-object v4
:cond_1f
cmp-long v4, v0, v8
if-lez v4, :cond_45
div-long v4, v0, v8
long-to-int v2, v4
new-instance v4, Ljava/lang/StringBuilder;
invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v5, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
invoke-virtual {v5}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f080191
invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
goto :goto_1e
:cond_45
cmp-long v4, v0, v8
if-nez v4, :cond_6b
div-long v4, v0, v8
long-to-int v2, v4
new-instance v4, Ljava/lang/StringBuilder;
invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v5, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
invoke-virtual {v5}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f080193
invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
goto :goto_1e
:cond_6b
cmp-long v4, v0, v6
if-lez v4, :cond_91
div-long v4, v0, v6
long-to-int v3, v4
new-instance v4, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v5, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
invoke-virtual {v5}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f080192
invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
goto :goto_1e
:cond_91
cmp-long v4, v0, v6
if-nez v4, :cond_b8
div-long v4, v0, v6
long-to-int v3, v4
new-instance v4, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v5, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
invoke-virtual {v5}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f080194
invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
goto/16 :goto_1e
:cond_b8
iget-object v4, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
invoke-virtual {v4}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f080195
invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v4
goto/16 :goto_1e
.end method
.method public getCount()I
.registers 3
iget-object v1, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMessageList:Ljava/util/List;
invoke-static {v1}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$0(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Ljava/util/List;
move-result-object v1
if-nez v1, :cond_a
const/4 v0, 0x0
:goto_9
return v0
:cond_a
iget-object v1, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMessageList:Ljava/util/List;
invoke-static {v1}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$0(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v0
goto :goto_9
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
const-wide/16 v0, 0x0
return-wide v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 11
if-nez p2, :cond_6a
iget-object v4, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
invoke-virtual {v4}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v4
const v5, 0x7f0300b3
const/4 v6, 0x0
invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
new-instance v1, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter$ViewHolder;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter$ViewHolder;-><init>(Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;)V
const v4, 0x7f0a03fa
invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
iput-object v4, v1, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter$ViewHolder;->mUnreadView:Landroid/view/View;
const v4, 0x7f0a03f9
invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Lcom/pinguo/camera360/lib/ui/RoundImageView;
iput-object v4, v1, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter$ViewHolder;->mIconIV:Lcom/pinguo/camera360/lib/ui/RoundImageView;
const v4, 0x7f0a03fc
invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/TextView;
iput-object v4, v1, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter$ViewHolder;->mDescTV:Landroid/widget/TextView;
const v4, 0x7f0a03fb
invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/TextView;
iput-object v4, v1, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter$ViewHolder;->mTitleTV:Landroid/widget/TextView;
const v4, 0x7f0a03fd
invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/TextView;
iput-object v4, v1, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter$ViewHolder;->mTimeTV:Landroid/widget/TextView;
invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
:goto_4d
iget-object v4, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMessageList:Ljava/util/List;
invoke-static {v4}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$0(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Ljava/util/List;
move-result-object v4
if-eqz v4, :cond_61
iget-object v4, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMessageList:Ljava/util/List;
invoke-static {v4}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$0(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Ljava/util/List;
move-result-object v4
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v4
if-gt v4, p1, :cond_71
:cond_61
iget-object v4, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;->TAG:Ljava/lang/String;
const-string/jumbo v5, "getView fail as list == null or size <= pos"
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_69
return-object p2
:cond_6a
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter$ViewHolder;
goto :goto_4d
:cond_71
iget-object v4, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;->this$0:Lcom/pinguo/camera360/mycenter/MsgCenterActivity;
#getter for: Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->mMessageList:Ljava/util/List;
invoke-static {v4}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity;->access$0(Lcom/pinguo/camera360/mycenter/MsgCenterActivity;)Ljava/util/List;
move-result-object v4
invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/mycenter/PGMessage;
if-nez v0, :cond_88
iget-object v4, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;->TAG:Ljava/lang/String;
const-string/jumbo v5, "getView fail as data bean is null"
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_69
:cond_88
iget-boolean v4, v0, Lcom/pinguo/camera360/mycenter/PGMessage;->hasReaded:Z
if-eqz v4, :cond_c7
iget-object v4, v1, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter$ViewHolder;->mUnreadView:Landroid/view/View;
const/16 v5, 0x8
invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V
:goto_93
iget-object v3, v0, Lcom/pinguo/camera360/mycenter/PGMessage;->type:Ljava/lang/String;
const-string/jumbo v4, "APP_LINK"
invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v4
if-eqz v4, :cond_ce
const v2, 0x7f0202db
:goto_a1
iget-object v4, v1, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter$ViewHolder;->mIconIV:Lcom/pinguo/camera360/lib/ui/RoundImageView;
invoke-virtual {v4, v2}, Lcom/pinguo/camera360/lib/ui/RoundImageView;->setDefaultImage(I)V
iget-object v4, v1, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter$ViewHolder;->mIconIV:Lcom/pinguo/camera360/lib/ui/RoundImageView;
iget-object v5, v0, Lcom/pinguo/camera360/mycenter/PGMessage;->image_url:Ljava/lang/String;
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/lib/ui/RoundImageView;->setImageUrl(Ljava/lang/String;)V
iget-object v4, v1, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter$ViewHolder;->mTimeTV:Landroid/widget/TextView;
iget-wide v5, v0, Lcom/pinguo/camera360/mycenter/PGMessage;->receiveTime:J
invoke-direct {p0, v5, v6}, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;->toReadableTime(J)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v4, v1, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter$ViewHolder;->mDescTV:Landroid/widget/TextView;
iget-object v5, v0, Lcom/pinguo/camera360/mycenter/PGMessage;->desc:Ljava/lang/String;
invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v4, v1, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter$ViewHolder;->mTitleTV:Landroid/widget/TextView;
iget-object v5, v0, Lcom/pinguo/camera360/mycenter/PGMessage;->text:Ljava/lang/String;
invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_69
:cond_c7
iget-object v4, v1, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter$ViewHolder;->mUnreadView:Landroid/view/View;
const/4 v5, 0x0
invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V
goto :goto_93
:cond_ce
const-string/jumbo v4, "GOTO"
invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v4
if-eqz v4, :cond_db
const v2, 0x7f0202dd
goto :goto_a1
:cond_db
const-string/jumbo v4, "OUT_LINK"
invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v4
if-eqz v4, :cond_e8
const v2, 0x7f0202df
goto :goto_a1
:cond_e8
const v2, 0x7f0202dc
goto :goto_a1
.end method
.method public notifyDataSetChanged()V
.registers 4
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getMsgList()Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;->mMsgList:Ljava/util/List;
iget-object v0, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "notifyDataSetChanged = "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/mycenter/MsgCenterActivity$MsgListViewAdapter;->mMsgList:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
return-void
.end method