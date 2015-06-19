.class public Lcom/pinguo/camera360/cloud/login/AssociateMailBox;
.super Landroid/app/Activity;
.source "AssociateMailBox.java"
.implements Landroid/view/View$OnClickListener;
.field private static final ICON_RIGHT:I = 0x7f02034b
.field private static final ICON_WRONG:I = 0x7f02034f
.field private static final TAG:Ljava/lang/String;
.field private mEmailBindFuture:Lcom/pinguo/camera360/login/model/EmailBind;
.field private mEmailCheckFuture:Lcom/pinguo/camera360/login/model/EmailCheck;
.field private mEmailIconIV:Landroid/widget/ImageView;
.field private mErrorTipTV:Landroid/widget/TextView;
.field private mLastEmailAddr:Ljava/lang/String;
.field private mMailboxET:Landroid/widget/EditText;
.field private mMailboxState:I
.field private mPasswordET:Landroid/widget/EditText;
.field private mPasswordIconIv:Landroid/widget/ImageView;
.field private mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
.field private mRotationAnim:Landroid/view/animation/Animation;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mMailboxState:I
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->assocaiteMainbox()V
return-void
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;Z)Z
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->checkEmailAddr(Z)Z
move-result v0
return v0
.end method
.method static synthetic access$10(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->onRemoteCheckEmailAddrHasExisten()V
return-void
.end method
.method static synthetic access$11(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->onRemoteCheckEmailAddrException()V
return-void
.end method
.method static synthetic access$12(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->cancelProgressDialog()V
return-void
.end method
.method static synthetic access$13(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->showMessage(Ljava/lang/String;)V
return-void
.end method
.method static synthetic access$14(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->showErrorMessage(Ljava/lang/String;)V
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mEmailIconIV:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mErrorTipTV:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mMailboxState:I
return v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)Z
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->checkPassword()Z
move-result v0
return v0
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mPasswordIconIv:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->onRemoteCheckEmailAddrOk()V
return-void
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mPasswordET:Landroid/widget/EditText;
return-object v0
.end method
.method static synthetic access$9(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->assocaiteMainboxImpl(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private assocaiteMainbox()V
.registers 7
:try_start_0
const-string/jumbo v4, "input_method"
invoke-virtual {p0, v4}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/view/inputmethod/InputMethodManager;
iget-object v4, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mMailboxET:Landroid/widget/EditText;
invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;
move-result-object v4
const/4 v5, 0x0
invoke-virtual {v2, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
iget-object v4, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mPasswordET:Landroid/widget/EditText;
invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;
move-result-object v4
const/4 v5, 0x0
invoke-virtual {v2, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
:goto_1d
:try_end_1d
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_42
iget-object v4, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mMailboxET:Landroid/widget/EditText;
invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v4
invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v1
iget-object v4, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mPasswordET:Landroid/widget/EditText;
invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v4
invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v3
const/4 v4, 0x1
invoke-direct {p0, v4}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->checkEmailAddr(Z)Z
move-result v4
if-eqz v4, :cond_41
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->checkPassword()Z
move-result v4
if-eqz v4, :cond_41
invoke-direct {p0, v1, v3}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->assocaiteMainboxImpl(Ljava/lang/String;Ljava/lang/String;)V
:cond_41
return-void
:catch_42
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_1d
.end method
.method private assocaiteMainboxImpl(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mEmailBindFuture:Lcom/pinguo/camera360/login/model/EmailBind;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mEmailBindFuture:Lcom/pinguo/camera360/login/model/EmailBind;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/model/EmailBind;->cancel(Z)Z
:cond_a
new-instance v0, Lcom/pinguo/camera360/login/model/EmailBind;
invoke-direct {v0, p0, p1, p2}, Lcom/pinguo/camera360/login/model/EmailBind;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
iput-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mEmailBindFuture:Lcom/pinguo/camera360/login/model/EmailBind;
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->showProgressDialog()V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mEmailBindFuture:Lcom/pinguo/camera360/login/model/EmailBind;
new-instance v1, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$10;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$10;-><init>(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)V
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/model/EmailBind;->get(Lcom/pinguo/lib/os/AsyncResult;)V
return-void
.end method
.method private cancelProgressDialog()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
:cond_14
return-void
.end method
.method private checkEmailAddr(Z)Z
.registers 7
const/4 v2, 0x1
const/4 v1, 0x0
iget-object v3, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mMailboxET:Landroid/widget/EditText;
invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v3
invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_21
const/4 v2, 0x3
iput v2, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mMailboxState:I
invoke-direct {p0, v1}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->onCheckEmailOk(Z)V
iget-object v2, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mErrorTipTV:Landroid/widget/TextView;
const v3, 0x7f08015c
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V
:goto_20
return v1
:cond_21
invoke-direct {p0, v0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->isEmailAddrCorrect(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_36
iget-object v2, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mErrorTipTV:Landroid/widget/TextView;
const v3, 0x7f08015f
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V
const/4 v2, 0x2
iput v2, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mMailboxState:I
invoke-direct {p0, v1}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->onCheckEmailOk(Z)V
goto :goto_20
:cond_36
iget-object v3, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mErrorTipTV:Landroid/widget/TextView;
const-string/jumbo v4, ""
invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v3, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mLastEmailAddr:Ljava/lang/String;
invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_59
iget v3, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mMailboxState:I
if-ne v3, v2, :cond_4e
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->onRemoteCheckEmailAddrHasExisten()V
goto :goto_20
:cond_4e
iget v3, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mMailboxState:I
const/16 v4, 0x64
if-ne v3, v4, :cond_59
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->onRemoteCheckEmailAddrOk()V
move v1, v2
goto :goto_20
:cond_59
iput-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mLastEmailAddr:Ljava/lang/String;
new-instance v2, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$9;
invoke-direct {v2, p0, p1, v0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$9;-><init>(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;ZLjava/lang/String;)V
invoke-direct {p0, v2}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->checkEmailAddrFromRemote(Lcom/pinguo/lib/os/AsyncResult;)V
goto :goto_20
.end method
.method private checkEmailAddrFromRemote(Lcom/pinguo/lib/os/AsyncResult;)V
.registers 5
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mEmailIconIV:Landroid/widget/ImageView;
const v2, 0x7f020240
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mEmailIconIV:Landroid/widget/ImageView;
iget-object v2, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mRotationAnim:Landroid/view/animation/Animation;
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mMailboxET:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x1
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {p1, v1}, Lcom/pinguo/lib/os/AsyncResult;->onSuccess(Ljava/lang/Object;)V
return-void
.end method
.method private checkPassword()Z
.registers 6
const/4 v2, 0x1
const/4 v1, 0x0
iget-object v3, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mPasswordET:Landroid/widget/EditText;
invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v3
invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_1e
iget-object v2, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mErrorTipTV:Landroid/widget/TextView;
const v3, 0x7f08015d
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V
invoke-direct {p0, v1}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->onCheckPWOk(Z)V
:goto_1d
return v1
:cond_1e
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v3
const/16 v4, 0x14
if-gt v3, v4, :cond_37
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v3
const/4 v4, 0x6
if-lt v3, v4, :cond_37
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_43
:cond_37
iget-object v2, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mErrorTipTV:Landroid/widget/TextView;
const v3, 0x7f08015e
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V
invoke-direct {p0, v1}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->onCheckPWOk(Z)V
goto :goto_1d
:cond_43
invoke-direct {p0, v2}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->onCheckPWOk(Z)V
move v1, v2
goto :goto_1d
.end method
.method private initAnim()V
.registers 3
const v0, 0x7f040007
invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mRotationAnim:Landroid/view/animation/Animation;
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mRotationAnim:Landroid/view/animation/Animation;
new-instance v1, Landroid/view/animation/LinearInterpolator;
invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V
invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V
return-void
.end method
.method private initUI()V
.registers 4
const v1, 0x7f0a0230
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/ui/TitleView;
const v1, 0x7f080157
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V
new-instance v1, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$1;-><init>(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)V
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V
const v1, 0x7f0a0236
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v1, 0x7f0a0231
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/EditText;
iput-object v1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mMailboxET:Landroid/widget/EditText;
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mMailboxET:Landroid/widget/EditText;
new-instance v2, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$2;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$2;-><init>(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)V
invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mMailboxET:Landroid/widget/EditText;
new-instance v2, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$3;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$3;-><init>(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)V
invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mMailboxET:Landroid/widget/EditText;
new-instance v2, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$4;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$4;-><init>(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)V
invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
const v1, 0x7f0a0233
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/EditText;
iput-object v1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mPasswordET:Landroid/widget/EditText;
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mPasswordET:Landroid/widget/EditText;
new-instance v2, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$5;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$5;-><init>(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)V
invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mPasswordET:Landroid/widget/EditText;
new-instance v2, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$6;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$6;-><init>(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)V
invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mPasswordET:Landroid/widget/EditText;
new-instance v2, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$7;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$7;-><init>(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)V
invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mPasswordET:Landroid/widget/EditText;
new-instance v2, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$8;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox$8;-><init>(Lcom/pinguo/camera360/cloud/login/AssociateMailBox;)V
invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
const v1, 0x7f0a0235
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mErrorTipTV:Landroid/widget/TextView;
const v1, 0x7f0a0234
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mPasswordIconIv:Landroid/widget/ImageView;
const v1, 0x7f0a0232
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mEmailIconIV:Landroid/widget/ImageView;
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mEmailIconIV:Landroid/widget/ImageView;
invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mPasswordIconIv:Landroid/widget/ImageView;
invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->initAnim()V
return-void
.end method
.method private isEmailAddrCorrect(Ljava/lang/String;)Z
.registers 6
const-string/jumbo v2, "^[0-9a-z_-][_.0-9a-z-]{0,31}@([0-9a-z][0-9a-z-]{0,30}\\.){1,4}[a-z]{2,4}$"
const/4 v3, 0x2
invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z
move-result v3
return v3
.end method
.method private onCheckEmailOk(Z)V
.registers 6
const/high16 v3, 0x7f01
const/4 v2, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mEmailIconIV:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V
if-eqz p1, :cond_29
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mEmailIconIV:Landroid/widget/ImageView;
const v1, 0x7f02034b
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mErrorTipTV:Landroid/widget/TextView;
const-string/jumbo v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mEmailIconIV:Landroid/widget/ImageView;
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v0, v3, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V
:goto_23
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mEmailIconIV:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
return-void
:cond_29
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mEmailIconIV:Landroid/widget/ImageView;
const v1, 0x7f02034f
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mEmailIconIV:Landroid/widget/ImageView;
const/4 v1, 0x1
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v0, v3, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V
goto :goto_23
.end method
.method private onCheckPWOk(Z)V
.registers 6
const v3, 0x7f010001
const/4 v2, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mPasswordIconIv:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V
if-eqz p1, :cond_22
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mPasswordIconIv:Landroid/widget/ImageView;
const v1, 0x7f02034b
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mPasswordIconIv:Landroid/widget/ImageView;
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v0, v3, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V
:goto_1c
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mPasswordIconIv:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
return-void
:cond_22
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mPasswordIconIv:Landroid/widget/ImageView;
const v1, 0x7f02034f
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mPasswordIconIv:Landroid/widget/ImageView;
const/4 v1, 0x1
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v0, v3, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V
goto :goto_1c
.end method
.method private onRemoteCheckEmailAddrException()V
.registers 5
const/4 v3, 0x0
new-instance v0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
const v1, 0x7f08016c
invoke-direct {v0, p0, v1, v3}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V
const/4 v1, 0x5
iput v1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mMailboxState:I
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mEmailIconIV:Landroid/widget/ImageView;
invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mEmailIconIV:Landroid/widget/ImageView;
const/4 v2, 0x4
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mEmailIconIV:Landroid/widget/ImageView;
const/high16 v2, 0x7f01
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mErrorTipTV:Landroid/widget/TextView;
const-string/jumbo v2, ""
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method private onRemoteCheckEmailAddrHasExisten()V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->onCheckEmailOk(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mErrorTipTV:Landroid/widget/TextView;
const v1, 0x7f080160
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
const/4 v0, 0x1
iput v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mMailboxState:I
return-void
.end method
.method private onRemoteCheckEmailAddrOk()V
.registers 2
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->onCheckEmailOk(Z)V
const/16 v0, 0x64
iput v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mMailboxState:I
return-void
.end method
.method private showErrorMessage(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mErrorTipTV:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mErrorTipTV:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mErrorTipTV:Landroid/widget/TextView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
:cond_13
return-void
.end method
.method private showMessage(Ljava/lang/String;)V
.registers 4
new-instance v0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
const/4 v1, 0x0
invoke-direct {v0, p0, p1, v1}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;I)V
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V
return-void
.end method
.method private showProgressDialog()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_e
:goto_d
return-void
:cond_e
new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
const/4 v1, 0x6
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setProgressStyle(I)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCanceledOnTouchOutside(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V
goto :goto_d
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/cloud/login/AssociateMailBox; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x4
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
packed-switch v0, :pswitch_data_64
:pswitch_8
:goto_8
:cond_8
const-string v1, " - Lcom/pinguo/camera360/cloud/login/AssociateMailBox; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_9
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->assocaiteMainbox()V
goto :goto_8
:pswitch_d
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mEmailIconIV:Landroid/widget/ImageView;
const/high16 v1, 0x7f01
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mMailboxET:Landroid/widget/EditText;
const-string/jumbo v1, ""
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mErrorTipTV:Landroid/widget/TextView;
const-string/jumbo v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mEmailIconIV:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mPasswordET:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V
goto :goto_8
:pswitch_38
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mPasswordIconIv:Landroid/widget/ImageView;
const v1, 0x7f010001
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mPasswordET:Landroid/widget/EditText;
const-string/jumbo v1, ""
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mErrorTipTV:Landroid/widget/TextView;
const-string/jumbo v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mPasswordIconIv:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mMailboxET:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V
goto :goto_8
:pswitch_data_64
.packed-switch 0x7f0a0232
:pswitch_d
:pswitch_8
:pswitch_38
:pswitch_8
:pswitch_9
.end packed-switch
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/cloud/login/AssociateMailBox; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030066
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->setContentView(I)V
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->initUI()V
const-string v1, " - Lcom/pinguo/camera360/cloud/login/AssociateMailBox; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/cloud/login/AssociateMailBox; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mEmailCheckFuture:Lcom/pinguo/camera360/login/model/EmailCheck;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mEmailCheckFuture:Lcom/pinguo/camera360/login/model/EmailCheck;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/model/EmailCheck;->cancel(Z)Z
:cond_a
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mEmailBindFuture:Lcom/pinguo/camera360/login/model/EmailBind;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/AssociateMailBox;->mEmailBindFuture:Lcom/pinguo/camera360/login/model/EmailBind;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/model/EmailBind;->cancel(Z)Z
:cond_13
const/4 v0, 0x2
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalEmail(I)V
invoke-super {p0}, Landroid/app/Activity;->onDestroy()V
const-string v1, " - Lcom/pinguo/camera360/cloud/login/AssociateMailBox; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method