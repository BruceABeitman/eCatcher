.class public Lcom/pinguo/camera360/order/OrderActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "OrderActivity.java"
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pinguo/camera360/order/PaymentFragment$PaymentResult;
.field private static final REQUEST_CODE_CHOICE_PRIVILEGE:I = 0x3e9
.field private static final REQUEST_CODE_ORDER_ADDRESS:I = 0x3e8
.field private static final TAG:Ljava/lang/String;
.field private mAmountFuture:Lcom/pinguo/lib/os/AsyncFuture;
.field private mConsigneeAddress:Landroid/widget/TextView;
.field private mConsigneeAddressDetail:Landroid/widget/TextView;
.field private mConsigneeMobile:Landroid/widget/TextView;
.field private mConsigneeName:Landroid/widget/TextView;
.field private mContentBoxView:Landroid/view/View;
.field private mCouponCaption:Landroid/widget/TextView;
.field private mLogisticPriceView:Landroid/widget/TextView;
.field private mNetworkIV:Landroid/widget/ImageView;
.field private mNetworkRefreshAnim:Landroid/view/animation/Animation;
.field private mPaymentFragment:Lcom/pinguo/camera360/order/PaymentFragment;
.field private mPgOrder:Lcom/pinguo/camera360/order/model/Order;
.field private mRetryBoxView:Landroid/view/View;
.field private mTotalCountView:Landroid/widget/TextView;
.field private mTotalPriceView:Landroid/widget/TextView;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/order/OrderActivity;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/order/OrderActivity;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V
return-void
.end method
.method static synthetic access$0()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/camera360/order/OrderActivity;->TAG:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/order/OrderActivity;Lcom/pinguo/camera360/order/model/Order;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/order/OrderActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/order/OrderActivity;)Lcom/pinguo/camera360/order/model/Order;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/order/OrderActivity;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity;->mCouponCaption:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/order/OrderActivity;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity;->mNetworkIV:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/order/OrderActivity;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity;->mLogisticPriceView:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/order/OrderActivity;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/order/OrderActivity;->setTotalPrice()V
return-void
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/order/OrderActivity;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity;->mContentBoxView:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/order/OrderActivity;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity;->mRetryBoxView:Landroid/view/View;
return-object v0
.end method
.method private createPaymentFragment()V
.registers 5
new-instance v2, Lcom/pinguo/camera360/order/PaymentFragment;
invoke-direct {v2}, Lcom/pinguo/camera360/order/PaymentFragment;-><init>()V
iput-object v2, p0, Lcom/pinguo/camera360/order/OrderActivity;->mPaymentFragment:Lcom/pinguo/camera360/order/PaymentFragment;
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string/jumbo v2, "arg_key_order"
iget-object v3, p0, Lcom/pinguo/camera360/order/OrderActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
iget-object v3, v3, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderActivity;->mPaymentFragment:Lcom/pinguo/camera360/order/PaymentFragment;
invoke-virtual {v2, v0}, Lcom/pinguo/camera360/order/PaymentFragment;->setArguments(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/order/OrderActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v1
const v2, 0x7f0a036d
iget-object v3, p0, Lcom/pinguo/camera360/order/OrderActivity;->mPaymentFragment:Lcom/pinguo/camera360/order/PaymentFragment;
invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderActivity;->mPaymentFragment:Lcom/pinguo/camera360/order/PaymentFragment;
invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I
return-void
.end method
.method private initAnim()V
.registers 3
const v1, 0x7f040006
invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/order/OrderActivity;->mNetworkRefreshAnim:Landroid/view/animation/Animation;
new-instance v0, Landroid/view/animation/LinearInterpolator;
invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderActivity;->mNetworkRefreshAnim:Landroid/view/animation/Animation;
invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V
return-void
.end method
.method private setAddressTextView(Lcom/pinguo/camera360/order/model/OrderAddress;)V
.registers 5
iget-object v0, p1, Lcom/pinguo/camera360/order/model/OrderAddress;->city:Ljava/lang/String;
invoke-static {v0}, Lcom/pinguo/lib/util/Util;->isDirectControlCity(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_29
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity;->mConsigneeAddress:Landroid/widget/TextView;
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p1, Lcom/pinguo/camera360/order/model/OrderAddress;->city:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p1, Lcom/pinguo/camera360/order/model/OrderAddress;->area:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p1, Lcom/pinguo/camera360/order/model/OrderAddress;->address:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_28
return-void
:cond_29
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity;->mConsigneeAddress:Landroid/widget/TextView;
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p1, Lcom/pinguo/camera360/order/model/OrderAddress;->province:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p1, Lcom/pinguo/camera360/order/model/OrderAddress;->city:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p1, Lcom/pinguo/camera360/order/model/OrderAddress;->area:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p1, Lcom/pinguo/camera360/order/model/OrderAddress;->address:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_28
.end method
.method private setTotalPrice()V
.registers 10
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
iget-object v1, v1, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
iget v0, v1, Lcom/pinguo/camera360/order/model/Order$Info;->mTotalPrice:I
if-gez v0, :cond_9
const/4 v0, 0x0
:cond_9
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderActivity;->mTotalPriceView:Landroid/widget/TextView;
const-string/jumbo v2, "\uffe5%.2f"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
int-to-double v5, v0
const-wide/high16 v7, 0x4059
div-double/2addr v5, v7
invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v5
aput-object v5, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method private updateOrderAddress()V
.registers 4
invoke-static {p0}, Lcom/pinguo/camera360/order/model/OrderAddress;->create(Landroid/content/Context;)Lcom/pinguo/camera360/order/model/OrderAddress;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderActivity;->mConsigneeName:Landroid/widget/TextView;
iget-object v2, v0, Lcom/pinguo/camera360/order/model/OrderAddress;->name:Ljava/lang/String;
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderActivity;->mConsigneeMobile:Landroid/widget/TextView;
iget-object v2, v0, Lcom/pinguo/camera360/order/model/OrderAddress;->mobile:Ljava/lang/String;
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-direct {p0, v0}, Lcom/pinguo/camera360/order/OrderActivity;->setAddressTextView(Lcom/pinguo/camera360/order/model/OrderAddress;)V
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderActivity;->mConsigneeAddressDetail:Landroid/widget/TextView;
iget-object v2, v0, Lcom/pinguo/camera360/order/model/OrderAddress;->address:Ljava/lang/String;
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method private updateOrderPrice(Z)V
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
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderActivity;->mContentBoxView:Landroid/view/View;
const/16 v3, 0x8
invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderActivity;->mAmountFuture:Lcom/pinguo/lib/os/AsyncFuture;
if-eqz v2, :cond_25
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderActivity;->mAmountFuture:Lcom/pinguo/lib/os/AsyncFuture;
const/4 v3, 0x1
invoke-interface {v2, v3}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z
:cond_25
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
invoke-static {p0}, Lcom/pinguo/camera360/order/model/OrderAddress;->create(Landroid/content/Context;)Lcom/pinguo/camera360/order/model/OrderAddress;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/order/model/Order;->getRemoteAmount(Lcom/pinguo/camera360/order/model/OrderAddress;)Lcom/pinguo/lib/os/AsyncFuture;
move-result-object v2
iput-object v2, p0, Lcom/pinguo/camera360/order/OrderActivity;->mAmountFuture:Lcom/pinguo/lib/os/AsyncFuture;
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderActivity;->mAmountFuture:Lcom/pinguo/lib/os/AsyncFuture;
new-instance v3, Lcom/pinguo/camera360/order/OrderActivity$1;
invoke-direct {v3, p0, v0}, Lcom/pinguo/camera360/order/OrderActivity$1;-><init>(Lcom/pinguo/camera360/order/OrderActivity;Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V
invoke-interface {v2, v3}, Lcom/pinguo/lib/os/AsyncFuture;->get(Lcom/pinguo/lib/os/AsyncResult;)V
return-void
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 7
const/4 v2, 0x1
const/4 v0, -0x1
if-eq p2, v0, :cond_5
:goto_4
return-void
:cond_5
const/16 v0, 0x3e8
if-ne p1, v0, :cond_23
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
iget-object v0, v0, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
const-string/jumbo v1, ""
iput-object v1, v0, Lcom/pinguo/camera360/order/model/Order$Info;->mOrderId:Ljava/lang/String;
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity;->mPaymentFragment:Lcom/pinguo/camera360/order/PaymentFragment;
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/order/PaymentFragment;->setOrder(Lcom/pinguo/camera360/order/model/Order;)V
invoke-direct {p0}, Lcom/pinguo/camera360/order/OrderActivity;->updateOrderAddress()V
invoke-direct {p0, v2}, Lcom/pinguo/camera360/order/OrderActivity;->updateOrderPrice(Z)V
:cond_1f
:goto_1f
invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V
goto :goto_4
:cond_23
const/16 v0, 0x3e9
if-ne p1, v0, :cond_1f
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
iget-object v0, v0, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
const-string/jumbo v1, ""
iput-object v1, v0, Lcom/pinguo/camera360/order/model/Order$Info;->mOrderId:Ljava/lang/String;
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity;->mPaymentFragment:Lcom/pinguo/camera360/order/PaymentFragment;
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/order/PaymentFragment;->setOrder(Lcom/pinguo/camera360/order/model/Order;)V
invoke-direct {p0, v2}, Lcom/pinguo/camera360/order/OrderActivity;->updateOrderPrice(Z)V
goto :goto_1f
.end method
.method public onBackPressed()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity;->mPaymentFragment:Lcom/pinguo/camera360/order/PaymentFragment;
invoke-virtual {v0}, Lcom/pinguo/camera360/order/PaymentFragment;->isVisible()Z
move-result v0
if-eqz v0, :cond_1a
invoke-virtual {p0}, Lcom/pinguo/camera360/order/OrderActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderActivity;->mPaymentFragment:Lcom/pinguo/camera360/order/PaymentFragment;
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
:goto_19
return-void
:cond_1a
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V
goto :goto_19
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/order/OrderActivity; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
sparse-switch v0, :sswitch_data_96
:goto_8
:cond_8
const-string v1, " - Lcom/pinguo/camera360/order/OrderActivity; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:sswitch_9
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity;->mPaymentFragment:Lcom/pinguo/camera360/order/PaymentFragment;
invoke-virtual {v0}, Lcom/pinguo/camera360/order/PaymentFragment;->isBusy()Z
move-result v0
if-nez v0, :cond_8
invoke-virtual {p0}, Lcom/pinguo/camera360/order/OrderActivity;->finish()V
goto :goto_8
:sswitch_15
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity;->mConsigneeName:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_2d
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity;->mConsigneeMobile:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_38
:cond_2d
const v0, 0x7f08036d
invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
goto :goto_8
:cond_38
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity;->mConsigneeAddress:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_4f
const v0, 0x7f08036e
invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
goto :goto_8
:cond_4f
invoke-static {}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportPlayBtn()V
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity;->mPaymentFragment:Lcom/pinguo/camera360/order/PaymentFragment;
invoke-virtual {v0}, Lcom/pinguo/camera360/order/PaymentFragment;->isHidden()Z
move-result v0
if-eqz v0, :cond_8
invoke-virtual {p0}, Lcom/pinguo/camera360/order/OrderActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderActivity;->mPaymentFragment:Lcom/pinguo/camera360/order/PaymentFragment;
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
goto :goto_8
:sswitch_6c
invoke-static {}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportCheckAddress()V
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/pinguo/camera360/order/OrderAddressActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/16 v1, 0x3e8
invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/order/OrderActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_8
:sswitch_7c
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity;->mNetworkIV:Landroid/widget/ImageView;
iget-object v1, p0, Lcom/pinguo/camera360/order/OrderActivity;->mNetworkRefreshAnim:Landroid/view/animation/Animation;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/pinguo/camera360/order/OrderActivity;->updateOrderPrice(Z)V
goto :goto_8
:sswitch_88
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/16 v1, 0x3e9
invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/order/OrderActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto/16 :goto_8
:sswitch_data_96
.sparse-switch
0x7f0a0357 -> :sswitch_9
0x7f0a035a -> :sswitch_6c
0x7f0a0366 -> :sswitch_88
0x7f0a036c -> :sswitch_15
0x7f0a036f -> :sswitch_7c
.end sparse-switch
.end method
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 4
sget-object v0, Lcom/pinguo/camera360/order/OrderActivity;->TAG:Ljava/lang/String;
const-string/jumbo v1, "onConfigurationChanged"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 25
const-string v1, " + Lcom/pinguo/camera360/order/OrderActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v15, Lcom/pinguo/camera360/order/OrderActivity;->TAG:Ljava/lang/String;
const-string/jumbo v16, "onCreate"
invoke-static/range {v15 .. v16}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-super/range {p0 .. p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V
const v15, 0x7f030092
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/order/OrderActivity;->setContentView(I)V
const v15, 0x7f0a0357
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/order/OrderActivity;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/ImageView;
move-object/from16 v0, p0
invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v15, 0x7f0a035b
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/order/OrderActivity;->findViewById(I)Landroid/view/View;
move-result-object v15
check-cast v15, Landroid/widget/TextView;
move-object/from16 v0, p0
iput-object v15, v0, Lcom/pinguo/camera360/order/OrderActivity;->mConsigneeName:Landroid/widget/TextView;
const v15, 0x7f0a035c
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/order/OrderActivity;->findViewById(I)Landroid/view/View;
move-result-object v15
check-cast v15, Landroid/widget/TextView;
move-object/from16 v0, p0
iput-object v15, v0, Lcom/pinguo/camera360/order/OrderActivity;->mConsigneeMobile:Landroid/widget/TextView;
const v15, 0x7f0a035d
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/order/OrderActivity;->findViewById(I)Landroid/view/View;
move-result-object v15
check-cast v15, Landroid/widget/TextView;
move-object/from16 v0, p0
iput-object v15, v0, Lcom/pinguo/camera360/order/OrderActivity;->mConsigneeAddress:Landroid/widget/TextView;
const v15, 0x7f0a035e
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/order/OrderActivity;->findViewById(I)Landroid/view/View;
move-result-object v15
check-cast v15, Landroid/widget/TextView;
move-object/from16 v0, p0
iput-object v15, v0, Lcom/pinguo/camera360/order/OrderActivity;->mConsigneeAddressDetail:Landroid/widget/TextView;
invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/order/OrderActivity;->updateOrderAddress()V
const v15, 0x7f0a035a
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/order/OrderActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
move-object/from16 v0, p0
invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;
move-result-object v15
invoke-virtual {v15}, Lcom/pinguo/camera360/order/model/Transaction;->getOrder()Lcom/pinguo/camera360/order/model/Order;
move-result-object v15
move-object/from16 v0, p0
iput-object v15, v0, Lcom/pinguo/camera360/order/OrderActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/order/OrderActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
if-eqz v15, :cond_9a
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/order/OrderActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
iget-object v15, v15, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
iget-object v15, v15, Lcom/pinguo/camera360/order/model/Order$Info;->mPassportList:Ljava/util/List;
if-eqz v15, :cond_9a
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/order/OrderActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
iget-object v15, v15, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
iget-object v15, v15, Lcom/pinguo/camera360/order/model/Order$Info;->mPassportList:Ljava/util/List;
invoke-interface {v15}, Ljava/util/List;->size()I
move-result v15
if-nez v15, :cond_9e
:cond_9a
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/order/OrderActivity;->finish()V
:goto_9d
const-string v1, " - Lcom/pinguo/camera360/order/OrderActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_9e
const v15, 0x7f0a0359
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/order/OrderActivity;->findViewById(I)Landroid/view/View;
move-result-object v15
move-object/from16 v0, p0
iput-object v15, v0, Lcom/pinguo/camera360/order/OrderActivity;->mContentBoxView:Landroid/view/View;
const v15, 0x7f0a036e
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/order/OrderActivity;->findViewById(I)Landroid/view/View;
move-result-object v15
move-object/from16 v0, p0
iput-object v15, v0, Lcom/pinguo/camera360/order/OrderActivity;->mRetryBoxView:Landroid/view/View;
const v15, 0x7f0a036f
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/order/OrderActivity;->findViewById(I)Landroid/view/View;
move-result-object v15
check-cast v15, Landroid/widget/ImageView;
move-object/from16 v0, p0
iput-object v15, v0, Lcom/pinguo/camera360/order/OrderActivity;->mNetworkIV:Landroid/widget/ImageView;
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/order/OrderActivity;->mNetworkIV:Landroid/widget/ImageView;
move-object/from16 v0, p0
invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v15, 0x7f0a035f
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/order/OrderActivity;->findViewById(I)Landroid/view/View;
move-result-object v12
check-cast v12, Landroid/widget/ListView;
new-instance v2, Lcom/pinguo/camera360/order/adapter/OrderProductListAdapter;
move-object/from16 v0, p0
invoke-direct {v2, v0}, Lcom/pinguo/camera360/order/adapter/OrderProductListAdapter;-><init>(Landroid/content/Context;)V
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/order/OrderActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
iget-object v15, v15, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
iget-object v15, v15, Lcom/pinguo/camera360/order/model/Order$Info;->mPassportList:Ljava/util/List;
invoke-virtual {v2, v15}, Lcom/pinguo/camera360/order/adapter/OrderProductListAdapter;->addAll(Ljava/util/Collection;)V
invoke-virtual {v12, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
const v15, 0x7f0a0368
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/order/OrderActivity;->findViewById(I)Landroid/view/View;
move-result-object v15
check-cast v15, Landroid/widget/TextView;
move-object/from16 v0, p0
iput-object v15, v0, Lcom/pinguo/camera360/order/OrderActivity;->mCouponCaption:Landroid/widget/TextView;
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/order/OrderActivity;->mCouponCaption:Landroid/widget/TextView;
const/16 v16, 0x1
invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setSelected(Z)V
const v15, 0x7f0a0366
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/order/OrderActivity;->findViewById(I)Landroid/view/View;
move-result-object v15
move-object/from16 v0, p0
invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v15, 0x7f0a0360
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/order/OrderActivity;->findViewById(I)Landroid/view/View;
move-result-object v6
check-cast v6, Landroid/widget/TextView;
const v15, 0x7f08039a
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/order/OrderActivity;->getString(I)Ljava/lang/String;
move-result-object v16
const/4 v15, 0x1
new-array v0, v15, [Ljava/lang/Object;
move-object/from16 v17, v0
const/16 v18, 0x0
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/order/OrderActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
iget-object v15, v15, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
iget-object v15, v15, Lcom/pinguo/camera360/order/model/Order$Info;->mPassportList:Ljava/util/List;
const/16 v19, 0x0
move/from16 v0, v19
invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v15
check-cast v15, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;
iget v15, v15, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->price:I
int-to-float v15, v15
const/high16 v19, 0x42c8
div-float v15, v15, v19
invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v15
aput-object v15, v17, v18
invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v15
invoke-virtual {v6, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v15, 0x7f0a0361
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/order/OrderActivity;->findViewById(I)Landroid/view/View;
move-result-object v7
check-cast v7, Landroid/widget/TextView;
const v15, 0x7f08039b
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/order/OrderActivity;->getString(I)Ljava/lang/String;
move-result-object v16
const/4 v15, 0x1
new-array v0, v15, [Ljava/lang/Object;
move-object/from16 v17, v0
const/16 v18, 0x0
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/order/OrderActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
iget-object v15, v15, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
iget-object v15, v15, Lcom/pinguo/camera360/order/model/Order$Info;->mPassportList:Ljava/util/List;
const/16 v19, 0x0
move/from16 v0, v19
invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v15
check-cast v15, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;
iget v15, v15, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->price:I
int-to-float v15, v15
const/high16 v19, 0x42c8
div-float v15, v15, v19
invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v15
aput-object v15, v17, v18
invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v15
invoke-virtual {v7, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/4 v14, 0x0
const/4 v8, 0x0
:goto_19a
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/order/OrderActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
iget-object v15, v15, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
iget-object v15, v15, Lcom/pinguo/camera360/order/model/Order$Info;->mPassportList:Ljava/util/List;
invoke-interface {v15}, Ljava/util/List;->size()I
move-result v15
if-lt v8, v15, :cond_306
const/4 v15, 0x1
if-le v14, v15, :cond_248
const v15, 0x7f0a0362
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/order/OrderActivity;->findViewById(I)Landroid/view/View;
move-result-object v15
const/16 v16, 0x0
invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V
const v15, 0x7f0a0363
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/order/OrderActivity;->findViewById(I)Landroid/view/View;
move-result-object v9
check-cast v9, Landroid/widget/TextView;
const v15, 0x7f08039c
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/order/OrderActivity;->getString(I)Ljava/lang/String;
move-result-object v16
const/4 v15, 0x2
new-array v0, v15, [Ljava/lang/Object;
move-object/from16 v17, v0
const/16 v18, 0x0
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/order/OrderActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
iget-object v15, v15, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
iget-object v15, v15, Lcom/pinguo/camera360/order/model/Order$Info;->mPassportList:Ljava/util/List;
const/16 v19, 0x0
move/from16 v0, v19
invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v15
check-cast v15, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;
iget v15, v15, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->nextPrice:I
int-to-float v15, v15
const/high16 v19, 0x42c8
div-float v15, v15, v19
invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v15
aput-object v15, v17, v18
const/4 v15, 0x1
add-int/lit8 v18, v14, -0x1
invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v18
aput-object v18, v17, v15
invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v15
invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v15, 0x7f0a0364
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/order/OrderActivity;->findViewById(I)Landroid/view/View;
move-result-object v10
check-cast v10, Landroid/widget/TextView;
const v15, 0x7f08039d
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/order/OrderActivity;->getString(I)Ljava/lang/String;
move-result-object v16
const/4 v15, 0x1
new-array v0, v15, [Ljava/lang/Object;
move-object/from16 v17, v0
const/16 v18, 0x0
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/order/OrderActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
iget-object v15, v15, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
iget-object v15, v15, Lcom/pinguo/camera360/order/model/Order$Info;->mPassportList:Ljava/util/List;
const/16 v19, 0x0
move/from16 v0, v19
invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v15
check-cast v15, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;
iget v15, v15, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->nextPrice:I
add-int/lit8 v19, v14, -0x1
mul-int v15, v15, v19
int-to-float v15, v15
const/high16 v19, 0x42c8
div-float v15, v15, v19
invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v15
aput-object v15, v17, v18
invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v15
invoke-virtual {v10, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_248
const v15, 0x7f0a0365
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/order/OrderActivity;->findViewById(I)Landroid/view/View;
move-result-object v15
check-cast v15, Landroid/widget/TextView;
move-object/from16 v0, p0
iput-object v15, v0, Lcom/pinguo/camera360/order/OrderActivity;->mLogisticPriceView:Landroid/widget/TextView;
invoke-static/range {p0 .. p0}, Lcom/pinguo/camera360/order/model/OrderAddress;->create(Landroid/content/Context;)Lcom/pinguo/camera360/order/model/OrderAddress;
move-result-object v5
iget-object v15, v5, Lcom/pinguo/camera360/order/model/OrderAddress;->province:Ljava/lang/String;
invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v15
if-nez v15, :cond_271
iget-object v15, v5, Lcom/pinguo/camera360/order/model/OrderAddress;->city:Ljava/lang/String;
invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v15
if-nez v15, :cond_271
const/4 v15, 0x1
move-object/from16 v0, p0
invoke-direct {v0, v15}, Lcom/pinguo/camera360/order/OrderActivity;->updateOrderPrice(Z)V
:cond_271
const v15, 0x7f0a036b
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/order/OrderActivity;->findViewById(I)Landroid/view/View;
move-result-object v15
check-cast v15, Landroid/widget/TextView;
move-object/from16 v0, p0
iput-object v15, v0, Lcom/pinguo/camera360/order/OrderActivity;->mTotalPriceView:Landroid/widget/TextView;
const v15, 0x7f0a036a
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/order/OrderActivity;->findViewById(I)Landroid/view/View;
move-result-object v15
check-cast v15, Landroid/widget/TextView;
move-object/from16 v0, p0
iput-object v15, v0, Lcom/pinguo/camera360/order/OrderActivity;->mTotalCountView:Landroid/widget/TextView;
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/order/OrderActivity;->mTotalPriceView:Landroid/widget/TextView;
const-string/jumbo v16, "\uffe5%.2f"
const/16 v17, 0x1
move/from16 v0, v17
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v17, v0
const/16 v18, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/order/OrderActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
move-object/from16 v19, v0
move-object/from16 v0, v19
iget-object v0, v0, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
move-object/from16 v19, v0
move-object/from16 v0, v19
iget v0, v0, Lcom/pinguo/camera360/order/model/Order$Info;->mTotalPrice:I
move/from16 v19, v0
move/from16 v0, v19
int-to-double v0, v0
move-wide/from16 v19, v0
const-wide/high16 v21, 0x4059
div-double v19, v19, v21
invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v19
aput-object v19, v17, v18
invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/order/OrderActivity;->mTotalCountView:Landroid/widget/TextView;
const v16, 0x7f080397
move-object/from16 v0, p0
move/from16 v1, v16
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/order/OrderActivity;->getString(I)Ljava/lang/String;
move-result-object v16
const/16 v17, 0x1
move/from16 v0, v17
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v17, v0
const/16 v18, 0x0
invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v19
aput-object v19, v17, v18
invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v15, 0x7f0a036c
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/pinguo/camera360/order/OrderActivity;->findViewById(I)Landroid/view/View;
move-result-object v13
check-cast v13, Landroid/widget/Button;
move-object/from16 v0, p0
invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/order/OrderActivity;->createPaymentFragment()V
invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/order/OrderActivity;->initAnim()V
goto/16 :goto_9d
:cond_306
move-object/from16 v0, p0
iget-object v15, v0, Lcom/pinguo/camera360/order/OrderActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
iget-object v15, v15, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
iget-object v15, v15, Lcom/pinguo/camera360/order/model/Order$Info;->mPassportList:Ljava/util/List;
invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v11
check-cast v11, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;
iget v15, v11, Lcom/pinguo/camera360/IDPhoto/model/IDPhoto;->itemCount:I
add-int/2addr v14, v15
add-int/lit8 v8, v8, 0x1
goto/16 :goto_19a
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/order/OrderActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v0, Lcom/pinguo/camera360/order/OrderActivity;->TAG:Ljava/lang/String;
const-string/jumbo v1, "onDestroy"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity;->mAmountFuture:Lcom/pinguo/lib/os/AsyncFuture;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/pinguo/camera360/order/OrderActivity;->mAmountFuture:Lcom/pinguo/lib/os/AsyncFuture;
const/4 v1, 0x1
invoke-interface {v0, v1}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z
:cond_12
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V
const-string v1, " - Lcom/pinguo/camera360/order/OrderActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
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
const-class v1, Lcom/pinguo/camera360/order/OrderPayResultActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v1, "oid"
iget-object v2, p0, Lcom/pinguo/camera360/order/OrderActivity;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
iget-object v2, v2, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
iget-object v2, v2, Lcom/pinguo/camera360/order/model/Order$Info;->mOrderId:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/order/OrderActivity;->startActivity(Landroid/content/Intent;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/order/OrderActivity;->finish()V
return-void
.end method