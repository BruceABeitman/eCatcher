.class public Lcom/pinguo/camera360/login/PGLoginFragment;
.super Lcom/pinguo/camera360/base/BaseFragment;
.source "PGLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;
.implements Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/login/PGLoginFragment$PGLoginFragmentListener;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/pinguo/camera360/login/PGLoginFragment$PGLoginFragmentListener;

.field private mCheckEmailViewGroup:Lcom/pinguo/camera360/login/CheckEmailViewGroup;

.field private mClickEye:Z

.field private mEmail:Ljava/lang/String;

.field private mEmailInput:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;

.field private mEmailLoginFutrue:Lcom/pinguo/camera360/login/model/EmailLogin;

.field private mEmailPasswordInput:Lcom/pinguo/camera360/login/EditTextWithLine;

.field private mError:I

.field private mErrorPromptText:Landroid/widget/TextView;

.field private mEyeImagView:Landroid/widget/ImageView;

.field private mGoToFindPasswordParent:Landroid/widget/TextView;

.field private mOnceFocus:Z

.field private mRootView:Landroid/view/View;

.field private mShowPassword:Z

.field private mSiteFive:Landroid/widget/ImageView;

.field private mSiteFour:Landroid/widget/ImageView;

.field private mSiteOne:Landroid/widget/ImageView;

.field private mSiteThree:Landroid/widget/ImageView;

.field private mSiteTwo:Landroid/widget/ImageView;

.field private mThirdLoginParent:Landroid/widget/LinearLayout;

.field private mToast:Landroid/widget/Toast;

.field private mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseFragment;-><init>()V

    iput-boolean v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mShowPassword:Z

    iput-boolean v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mOnceFocus:Z

    iput-boolean v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mClickEye:Z

    iput v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mError:I

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/login/PGLoginFragment;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mGoToFindPasswordParent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/login/PGLoginFragment;)Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mEmailInput:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pinguo/camera360/login/PGLoginFragment;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mEyeImagView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/pinguo/camera360/login/PGLoginFragment;)Lcom/pinguo/camera360/login/EditTextWithLine;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mEmailPasswordInput:Lcom/pinguo/camera360/login/EditTextWithLine;

    return-object v0
.end method

