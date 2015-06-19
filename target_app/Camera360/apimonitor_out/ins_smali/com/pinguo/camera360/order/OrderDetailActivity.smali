.class public Lcom/pinguo/camera360/order/OrderDetailActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "OrderDetailActivity.java"
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pinguo/camera360/order/PaymentFragment$PaymentResult;
.field private static final LOGISTICS_URL:Ljava/lang/String; = "http://m.kuaidi100.com/index_all.html?type=%s&postid=%s"
.field public static final ORDER_DETAIL_BACK_KEY:Ljava/lang/String; = "back"
.field public static final ORDER_DETAIL_OID_KEY:Ljava/lang/String; = "oid"
.field private static final TAG:Ljava/lang/String;
.field private mBackToCameraFlag:Z
.field private mCompanyCode:Ljava/lang/String;
.field private mContentBoxView:Landroid/view/View;
.field private mHelpMessageSent:Z
.field private mLogisticsBtn:Landroid/widget/Button;
.field private mLogisticsNum:Ljava/lang/String;
.field private mNetworkIV:Landroid/widget/ImageView;
.field  mNetworkRefreshAnim:Landroid/view/animation/Animation;
.field private mOrderDetailFuture:Lcom/pinguo/lib/os/AsyncFuture;
.field private mPayBtn:Landroid/widget/Button;
.field private mPaymentFragment:Lcom/pinguo/camera360/order/PaymentFragment;
.field private mPgOrder:Lcom/pinguo/camera360/order/model/Order;
.field private mRetryBoxView:Landroid/view/View;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/order/OrderDetailActivity;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/order/OrderDetailActivity;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mCompanyCode:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mLogisticsNum:Ljava/lang/String;
iput-boolean v1, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mHelpMessageSent:Z
iput-boolean v1, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mBackToCameraFlag:Z
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/order/OrderDetailActivity;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mNetworkIV:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic access$1()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/camera360/order/OrderDetailActivity;->TAG:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/order/OrderDetailActivity;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mRetryBoxView:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/order/OrderDetailActivity;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mContentBoxView:Landroid/view/View;
return-object v0
.end method
.method private getStatusIcon(Ljava/lang/String;)I
.registers 4
const-string/jumbo v1, "1"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_d
const v0, 0x7f02032e
:goto_c
return v0
:cond_d
const-string/jumbo v1, "102"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1a
const v0, 0x7f02032d
goto :goto_c
:cond_1a
const-string/jumbo v1, "104"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_27
const v0, 0x7f020326
goto :goto_c
:cond_27
const-string/jumbo v1, "109"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_34
const v0, 0x7f020327
goto :goto_c
:cond_34
const-string/jumbo v1, "108"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_41
const v0, 0x7f020329
goto :goto_c
:cond_41
const-string/jumbo v1, "107"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_4e
const v0, 0x7f02032a
goto :goto_c
:cond_4e
const-string/jumbo v1, "103"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5b
const v0, 0x7f020328
goto :goto_c
:cond_5b
const-string/jumbo v1, "106"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_68
const v0, 0x7f02032b
goto :goto_c
:cond_68
const-string/jumbo v1, "101"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_75
const v0, 0x7f020327
goto :goto_c
:cond_75
const-string/jumbo v1, "2"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_82
const v0, 0x7f020327
goto :goto_c
:cond_82
const-string/jumbo v1, "105"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_90
const v0, 0x7f020327
goto/16 :goto_c
:cond_90
const-string/jumbo v1, "3"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_9e
const v0, 0x7f020329
goto/16 :goto_c
:cond_9e
const v0, 0x7f020327
goto/16 :goto_c
.end method
.method private hidePayMethodFragment()V
.registers 3
invoke-virtual {p0}, Lcom/pinguo/camera360/order/OrderDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mPaymentFragment:Lcom/pinguo/camera360/order/PaymentFragment;
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
return-void
.end method
.method private initAnim()V
.registers 3
const v1, 0x7f040006
invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mNetworkRefreshAnim:Landroid/view/animation/Animation;
new-instance v0, Landroid/view/animation/LinearInterpolator;
invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mNetworkRefreshAnim:Landroid/view/animation/Animation;
invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V
return-void
.end method
.method private setAddressTextView(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$Deliver;)V
.registers 5
const v1, 0x7f0a038c
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/order/OrderDetailActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget-object v1, p1, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$Deliver;->city:Ljava/lang/String;
invoke-static {v1}, Lcom/pinguo/lib/util/Util;->isDirectControlCity(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_30
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p1, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$Deliver;->city:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p1, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$Deliver;->district:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p1, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$Deliver;->address:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_2f
return-void
:cond_30
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p1, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$Deliver;->province:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p1, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$Deliver;->city:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p1, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$Deliver;->district:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p1, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$Deliver;->address:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_2f
.end method
.method private showPayMethodFragment()V
.registers 3
invoke-virtual {p0}, Lcom/pinguo/camera360/order/OrderDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mPaymentFragment:Lcom/pinguo/camera360/order/PaymentFragment;
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
return-void
.end method
.method private updateOrderDetail(Z)V
.registers 6
const/4 v1, 0x0
if-eqz p1, :cond_13
new-instance v1, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V
const/4 v2, 0x6
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setProgressStyle(I)V
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V
:cond_13
move-object v0, v1
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mOrderDetailFuture:Lcom/pinguo/lib/os/AsyncFuture;
if-eqz v2, :cond_1e
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mOrderDetailFuture:Lcom/pinguo/lib/os/AsyncFuture;
const/4 v3, 0x1
invoke-interface {v2, v3}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z
:cond_1e
invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
iget-object v3, v3, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
iget-object v3, v3, Lcom/pinguo/camera360/order/model/Order$Info;->mOrderId:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/order/model/Transaction;->getDetail(Ljava/lang/String;)Lcom/pinguo/lib/os/AsyncFuture;
move-result-object v2
iput-object v2, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mOrderDetailFuture:Lcom/pinguo/lib/os/AsyncFuture;
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mOrderDetailFuture:Lcom/pinguo/lib/os/AsyncFuture;
new-instance v3, Lcom/pinguo/camera360/order/OrderDetailActivity$1;
invoke-direct {v3, p0, v0}, Lcom/pinguo/camera360/order/OrderDetailActivity$1;-><init>(Lcom/pinguo/camera360/order/OrderDetailActivity;Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V
invoke-interface {v2, v3}, Lcom/pinguo/lib/os/AsyncFuture;->get(Lcom/pinguo/lib/os/AsyncResult;)V
return-void
.end method
.method  canShowDelivery(I)Z
.registers 3
const/16 v0, 0x68
if-eq p1, v0, :cond_14
const/16 v0, 0x69
if-eq p1, v0, :cond_14
const/16 v0, 0x6d
if-eq p1, v0, :cond_14
const/16 v0, 0x6b
if-eq p1, v0, :cond_14
const/16 v0, 0x6c
if-ne p1, v0, :cond_1e
:cond_14
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mLogisticsNum:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_1e
const/4 v0, 0x1
:goto_1d
return v0
:cond_1e
const/4 v0, 0x0
goto :goto_1d
.end method
.method public onBackPressed()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mPaymentFragment:Lcom/pinguo/camera360/order/PaymentFragment;
invoke-virtual {v0}, Lcom/pinguo/camera360/order/PaymentFragment;->isVisible()Z
move-result v0
if-eqz v0, :cond_c
invoke-direct {p0}, Lcom/pinguo/camera360/order/OrderDetailActivity;->hidePayMethodFragment()V
:goto_b
return-void
:cond_c
iget-boolean v0, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mBackToCameraFlag:Z
if-eqz v0, :cond_13
invoke-static {p0}, Lcom/pinguo/camera360/PgCameraApplication;->startCameraActivity(Landroid/content/Context;)V
:cond_13
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V
goto :goto_b
.end method
.method public onClick(Landroid/view/View;)V
.registers 13
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/order/OrderDetailActivity; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v10, 0x1
const/4 v5, 0x0
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v2
sparse-switch v2, :sswitch_data_ba
:cond_9
:goto_9
const-string v1, " - Lcom/pinguo/camera360/order/OrderDetailActivity; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:sswitch_a
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mPaymentFragment:Lcom/pinguo/camera360/order/PaymentFragment;
invoke-virtual {v2}, Lcom/pinguo/camera360/order/PaymentFragment;->isBusy()Z
move-result v2
if-nez v2, :cond_9
iget-boolean v2, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mBackToCameraFlag:Z
if-eqz v2, :cond_1a
invoke-static {p0}, Lcom/pinguo/camera360/PgCameraApplication;->startCameraActivity(Landroid/content/Context;)V
goto :goto_9
:cond_1a
invoke-virtual {p0}, Lcom/pinguo/camera360/order/OrderDetailActivity;->finish()V
goto :goto_9
:sswitch_1e
new-instance v7, Landroid/content/Intent;
const-class v2, Lcom/pinguo/camera360/feedback/Camera360FeedbackActivity;
invoke-direct {v7, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-boolean v2, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mHelpMessageSent:Z
if-nez v2, :cond_6d
const v2, 0x7f080374
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/order/OrderDetailActivity;->getString(I)Ljava/lang/String;
move-result-object v2
new-array v3, v10, [Ljava/lang/Object;
iget-object v4, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
iget-object v4, v4, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
iget-object v4, v4, Lcom/pinguo/camera360/order/model/Order$Info;->mOrderId:Ljava/lang/String;
aput-object v4, v3, v5
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
new-instance v0, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;
const-string/jumbo v2, "me"
const-wide/16 v3, -0x1
invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V
new-instance v6, Ljava/util/HashMap;
invoke-direct {v6}, Ljava/util/HashMap;-><init>()V
const-string/jumbo v2, "feedbackType"
const-string/jumbo v3, "order"
invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v2, "orderId"
iget-object v3, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
iget-object v3, v3, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
iget-object v3, v3, Lcom/pinguo/camera360/order/model/Order$Info;->mOrderId:Ljava/lang/String;
invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {v0, v6}, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->setExtra(Ljava/util/Map;)V
const-string/jumbo v2, "new_message_key"
invoke-virtual {v7, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
iput-boolean v10, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mHelpMessageSent:Z
:cond_6d
const-string/jumbo v2, "can_login_flag"
invoke-virtual {v7, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
invoke-virtual {p0, v7}, Lcom/pinguo/camera360/order/OrderDetailActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_9
:sswitch_77
new-instance v8, Landroid/content/Intent;
const-class v2, Lcom/pinguo/camera360/lib/ui/WebViewActivity;
invoke-direct {v8, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v2, "web_view_has_title_bar"
invoke-virtual {v8, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string/jumbo v2, "web_view_url"
const-string/jumbo v3, "http://m.kuaidi100.com/index_all.html?type=%s&postid=%s"
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/Object;
iget-object v9, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mCompanyCode:Ljava/lang/String;
aput-object v9, v4, v5
iget-object v5, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mLogisticsNum:Ljava/lang/String;
aput-object v5, v4, v10
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v8}, Lcom/pinguo/camera360/order/OrderDetailActivity;->startActivity(Landroid/content/Intent;)V
goto/16 :goto_9
:sswitch_a1
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mPaymentFragment:Lcom/pinguo/camera360/order/PaymentFragment;
invoke-virtual {v2}, Lcom/pinguo/camera360/order/PaymentFragment;->isHidden()Z
move-result v2
if-eqz v2, :cond_9
invoke-direct {p0}, Lcom/pinguo/camera360/order/OrderDetailActivity;->showPayMethodFragment()V
goto/16 :goto_9
:sswitch_ae
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mNetworkIV:Landroid/widget/ImageView;
iget-object v3, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mNetworkRefreshAnim:Landroid/view/animation/Animation;
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
invoke-direct {p0, v5}, Lcom/pinguo/camera360/order/OrderDetailActivity;->updateOrderDetail(Z)V
goto/16 :goto_9
:sswitch_data_ba
.sparse-switch
0x7f0a037c -> :sswitch_a
0x7f0a037d -> :sswitch_1e
0x7f0a038d -> :sswitch_77
0x7f0a038e -> :sswitch_a1
0x7f0a0391 -> :sswitch_ae
.end sparse-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 9
const-string v1, " + Lcom/pinguo/camera360/order/OrderDetailActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V
const v4, 0x7f030094
invoke-virtual {p0, v4}, Lcom/pinguo/camera360/order/OrderDetailActivity;->setContentView(I)V
const v4, 0x7f0a037c
invoke-virtual {p0, v4}, Lcom/pinguo/camera360/order/OrderDetailActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v4, Lcom/pinguo/camera360/order/model/Order;
invoke-virtual {p0}, Lcom/pinguo/camera360/order/OrderDetailActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v5
invoke-direct {v4, v5}, Lcom/pinguo/camera360/order/model/Order;-><init>(Landroid/content/Context;)V
iput-object v4, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
invoke-virtual {p0}, Lcom/pinguo/camera360/order/OrderDetailActivity;->getIntent()Landroid/content/Intent;
move-result-object v4
const-string/jumbo v5, "oid"
invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_37
iget-object v4, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
iget-object v4, v4, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
iput-object v3, v4, Lcom/pinguo/camera360/order/model/Order$Info;->mOrderId:Ljava/lang/String;
const/4 v4, 0x1
invoke-direct {p0, v4}, Lcom/pinguo/camera360/order/OrderDetailActivity;->updateOrderDetail(Z)V
:cond_37
invoke-virtual {p0}, Lcom/pinguo/camera360/order/OrderDetailActivity;->getIntent()Landroid/content/Intent;
move-result-object v4
const-string/jumbo v5, "back"
const/4 v6, 0x0
invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v4
iput-boolean v4, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mBackToCameraFlag:Z
const v4, 0x7f0a037d
invoke-virtual {p0, v4}, Lcom/pinguo/camera360/order/OrderDetailActivity;->findViewById(I)Landroid/view/View;
move-result-object v4
invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v4, 0x7f0a038d
invoke-virtual {p0, v4}, Lcom/pinguo/camera360/order/OrderDetailActivity;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/Button;
iput-object v4, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mLogisticsBtn:Landroid/widget/Button;
iget-object v4, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mLogisticsBtn:Landroid/widget/Button;
invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v4, 0x7f0a038e
invoke-virtual {p0, v4}, Lcom/pinguo/camera360/order/OrderDetailActivity;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/Button;
iput-object v4, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mPayBtn:Landroid/widget/Button;
iget-object v4, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mPayBtn:Landroid/widget/Button;
invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getIdPassportOpenState()Z
move-result v4
if-nez v4, :cond_80
iget-object v4, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mPayBtn:Landroid/widget/Button;
const/16 v5, 0x8
invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V
:cond_80
new-instance v4, Lcom/pinguo/camera360/order/PaymentFragment;
invoke-direct {v4}, Lcom/pinguo/camera360/order/PaymentFragment;-><init>()V
iput-object v4, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mPaymentFragment:Lcom/pinguo/camera360/order/PaymentFragment;
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string/jumbo v4, "arg_key_order"
iget-object v5, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
iget-object v5, v5, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
iget-object v4, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mPaymentFragment:Lcom/pinguo/camera360/order/PaymentFragment;
invoke-virtual {v4, v1}, Lcom/pinguo/camera360/order/PaymentFragment;->setArguments(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/order/OrderDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v4
invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v2
const v4, 0x7f0a038f
iget-object v5, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mPaymentFragment:Lcom/pinguo/camera360/order/PaymentFragment;
invoke-virtual {v2, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
iget-object v4, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mPaymentFragment:Lcom/pinguo/camera360/order/PaymentFragment;
invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I
const v4, 0x7f0a037e
invoke-virtual {p0, v4}, Lcom/pinguo/camera360/order/OrderDetailActivity;->findViewById(I)Landroid/view/View;
move-result-object v4
iput-object v4, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mContentBoxView:Landroid/view/View;
const v4, 0x7f0a0390
invoke-virtual {p0, v4}, Lcom/pinguo/camera360/order/OrderDetailActivity;->findViewById(I)Landroid/view/View;
move-result-object v4
iput-object v4, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mRetryBoxView:Landroid/view/View;
const v4, 0x7f0a0391
invoke-virtual {p0, v4}, Lcom/pinguo/camera360/order/OrderDetailActivity;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/ImageView;
iput-object v4, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mNetworkIV:Landroid/widget/ImageView;
iget-object v4, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mNetworkIV:Landroid/widget/ImageView;
invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-direct {p0}, Lcom/pinguo/camera360/order/OrderDetailActivity;->initAnim()V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v4
invoke-virtual {v4, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->register(Ljava/lang/Object;)V
const-string v1, " - Lcom/pinguo/camera360/order/OrderDetailActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/order/OrderDetailActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v0, Lcom/pinguo/camera360/order/OrderDetailActivity;->TAG:Ljava/lang/String;
const-string/jumbo v1, "onDestroy"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->unregister(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mOrderDetailFuture:Lcom/pinguo/lib/os/AsyncFuture;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mOrderDetailFuture:Lcom/pinguo/lib/os/AsyncFuture;
const/4 v1, 0x1
invoke-interface {v0, v1}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z
:cond_19
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V
const-string v1, " - Lcom/pinguo/camera360/order/OrderDetailActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/order/event/OrderSwitcherEvent;)V
.registers 4
invoke-virtual {p1}, Lcom/pinguo/camera360/order/event/OrderSwitcherEvent;->isTurnedOff()Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mPayBtn:Landroid/widget/Button;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
:cond_d
return-void
.end method
.method public onPaymentResultError(ILjava/lang/String;)V
.registers 3
return-void
.end method
.method public onPaymentResultOrderCreateSuccess()V
.registers 1
return-void
.end method
.method public onPaymentResultSuccess()V
.registers 4
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/pinguo/camera360/order/OrderDetailPayResultActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v1, "oid"
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
iget-object v2, v2, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
iget-object v2, v2, Lcom/pinguo/camera360/order/model/Order$Info;->mOrderId:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/order/OrderDetailActivity;->startActivity(Landroid/content/Intent;)V
const/4 v1, 0x1
invoke-direct {p0, v1}, Lcom/pinguo/camera360/order/OrderDetailActivity;->updateOrderDetail(Z)V
return-void
.end method
.method public updateOrderDetailView(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data;)V
.registers 29
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mContentBoxView:Landroid/view/View;
move-object/from16 v20, v0
const/16 v21, 0x0
invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mRetryBoxView:Landroid/view/View;
move-object/from16 v20, v0
invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I
move-result v20
if-nez v20, :cond_22
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mRetryBoxView:Landroid/view/View;
move-object/from16 v20, v0
const/16 v21, 0x8
invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V
:cond_22
const v20, 0x7f0a037f
move-object/from16 v0, p0
move/from16 v1, v20
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/order/OrderDetailActivity;->findViewById(I)Landroid/view/View;
move-result-object v12
check-cast v12, Landroid/widget/TextView;
move-object/from16 v0, p1
iget-object v0, v0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data;->oid:Ljava/lang/String;
move-object/from16 v20, v0
move-object/from16 v0, v20
invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v20, 0x7f0a0380
move-object/from16 v0, p0
move/from16 v1, v20
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/order/OrderDetailActivity;->findViewById(I)Landroid/view/View;
move-result-object v16
check-cast v16, Landroid/widget/ImageView;
move-object/from16 v0, p1
iget v0, v0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data;->status:I
move/from16 v20, v0
invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v20
move-object/from16 v0, p0
move-object/from16 v1, v20
invoke-direct {v0, v1}, Lcom/pinguo/camera360/order/OrderDetailActivity;->getStatusIcon(Ljava/lang/String;)I
move-result v20
move-object/from16 v0, v16
move/from16 v1, v20
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V
const v20, 0x7f0a0381
move-object/from16 v0, p0
move/from16 v1, v20
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/order/OrderDetailActivity;->findViewById(I)Landroid/view/View;
move-result-object v15
check-cast v15, Landroid/widget/TextView;
move-object/from16 v0, p1
iget-object v0, v0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data;->showStatus:Ljava/lang/String;
move-object/from16 v20, v0
move-object/from16 v0, v20
invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v20, 0x7f0a0382
move-object/from16 v0, p0
move/from16 v1, v20
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/order/OrderDetailActivity;->findViewById(I)Landroid/view/View;
move-result-object v7
check-cast v7, Landroid/widget/TextView;
move-object/from16 v0, p1
iget-wide v0, v0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data;->createTime:J
move-wide/from16 v20, v0
const-wide/16 v22, 0x3e8
mul-long v20, v20, v22
const-string/jumbo v22, "yyyy-MM-dd HH:mm:ss"
invoke-static/range {v20 .. v22}, Lcom/pinguo/lib/util/TimeUtils;->getStringDate(JLjava/lang/String;)Ljava/lang/String;
move-result-object v20
move-object/from16 v0, v20
invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v20, 0x7f0a0383
move-object/from16 v0, p0
move/from16 v1, v20
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/order/OrderDetailActivity;->findViewById(I)Landroid/view/View;
move-result-object v14
check-cast v14, Landroid/widget/ListView;
new-instance v2, Lcom/pinguo/camera360/order/adapter/OrderDetailProductListAdapter;
move-object/from16 v0, p0
invoke-direct {v2, v0}, Lcom/pinguo/camera360/order/adapter/OrderDetailProductListAdapter;-><init>(Landroid/content/Context;)V
move-object/from16 v0, p1
iget-object v0, v0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data;->detail:Ljava/util/List;
move-object/from16 v20, v0
move-object/from16 v0, v20
invoke-virtual {v2, v0}, Lcom/pinguo/camera360/order/adapter/OrderDetailProductListAdapter;->addAll(Ljava/util/Collection;)V
invoke-virtual {v14, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
move-object/from16 v0, p1
iget v0, v0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data;->discountAmount:I
move/from16 v20, v0
if-eqz v20, :cond_10d
const v20, 0x7f0a0384
move-object/from16 v0, p0
move/from16 v1, v20
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/order/OrderDetailActivity;->findViewById(I)Landroid/view/View;
move-result-object v20
const/16 v21, 0x0
invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V
const v20, 0x7f0a0385
move-object/from16 v0, p0
move/from16 v1, v20
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/order/OrderDetailActivity;->findViewById(I)Landroid/view/View;
move-result-object v6
check-cast v6, Landroid/widget/TextView;
const-string/jumbo v20, "\uffe5%.2f"
const/16 v21, 0x1
move/from16 v0, v21
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v21, v0
const/16 v22, 0x0
move-object/from16 v0, p1
iget v0, v0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data;->discountAmount:I
move/from16 v23, v0
move/from16 v0, v23
int-to-double v0, v0
move-wide/from16 v23, v0
const-wide/high16 v25, 0x4059
div-double v23, v23, v25
invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v23
aput-object v23, v21, v22
invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v20
move-object/from16 v0, v20
invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_10d
const/16 v17, 0x0
const/4 v9, 0x0
:goto_110
move-object/from16 v0, p1
iget-object v0, v0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data;->detail:Ljava/util/List;
move-object/from16 v20, v0
invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I
move-result v20
move/from16 v0, v20
if-lt v9, v0, :cond_271
const v20, 0x7f0a0386
move-object/from16 v0, p0
move/from16 v1, v20
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/order/OrderDetailActivity;->findViewById(I)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/widget/TextView;
const v20, 0x7f080397
move-object/from16 v0, p0
move/from16 v1, v20
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/order/OrderDetailActivity;->getString(I)Ljava/lang/String;
move-result-object v20
const/16 v21, 0x1
move/from16 v0, v21
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v21, v0
const/16 v22, 0x0
invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v23
aput-object v23, v21, v22
invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v20
move-object/from16 v0, v20
invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v20, 0x7f0a0387
move-object/from16 v0, p0
move/from16 v1, v20
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/order/OrderDetailActivity;->findViewById(I)Landroid/view/View;
move-result-object v18
check-cast v18, Landroid/widget/TextView;
const-string/jumbo v20, "\uffe5%.2f"
const/16 v21, 0x1
move/from16 v0, v21
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v21, v0
const/16 v22, 0x0
move-object/from16 v0, p1
iget v0, v0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data;->amount:I
move/from16 v23, v0
move/from16 v0, v23
int-to-double v0, v0
move-wide/from16 v23, v0
const-wide/high16 v25, 0x4059
div-double v23, v23, v25
invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v23
aput-object v23, v21, v22
invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v20
move-object/from16 v0, v18
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move-object/from16 v0, p1
iget-object v0, v0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data;->deliver:Ljava/util/List;
move-object/from16 v20, v0
invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I
move-result v20
if-lez v20, :cond_289
move-object/from16 v0, p1
iget-object v0, v0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data;->deliver:Ljava/util/List;
move-object/from16 v20, v0
move-object/from16 v0, p1
iget-object v0, v0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data;->deliver:Ljava/util/List;
move-object/from16 v21, v0
invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I
move-result v21
add-int/lit8 v21, v21, -0x1
invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$Deliver;
:goto_1ad
iget-object v0, v8, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$Deliver;->companyCode:Ljava/lang/String;
move-object/from16 v20, v0
if-nez v20, :cond_290
const-string/jumbo v20, ""
:goto_1b6
move-object/from16 v0, v20
move-object/from16 v1, p0
iput-object v0, v1, Lcom/pinguo/camera360/order/OrderDetailActivity;->mCompanyCode:Ljava/lang/String;
iget-object v0, v8, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$Deliver;->logisticsNo:Ljava/lang/String;
move-object/from16 v20, v0
if-nez v20, :cond_29a
const-string/jumbo v20, ""
:goto_1c5
move-object/from16 v0, v20
move-object/from16 v1, p0
iput-object v0, v1, Lcom/pinguo/camera360/order/OrderDetailActivity;->mLogisticsNum:Ljava/lang/String;
move-object/from16 v0, p1
iget v0, v0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data;->status:I
move/from16 v20, v0
move-object/from16 v0, p0
move/from16 v1, v20
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/order/OrderDetailActivity;->canShowDelivery(I)Z
move-result v20
if-eqz v20, :cond_211
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mLogisticsNum:Ljava/lang/String;
move-object/from16 v20, v0
invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v20
if-nez v20, :cond_211
const v20, 0x7f0a0388
move-object/from16 v0, p0
move/from16 v1, v20
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/order/OrderDetailActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
const/16 v20, 0x0
move/from16 v0, v20
invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V
const v20, 0x7f0a0389
move-object/from16 v0, p0
move/from16 v1, v20
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/order/OrderDetailActivity;->findViewById(I)Landroid/view/View;
move-result-object v10
check-cast v10, Landroid/widget/TextView;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mLogisticsNum:Ljava/lang/String;
move-object/from16 v20, v0
move-object/from16 v0, v20
invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_211
const v20, 0x7f0a038a
move-object/from16 v0, p0
move/from16 v1, v20
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/order/OrderDetailActivity;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/TextView;
iget-object v0, v8, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$Deliver;->consignee:Ljava/lang/String;
move-object/from16 v20, v0
move-object/from16 v0, v20
invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v20, 0x7f0a038b
move-object/from16 v0, p0
move/from16 v1, v20
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/order/OrderDetailActivity;->findViewById(I)Landroid/view/View;
move-result-object v11
check-cast v11, Landroid/widget/TextView;
iget-object v0, v8, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$Deliver;->mobile:Ljava/lang/String;
move-object/from16 v20, v0
move-object/from16 v0, v20
invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
invoke-direct {v0, v8}, Lcom/pinguo/camera360/order/OrderDetailActivity;->setAddressTextView(Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$Deliver;)V
move-object/from16 v0, p1
iget v0, v0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data;->status:I
move/from16 v20, v0
const/16 v21, 0x1
move/from16 v0, v20
move/from16 v1, v21
if-ne v0, v1, :cond_2a4
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getIdPassportOpenState()Z
move-result v20
if-eqz v20, :cond_265
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mPayBtn:Landroid/widget/Button;
move-object/from16 v20, v0
const/16 v21, 0x0
invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V
:cond_265
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mLogisticsBtn:Landroid/widget/Button;
move-object/from16 v20, v0
const/16 v21, 0x8
invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V
:goto_270
return-void
:cond_271
move-object/from16 v0, p1
iget-object v0, v0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data;->detail:Ljava/util/List;
move-object/from16 v20, v0
move-object/from16 v0, v20
invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v13
check-cast v13, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$ProductDetail;
iget v0, v13, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$ProductDetail;->buyCount:I
move/from16 v20, v0
add-int v17, v17, v20
add-int/lit8 v9, v9, 0x1
goto/16 :goto_110
:cond_289
new-instance v8, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$Deliver;
invoke-direct {v8}, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$Deliver;-><init>()V
goto/16 :goto_1ad
:cond_290
iget-object v0, v8, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$Deliver;->companyCode:Ljava/lang/String;
move-object/from16 v20, v0
invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v20
goto/16 :goto_1b6
:cond_29a
iget-object v0, v8, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data$Deliver;->logisticsNo:Ljava/lang/String;
move-object/from16 v20, v0
invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v20
goto/16 :goto_1c5
:cond_2a4
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mPayBtn:Landroid/widget/Button;
move-object/from16 v20, v0
const/16 v21, 0x8
invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V
move-object/from16 v0, p1
iget v0, v0, Lcom/pinguo/camera360/order/model/store/v1/ApiOrderDetail$Response$Data;->status:I
move/from16 v20, v0
move-object/from16 v0, p0
move/from16 v1, v20
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/order/OrderDetailActivity;->canShowDelivery(I)Z
move-result v20
if-eqz v20, :cond_2cf
const/16 v19, 0x0
:goto_2c1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/order/OrderDetailActivity;->mLogisticsBtn:Landroid/widget/Button;
move-object/from16 v20, v0
move-object/from16 v0, v20
move/from16 v1, v19
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
goto :goto_270
:cond_2cf
const/16 v19, 0x8
goto :goto_2c1
.end method