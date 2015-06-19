.class public Lcom/pinguo/camera360/cloud/login/ModifyNickName;
.super Landroid/app/Activity;
.source "ModifyNickName.java"
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;
.field private static final TAG:Ljava/lang/String; = "ModifyNickName"
.field private mChangeNicknameFuture:Lcom/pinguo/lib/os/AsyncFuture;
.field private mErrorTipTV:Landroid/widget/TextView;
.field private mInputNickname:Lcom/pinguo/camera360/ui/EditTextWithFork;
.field private mSaveNickname:Landroid/widget/ImageView;
.field private mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/cloud/login/ModifyNickName;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mErrorTipTV:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/cloud/login/ModifyNickName;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->dismissDialog()V
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/cloud/login/ModifyNickName;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->onRemoteNicknameExist()V
return-void
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/cloud/login/ModifyNickName;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->showMessage(Ljava/lang/String;)V
return-void
.end method
.method private changeNickname(Ljava/lang/String;)V
.registers 4
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/share/util/ShareModuleUtil;->hasNet(Landroid/content/Context;)Z
move-result v0
if-nez v0, :cond_15
const v0, 0x7f08017e
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->showMessage(Ljava/lang/String;)V
:goto_14
return-void
:cond_15
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mErrorTipTV:Landroid/widget/TextView;
const v1, 0x7f080171
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
goto :goto_14
:cond_24
invoke-direct {p0, p1}, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->changeNicknameImp(Ljava/lang/String;)V
goto :goto_14
.end method
.method private changeNicknameImp(Ljava/lang/String;)V
.registers 5
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mChangeNicknameFuture:Lcom/pinguo/lib/os/AsyncFuture;
if-eqz v1, :cond_a
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mChangeNicknameFuture:Lcom/pinguo/lib/os/AsyncFuture;
const/4 v2, 0x1
invoke-interface {v1, v2}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z
:cond_a
invoke-static {p0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/login/model/User;->changeNickname(Ljava/lang/String;)Lcom/pinguo/lib/os/AsyncFuture;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mChangeNicknameFuture:Lcom/pinguo/lib/os/AsyncFuture;
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->showDialog()V
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mChangeNicknameFuture:Lcom/pinguo/lib/os/AsyncFuture;
new-instance v2, Lcom/pinguo/camera360/cloud/login/ModifyNickName$2;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/cloud/login/ModifyNickName$2;-><init>(Lcom/pinguo/camera360/cloud/login/ModifyNickName;)V
invoke-interface {v1, v2}, Lcom/pinguo/lib/os/AsyncFuture;->get(Lcom/pinguo/lib/os/AsyncResult;)V
return-void
.end method
.method private dismissDialog()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->cancel()V
:cond_11
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
return-void
.end method
.method private init()V
.registers 4
const v1, 0x7f0a04eb
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/ui/TitleView;
const v1, 0x7f080165
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V
const v1, 0x7f0a04ec
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/ui/EditTextWithFork;
iput-object v1, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mInputNickname:Lcom/pinguo/camera360/ui/EditTextWithFork;
const v1, 0x7f0a00b4
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mSaveNickname:Landroid/widget/ImageView;
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mSaveNickname:Landroid/widget/ImageView;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mInputNickname:Lcom/pinguo/camera360/ui/EditTextWithFork;
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/EditTextWithFork;->setClearButtonEvent()V
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mSaveNickname:Landroid/widget/ImageView;
invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mInputNickname:Lcom/pinguo/camera360/ui/EditTextWithFork;
new-instance v2, Lcom/pinguo/camera360/cloud/login/ModifyNickName$1;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/cloud/login/ModifyNickName$1;-><init>(Lcom/pinguo/camera360/cloud/login/ModifyNickName;)V
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/EditTextWithFork;->addTextChangedListener(Landroid/text/TextWatcher;)V
const v1, 0x7f0a04ed
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mErrorTipTV:Landroid/widget/TextView;
return-void
.end method
.method private onRemoteNicknameExist()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mErrorTipTV:Landroid/widget/TextView;
const v1, 0x7f080170
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
return-void
.end method
.method private showDialog()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_e
:goto_d
return-void
:cond_e
new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
const/4 v1, 0x6
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setProgressStyle(I)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCanceledOnTouchOutside(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V
goto :goto_d
.end method
.method private showMessage(Ljava/lang/String;)V
.registers 4
new-instance v0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
const/4 v1, 0x0
invoke-direct {v0, p0, p1, v1}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;I)V
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V
return-void
.end method
.method private updateView()V
.registers 6
iget-object v3, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mSaveNickname:Landroid/widget/ImageView;
const v4, 0x7f020150
invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V
invoke-static {p0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;
move-result-object v2
if-eqz v2, :cond_2a
iget-object v0, v2, Lcom/pinguo/camera360/login/model/User$Info;->nickname:Ljava/lang/String;
if-eqz v0, :cond_2a
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v3
if-nez v3, :cond_2a
iget-object v3, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mInputNickname:Lcom/pinguo/camera360/ui/EditTextWithFork;
invoke-virtual {v3, v0}, Lcom/pinguo/camera360/ui/EditTextWithFork;->setText(Ljava/lang/CharSequence;)V
iget-object v3, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mInputNickname:Lcom/pinguo/camera360/ui/EditTextWithFork;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v4
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/ui/EditTextWithFork;->setSelection(I)V
:cond_2a
return-void
.end method
.method public onBackClick()V
.registers 1
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->finish()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/cloud/login/ModifyNickName; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v1
packed-switch v1, :pswitch_data_2a
:goto_7
const-string v1, " - Lcom/pinguo/camera360/cloud/login/ModifyNickName; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_8
const-string/jumbo v2, "input_method"
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
iget-object v2, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mInputNickname:Lcom/pinguo/camera360/ui/EditTextWithFork;
invoke-virtual {v2}, Lcom/pinguo/camera360/ui/EditTextWithFork;->getWindowToken()Landroid/os/IBinder;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
iget-object v2, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mInputNickname:Lcom/pinguo/camera360/ui/EditTextWithFork;
invoke-virtual {v2}, Lcom/pinguo/camera360/ui/EditTextWithFork;->getText()Landroid/text/Editable;
move-result-object v2
invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v2}, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->changeNickname(Ljava/lang/String;)V
goto :goto_7
nop
:pswitch_data_2a
.packed-switch 0x7f0a00b4
:pswitch_8
.end packed-switch
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/cloud/login/ModifyNickName; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const v1, 0x7f0300db
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->setContentView(I)V
new-instance v0, Landroid/util/DisplayMetrics;
invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->getWindowManager()Landroid/view/WindowManager;
move-result-object v1
invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->init()V
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->updateView()V
const-string v1, " - Lcom/pinguo/camera360/cloud/login/ModifyNickName; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/cloud/login/ModifyNickName; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mChangeNicknameFuture:Lcom/pinguo/lib/os/AsyncFuture;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->mChangeNicknameFuture:Lcom/pinguo/lib/os/AsyncFuture;
const/4 v1, 0x1
invoke-interface {v0, v1}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z
:cond_a
invoke-super {p0}, Landroid/app/Activity;->onDestroy()V
const-string v1, " - Lcom/pinguo/camera360/cloud/login/ModifyNickName; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/cloud/login/ModifyNickName; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onPause()V
invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V
const-string v1, " - Lcom/pinguo/camera360/cloud/login/ModifyNickName; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/cloud/login/ModifyNickName; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onResume()V
invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V
const-string v1, " - Lcom/pinguo/camera360/cloud/login/ModifyNickName; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onRightBtnClick()V
.registers 1
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/login/ModifyNickName;->finish()V
return-void
.end method