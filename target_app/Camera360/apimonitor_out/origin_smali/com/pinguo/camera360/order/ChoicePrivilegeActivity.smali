.class public Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;
.super Landroid/app/Activity;
.source "ChoicePrivilegeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCodeCB:Landroid/widget/CheckBox;

.field private mCodeET:Landroid/widget/EditText;

.field private mCodeErrorTipTV:Landroid/widget/TextView;

.field private mCodeTV:Landroid/widget/TextView;

.field private mCouponCB:Landroid/widget/CheckBox;

.field private mCouponTV:Landroid/widget/TextView;

.field private mNoUseTV:Landroid/widget/TextView;

.field private mNotUseCB:Landroid/widget/CheckBox;

.field private mOldCouponType:I

.field private mOtherCouponFuture:Lcom/pinguo/lib/os/AsyncFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pinguo/lib/os/AsyncFuture",
            "<",
            "Lcom/pinguo/camera360/order/model/Coupon$Info;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

.field private mWXCouponInfo:Lcom/pinguo/camera360/order/model/Coupon$Info;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->onTitleRightBtnClick()V

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeErrorTipTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->cancelProgressDialog()V

    return-void
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;Lcom/pinguo/camera360/order/model/Coupon$Info;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->onResult(Lcom/pinguo/camera360/order/model/Coupon$Info;)V

    return-void
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->onNetworkException()V

    return-void
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)Lcom/pinguo/lib/os/AsyncFuture;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mOtherCouponFuture:Lcom/pinguo/lib/os/AsyncFuture;

    return-object v0
.end method

.method private cancelProgressDialog()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    :cond_14
    return-void
.end method

.method private clearViews()V
    .registers 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mNotUseCB:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCouponCB:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeCB:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeET:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeErrorTipTV:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mNoUseTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCouponTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private onNetworkException()V
    .registers 5

    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08017b

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, -0x2

    const v2, 0x7f08013a

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$5;

    invoke-direct {v3, p0}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$5;-><init>(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V

    return-void
.end method

.method private onResult(Lcom/pinguo/camera360/order/model/Coupon$Info;)V
    .registers 4

    invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/order/model/Transaction;->getCouponType()I

    move-result v0

    iget v1, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mOldCouponType:I

    if-eq v0, v1, :cond_14

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->setResult(I)V

    :goto_10
    invoke-virtual {p0}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->finish()V

    return-void

    :cond_14
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->setResult(I)V

    goto :goto_10
.end method

.method private onTitleRightBtnClick()V
    .registers 9

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mNotUseCB:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-static {v5}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportPromoSelected(I)V

    invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/order/model/Transaction;->disableCoupon()V

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->onResult(Lcom/pinguo/camera360/order/model/Coupon$Info;)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iget-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCouponCB:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-static {v6}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportPromoSelected(I)V

    invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/order/model/Transaction;->enableShareCoupon()V

    iget-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mWXCouponInfo:Lcom/pinguo/camera360/order/model/Coupon$Info;

    invoke-direct {p0, v3}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->onResult(Lcom/pinguo/camera360/order/model/Coupon$Info;)V

    goto :goto_1a

    :cond_33
    iget-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeCB:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportPromoSelected(I)V

    :try_start_3f
    const-string/jumbo v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeET:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_52} :catch_70

    :goto_52
    iget-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeET:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_75

    iget-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeErrorTipTV:Landroid/widget/TextView;

    const v4, 0x7f080176

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeErrorTipTV:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1a

    :catch_70
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_52

    :cond_75
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v7, :cond_89

    iget-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeErrorTipTV:Landroid/widget/TextView;

    const v4, 0x7f080177

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeErrorTipTV:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1a

    :cond_89
    iget-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeErrorTipTV:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeErrorTipTV:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->showProgressDialog()V

    iget-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mOtherCouponFuture:Lcom/pinguo/lib/os/AsyncFuture;

    if-eqz v3, :cond_a2

    iget-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mOtherCouponFuture:Lcom/pinguo/lib/os/AsyncFuture;

    invoke-interface {v3, v6}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z

    :cond_a2
    invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;

    move-result-object v3

    iget-object v4, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeET:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/order/model/Transaction;->createOtherCoupon(Ljava/lang/String;)Lcom/pinguo/lib/os/AsyncFuture;

    move-result-object v3

    iput-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mOtherCouponFuture:Lcom/pinguo/lib/os/AsyncFuture;

    iget-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mOtherCouponFuture:Lcom/pinguo/lib/os/AsyncFuture;

    new-instance v4, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$4;

    invoke-direct {v4, p0}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$4;-><init>(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)V

    invoke-interface {v3, v4}, Lcom/pinguo/lib/os/AsyncFuture;->get(Lcom/pinguo/lib/os/AsyncResult;)V

    goto/16 :goto_1a
