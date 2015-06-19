.class public Lcom/pinguo/camera360/order/adapter/OrderListAdapter;
.super Landroid/widget/BaseAdapter;
.source "OrderListAdapter.java"
.field private final TAG:Ljava/lang/String;
.field private mActivity:Landroid/app/Activity;
.field private mOrderList:Ljava/util/List;
.field private mStateChangedOrderList:Ljava/util/List;
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;)V
.registers 5
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
const-class v0, Lcom/pinguo/camera360/order/adapter/OrderListAdapter;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/order/adapter/OrderListAdapter;->TAG:Ljava/lang/String;
iput-object p2, p0, Lcom/pinguo/camera360/order/adapter/OrderListAdapter;->mOrderList:Ljava/util/List;
iput-object p3, p0, Lcom/pinguo/camera360/order/adapter/OrderListAdapter;->mStateChangedOrderList:Ljava/util/List;
iput-object p1, p0, Lcom/pinguo/camera360/order/adapter/OrderListAdapter;->mActivity:Landroid/app/Activity;
return-void
.end method
.method public getCount()I
.registers 3
iget-object v1, p0, Lcom/pinguo/camera360/order/adapter/OrderListAdapter;->mOrderList:Ljava/util/List;
if-nez v1, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v1, p0, Lcom/pinguo/camera360/order/adapter/OrderListAdapter;->mOrderList:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v0
goto :goto_5
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/order/adapter/OrderListAdapter;->mOrderList:Ljava/util/List;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/pinguo/camera360/order/adapter/OrderListAdapter;->mOrderList:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-le v0, p1, :cond_13
iget-object v0, p0, Lcom/pinguo/camera360/order/adapter/OrderListAdapter;->mOrderList:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
:goto_12
return-object v0
:cond_13
const/4 v0, 0x0
goto :goto_12
.end method
.method public getItemId(I)J
.registers 4
const-wide/16 v0, 0x0
return-wide v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 20
if-nez p2, :cond_fd
move-object/from16 v0, p0
iget-object v11, v0, Lcom/pinguo/camera360/order/adapter/OrderListAdapter;->mActivity:Landroid/app/Activity;
invoke-virtual {v11}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v11
const v12, 0x7f0300b5
const/4 v13, 0x0
invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
new-instance v4, Lcom/pinguo/camera360/order/adapter/OrderListAdapter$ViewHolder;
move-object/from16 v0, p0
invoke-direct {v4, v0}, Lcom/pinguo/camera360/order/adapter/OrderListAdapter$ViewHolder;-><init>(Lcom/pinguo/camera360/order/adapter/OrderListAdapter;)V
const v11, 0x7f0a0404
move-object/from16 v0, p2
invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v11
check-cast v11, Landroid/widget/ImageView;
iput-object v11, v4, Lcom/pinguo/camera360/order/adapter/OrderListAdapter$ViewHolder;->mIconIV:Landroid/widget/ImageView;
const v11, 0x7f0a0406
move-object/from16 v0, p2
invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v11
check-cast v11, Landroid/widget/TextView;
iput-object v11, v4, Lcom/pinguo/camera360/order/adapter/OrderListAdapter$ViewHolder;->mStatusTV:Landroid/widget/TextView;
const v11, 0x7f0a0407
move-object/from16 v0, p2
invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v11
check-cast v11, Landroid/widget/TextView;
iput-object v11, v4, Lcom/pinguo/camera360/order/adapter/OrderListAdapter$ViewHolder;->mTitleTV:Landroid/widget/TextView;
const v11, 0x7f0a0408
move-object/from16 v0, p2
invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v11
check-cast v11, Landroid/widget/TextView;
iput-object v11, v4, Lcom/pinguo/camera360/order/adapter/OrderListAdapter$ViewHolder;->mTimeTV:Landroid/widget/TextView;
const v11, 0x7f0a0405
move-object/from16 v0, p2
invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v11
iput-object v11, v4, Lcom/pinguo/camera360/order/adapter/OrderListAdapter$ViewHolder;->mStateChangedView:Landroid/view/View;
move-object/from16 v0, p2
invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
:goto_5d
move-object/from16 v0, p0
iget-object v11, v0, Lcom/pinguo/camera360/order/adapter/OrderListAdapter;->mOrderList:Ljava/util/List;
if-eqz v11, :cond_fc
move-object/from16 v0, p0
iget-object v11, v0, Lcom/pinguo/camera360/order/adapter/OrderListAdapter;->mOrderList:Ljava/util/List;
invoke-interface {v11}, Ljava/util/List;->size()I
move-result v11
move/from16 v0, p1
if-le v11, v0, :cond_fc
move-object/from16 v0, p0
iget-object v11, v0, Lcom/pinguo/camera360/order/adapter/OrderListAdapter;->mOrderList:Ljava/util/List;
move/from16 v0, p1
invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/order/model/OrderBean;
if-eqz v1, :cond_fc
const-string/jumbo v9, ""
:try_start_80
iget-object v11, v1, Lcom/pinguo/camera360/order/model/OrderBean;->detail:Ljava/util/List;
if-eqz v11, :cond_a7
iget-object v11, v1, Lcom/pinguo/camera360/order/model/OrderBean;->detail:Ljava/util/List;
invoke-interface {v11}, Ljava/util/List;->size()I
move-result v7
const/4 v6, 0x0
:goto_8b
if-lt v6, v7, :cond_105
const-string/jumbo v11, "/"
invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v11
if-eqz v11, :cond_a7
const/4 v11, 0x0
invoke-virtual {v9}, Ljava/lang/String;->length()I
move-result v12
const-string/jumbo v13, "/"
invoke-virtual {v13}, Ljava/lang/String;->length()I
move-result v13
sub-int/2addr v12, v13
invoke-virtual {v9, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;
:try_end_a6
.catch Ljava/lang/Exception; {:try_start_80 .. :try_end_a6} :catch_138
move-result-object v9
:goto_a7
:cond_a7
iget-object v11, v4, Lcom/pinguo/camera360/order/adapter/OrderListAdapter$ViewHolder;->mTitleTV:Landroid/widget/TextView;
invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v11, v4, Lcom/pinguo/camera360/order/adapter/OrderListAdapter$ViewHolder;->mStatusTV:Landroid/widget/TextView;
iget-object v12, v1, Lcom/pinguo/camera360/order/model/OrderBean;->showStatus:Ljava/lang/String;
invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v11, v4, Lcom/pinguo/camera360/order/adapter/OrderListAdapter$ViewHolder;->mTimeTV:Landroid/widget/TextView;
iget-wide v12, v1, Lcom/pinguo/camera360/order/model/OrderBean;->createTime:J
const-wide/16 v14, 0x3e8
mul-long/2addr v12, v14
const-string/jumbo v14, "yyyy-MM-dd HH:mm:ss"
invoke-static {v12, v13, v14}, Lcom/pinguo/lib/util/TimeUtils;->getStringDate(JLjava/lang/String;)Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v10, v1, Lcom/pinguo/camera360/order/model/OrderBean;->status:Ljava/lang/String;
const-string/jumbo v11, "1"
invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_14d
const v5, 0x7f020344
:goto_d2
iget-object v11, v4, Lcom/pinguo/camera360/order/adapter/OrderListAdapter$ViewHolder;->mStateChangedView:Landroid/view/View;
const/16 v12, 0x8
invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v11, v0, Lcom/pinguo/camera360/order/adapter/OrderListAdapter;->mStateChangedOrderList:Ljava/util/List;
if-eqz v11, :cond_f7
move-object/from16 v0, p0
iget-object v11, v0, Lcom/pinguo/camera360/order/adapter/OrderListAdapter;->mStateChangedOrderList:Ljava/util/List;
invoke-interface {v11}, Ljava/util/List;->size()I
move-result v11
if-lez v11, :cond_f7
move-object/from16 v0, p0
iget-object v11, v0, Lcom/pinguo/camera360/order/adapter/OrderListAdapter;->mStateChangedOrderList:Ljava/util/List;
invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v11
:cond_f1
invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
move-result v12
if-nez v12, :cond_1ec
:cond_f7
:goto_f7
iget-object v11, v4, Lcom/pinguo/camera360/order/adapter/OrderListAdapter$ViewHolder;->mIconIV:Landroid/widget/ImageView;
invoke-virtual {v11, v5}, Landroid/widget/ImageView;->setImageResource(I)V
:cond_fc
return-object p2
:cond_fd
invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/camera360/order/adapter/OrderListAdapter$ViewHolder;
goto/16 :goto_5d
:cond_105
:try_start_105
iget-object v11, v1, Lcom/pinguo/camera360/order/model/OrderBean;->detail:Ljava/util/List;
invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/order/model/OrderBean$MagicData;
new-instance v11, Ljava/lang/StringBuilder;
invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v12
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v12, v2, Lcom/pinguo/camera360/order/model/OrderBean$MagicData;->productName:Ljava/lang/String;
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
new-instance v11, Ljava/lang/StringBuilder;
invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v12
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v12, "/"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_133
.catch Ljava/lang/Exception; {:try_start_105 .. :try_end_133} :catch_138
move-result-object v9
add-int/lit8 v6, v6, 0x1
goto/16 :goto_8b
:catch_138
move-exception v3
invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
move-object/from16 v0, p0
iget-object v11, v0, Lcom/pinguo/camera360/order/adapter/OrderListAdapter;->TAG:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v12
invoke-static {v11, v12}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_a7
:cond_14d
const-string/jumbo v11, "102"
invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_15b
const v5, 0x7f020343
goto/16 :goto_d2
:cond_15b
const-string/jumbo v11, "104"
invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_169
const v5, 0x7f020325
goto/16 :goto_d2
:cond_169
const-string/jumbo v11, "109"
invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_177
const v5, 0x7f02032f
goto/16 :goto_d2
:cond_177
const-string/jumbo v11, "108"
invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_185
const v5, 0x7f02033d
goto/16 :goto_d2
:cond_185
const-string/jumbo v11, "107"
invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_193
const v5, 0x7f02033e
goto/16 :goto_d2
:cond_193
const-string/jumbo v11, "103"
invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_1a1
const v5, 0x7f020330
goto/16 :goto_d2
:cond_1a1
const-string/jumbo v11, "106"
invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_1af
const v5, 0x7f02033f
goto/16 :goto_d2
:cond_1af
const-string/jumbo v11, "101"
invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_1bd
const v5, 0x7f02032f
goto/16 :goto_d2
:cond_1bd
const-string/jumbo v11, "2"
invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_1cb
const v5, 0x7f02032f
goto/16 :goto_d2
:cond_1cb
const-string/jumbo v11, "105"
invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_1d9
const v5, 0x7f02032f
goto/16 :goto_d2
:cond_1d9
const-string/jumbo v11, "3"
invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_1e7
const v5, 0x7f02033d
goto/16 :goto_d2
:cond_1e7
const v5, 0x7f0201fd
goto/16 :goto_d2
:cond_1ec
invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/pinguo/camera360/mycenter/PGOrderMessage;
iget-object v12, v8, Lcom/pinguo/camera360/mycenter/PGOrderMessage;->logic:Ljava/lang/String;
iget-object v13, v1, Lcom/pinguo/camera360/order/model/OrderBean;->oid:Ljava/lang/String;
invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v12
if-eqz v12, :cond_f1
iget-object v11, v4, Lcom/pinguo/camera360/order/adapter/OrderListAdapter$ViewHolder;->mStateChangedView:Landroid/view/View;
const/4 v12, 0x0
invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V
goto/16 :goto_f7
.end method
.method public setOrderList(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/order/adapter/OrderListAdapter;->mOrderList:Ljava/util/List;
return-void
.end method
.method public setOrderStatusChangedList(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/order/adapter/OrderListAdapter;->mStateChangedOrderList:Ljava/util/List;
return-void
.end method