.class  Lcom/pinguo/camera360/order/OrderListActivity$2;
.super Ljava/lang/Object;
.source "OrderListActivity.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/order/OrderListActivity;
.method constructor <init>(Lcom/pinguo/camera360/order/OrderListActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/order/OrderListActivity$2;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 15
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/order/OrderListActivity$2; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v6, p0, Lcom/pinguo/camera360/order/OrderListActivity$2;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;
#getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mOrderAdapter:Lcom/pinguo/camera360/order/adapter/OrderListAdapter;
invoke-static {v6}, Lcom/pinguo/camera360/order/OrderListActivity;->access$5(Lcom/pinguo/camera360/order/OrderListActivity;)Lcom/pinguo/camera360/order/adapter/OrderListAdapter;
move-result-object v6
add-int/lit8 v7, p3, -0x1
invoke-virtual {v6, v7}, Lcom/pinguo/camera360/order/adapter/OrderListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/order/model/OrderBean;
if-eqz v0, :cond_47
iget-object v3, v0, Lcom/pinguo/camera360/order/model/OrderBean;->oid:Ljava/lang/String;
new-instance v1, Landroid/content/Intent;
iget-object v6, p0, Lcom/pinguo/camera360/order/OrderListActivity$2;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;
const-class v7, Lcom/pinguo/camera360/order/OrderDetailActivity;
invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v6, "oid"
invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v6, p0, Lcom/pinguo/camera360/order/OrderListActivity$2;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;
invoke-virtual {v6, v1}, Lcom/pinguo/camera360/order/OrderListActivity;->startActivity(Landroid/content/Intent;)V
iget-object v6, p0, Lcom/pinguo/camera360/order/OrderListActivity$2;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;
#getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mStateChangedOrderList:Ljava/util/List;
invoke-static {v6}, Lcom/pinguo/camera360/order/OrderListActivity;->access$6(Lcom/pinguo/camera360/order/OrderListActivity;)Ljava/util/List;
move-result-object v6
if-eqz v6, :cond_47
iget-object v6, p0, Lcom/pinguo/camera360/order/OrderListActivity$2;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;
#getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mStateChangedOrderList:Ljava/util/List;
invoke-static {v6}, Lcom/pinguo/camera360/order/OrderListActivity;->access$6(Lcom/pinguo/camera360/order/OrderListActivity;)Ljava/util/List;
move-result-object v6
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v6
if-lez v6, :cond_47
iget-object v6, p0, Lcom/pinguo/camera360/order/OrderListActivity$2;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;
#getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mStateChangedOrderList:Ljava/util/List;
invoke-static {v6}, Lcom/pinguo/camera360/order/OrderListActivity;->access$6(Lcom/pinguo/camera360/order/OrderListActivity;)Ljava/util/List;
move-result-object v6
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v2
const/4 v5, 0x0
:goto_45
if-lt v5, v2, :cond_48
:goto_47
:cond_47
const-string v1, " - Lcom/pinguo/camera360/order/OrderListActivity$2; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_48
iget-object v6, p0, Lcom/pinguo/camera360/order/OrderListActivity$2;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;
#getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mStateChangedOrderList:Ljava/util/List;
invoke-static {v6}, Lcom/pinguo/camera360/order/OrderListActivity;->access$6(Lcom/pinguo/camera360/order/OrderListActivity;)Ljava/util/List;
move-result-object v6
invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/camera360/mycenter/PGOrderMessage;
invoke-static {}, Lcom/pinguo/camera360/order/OrderListActivity;->access$7()Ljava/lang/String;
move-result-object v6
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "onItemClick orderMessage = "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v8, v4, Lcom/pinguo/camera360/mycenter/PGOrderMessage;->logic:Ljava/lang/String;
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string/jumbo v8, " oid = "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v6, v4, Lcom/pinguo/camera360/mycenter/PGOrderMessage;->logic:Ljava/lang/String;
invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_a1
iget-object v6, p0, Lcom/pinguo/camera360/order/OrderListActivity$2;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;
#getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mStateChangedOrderList:Ljava/util/List;
invoke-static {v6}, Lcom/pinguo/camera360/order/OrderListActivity;->access$6(Lcom/pinguo/camera360/order/OrderListActivity;)Ljava/util/List;
move-result-object v6
invoke-interface {v6, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;
invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;
move-result-object v6
iget-object v7, p0, Lcom/pinguo/camera360/order/OrderListActivity$2;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;
#getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mStateChangedOrderList:Ljava/util/List;
invoke-static {v7}, Lcom/pinguo/camera360/order/OrderListActivity;->access$6(Lcom/pinguo/camera360/order/OrderListActivity;)Ljava/util/List;
move-result-object v7
invoke-virtual {v6, v7}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->saveStateChangedOrderList(Ljava/util/List;)V
invoke-static {}, Lcom/pinguo/camera360/order/OrderListActivity;->access$7()Ljava/lang/String;
move-result-object v6
const-string/jumbo v7, "remmove"
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_47
:cond_a1
add-int/lit8 v5, v5, 0x1
goto :goto_45
.end method