.end method

.method private showProgressDialog()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_c
    return-void

    :cond_d
    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    new-instance v1, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$6;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$6;-><init>(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V

    goto :goto_c
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_4c

    :goto_8
    :pswitch_8
    return-void

    :pswitch_9
    invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportPromeClick(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->clearViews()V

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mNotUseCB:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mNoUseTV:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_8

    :pswitch_1a
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportPromeClick(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->clearViews()V

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCouponCB:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCouponTV:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_8

    :pswitch_2c
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportPromeClick(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->clearViews()V

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeCB:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeET:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeErrorTipTV:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeTV:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_8

    nop

    :pswitch_data_4c
    .packed-switch 0x7f0a0271
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_1a
        :pswitch_8
        :pswitch_2c
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    const v7, 0x7f0a0273

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f03006f

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->setContentView(I)V

    invoke-static {v6}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportPromeClick(I)V

    const v3, 0x7f0a0270

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/ui/TitleView;

    new-instance v3, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$1;

    invoke-direct {v3, p0}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$1;-><init>(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)V

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V

    const v3, 0x7f080174

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V

    const v3, 0x7f0801d4

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/ui/TitleView;->setRightBtnText(I)V

    invoke-virtual {v2}, Lcom/pinguo/camera360/ui/TitleView;->showRightBtn()V

    const v3, 0x7f0a0271

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mNotUseCB:Landroid/widget/CheckBox;

    const v3, 0x7f0a0274

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCouponCB:Landroid/widget/CheckBox;

    const v3, 0x7f0a0276

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeCB:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCouponCB:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mNotUseCB:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeCB:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mNotUseCB:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v3, 0x7f0a0278

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeET:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeET:Landroid/widget/EditText;

    new-instance v4, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$2;

    invoke-direct {v4, p0}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$2;-><init>(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeET:Landroid/widget/EditText;

    new-instance v4, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$3;

    invoke-direct {v4, p0}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity$3;-><init>(Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v3, 0x7f0a0279

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeErrorTipTV:Landroid/widget/TextView;

    const v3, 0x7f0a0272

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mNoUseTV:Landroid/widget/TextView;

    const v3, 0x7f0a0275

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCouponTV:Landroid/widget/TextView;

    const v3, 0x7f0a0277

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeTV:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->clearViews()V

    invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/order/model/Transaction;->getShareCoupon()Lcom/pinguo/camera360/order/model/Coupon$Info;

    move-result-object v0

    if-eqz v0, :cond_e6

    invoke-virtual {p0, v7}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCouponTV:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/pinguo/camera360/order/model/Coupon$Info;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_cc
    invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/order/model/Transaction;->getCouponType()I

    move-result v1

    iput v1, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mOldCouponType:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_f0

    iget-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeCB:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCodeET:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setVisibility(I)V

    :goto_e3
    iput-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mWXCouponInfo:Lcom/pinguo/camera360/order/model/Coupon$Info;

    return-void

    :cond_e6
    invoke-virtual {p0, v7}, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_cc

    :cond_f0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_f9

    iget-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mCouponCB:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_e3

    :cond_f9
    iget-object v3, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mNotUseCB:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_e3
.end method

.method protected onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mOtherCouponFuture:Lcom/pinguo/lib/os/AsyncFuture;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/pinguo/camera360/order/ChoicePrivilegeActivity;->mOtherCouponFuture:Lcom/pinguo/lib/os/AsyncFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z

    :cond_a
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportPromeClick(I)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
