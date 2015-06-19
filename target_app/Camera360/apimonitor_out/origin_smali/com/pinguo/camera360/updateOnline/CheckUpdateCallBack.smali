.class public Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;
.super Ljava/lang/Object;
.source "CheckUpdateCallBack.java"

# interfaces
.implements Lcom/pinguo/camera360/updateOnline/UpdateInterface;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

.field private mUpdateAlertDialog:Landroid/app/Dialog;

.field private pgUpdate:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private doUpdate(Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;->buildUpdateAlertDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mUpdateAlertDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mUpdateAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    sget-object v1, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mUpdateAlertDialog:Landroid/app/Dialog;

    goto :goto_d
.end method


# virtual methods
.method public beforeShow()V
    .registers 1

    invoke-virtual {p0}, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->dismissUpdateProgressDialog()V

    return-void
.end method

.method protected dismissUpdateProgressDialog()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->pgUpdate:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->pgUpdate:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->pgUpdate:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    :cond_14
    return-void
.end method

.method public fail()V
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->dismissUpdateProgressDialog()V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_10
    const-string/jumbo v0, "OptionAbout"

    const-string/jumbo v1, "Update fail, thread callback after activity finished!"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    return-void

    :cond_1a
    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    iget-object v1, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0802fc

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mActivity:Landroid/app/Activity;

    const v3, 0x7f08032a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setCancelable(Z)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080300

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->create()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v0, v4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v0, v4, v4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V

    goto :goto_19
.end method

.method public isDowloading()V
    .registers 4

    invoke-virtual {p0}, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->dismissUpdateProgressDialog()V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0802fe

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public noNet()V
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->dismissUpdateProgressDialog()V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_10
    const-string/jumbo v0, "OptionAbout"

    const-string/jumbo v1, "Update no wifi, thread callback after activity finished!"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    return-void

    :cond_1a
    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    iget-object v1, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setCancelable(Z)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080318

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setMessage(I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080300

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->create()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v0, v3, v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V

    goto :goto_19
.end method

.method public noUpdateOutThread()V
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->dismissUpdateProgressDialog()V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_10
    const-string/jumbo v0, "OptionAbout"

    const-string/jumbo v1, "No update out thread, thread callback after activity finished!"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    return-void

    :cond_1a
    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    iget-object v1, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802fb

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setMessage(I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setCancelable(Z)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080300

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->create()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v0, v3, v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V

    goto :goto_19
.end method

.method public onGetUpdatedInformation(Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_d
    const-string/jumbo v0, "OptionAbout"

    const-string/jumbo v1, "Update is cmwap, thread callback after activity finished!"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_16
    return-void

    :cond_17
    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    iget-object v1, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->pgUpdate:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->pgUpdate:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    iget-object v1, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0802ff

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->pgUpdate:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->pgUpdate:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->pgUpdate:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->pgUpdate:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->pgUpdate:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0, v3, v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setOrientation(IZ)V

    goto :goto_16
.end method

.method public onGetUpdatedInformationOK()V
    .registers 1

    invoke-virtual {p0}, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->dismissUpdateProgressDialog()V

    return-void
.end method

.method public updateOutThread(Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;)V
    .registers 4

    invoke-virtual {p0}, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->dismissUpdateProgressDialog()V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_f
    const-string/jumbo v0, "OptionAbout"

    const-string/jumbo v1, "Update out thread, thread callback after activity finished!"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_18
    return-void

    :cond_19
    invoke-direct {p0, p1}, Lcom/pinguo/camera360/updateOnline/CheckUpdateCallBack;->doUpdate(Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;)V

    goto :goto_18
.end method
