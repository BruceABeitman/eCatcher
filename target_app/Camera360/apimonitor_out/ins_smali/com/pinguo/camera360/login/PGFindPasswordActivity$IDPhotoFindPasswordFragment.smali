.class public Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;
.super Lcom/pinguo/camera360/base/BaseFragment;
.source "PGFindPasswordActivity.java"
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;
.implements Lcom/pinguo/camera360/login/PGFindPasswordActivity$SavePageStateListener;
.field private static EMAIL_MATCH:Ljava/util/HashMap; = null
.field private static final TAG:Ljava/lang/String; = "IDPhotoFindPasswordFragment"
.field private mEmail:Ljava/lang/String;
.field private mEmailInputText:Lcom/pinguo/camera360/login/EditTextWithLine;
.field private mErrorText:Landroid/widget/TextView;
.field private mFindPassword:Lcom/pinguo/camera360/login/model/FindPassword;
.field private mFindPasswordBtn:Landroid/widget/Button;
.field private mRootView:Landroid/view/View;
.field private mToast:Lcom/pinguo/camera360/lib/ui/RotateTextToast;
.field private mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->EMAIL_MATCH:Ljava/util/HashMap;
sget-object v0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->EMAIL_MATCH:Ljava/util/HashMap;
const-string/jumbo v1, "qq.com"
const-string/jumbo v2, "http://mail.qq.com/"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->EMAIL_MATCH:Ljava/util/HashMap;
const-string/jumbo v1, "gmail.com"
const-string/jumbo v2, "http://mail.google.com/"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->EMAIL_MATCH:Ljava/util/HashMap;
const-string/jumbo v1, "sina.com"
const-string/jumbo v2, "http://mail.sina.com.cn/"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->EMAIL_MATCH:Ljava/util/HashMap;
const-string/jumbo v1, "163.com"
const-string/jumbo v2, "http://mail.163.com/"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->EMAIL_MATCH:Ljava/util/HashMap;
const-string/jumbo v1, "126.com"
const-string/jumbo v2, "http://mail.126.com/"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->EMAIL_MATCH:Ljava/util/HashMap;
const-string/jumbo v1, "yeah.net"
const-string/jumbo v2, "http://www.yeah.net/"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->EMAIL_MATCH:Ljava/util/HashMap;
const-string/jumbo v1, "sohu.com"
const-string/jumbo v2, "http://mail.sohu.com/"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->EMAIL_MATCH:Ljava/util/HashMap;
const-string/jumbo v1, "tom.com"
const-string/jumbo v2, "http://mail.tom.com/"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->EMAIL_MATCH:Ljava/util/HashMap;
const-string/jumbo v1, "sogou.com"
const-string/jumbo v2, "http://mail.sogou.com/"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->EMAIL_MATCH:Ljava/util/HashMap;
const-string/jumbo v1, "139.com"
const-string/jumbo v2, "http://mail.10086.cn/"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->EMAIL_MATCH:Ljava/util/HashMap;
const-string/jumbo v1, "hotmail.com"
const-string/jumbo v2, "http://www.hotmail.com/"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->EMAIL_MATCH:Ljava/util/HashMap;
const-string/jumbo v1, "live.com"
const-string/jumbo v2, "http://login.live.com/"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->EMAIL_MATCH:Ljava/util/HashMap;
const-string/jumbo v1, "live.cn"
const-string/jumbo v2, "http://login.live.cn/"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->EMAIL_MATCH:Ljava/util/HashMap;
const-string/jumbo v1, "live.com.cn"
const-string/jumbo v2, "http://live.com.cn/"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->EMAIL_MATCH:Ljava/util/HashMap;
const-string/jumbo v1, "189.com"
const-string/jumbo v2, "http://webmail16.189.cn/webmail/"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->EMAIL_MATCH:Ljava/util/HashMap;
const-string/jumbo v1, "yahoo.com.cn"
const-string/jumbo v2, "http://mail.cn.yahoo.com/"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->EMAIL_MATCH:Ljava/util/HashMap;
const-string/jumbo v1, "yahoo.cn"
const-string/jumbo v2, "http://mail.cn.yahoo.com/"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->EMAIL_MATCH:Ljava/util/HashMap;
const-string/jumbo v1, "eyou.com"
const-string/jumbo v2, "http://www.eyou.com/"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->EMAIL_MATCH:Ljava/util/HashMap;
const-string/jumbo v1, "21cn.com"
const-string/jumbo v2, "http://mail.21cn.com/"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->EMAIL_MATCH:Ljava/util/HashMap;
const-string/jumbo v1, "188.com"
const-string/jumbo v2, "http://www.188.com/"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->EMAIL_MATCH:Ljava/util/HashMap;
const-string/jumbo v1, "foxmail.com"
const-string/jumbo v2, "http://www.foxmail.com/"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseFragment;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mEmail:Ljava/lang/String;
iput-object v0, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mEmailInputText:Lcom/pinguo/camera360/login/EditTextWithLine;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mErrorText:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->dissmissDialog()V
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->showMessage(Ljava/lang/String;)V
return-void
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->showErrorMessage(Ljava/lang/String;)V
return-void
.end method
.method private dissmissDialog()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V
:cond_11
return-void
.end method
.method public static newInstance(Ljava/lang/String;)Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;
.registers 4
new-instance v1, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;
invoke-direct {v1}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;-><init>()V
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string/jumbo v2, "email_message"
invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->setArguments(Landroid/os/Bundle;)V
return-object v1
.end method
.method private sendResetEmail(Landroid/content/Context;)V
.registers 9
iget-object v5, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mEmailInputText:Lcom/pinguo/camera360/login/EditTextWithLine;
invoke-virtual {v5}, Lcom/pinguo/camera360/login/EditTextWithLine;->getText()Landroid/text/Editable;
move-result-object v5
invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v5
if-eqz v5, :cond_1b
const v5, 0x7f08019f
invoke-virtual {p0, v5}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-direct {p0, v5}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->showErrorMessage(Ljava/lang/String;)V
:goto_1a
return-void
:cond_1b
const-string/jumbo v4, "^[0-9a-z_-][_.0-9a-z-]{0,31}@([0-9a-z][0-9a-z-]{0,30}\\.){1,4}[a-z]{2,4}$"
const/4 v5, 0x2
invoke-static {v4, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v2
invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z
move-result v0
if-nez v0, :cond_38
const v5, 0x7f0801a1
invoke-virtual {p0, v5}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-direct {p0, v5}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->showErrorMessage(Ljava/lang/String;)V
goto :goto_1a
:cond_38
iget-object v5, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mFindPassword:Lcom/pinguo/camera360/login/model/FindPassword;
if-eqz v5, :cond_42
iget-object v5, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mFindPassword:Lcom/pinguo/camera360/login/model/FindPassword;
const/4 v6, 0x1
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/login/model/FindPassword;->cancel(Z)Z
:cond_42
new-instance v5, Lcom/pinguo/camera360/login/model/FindPassword;
invoke-direct {v5, p1, v1}, Lcom/pinguo/camera360/login/model/FindPassword;-><init>(Landroid/content/Context;Ljava/lang/String;)V
iput-object v5, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mFindPassword:Lcom/pinguo/camera360/login/model/FindPassword;
invoke-direct {p0}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->showDialog()V
iget-object v5, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mFindPassword:Lcom/pinguo/camera360/login/model/FindPassword;
new-instance v6, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment$2;
invoke-direct {v6, p0}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment$2;-><init>(Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;)V
invoke-virtual {v5, v6}, Lcom/pinguo/camera360/login/model/FindPassword;->get(Lcom/pinguo/lib/os/AsyncResult;)V
goto :goto_1a
.end method
.method private setRootViewBackground(Landroid/view/View;)V
.registers 8
:try_start_0
new-instance v3, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V
invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f020200
invoke-static {v4, v5, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v1
new-instance v0, Landroid/graphics/drawable/BitmapDrawable;
invoke-direct {v0, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
:goto_18
:try_end_18
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19
.catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_18} :catch_25
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
iget-object v0, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z
move-result v0
if-eqz v0, :cond_e
:goto_d
return-void
:cond_e
new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
iget-object v0, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
const/4 v1, 0x6
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setProgressStyle(I)V
iget-object v0, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCanceledOnTouchOutside(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mWaitDialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V
goto :goto_d
.end method
.method private showErrorMessage(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mErrorText:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mErrorText:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mErrorText:Landroid/widget/TextView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
:cond_13
return-void
.end method
.method private showMessage(Ljava/lang/String;)V
.registers 5
new-instance v0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const/4 v2, 0x0
invoke-direct {v0, v1, p1, v2}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;I)V
iput-object v0, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mToast:Lcom/pinguo/camera360/lib/ui/RotateTextToast;
iget-object v0, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mToast:Lcom/pinguo/camera360/lib/ui/RotateTextToast;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V
return-void
.end method
.method public onBackClick()V
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v6, 0x0
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v3
invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
packed-switch v3, :pswitch_data_4a
:goto_c
const-string v1, " - Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_d
invoke-static {}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalPasswordFindBackLayEmailClick()V
:try_start_10
invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
const-string/jumbo v5, "input_method"
invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/view/inputmethod/InputMethodManager;
iget-object v4, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mEmailInputText:Lcom/pinguo/camera360/login/EditTextWithLine;
invoke-virtual {v4}, Lcom/pinguo/camera360/login/EditTextWithLine;->getWindowToken()Landroid/os/IBinder;
move-result-object v4
const/4 v5, 0x0
invoke-virtual {v2, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
:goto_27
:try_end_27
.catch Ljava/lang/Exception; {:try_start_10 .. :try_end_27} :catch_41
invoke-virtual {p1, v6}, Landroid/view/View;->setClickable(Z)V
const/4 v4, 0x1
const/16 v5, 0x1f4
invoke-static {p1, v4, v5}, Lcom/pinguo/lib/util/ViewUtils;->setDelayedClickable(Landroid/view/View;ZI)V
invoke-static {v0}, Lcom/pinguo/share/util/ShareModuleUtil;->hasNet(Landroid/content/Context;)Z
move-result v4
if-nez v4, :cond_46
const v4, 0x7f08017e
invoke-virtual {p0, v4}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {p0, v4}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->showMessage(Ljava/lang/String;)V
goto :goto_c
:catch_41
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_27
:cond_46
invoke-direct {p0, v0}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->sendResetEmail(Landroid/content/Context;)V
goto :goto_c
:pswitch_data_4a
.packed-switch 0x7f0a02c4
:pswitch_d
.end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->getArguments()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_12
const-string/jumbo v1, "email_message"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mEmail:Ljava/lang/String;
:cond_12
const-string v1, " - Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 8
const/4 v3, 0x4
const v1, 0x7f03007d
const/4 v2, 0x0
invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
const v1, 0x7f0a02c1
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mRootView:Landroid/view/View;
iget-object v1, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mRootView:Landroid/view/View;
invoke-direct {p0, v1}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->setRootViewBackground(Landroid/view/View;)V
const v1, 0x7f0a02c3
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mErrorText:Landroid/widget/TextView;
iget-object v1, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mErrorText:Landroid/widget/TextView;
invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I
move-result v1
if-eq v1, v3, :cond_2f
iget-object v1, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mErrorText:Landroid/widget/TextView;
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V
:cond_2f
const v1, 0x7f0a02c2
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/login/EditTextWithLine;
iput-object v1, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mEmailInputText:Lcom/pinguo/camera360/login/EditTextWithLine;
iget-object v1, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mEmailInputText:Lcom/pinguo/camera360/login/EditTextWithLine;
new-instance v2, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment$1;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment$1;-><init>(Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;)V
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/login/EditTextWithLine;->addTextChangedListener(Landroid/text/TextWatcher;)V
const v1, 0x7f0a00b2
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
const v2, 0x7f080223
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V
const v1, 0x7f0a02c4
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Button;
iput-object v1, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mFindPasswordBtn:Landroid/widget/Button;
iget-object v1, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mFindPasswordBtn:Landroid/widget/Button;
invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v1, 0x7f0a00b0
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/ui/TitleView;
invoke-virtual {v1, p0}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V
iget-object v1, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mEmail:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_89
iget-object v1, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mEmailInputText:Lcom/pinguo/camera360/login/EditTextWithLine;
iget-object v2, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mEmail:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/login/EditTextWithLine;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mEmailInputText:Lcom/pinguo/camera360/login/EditTextWithLine;
iget-object v2, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mEmail:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/login/EditTextWithLine;->setSelection(I)V
:cond_89
return-object v0
.end method
.method public onDestroy()V
.registers 7
const-string v1, " + Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
iget-object v4, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mRootView:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v1
instance-of v4, v1, Landroid/graphics/drawable/BitmapDrawable;
if-eqz v4, :cond_26
move-object v0, v1
check-cast v0, Landroid/graphics/drawable/BitmapDrawable;
move-object v3, v0
invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v2
if-eqz v2, :cond_26
invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z
move-result v4
if-nez v4, :cond_26
invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
const-string/jumbo v4, "test"
const-string/jumbo v5, "\u624b\u52a8\u91ca\u653e\u4e86\u5185\u5b58"
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:goto_26
:cond_26
:try_end_26
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_34
iget-object v4, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mFindPassword:Lcom/pinguo/camera360/login/model/FindPassword;
if-eqz v4, :cond_30
iget-object v4, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mFindPassword:Lcom/pinguo/camera360/login/model/FindPassword;
const/4 v5, 0x1
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/login/model/FindPassword;->cancel(Z)Z
:cond_30
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onDestroy()V
const-string v1, " - Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_34
move-exception v4
goto :goto_26
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onResume()V
const-string v1, " - Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onRightBtnClick()V
.registers 1
return-void
.end method
.method public saveState(Landroid/os/Bundle;)V
.registers 4
const-string/jumbo v0, "email_key"
iget-object v1, p0, Lcom/pinguo/camera360/login/PGFindPasswordActivity$IDPhotoFindPasswordFragment;->mEmailInputText:Lcom/pinguo/camera360/login/EditTextWithLine;
invoke-virtual {v1}, Lcom/pinguo/camera360/login/EditTextWithLine;->getText()Landroid/text/Editable;
move-result-object v1
invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method