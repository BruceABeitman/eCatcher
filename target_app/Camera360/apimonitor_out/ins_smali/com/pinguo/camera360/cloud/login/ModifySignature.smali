.class public Lcom/pinguo/camera360/cloud/login/ModifySignature;
.super Landroid/app/Activity;
.source "ModifySignature.java"
.field private mChangeDescriptionFuture:Lcom/pinguo/lib/os/AsyncFuture;
.field private mRotateTextToast:Lcom/pinguo/camera360/lib/ui/RotateTextToast;
.field private mSaveBtn:Landroid/widget/ImageView;
.field private mSignatureET:Landroid/widget/EditText;
.field private mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/cloud/login/ModifySignature;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature;->mSignatureET:Landroid/widget/EditText;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/cloud/login/ModifySignature;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/cloud/login/ModifySignature;->showMessage(Ljava/lang/String;)V
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/cloud/login/ModifySignature;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/cloud/login/ModifySignature;->onModifySignature(Ljava/lang/String;)V
return-void
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/cloud/login/ModifySignature;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/ModifySignature;->dismissDialog()V
return-void
.end method
.method private dismissDialog()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->cancel()V
:cond_11
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
return-void
.end method
.method private initUI()V
.registers 4
const v1, 0x7f0a04ef
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/cloud/login/ModifySignature;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/ui/TitleView;
const v1, 0x7f08016a
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V
new-instance v1, Lcom/pinguo/camera360/cloud/login/ModifySignature$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/cloud/login/ModifySignature$1;-><init>(Lcom/pinguo/camera360/cloud/login/ModifySignature;)V
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V
const v1, 0x7f0a00b4
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/cloud/login/ModifySignature;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature;->mSaveBtn:Landroid/widget/ImageView;
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature;->mSaveBtn:Landroid/widget/ImageView;
const v2, 0x7f020150
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature;->mSaveBtn:Landroid/widget/ImageView;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
const v1, 0x7f0a04f0
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/cloud/login/ModifySignature;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/EditText;
iput-object v1, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature;->mSignatureET:Landroid/widget/EditText;
return-void
.end method
.method private onModifySignature(Ljava/lang/String;)V
.registers 5
invoke-static {p0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature;->mChangeDescriptionFuture:Lcom/pinguo/lib/os/AsyncFuture;
if-eqz v1, :cond_e
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature;->mChangeDescriptionFuture:Lcom/pinguo/lib/os/AsyncFuture;
const/4 v2, 0x1
invoke-interface {v1, v2}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z
:cond_e
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/login/model/User;->changeDescription(Ljava/lang/String;)Lcom/pinguo/lib/os/AsyncFuture;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature;->mChangeDescriptionFuture:Lcom/pinguo/lib/os/AsyncFuture;
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/ModifySignature;->showDialog()V
iget-object v1, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature;->mChangeDescriptionFuture:Lcom/pinguo/lib/os/AsyncFuture;
new-instance v2, Lcom/pinguo/camera360/cloud/login/ModifySignature$2;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/cloud/login/ModifySignature$2;-><init>(Lcom/pinguo/camera360/cloud/login/ModifySignature;)V
invoke-interface {v1, v2}, Lcom/pinguo/lib/os/AsyncFuture;->get(Lcom/pinguo/lib/os/AsyncResult;)V
return-void
.end method
.method private showDialog()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_e
:goto_d
return-void
:cond_e
new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
const/4 v1, 0x6
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setProgressStyle(I)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCanceledOnTouchOutside(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature;->mWaitProgressDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V
goto :goto_d
.end method
.method private showMessage(Ljava/lang/String;)V
.registers 4
new-instance v0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
const/4 v1, 0x0
invoke-direct {v0, p0, p1, v1}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;I)V
iput-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature;->mRotateTextToast:Lcom/pinguo/camera360/lib/ui/RotateTextToast;
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature;->mRotateTextToast:Lcom/pinguo/camera360/lib/ui/RotateTextToast;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V
return-void
.end method
.method private updateUI()V
.registers 5
invoke-static {p0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;
move-result-object v1
if-eqz v1, :cond_1c
iget-object v2, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature;->mSignatureET:Landroid/widget/EditText;
iget-object v3, v1, Lcom/pinguo/camera360/login/model/User$Info;->description:Ljava/lang/String;
invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
iget-object v2, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature;->mSignatureET:Landroid/widget/EditText;
iget-object v3, v1, Lcom/pinguo/camera360/login/model/User$Info;->description:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v3
invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V
:cond_1c
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/cloud/login/ModifySignature; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f0300dc
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/login/ModifySignature;->setContentView(I)V
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/ModifySignature;->initUI()V
const-string v1, " - Lcom/pinguo/camera360/cloud/login/ModifySignature; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/cloud/login/ModifySignature; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature;->mChangeDescriptionFuture:Lcom/pinguo/lib/os/AsyncFuture;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/ModifySignature;->mChangeDescriptionFuture:Lcom/pinguo/lib/os/AsyncFuture;
invoke-interface {v0, v1}, Lcom/pinguo/lib/os/AsyncFuture;->cancel(Z)Z
:cond_a
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalSignature(I)V
invoke-super {p0}, Landroid/app/Activity;->onDestroy()V
const-string v1, " - Lcom/pinguo/camera360/cloud/login/ModifySignature; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/cloud/login/ModifySignature; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onResume()V
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/login/ModifySignature;->updateUI()V
const-string v1, " - Lcom/pinguo/camera360/cloud/login/ModifySignature; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method