.class  Lcom/pinguo/share/at/AtActivity$4;
.super Ljava/lang/Object;
.source "AtActivity.java"
.implements Lcom/pinguo/share/at/IAtProcess;
.field final synthetic this$0:Lcom/pinguo/share/at/AtActivity;
.method constructor <init>(Lcom/pinguo/share/at/AtActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/at/AtActivity$4;->this$0:Lcom/pinguo/share/at/AtActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public afterThread()V
.registers 3
const-string/jumbo v0, "AtActivity"
const-string/jumbo v1, "\u83b7\u53d6AT\u5217\u8868\u7ebf\u7a0b\u7ed3\u675f"
invoke-static {v0, v1}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/share/at/AtActivity$4;->this$0:Lcom/pinguo/share/at/AtActivity;
#getter for: Lcom/pinguo/share/at/AtActivity;->myHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/share/at/AtActivity;->access$5(Lcom/pinguo/share/at/AtActivity;)Landroid/os/Handler;
move-result-object v0
const/4 v1, 0x3
invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
return-void
.end method
.method public beforeSave(Lcom/pinguo/share/at/AtBean;)V
.registers 4
iget-object v1, p0, Lcom/pinguo/share/at/AtActivity$4;->this$0:Lcom/pinguo/share/at/AtActivity;
#getter for: Lcom/pinguo/share/at/AtActivity;->mCanceledResult:Z
invoke-static {v1}, Lcom/pinguo/share/at/AtActivity;->access$6(Lcom/pinguo/share/at/AtActivity;)Z
move-result v1
if-eqz v1, :cond_9
:goto_8
:cond_8
return-void
:cond_9
iget-object v1, p0, Lcom/pinguo/share/at/AtActivity$4;->this$0:Lcom/pinguo/share/at/AtActivity;
#getter for: Lcom/pinguo/share/at/AtActivity;->mNowMiddle:Landroid/view/View;
invoke-static {v1}, Lcom/pinguo/share/at/AtActivity;->access$8(Lcom/pinguo/share/at/AtActivity;)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/share/at/AtBean;
if-eqz p1, :cond_8
if-eqz v0, :cond_8
invoke-virtual {v0}, Lcom/pinguo/share/at/AtBean;->getmLastestKeys()Ljava/util/LinkedList;
move-result-object v1
invoke-virtual {p1, v1}, Lcom/pinguo/share/at/AtBean;->setmLastestKeys(Ljava/util/LinkedList;)V
goto :goto_8
.end method
.method public beforeThread()V
.registers 1
return-void
.end method
.method public fail()V
.registers 3
iget-object v0, p0, Lcom/pinguo/share/at/AtActivity$4;->this$0:Lcom/pinguo/share/at/AtActivity;
#getter for: Lcom/pinguo/share/at/AtActivity;->mCanceledResult:Z
invoke-static {v0}, Lcom/pinguo/share/at/AtActivity;->access$6(Lcom/pinguo/share/at/AtActivity;)Z
move-result v0
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/pinguo/share/at/AtActivity$4;->this$0:Lcom/pinguo/share/at/AtActivity;
const/4 v1, 0x0
#setter for: Lcom/pinguo/share/at/AtActivity;->mCanceledResult:Z
invoke-static {v0, v1}, Lcom/pinguo/share/at/AtActivity;->access$7(Lcom/pinguo/share/at/AtActivity;Z)V
:goto_e
return-void
:cond_f
const-string/jumbo v0, "AtActivity"
const-string/jumbo v1, "\u83b7\u53d6\u5217\u8868\u5931\u8d25\u6d88\u606f\u53d1\u51fa"
invoke-static {v0, v1}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/share/at/AtActivity$4;->this$0:Lcom/pinguo/share/at/AtActivity;
#getter for: Lcom/pinguo/share/at/AtActivity;->myHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/share/at/AtActivity;->access$5(Lcom/pinguo/share/at/AtActivity;)Landroid/os/Handler;
move-result-object v0
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
goto :goto_e
.end method
.method public finish(Lcom/pinguo/share/at/AtBean;)V
.registers 19
if-nez p1, :cond_c
const-string/jumbo v13, "AtActivity"
const-string/jumbo v14, "atBean object is null"
invoke-static {v13, v14}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_b
:goto_b
return-void
:cond_c
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/share/at/AtActivity$4;->this$0:Lcom/pinguo/share/at/AtActivity;
#getter for: Lcom/pinguo/share/at/AtActivity;->mCanceledResult:Z
invoke-static {v13}, Lcom/pinguo/share/at/AtActivity;->access$6(Lcom/pinguo/share/at/AtActivity;)Z
move-result v13
if-eqz v13, :cond_1f
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/share/at/AtActivity$4;->this$0:Lcom/pinguo/share/at/AtActivity;
const/4 v14, 0x0
#setter for: Lcom/pinguo/share/at/AtActivity;->mCanceledResult:Z
invoke-static {v13, v14}, Lcom/pinguo/share/at/AtActivity;->access$7(Lcom/pinguo/share/at/AtActivity;Z)V
goto :goto_b
:cond_1f
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/share/at/AtActivity$4;->this$0:Lcom/pinguo/share/at/AtActivity;
#getter for: Lcom/pinguo/share/at/AtActivity;->mNowMiddle:Landroid/view/View;
invoke-static {v13}, Lcom/pinguo/share/at/AtActivity;->access$8(Lcom/pinguo/share/at/AtActivity;)Landroid/view/View;
move-result-object v13
invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v9
check-cast v9, Lcom/pinguo/share/at/AtBean;
const/4 v7, 0x0
new-instance v10, Ljava/util/HashMap;
invoke-direct {v10}, Ljava/util/HashMap;-><init>()V
if-eqz v9, :cond_145
invoke-virtual {v9}, Lcom/pinguo/share/at/AtBean;->getLastestAttention()Ljava/util/List;
move-result-object v7
invoke-virtual {v9}, Lcom/pinguo/share/at/AtBean;->getmAttentionMap()Ljava/util/Map;
move-result-object v13
if-eqz v13, :cond_56
invoke-virtual {v9}, Lcom/pinguo/share/at/AtBean;->getmAttentionMap()Ljava/util/Map;
move-result-object v13
invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v13
invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_50
:cond_50
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v13
if-nez v13, :cond_12b
:goto_56
:cond_56
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/share/at/AtActivity$4;->this$0:Lcom/pinguo/share/at/AtActivity;
#getter for: Lcom/pinguo/share/at/AtActivity;->mNowMiddle:Landroid/view/View;
invoke-static {v13}, Lcom/pinguo/share/at/AtActivity;->access$8(Lcom/pinguo/share/at/AtActivity;)Landroid/view/View;
move-result-object v13
move-object/from16 v0, p1
invoke-virtual {v13, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/at/AtBean;->getLastTime()J
move-result-wide v13
sput-wide v13, Lcom/pinguo/share/at/MyListView;->nowtime:J
const-string/jumbo v13, "sina"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/at/AtBean;->getSite_code()Ljava/lang/String;
move-result-object v14
invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v13
if-eqz v13, :cond_15c
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/share/at/AtActivity$4;->this$0:Lcom/pinguo/share/at/AtActivity;
#getter for: Lcom/pinguo/share/at/AtActivity;->mLastSelectedSina:[Ljava/lang/String;
invoke-static {v13}, Lcom/pinguo/share/at/AtActivity;->access$9(Lcom/pinguo/share/at/AtActivity;)[Ljava/lang/String;
move-result-object v13
if-eqz v13, :cond_15c
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/share/at/AtActivity$4;->this$0:Lcom/pinguo/share/at/AtActivity;
#getter for: Lcom/pinguo/share/at/AtActivity;->mLastSelectedSina:[Ljava/lang/String;
invoke-static {v13}, Lcom/pinguo/share/at/AtActivity;->access$9(Lcom/pinguo/share/at/AtActivity;)[Ljava/lang/String;
move-result-object v13
array-length v13, v13
if-lez v13, :cond_15c
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/share/at/AtActivity$4;->this$0:Lcom/pinguo/share/at/AtActivity;
#getter for: Lcom/pinguo/share/at/AtActivity;->mLastSelectedSina:[Ljava/lang/String;
invoke-static {v13}, Lcom/pinguo/share/at/AtActivity;->access$9(Lcom/pinguo/share/at/AtActivity;)[Ljava/lang/String;
move-result-object v14
array-length v15, v14
const/4 v13, 0x0
:goto_95
if-lt v13, v15, :cond_14b
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/share/at/AtActivity$4;->this$0:Lcom/pinguo/share/at/AtActivity;
const/4 v14, 0x0
#setter for: Lcom/pinguo/share/at/AtActivity;->mLastSelectedSina:[Ljava/lang/String;
invoke-static {v13, v14}, Lcom/pinguo/share/at/AtActivity;->access$10(Lcom/pinguo/share/at/AtActivity;[Ljava/lang/String;)V
:goto_9f
:cond_9f
if-eqz v7, :cond_d1
invoke-interface {v7}, Ljava/util/List;->size()I
move-result v13
if-lez v13, :cond_d1
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_b0
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v13
if-nez v13, :cond_1a4
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v13
if-lez v13, :cond_d1
new-instance v8, Lcom/pinguo/share/at/AtAttentionBean;
invoke-direct {v8}, Lcom/pinguo/share/at/AtAttentionBean;-><init>()V
const/4 v13, 0x1
invoke-virtual {v8, v13}, Lcom/pinguo/share/at/AtAttentionBean;->setTag(Z)V
const-string/jumbo v13, "\u6700\u8fd1@\u7684\u597d\u53cb"
invoke-virtual {v8, v13}, Lcom/pinguo/share/at/AtAttentionBean;->setGroupType(Ljava/lang/String;)V
invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
:cond_d1
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/at/AtBean;->getmAttentionMap()Ljava/util/Map;
move-result-object v1
if-eqz v1, :cond_113
invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v13
invoke-interface {v13}, Ljava/util/Collection;->size()I
move-result v13
if-lez v13, :cond_113
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/at/AtBean;->getmAttentionMap()Ljava/util/Map;
move-result-object v13
invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v13
invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v6
:cond_f2
:goto_f2
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v13
if-nez v13, :cond_1cf
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v13
if-lez v13, :cond_113
new-instance v12, Lcom/pinguo/share/at/AtAttentionBean;
invoke-direct {v12}, Lcom/pinguo/share/at/AtAttentionBean;-><init>()V
const/4 v13, 0x1
invoke-virtual {v12, v13}, Lcom/pinguo/share/at/AtAttentionBean;->setTag(Z)V
const-string/jumbo v13, "\u5173\u6ce8\u7684\u597d\u53cb"
invoke-virtual {v12, v13}, Lcom/pinguo/share/at/AtAttentionBean;->setGroupType(Ljava/lang/String;)V
invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
:cond_113
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v13
if-lez v13, :cond_b
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/share/at/AtActivity$4;->this$0:Lcom/pinguo/share/at/AtActivity;
#getter for: Lcom/pinguo/share/at/AtActivity;->myHandler:Landroid/os/Handler;
invoke-static {v13}, Lcom/pinguo/share/at/AtActivity;->access$5(Lcom/pinguo/share/at/AtActivity;)Landroid/os/Handler;
move-result-object v13
const/4 v14, 0x1
invoke-virtual {v13, v14, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v13
invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V
goto/16 :goto_b
:cond_12b
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/share/at/AtAttentionBean;
invoke-virtual {v3}, Lcom/pinguo/share/at/AtAttentionBean;->isSelected()Z
move-result v13
if-eqz v13, :cond_50
invoke-virtual {v3}, Lcom/pinguo/share/at/AtAttentionBean;->getUid()Ljava/lang/String;
move-result-object v13
const/4 v14, 0x1
invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v14
invoke-interface {v10, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_50
:cond_145
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/at/AtBean;->getLastestAttention()Ljava/util/List;
move-result-object v7
goto/16 :goto_56
:cond_14b
aget-object v11, v14, v13
const/16 v16, 0x1
invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v16
move-object/from16 v0, v16
invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v13, v13, 0x1
goto/16 :goto_95
:cond_15c
const-string/jumbo v13, "qq"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/at/AtBean;->getSite_code()Ljava/lang/String;
move-result-object v14
invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v13
if-eqz v13, :cond_9f
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/share/at/AtActivity$4;->this$0:Lcom/pinguo/share/at/AtActivity;
#getter for: Lcom/pinguo/share/at/AtActivity;->mLastSelectedQq:[Ljava/lang/String;
invoke-static {v13}, Lcom/pinguo/share/at/AtActivity;->access$11(Lcom/pinguo/share/at/AtActivity;)[Ljava/lang/String;
move-result-object v13
if-eqz v13, :cond_9f
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/share/at/AtActivity$4;->this$0:Lcom/pinguo/share/at/AtActivity;
#getter for: Lcom/pinguo/share/at/AtActivity;->mLastSelectedQq:[Ljava/lang/String;
invoke-static {v13}, Lcom/pinguo/share/at/AtActivity;->access$11(Lcom/pinguo/share/at/AtActivity;)[Ljava/lang/String;
move-result-object v13
array-length v13, v13
if-lez v13, :cond_9f
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/share/at/AtActivity$4;->this$0:Lcom/pinguo/share/at/AtActivity;
#getter for: Lcom/pinguo/share/at/AtActivity;->mLastSelectedQq:[Ljava/lang/String;
invoke-static {v13}, Lcom/pinguo/share/at/AtActivity;->access$11(Lcom/pinguo/share/at/AtActivity;)[Ljava/lang/String;
move-result-object v14
array-length v15, v14
const/4 v13, 0x0
:goto_188
if-lt v13, v15, :cond_194
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/share/at/AtActivity$4;->this$0:Lcom/pinguo/share/at/AtActivity;
const/4 v14, 0x0
#setter for: Lcom/pinguo/share/at/AtActivity;->mLastSelectedQq:[Ljava/lang/String;
invoke-static {v13, v14}, Lcom/pinguo/share/at/AtActivity;->access$12(Lcom/pinguo/share/at/AtActivity;[Ljava/lang/String;)V
goto/16 :goto_9f
:cond_194
aget-object v11, v14, v13
const/16 v16, 0x1
invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v16
move-object/from16 v0, v16
invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v13, v13, 0x1
goto :goto_188
:cond_1a4
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/share/at/AtAttentionBean;
if-eqz v10, :cond_1b2
invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z
move-result v13
if-eqz v13, :cond_1bb
:cond_1b2
const/4 v13, 0x0
invoke-virtual {v3, v13}, Lcom/pinguo/share/at/AtAttentionBean;->setSelected(Z)V
:goto_1b6
:cond_1b6
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto/16 :goto_b0
:cond_1bb
invoke-virtual {v3}, Lcom/pinguo/share/at/AtAttentionBean;->getUid()Ljava/lang/String;
move-result-object v13
invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v13
if-eqz v13, :cond_1cd
const/4 v5, 0x1
:goto_1c6
if-eqz v5, :cond_1b6
const/4 v13, 0x1
invoke-virtual {v3, v13}, Lcom/pinguo/share/at/AtAttentionBean;->setSelected(Z)V
goto :goto_1b6
:cond_1cd
const/4 v5, 0x0
goto :goto_1c6
:cond_1cf
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/share/at/AtAttentionBean;
if-eqz v10, :cond_1ee
invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z
move-result v13
if-nez v13, :cond_1ee
invoke-virtual {v3}, Lcom/pinguo/share/at/AtAttentionBean;->getUid()Ljava/lang/String;
move-result-object v13
invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v13
if-eqz v13, :cond_1f9
const/4 v5, 0x1
:goto_1e8
if-eqz v5, :cond_1ee
const/4 v13, 0x1
invoke-virtual {v3, v13}, Lcom/pinguo/share/at/AtAttentionBean;->setSelected(Z)V
:cond_1ee
invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v13
if-nez v13, :cond_f2
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto/16 :goto_f2
:cond_1f9
const/4 v5, 0x0
goto :goto_1e8
.end method