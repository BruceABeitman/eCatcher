.class  Lcom/pinguo/camera360/order/OrderListActivity$1;
.super Ljava/lang/Object;
.source "OrderListActivity.java"
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;
.field private static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I
.field final synthetic this$0:Lcom/pinguo/camera360/order/OrderListActivity;
.method static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
.registers 3
sget-object v0, Lcom/pinguo/camera360/order/OrderListActivity$1;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
:try_start_c
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:try_start_15
:goto_15
:try_end_15
.catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_44
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_end_1e
.catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_42
:try_start_1e
:goto_1e
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I
move-result v1
const/4 v2, 0x5
aput v2, v0, v1
:try_end_27
.catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_40
:goto_27
:try_start_27
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:goto_30
:try_start_30
:try_end_30
.catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_3e
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:goto_39
:try_end_39
.catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_3c
sput-object v0, Lcom/pinguo/camera360/order/OrderListActivity$1;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I
goto :goto_4
:catch_3c
move-exception v1
goto :goto_39
:catch_3e
move-exception v1
goto :goto_30
:catch_40
move-exception v1
goto :goto_27
:catch_42
move-exception v1
goto :goto_1e
:catch_44
move-exception v1
goto :goto_15
.end method
.method constructor <init>(Lcom/pinguo/camera360/order/OrderListActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/order/OrderListActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/order/OrderListActivity$1;)Lcom/pinguo/camera360/order/OrderListActivity;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderListActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;
return-object v0
.end method
.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.registers 7
invoke-static {}, Lcom/pinguo/camera360/order/OrderListActivity$1;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
move-result-object v1
invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getCurrentMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
move-result-object v2
invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_3a
:cond_11
:goto_11
return-void
:pswitch_12
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;
#calls: Lcom/pinguo/camera360/order/OrderListActivity;->pullOrderChangedData()V
invoke-static {v1}, Lcom/pinguo/camera360/order/OrderListActivity;->access$0(Lcom/pinguo/camera360/order/OrderListActivity;)V
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;
#calls: Lcom/pinguo/camera360/order/OrderListActivity;->refreshOrderList()V
invoke-static {v1}, Lcom/pinguo/camera360/order/OrderListActivity;->access$1(Lcom/pinguo/camera360/order/OrderListActivity;)V
goto :goto_11
:pswitch_1d
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;
#calls: Lcom/pinguo/camera360/order/OrderListActivity;->loadNextPage()I
invoke-static {v1}, Lcom/pinguo/camera360/order/OrderListActivity;->access$2(Lcom/pinguo/camera360/order/OrderListActivity;)I
move-result v0
const/4 v1, -0x1
if-eq v0, v1, :cond_29
const/4 v1, -0x2
if-ne v0, v1, :cond_11
:cond_29
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderListActivity$1;->this$0:Lcom/pinguo/camera360/order/OrderListActivity;
#getter for: Lcom/pinguo/camera360/order/OrderListActivity;->mHandler:Landroid/os/Handler;
invoke-static {v1}, Lcom/pinguo/camera360/order/OrderListActivity;->access$3(Lcom/pinguo/camera360/order/OrderListActivity;)Landroid/os/Handler;
move-result-object v1
new-instance v2, Lcom/pinguo/camera360/order/OrderListActivity$1$1;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/order/OrderListActivity$1$1;-><init>(Lcom/pinguo/camera360/order/OrderListActivity$1;)V
const-wide/16 v3, 0xc8
invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
goto :goto_11
:pswitch_data_3a
.packed-switch 0x2
:pswitch_12
:pswitch_1d
.end packed-switch
.end method