.method static synthetic access$12(Lcom/pinguo/camera360/login/PGLoginFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/login/PGLoginFragment;->dissmissDialog()V

    return-void
.end method

.method static synthetic access$13(Lcom/pinguo/camera360/login/PGLoginFragment;)Lcom/pinguo/camera360/login/PGLoginFragment$PGLoginFragmentListener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mCallback:Lcom/pinguo/camera360/login/PGLoginFragment$PGLoginFragmentListener;

    return-object v0
.end method

.method static synthetic access$14(Lcom/pinguo/camera360/login/PGLoginFragment;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/login/PGLoginFragment;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/login/PGLoginFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mOnceFocus:Z

    return v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/login/PGLoginFragment;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mOnceFocus:Z

    return-void
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/login/PGLoginFragment;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mErrorPromptText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/login/PGLoginFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mClickEye:Z

    return v0
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/login/PGLoginFragment;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mClickEye:Z

    return-void
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/login/PGLoginFragment;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mError:I

    return v0
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/login/PGLoginFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mShowPassword:Z

    return v0
.end method

.method static synthetic access$9(Lcom/pinguo/camera360/login/PGLoginFragment;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mShowPassword:Z

    return-void
.end method

.method private dissmissDialog()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V

    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    return-void
.end method

.method private loginFromEmail(Landroid/content/Context;)V
    .registers 14

    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {p1}, Lcom/pinguo/share/util/ShareModuleUtil;->hasNet(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_14

    const v8, 0x7f08017e

    invoke-virtual {p0, v8}, Lcom/pinguo/camera360/login/PGLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/pinguo/camera360/login/PGLoginFragment;->showMessage(Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    iget-object v8, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mEmailInput:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;

    invoke-virtual {v8}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mEmailPasswordInput:Lcom/pinguo/camera360/login/EditTextWithLine;

    invoke-virtual {v8}, Lcom/pinguo/camera360/login/EditTextWithLine;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3c

    const v8, 0x7f08019f

    invoke-virtual {p0, v8}, Lcom/pinguo/camera360/login/PGLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v10}, Lcom/pinguo/camera360/login/PGLoginFragment;->showErrorPromptTextView(Ljava/lang/String;I)V

    invoke-static {v9}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalLoginErrorTipsShow(I)V

    goto :goto_13

    :cond_3c
    const-string/jumbo v7, "^[0-9a-z_-][_.0-9a-z-]{0,31}@([0-9a-z][0-9a-z-]{0,30}\\.){1,4}[a-z]{2,4}$"

    invoke-static {v7, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_58

    const v8, 0x7f0801a1

    invoke-virtual {p0, v8}, Lcom/pinguo/camera360/login/PGLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v10}, Lcom/pinguo/camera360/login/PGLoginFragment;->showErrorPromptTextView(Ljava/lang/String;I)V

    goto :goto_13

    :cond_58
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6c

    const v8, 0x7f0801a0

    invoke-virtual {p0, v8}, Lcom/pinguo/camera360/login/PGLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v11}, Lcom/pinguo/camera360/login/PGLoginFragment;->showErrorPromptTextView(Ljava/lang/String;I)V

    invoke-static {v10}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalLoginErrorTipsShow(I)V

    goto :goto_13

    :cond_6c
    :try_start_6c
    invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-string/jumbo v9, "input_method"

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iget-object v8, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mEmailInput:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;

    invoke-virtual {v8}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_83} :catch_a6

    :goto_83
    iget-object v8, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mEmailLoginFutrue:Lcom/pinguo/camera360/login/model/EmailLogin;

    if-eqz v8, :cond_8c

    iget-object v8, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mEmailLoginFutrue:Lcom/pinguo/camera360/login/model/EmailLogin;

    invoke-virtual {v8, v10}, Lcom/pinguo/camera360/login/model/EmailLogin;->cancel(Z)Z

    :cond_8c
    new-instance v8, Lcom/pinguo/camera360/login/model/EmailLogin;

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v8, v9, v2, v5}, Lcom/pinguo/camera360/login/model/EmailLogin;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mEmailLoginFutrue:Lcom/pinguo/camera360/login/model/EmailLogin;

    invoke-direct {p0}, Lcom/pinguo/camera360/login/PGLoginFragment;->showDialog()V

    iget-object v8, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mEmailLoginFutrue:Lcom/pinguo/camera360/login/model/EmailLogin;

    new-instance v9, Lcom/pinguo/camera360/login/PGLoginFragment$6;

    invoke-direct {v9, p0}, Lcom/pinguo/camera360/login/PGLoginFragment$6;-><init>(Lcom/pinguo/camera360/login/PGLoginFragment;)V

    invoke-virtual {v8, v9}, Lcom/pinguo/camera360/login/model/EmailLogin;->get(Lcom/pinguo/lib/os/AsyncResult;)V

    goto/16 :goto_13

    :catch_a6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_83
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/pinguo/camera360/login/PGLoginFragment;
    .registers 4

    new-instance v1, Lcom/pinguo/camera360/login/PGLoginFragment;

    invoke-direct {v1}, Lcom/pinguo/camera360/login/PGLoginFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "email_message"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/login/PGLoginFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private varargs protecteMoreClickThirdSite([Landroid/view/View;)V
    .registers 8

    const/4 v2, 0x0

    array-length v3, p1

    move v1, v2

    :goto_3
    if-lt v1, v3, :cond_6

    return-void

    :cond_6
    aget-object v0, p1, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    const/4 v4, 0x1

    const/16 v5, 0x1f4

    invoke-static {v0, v4, v5}, Lcom/pinguo/lib/util/ViewUtils;->setDelayedClickable(Landroid/view/View;ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private setRootViewBackground(Landroid/view/View;)V
    .registers 8

    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020200

    invoke-static {v4, v5, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_18} :catch_25

    :goto_18
    return-void

    :catch_19
    move-exception v2

    const-string/jumbo v5, "#60495b"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_18

    :catch_25
    move-exception v2

    const-string/jumbo v5, "#60495b"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_18
.end method

.method private showDialog()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_d
    return-void

    :cond_e
    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V

    goto :goto_d
.end method

.method private showMessage(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mGoToFindPasswordParent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mThirdLoginParent:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, p1}, Lcom/pinguo/camera360/login/PGLoginFragment;->showToast(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method private showToast(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V
    .registers 15

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v7, "HTC 802w"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    new-instance v2, Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v2, v6, p3, v9}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V

    :goto_1a
    return-void

    :cond_1b
    new-array v3, v10, [I

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v4, v3, v8

    new-array v0, v10, [I

    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v1, v0, v8

    add-int v6, v4, v1

    div-int/lit8 v5, v6, 0x2

    iget-object v6, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mToast:Landroid/widget/Toast;

    if-eqz v6, :cond_36

    iget-object v6, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->cancel()V

    :cond_36
    invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, p3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mToast:Landroid/widget/Toast;

    iget-object v6, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mToast:Landroid/widget/Toast;

    const/16 v7, 0x31

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v5, v8

    invoke-virtual {v6, v7, v9, v8}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v6, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1a
.end method


# virtual methods
.method public hideErrorPromptTextView(I)V
    .registers 6

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mError:I

    if-ne v0, v1, :cond_a

    if-ne p1, v2, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mError:I

    if-ne v0, v2, :cond_10

    if-eq p1, v1, :cond_9

    :cond_10
    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mErrorPromptText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mErrorPromptText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseFragment;->onAttach(Landroid/app/Activity;)V

    instance-of v0, p1, Lcom/pinguo/camera360/login/PGLoginFragment$PGLoginFragmentListener;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/pinguo/camera360/login/PGLoginFragment$PGLoginFragmentListener;

    iput-object p1, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mCallback:Lcom/pinguo/camera360/login/PGLoginFragment$PGLoginFragmentListener;

    :cond_b
    return-void
.end method

.method public onBackClick()V
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_52

    :cond_9
    :goto_9
    :pswitch_9
    return-void

    :pswitch_a
    iget-object v1, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mCallback:Lcom/pinguo/camera360/login/PGLoginFragment$PGLoginFragmentListener;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mCallback:Lcom/pinguo/camera360/login/PGLoginFragment$PGLoginFragmentListener;

    invoke-interface {v1}, Lcom/pinguo/camera360/login/PGLoginFragment$PGLoginFragmentListener;->authAgree()Z

    goto :goto_9

    :pswitch_14
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteOne:Landroid/widget/ImageView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteTwo:Landroid/widget/ImageView;

    aput-object v2, v1, v3

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteThree:Landroid/widget/ImageView;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteFour:Landroid/widget/ImageView;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteFive:Landroid/widget/ImageView;

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/login/PGLoginFragment;->protecteMoreClickThirdSite([Landroid/view/View;)V

    iget-object v1, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mCallback:Lcom/pinguo/camera360/login/PGLoginFragment$PGLoginFragmentListener;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mCallback:Lcom/pinguo/camera360/login/PGLoginFragment$PGLoginFragmentListener;

    iget-object v2, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mGoToFindPasswordParent:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mThirdLoginParent:Landroid/widget/LinearLayout;

    invoke-interface {v1, p1, v2, v3}, Lcom/pinguo/camera360/login/PGLoginFragment$PGLoginFragmentListener;->startThirdLoginForLoginEmail(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto :goto_9

    :pswitch_3f
    invoke-static {v3}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalLoginLayBtnClick(I)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    const/16 v1, 0x1f4

    invoke-static {p1, v3, v1}, Lcom/pinguo/lib/util/ViewUtils;->setDelayedClickable(Landroid/view/View;ZI)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/login/PGLoginFragment;->loginFromEmail(Landroid/content/Context;)V

    goto :goto_9

    :pswitch_data_52
    .packed-switch 0x7f0a02ac
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_3f
        :pswitch_9
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string/jumbo v1, "email_message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mEmail:Ljava/lang/String;

    :cond_12
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 17

    const v10, 0x7f03007b

    const/4 v11, 0x0

    invoke-virtual {p1, v10, p2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0a02aa

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mRootView:Landroid/view/View;

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mRootView:Landroid/view/View;

    invoke-direct {p0, v10}, Lcom/pinguo/camera360/login/PGLoginFragment;->setRootViewBackground(Landroid/view/View;)V

    const v10, 0x7f0a02ab

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pinguo/camera360/ui/TitleView;

    const v10, 0x7f0a00b2

    invoke-virtual {v3, v10}, Lcom/pinguo/camera360/ui/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v10, 0x7f0801aa

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3, p0}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V

    const v10, 0x7f0a02bb

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mGoToFindPasswordParent:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mGoToFindPasswordParent:Landroid/widget/TextView;

    new-instance v11, Lcom/pinguo/camera360/login/PGLoginFragment$1;

    invoke-direct {v11, p0}, Lcom/pinguo/camera360/login/PGLoginFragment$1;-><init>(Lcom/pinguo/camera360/login/PGLoginFragment;)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v10, 0x7f0a02b5

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;

    iput-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mEmailInput:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mEmailInput:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->setIsCheckEmail(Z)V

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mEmail:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_66

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mEmailInput:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;

    iget-object v11, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mEmail:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->setText(Ljava/lang/CharSequence;)V

    :cond_66
    const v10, 0x7f0a02b7

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/pinguo/camera360/login/EditTextWithLine;

    iput-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mEmailPasswordInput:Lcom/pinguo/camera360/login/EditTextWithLine;

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mEmailPasswordInput:Lcom/pinguo/camera360/login/EditTextWithLine;

    sget-object v11, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v10, v11}, Lcom/pinguo/camera360/login/EditTextWithLine;->setTypeface(Landroid/graphics/Typeface;)V

    const v10, 0x7f0a02b9

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mErrorPromptText:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mErrorPromptText:Landroid/widget/TextView;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mEmailPasswordInput:Lcom/pinguo/camera360/login/EditTextWithLine;

    new-instance v11, Lcom/pinguo/camera360/login/PGLoginFragment$2;

    invoke-direct {v11, p0}, Lcom/pinguo/camera360/login/PGLoginFragment$2;-><init>(Lcom/pinguo/camera360/login/PGLoginFragment;)V

    invoke-virtual {v10, v11}, Lcom/pinguo/camera360/login/EditTextWithLine;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mEmailPasswordInput:Lcom/pinguo/camera360/login/EditTextWithLine;

    new-instance v11, Lcom/pinguo/camera360/login/PGLoginFragment$3;

    invoke-direct {v11, p0}, Lcom/pinguo/camera360/login/PGLoginFragment$3;-><init>(Lcom/pinguo/camera360/login/PGLoginFragment;)V

    invoke-virtual {v10, v11}, Lcom/pinguo/camera360/login/EditTextWithLine;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mEmailPasswordInput:Lcom/pinguo/camera360/login/EditTextWithLine;

    new-instance v11, Lcom/pinguo/camera360/login/PGLoginFragment$4;

    invoke-direct {v11, p0}, Lcom/pinguo/camera360/login/PGLoginFragment$4;-><init>(Lcom/pinguo/camera360/login/PGLoginFragment;)V

    invoke-virtual {v10, v11}, Lcom/pinguo/camera360/login/EditTextWithLine;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v10, 0x7f0a02b8

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mEyeImagView:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mEyeImagView:Landroid/widget/ImageView;

    new-instance v11, Lcom/pinguo/camera360/login/PGLoginFragment$5;

    invoke-direct {v11, p0}, Lcom/pinguo/camera360/login/PGLoginFragment$5;-><init>(Lcom/pinguo/camera360/login/PGLoginFragment;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mEmailInput:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;

    invoke-virtual {v10, p0}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->setmHideErrorPromptListerner(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;)V

    const v10, 0x7f0a02af

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteOne:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteOne:Landroid/widget/ImageView;

    invoke-virtual {v10, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v10, 0x7f0a02b0

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteTwo:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteTwo:Landroid/widget/ImageView;

    invoke-virtual {v10, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v10, 0x7f0a02b1

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteThree:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteThree:Landroid/widget/ImageView;

    invoke-virtual {v10, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v10, 0x7f0a02b2

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteFour:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteFour:Landroid/widget/ImageView;

    invoke-virtual {v10, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v10, 0x7f0a02b3

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteFive:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteFive:Landroid/widget/ImageView;

    invoke-virtual {v10, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const v10, 0x7f0a02ac

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo v10, "zh"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_173

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const v10, 0x70e8e8e8

    invoke-direct {v6, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const v10, 0x70e3c64f

    invoke-direct {v7, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v10, 0x0

    const/4 v11, 0x7

    const/16 v12, 0x21

    invoke-virtual {v1, v6, v10, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/4 v10, 0x7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x21

    invoke-virtual {v1, v7, v10, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_173
    const-string/jumbo v10, "zh"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_200

    const-string/jumbo v10, "cn"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_200

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteOne:Landroid/widget/ImageView;

    sget-object v11, Lcom/pinguo/camera360/login/PGLoginActivity;->THRID_BUTTON_TAG_FOR_ZH_CN:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteOne:Landroid/widget/ImageView;

    const v11, 0x7f0203e9

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteTwo:Landroid/widget/ImageView;

    sget-object v11, Lcom/pinguo/camera360/login/PGLoginActivity;->THRID_BUTTON_TAG_FOR_ZH_CN:[Ljava/lang/String;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteTwo:Landroid/widget/ImageView;

    const v11, 0x7f0203ee

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteThree:Landroid/widget/ImageView;

    sget-object v11, Lcom/pinguo/camera360/login/PGLoginActivity;->THRID_BUTTON_TAG_FOR_ZH_CN:[Ljava/lang/String;

    const/4 v12, 0x2

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteThree:Landroid/widget/ImageView;

    const v11, 0x7f0203df

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteFour:Landroid/widget/ImageView;

    sget-object v11, Lcom/pinguo/camera360/login/PGLoginActivity;->THRID_BUTTON_TAG_FOR_ZH_CN:[Ljava/lang/String;

    const/4 v12, 0x3

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteFour:Landroid/widget/ImageView;

    const v11, 0x7f0203f3

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteFive:Landroid/widget/ImageView;

    sget-object v11, Lcom/pinguo/camera360/login/PGLoginActivity;->THRID_BUTTON_TAG_FOR_ZH_CN:[Ljava/lang/String;

    const/4 v12, 0x4

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteFive:Landroid/widget/ImageView;

    const v11, 0x7f0203e4

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1df
    const v10, 0x7f0a02ba

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v10, 0x7f0a02ad

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mThirdLoginParent:Landroid/widget/LinearLayout;

    const v10, 0x7f0a02b4

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/pinguo/camera360/login/CheckEmailViewGroup;

    iput-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mCheckEmailViewGroup:Lcom/pinguo/camera360/login/CheckEmailViewGroup;

    return-object v9

    :cond_200
    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteOne:Landroid/widget/ImageView;

    sget-object v11, Lcom/pinguo/camera360/login/PGLoginActivity;->THRID_BUTTON_TAG_FOR_DEFAULT:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteOne:Landroid/widget/ImageView;

    const v11, 0x7f0203df

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteTwo:Landroid/widget/ImageView;

    sget-object v11, Lcom/pinguo/camera360/login/PGLoginActivity;->THRID_BUTTON_TAG_FOR_DEFAULT:[Ljava/lang/String;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteTwo:Landroid/widget/ImageView;

    const v11, 0x7f0203f3

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteThree:Landroid/widget/ImageView;

    sget-object v11, Lcom/pinguo/camera360/login/PGLoginActivity;->THRID_BUTTON_TAG_FOR_DEFAULT:[Ljava/lang/String;

    const/4 v12, 0x2

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteThree:Landroid/widget/ImageView;

    const v11, 0x7f0203e9

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteFour:Landroid/widget/ImageView;

    sget-object v11, Lcom/pinguo/camera360/login/PGLoginActivity;->THRID_BUTTON_TAG_FOR_DEFAULT:[Ljava/lang/String;

    const/4 v12, 0x3

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteFour:Landroid/widget/ImageView;

    const v11, 0x7f0203ee

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteFive:Landroid/widget/ImageView;

    sget-object v11, Lcom/pinguo/camera360/login/PGLoginActivity;->THRID_BUTTON_TAG_FOR_DEFAULT:[Ljava/lang/String;

    const/4 v12, 0x4

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v10, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mSiteFive:Landroid/widget/ImageView;

    const v11, 0x7f0203e4

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1df
.end method

.method public onDestroy()V
    .registers 7

    iget-object v4, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mEmailInput:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;

    invoke-virtual {v4}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->cancelEmailCheck()V

    iget-object v4, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mCheckEmailViewGroup:Lcom/pinguo/camera360/login/CheckEmailViewGroup;

    invoke-virtual {v4}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->cancelAllMessage()V

    iget-object v4, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mEmailLoginFutrue:Lcom/pinguo/camera360/login/model/EmailLogin;

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mEmailLoginFutrue:Lcom/pinguo/camera360/login/model/EmailLogin;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/login/model/EmailLogin;->cancel(Z)Z

    :cond_14
    :try_start_14
    iget-object v4, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v4, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_3a

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_3a

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const-string/jumbo v4, "test"

    const-string/jumbo v5, "\u624b\u52a8\u91ca\u653e\u4e86\u5185\u5b58"

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3a} :catch_3e

    :cond_3a
    :goto_3a
    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onDestroy()V

    return-void

    :catch_3e
    move-exception v4

    goto :goto_3a
.end method

.method public onRightBtnClick()V
    .registers 1

    return-void
.end method

.method public showEmailCheckStatus(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mCheckEmailViewGroup:Lcom/pinguo/camera360/login/CheckEmailViewGroup;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/login/CheckEmailViewGroup;->changePromptIconState(I)V

    return-void
.end method

.method public showErrorPromptTextView(Ljava/lang/String;I)V
    .registers 5

    iput p2, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mError:I

    iget v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mError:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/login/PGLoginFragment;->showEmailCheckStatus(I)V

    :cond_b
    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mErrorPromptText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/login/PGLoginFragment;->mErrorPromptText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
