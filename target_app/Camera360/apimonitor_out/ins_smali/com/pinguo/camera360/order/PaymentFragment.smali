.class public Lcom/pinguo/camera360/order/PaymentFragment;
.super Landroid/support/v4/app/Fragment;
.source "PaymentFragment.java"
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;
.field public static final ARG_KEY_ORDER:Ljava/lang/String; = "arg_key_order"
.field private static final TAG:Ljava/lang/String;
.field private mAlipayWrapper:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;
.field private mBusy:Z
.field private mCreateFuture:Lcom/pinguo/lib/os/AsyncFuture;
.field private mPayMethod:Ljava/lang/String;
.field private mPaymentResult:Lcom/pinguo/camera360/order/PaymentFragment$PaymentResult;
.field private mPgOrder:Lcom/pinguo/camera360/order/model/Order;
.field private mVerifyFuture:Lcom/pinguo/lib/os/AsyncFuture;
.field private mWXPaying:Z
.field private mWxPayWrapper:Lcom/pinguo/camera360/order/model/WXPayWrapper;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/order/PaymentFragment;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/order/PaymentFragment;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
const-string/jumbo v0, "wxpay"
iput-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mPayMethod:Ljava/lang/String;
iput-boolean v1, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mBusy:Z
iput-boolean v1, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mWXPaying:Z
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/order/PaymentFragment;)Lcom/pinguo/camera360/order/PaymentFragment$PaymentResult;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mPaymentResult:Lcom/pinguo/camera360/order/PaymentFragment$PaymentResult;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/order/PaymentFragment;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->handleOrderPaySuccess()V
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/order/PaymentFragment;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->payOrder()V
return-void
.end method
.method static synthetic access$3()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/camera360/order/PaymentFragment;->TAG:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/order/PaymentFragment;Ljava/lang/Exception;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/order/PaymentFragment;->handleOrderCreateError(Ljava/lang/Exception;)V
return-void
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/order/PaymentFragment;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mWXPaying:Z
return-void
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/order/PaymentFragment;ILjava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/order/PaymentFragment;->handleOrderPayError(ILjava/lang/String;)V
return-void
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/order/PaymentFragment;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->handleOrderPayCancel()V
return-void
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/order/PaymentFragment;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->createOrder()V
return-void
.end method
.method static synthetic access$9(Lcom/pinguo/camera360/order/PaymentFragment;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mBusy:Z
return-void
.end method
.method private checkOrderPayment()V
.registers 1
invoke-virtual {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->verifyOrder()V
return-void
.end method
.method private createOrder()V
.registers 4
invoke-virtual {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->isVisible()Z
move-result v1
if-eqz v1, :cond_15
invoke-virtual {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v1
invoke-virtual {v1, p0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I
:cond_15
iget-object v1, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
invoke-virtual {v1}, Lcom/pinguo/camera360/order/model/Order;->isCreated()Z
move-result v1
if-eqz v1, :cond_21
invoke-direct {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->payOrder()V
:goto_20
return-void
:cond_21
new-instance v0, Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;
invoke-virtual {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;-><init>(Landroid/content/Context;)V
const v1, 0x7f0801b7
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/order/PaymentFragment;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;->setContent(Ljava/lang/String;)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;->setCancelable(Z)V
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;->show()V
iget-object v1, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mCreateFuture:Lcom/pinguo/lib/os/AsyncFuture;
if-eqz v1, :cond_45
iget-object v1, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mCreateFuture:Lcom/pinguo/lib/os/AsyncFuture;
const/4 v2, 0x1
invoke-interface {v1, v2}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z
:cond_45
iget-object v1, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
invoke-virtual {v1}, Lcom/pinguo/camera360/order/model/Order;->create()Lcom/pinguo/lib/os/AsyncFuture;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mCreateFuture:Lcom/pinguo/lib/os/AsyncFuture;
iget-object v1, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mCreateFuture:Lcom/pinguo/lib/os/AsyncFuture;
new-instance v2, Lcom/pinguo/camera360/order/PaymentFragment$1;
invoke-direct {v2, p0, v0}, Lcom/pinguo/camera360/order/PaymentFragment$1;-><init>(Lcom/pinguo/camera360/order/PaymentFragment;Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;)V
invoke-interface {v1, v2}, Lcom/pinguo/lib/os/AsyncFuture;->get(Lcom/pinguo/lib/os/AsyncResult;)V
goto :goto_20
.end method
.method private handleOrderCreateError(Ljava/lang/Exception;)V
.registers 10
const/4 v7, 0x0
instance-of v0, p1, Ljava/io/FileNotFoundException;
if-eqz v0, :cond_1b
invoke-static {}, Lcom/pinguo/lib/util/SDCardUtils;->hasSDCard()Z
move-result v0
if-nez v0, :cond_1b
invoke-virtual {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f080293
const/4 v2, 0x1
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:goto_1a
return-void
:cond_1b
invoke-virtual {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f08035f
const v2, 0x7f080361
const v3, 0x7f0801d5
new-instance v4, Lcom/pinguo/camera360/order/PaymentFragment$8;
invoke-direct {v4, p0}, Lcom/pinguo/camera360/order/PaymentFragment$8;-><init>(Lcom/pinguo/camera360/order/PaymentFragment;)V
new-instance v5, Lcom/pinguo/camera360/order/PaymentFragment$9;
invoke-direct {v5, p0, p1}, Lcom/pinguo/camera360/order/PaymentFragment$9;-><init>(Lcom/pinguo/camera360/order/PaymentFragment;Ljava/lang/Exception;)V
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v6
invoke-virtual {v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V
invoke-virtual {v6, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V
invoke-virtual {v6, v7, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V
invoke-virtual {v6, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCancelable(Z)V
goto :goto_1a
.end method
.method private handleOrderPayCancel()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mBusy:Z
invoke-direct {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->checkOrderPayment()V
return-void
.end method
.method private handleOrderPayError(ILjava/lang/String;)V
.registers 11
const/4 v7, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f080360
const v2, 0x7f080362
const v3, 0x7f0801d5
new-instance v4, Lcom/pinguo/camera360/order/PaymentFragment$10;
invoke-direct {v4, p0}, Lcom/pinguo/camera360/order/PaymentFragment$10;-><init>(Lcom/pinguo/camera360/order/PaymentFragment;)V
new-instance v5, Lcom/pinguo/camera360/order/PaymentFragment$11;
invoke-direct {v5, p0, p1, p2}, Lcom/pinguo/camera360/order/PaymentFragment$11;-><init>(Lcom/pinguo/camera360/order/PaymentFragment;ILjava/lang/String;)V
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v6
invoke-virtual {v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V
invoke-virtual {v6, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V
invoke-virtual {v6, v7, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V
invoke-virtual {v6, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCancelable(Z)V
return-void
.end method
.method private handleOrderPaySuccess()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mBusy:Z
iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mPaymentResult:Lcom/pinguo/camera360/order/PaymentFragment$PaymentResult;
invoke-interface {v0}, Lcom/pinguo/camera360/order/PaymentFragment$PaymentResult;->onPaymentResultSuccess()V
return-void
.end method
.method private payOrder()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mPayMethod:Ljava/lang/String;
const-string/jumbo v1, "wxpay"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_f
invoke-direct {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->payOrderByWXPay()V
:cond_e
:goto_e
return-void
:cond_f
iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mPayMethod:Ljava/lang/String;
const-string/jumbo v1, "alipay"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_e
invoke-direct {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->payOrderByAlipay()V
goto :goto_e
.end method
.method private payOrderByAlipay()V
.registers 5
new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V
const v1, 0x7f0801b8
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setMessage(I)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V
iget-object v1, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mAlipayWrapper:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;
if-eqz v1, :cond_1f
iget-object v1, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mAlipayWrapper:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;
invoke-virtual {v1}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->cancel()V
:cond_1f
new-instance v1, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;
invoke-virtual {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-direct {v1, v2}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;-><init>(Landroid/app/Activity;)V
iput-object v1, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mAlipayWrapper:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;
iget-object v1, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mAlipayWrapper:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;
iget-object v2, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
iget-object v2, v2, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
iget-object v2, v2, Lcom/pinguo/camera360/order/model/Order$Info;->mOrderId:Ljava/lang/String;
new-instance v3, Lcom/pinguo/camera360/order/PaymentFragment$7;
invoke-direct {v3, p0, v0}, Lcom/pinguo/camera360/order/PaymentFragment$7;-><init>(Lcom/pinguo/camera360/order/PaymentFragment;Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V
invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->pay(Ljava/lang/String;Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;)V
return-void
.end method
.method private payOrderByWXPay()V
.registers 10
const v2, 0x7f0801d5
const v3, 0x7f0801d4
const/4 v8, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mWxPayWrapper:Lcom/pinguo/camera360/order/model/WXPayWrapper;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mWxPayWrapper:Lcom/pinguo/camera360/order/model/WXPayWrapper;
invoke-virtual {v0}, Lcom/pinguo/camera360/order/model/WXPayWrapper;->cancel()V
:cond_10
new-instance v0, Lcom/pinguo/camera360/order/model/WXPayWrapper;
invoke-virtual {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/order/model/WXPayWrapper;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mWxPayWrapper:Lcom/pinguo/camera360/order/model/WXPayWrapper;
iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mWxPayWrapper:Lcom/pinguo/camera360/order/model/WXPayWrapper;
invoke-virtual {v0}, Lcom/pinguo/camera360/order/model/WXPayWrapper;->isWXAppInstalled()Z
move-result v0
if-nez v0, :cond_47
iput-boolean v8, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mBusy:Z
invoke-virtual {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f080363
new-instance v4, Lcom/pinguo/camera360/order/PaymentFragment$2;
invoke-direct {v4, p0}, Lcom/pinguo/camera360/order/PaymentFragment$2;-><init>(Lcom/pinguo/camera360/order/PaymentFragment;)V
new-instance v5, Lcom/pinguo/camera360/order/PaymentFragment$3;
invoke-direct {v5, p0}, Lcom/pinguo/camera360/order/PaymentFragment$3;-><init>(Lcom/pinguo/camera360/order/PaymentFragment;)V
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v6
invoke-virtual {v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V
invoke-virtual {v6, v8}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V
invoke-virtual {v6, v8, v8}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V
invoke-virtual {v6, v8}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCancelable(Z)V
:goto_46
return-void
:cond_47
iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mWxPayWrapper:Lcom/pinguo/camera360/order/model/WXPayWrapper;
invoke-virtual {v0}, Lcom/pinguo/camera360/order/model/WXPayWrapper;->isPaySupported()Z
move-result v0
if-nez v0, :cond_73
iput-boolean v8, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mBusy:Z
invoke-virtual {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f080364
new-instance v4, Lcom/pinguo/camera360/order/PaymentFragment$4;
invoke-direct {v4, p0}, Lcom/pinguo/camera360/order/PaymentFragment$4;-><init>(Lcom/pinguo/camera360/order/PaymentFragment;)V
new-instance v5, Lcom/pinguo/camera360/order/PaymentFragment$5;
invoke-direct {v5, p0}, Lcom/pinguo/camera360/order/PaymentFragment$5;-><init>(Lcom/pinguo/camera360/order/PaymentFragment;)V
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v6
invoke-virtual {v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V
invoke-virtual {v6, v8}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V
invoke-virtual {v6, v8, v8}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V
invoke-virtual {v6, v8}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCancelable(Z)V
goto :goto_46
:cond_73
new-instance v7, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-direct {v7, v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V
const v0, 0x7f0801b8
invoke-virtual {v7, v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setMessage(I)V
invoke-virtual {v7, v8}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V
invoke-virtual {v7}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V
iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mWxPayWrapper:Lcom/pinguo/camera360/order/model/WXPayWrapper;
iget-object v1, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
iget-object v1, v1, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
iget-object v1, v1, Lcom/pinguo/camera360/order/model/Order$Info;->mOrderId:Ljava/lang/String;
new-instance v2, Lcom/pinguo/camera360/order/PaymentFragment$6;
invoke-direct {v2, p0, v7}, Lcom/pinguo/camera360/order/PaymentFragment$6;-><init>(Lcom/pinguo/camera360/order/PaymentFragment;Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/order/model/WXPayWrapper;->pay(Ljava/lang/String;Lcom/pinguo/camera360/order/model/WXPayWrapper$WXPayResult;)V
goto :goto_46
.end method
.method public isBusy()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mBusy:Z
return v0
.end method
.method public onAttach(Landroid/app/Activity;)V
.registers 7
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V
:try_start_3
move-object v0, p1
check-cast v0, Lcom/pinguo/camera360/order/PaymentFragment$PaymentResult;
move-object v2, v0
iput-object v2, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mPaymentResult:Lcom/pinguo/camera360/order/PaymentFragment$PaymentResult;
:try_end_9
.catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_9} :catch_a
return-void
:catch_a
move-exception v1
new-instance v2, Ljava/lang/ClassCastException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, " must implement PaymentResult"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V
throw v2
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/order/PaymentFragment; onClick "
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
packed-switch v0, :pswitch_data_60
:goto_8
:cond_8
const-string v1, " - Lcom/pinguo/camera360/order/PaymentFragment; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_9
iget-boolean v0, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mBusy:Z
if-nez v0, :cond_8
iput-boolean v1, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mBusy:Z
const v0, 0x7f0a03a6
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportPayLayBtnClick(I)V
sget-object v0, Lcom/pinguo/camera360/order/PaymentFragment;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "wx mBusy="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-boolean v2, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mBusy:Z
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "wxpay"
iput-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mPayMethod:Ljava/lang/String;
invoke-direct {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->createOrder()V
goto :goto_8
:pswitch_35
iget-boolean v0, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mBusy:Z
if-nez v0, :cond_8
const v0, 0x7f0a03a5
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportPayLayBtnClick(I)V
iput-boolean v1, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mBusy:Z
const-string/jumbo v0, "alipay"
iput-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mPayMethod:Ljava/lang/String;
invoke-direct {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->createOrder()V
goto :goto_8
:pswitch_4a
const v0, 0x7f0a03a7
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportPayLayBtnClick(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
goto :goto_8
:pswitch_data_60
.packed-switch 0x7f0a03a5
:pswitch_35
:pswitch_9
:pswitch_4a
.end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/pinguo/camera360/order/PaymentFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V
new-instance v0, Lcom/pinguo/camera360/order/model/Order;
invoke-virtual {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/order/model/Order;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
iget-object v1, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
invoke-virtual {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->getArguments()Landroid/os/Bundle;
move-result-object v0
const-string/jumbo v2, "arg_key_order"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/order/model/Order$Info;
iput-object v0, v1, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->register(Ljava/lang/Object;)V
const-string v1, " - Lcom/pinguo/camera360/order/PaymentFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 10
const v4, 0x7f03009a
const/4 v5, 0x0
invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
const v4, 0x7f0a03a6
invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v4, 0x7f0a03a5
invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v4, 0x7f0a03a7
invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
return-object v2
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/order/PaymentFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->unregister(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mCreateFuture:Lcom/pinguo/lib/os/AsyncFuture;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mCreateFuture:Lcom/pinguo/lib/os/AsyncFuture;
invoke-interface {v0, v1}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z
:cond_11
iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mVerifyFuture:Lcom/pinguo/lib/os/AsyncFuture;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mVerifyFuture:Lcom/pinguo/lib/os/AsyncFuture;
invoke-interface {v0, v1}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z
:cond_1a
iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mWxPayWrapper:Lcom/pinguo/camera360/order/model/WXPayWrapper;
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mWxPayWrapper:Lcom/pinguo/camera360/order/model/WXPayWrapper;
invoke-virtual {v0}, Lcom/pinguo/camera360/order/model/WXPayWrapper;->cancel()V
:cond_23
iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mAlipayWrapper:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mAlipayWrapper:Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;
invoke-virtual {v0}, Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;->cancel()V
:cond_2c
invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V
const-string v1, " - Lcom/pinguo/camera360/order/PaymentFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/order/event/WXPayResultEvent;)V
.registers 6
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mWXPaying:Z
iget v1, p1, Lcom/pinguo/camera360/order/event/WXPayResultEvent;->errCode:I
if-nez v1, :cond_21
iget-object v0, p1, Lcom/pinguo/camera360/order/event/WXPayResultEvent;->extraData:Ljava/lang/String;
iget-object v1, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
iget-object v1, v1, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
iget-object v1, v1, Lcom/pinguo/camera360/order/model/Order$Info;->mOrderId:Ljava/lang/String;
if-eqz v1, :cond_20
iget-object v1, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
iget-object v1, v1, Lcom/pinguo/camera360/order/model/Order;->mInfo:Lcom/pinguo/camera360/order/model/Order$Info;
iget-object v1, v1, Lcom/pinguo/camera360/order/model/Order$Info;->mOrderId:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_20
invoke-direct {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->handleOrderPaySuccess()V
:cond_20
:goto_20
return-void
:cond_21
iget v1, p1, Lcom/pinguo/camera360/order/event/WXPayResultEvent;->errCode:I
const/4 v2, -0x1
if-ne v1, v2, :cond_36
invoke-virtual {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const v2, 0x7f08036f
const/4 v3, 0x1
invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Toast;->show()V
goto :goto_20
:cond_36
iget v1, p1, Lcom/pinguo/camera360/order/event/WXPayResultEvent;->errCode:I
const/4 v2, -0x2
if-ne v1, v2, :cond_3f
invoke-direct {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->handleOrderPayCancel()V
goto :goto_20
:cond_3f
iget v1, p1, Lcom/pinguo/camera360/order/event/WXPayResultEvent;->errCode:I
const-string/jumbo v2, "unknown"
invoke-direct {p0, v1, v2}, Lcom/pinguo/camera360/order/PaymentFragment;->handleOrderPayError(ILjava/lang/String;)V
goto :goto_20
.end method
.method public onHiddenChanged(Z)V
.registers 3
if-nez p1, :cond_5
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mBusy:Z
:cond_5
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/order/PaymentFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x0
invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V
iget-boolean v0, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mWXPaying:Z
if-eqz v0, :cond_13
iget-boolean v0, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mBusy:Z
if-eqz v0, :cond_13
iput-boolean v1, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mWXPaying:Z
iput-boolean v1, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mBusy:Z
invoke-direct {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->checkOrderPayment()V
:cond_13
const-string v1, " - Lcom/pinguo/camera360/order/PaymentFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 4
invoke-virtual {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->isVisible()Z
move-result v0
if-eqz v0, :cond_17
invoke-virtual {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
const/4 v0, 0x1
:goto_16
return v0
:cond_17
const/4 v0, 0x0
goto :goto_16
.end method
.method public setOrder(Lcom/pinguo/camera360/order/model/Order;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
return-void
.end method
.method protected verifyOrder()V
.registers 4
new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {p0}, Lcom/pinguo/camera360/order/PaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V
const/4 v1, 0x6
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setProgressStyle(I)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V
iget-object v1, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mVerifyFuture:Lcom/pinguo/lib/os/AsyncFuture;
if-eqz v1, :cond_1e
iget-object v1, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mVerifyFuture:Lcom/pinguo/lib/os/AsyncFuture;
const/4 v2, 0x1
invoke-interface {v1, v2}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z
:cond_1e
iget-object v1, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mPgOrder:Lcom/pinguo/camera360/order/model/Order;
invoke-virtual {v1}, Lcom/pinguo/camera360/order/model/Order;->verify()Lcom/pinguo/lib/os/AsyncFuture;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mVerifyFuture:Lcom/pinguo/lib/os/AsyncFuture;
iget-object v1, p0, Lcom/pinguo/camera360/order/PaymentFragment;->mVerifyFuture:Lcom/pinguo/lib/os/AsyncFuture;
new-instance v2, Lcom/pinguo/camera360/order/PaymentFragment$12;
invoke-direct {v2, p0, v0}, Lcom/pinguo/camera360/order/PaymentFragment$12;-><init>(Lcom/pinguo/camera360/order/PaymentFragment;Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V
invoke-interface {v1, v2}, Lcom/pinguo/lib/os/AsyncFuture;->get(Lcom/pinguo/lib/os/AsyncResult;)V
return-void
.end method