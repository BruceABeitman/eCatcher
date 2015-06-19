.class public Lcom/pinguo/camera360/updateOnline/SimpleUpdateCallBack;
.super Ljava/lang/Object;
.source "SimpleUpdateCallBack.java"

# interfaces
.implements Lcom/pinguo/camera360/updateOnline/UpdateInterface;


# instance fields
.field private context:Landroid/content/Context;

.field private dialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/updateOnline/SimpleUpdateCallBack;->context:Landroid/content/Context;

    return-void
.end method

.method private dismissUpdateProgress()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/SimpleUpdateCallBack;->dialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/SimpleUpdateCallBack;->dialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V

    :cond_9
    return-void
.end method

.method private doUpdate(Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/SimpleUpdateCallBack;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;->doUpdate(Landroid/content/Context;)V

    return-void
.end method

.method private showFailDialog(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0802fc

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f08032a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

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

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->show()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private showNoNetDialog(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

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

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->show()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private showUpdateProgress(Landroid/content/Context;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 9

    const v2, 0x7f0802ff

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/SimpleUpdateCallBack;->dialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    if-nez v0, :cond_1f

    if-eqz p2, :cond_25

    const-string/jumbo v1, ""

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/updateOnline/SimpleUpdateCallBack;->dialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    :goto_1a
    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/SimpleUpdateCallBack;->dialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCanceledOnTouchOutside(Z)V

    :cond_1f
    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/SimpleUpdateCallBack;->dialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V

    return-void

    :cond_25
    const-string/jumbo v0, ""

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v3, v4}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/updateOnline/SimpleUpdateCallBack;->dialog:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    goto :goto_1a
.end method


# virtual methods
.method public beforeShow()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/updateOnline/SimpleUpdateCallBack;->dismissUpdateProgress()V

    return-void
.end method

.method public fail()V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/updateOnline/SimpleUpdateCallBack;->dismissUpdateProgress()V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/SimpleUpdateCallBack;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/updateOnline/SimpleUpdateCallBack;->showFailDialog(Landroid/content/Context;)V

    return-void
.end method

.method public isDowloading()V
    .registers 4

    invoke-direct {p0}, Lcom/pinguo/camera360/updateOnline/SimpleUpdateCallBack;->dismissUpdateProgress()V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/SimpleUpdateCallBack;->context:Landroid/content/Context;

    const v1, 0x7f0802fe

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public noNet()V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/updateOnline/SimpleUpdateCallBack;->dismissUpdateProgress()V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/SimpleUpdateCallBack;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/updateOnline/SimpleUpdateCallBack;->showNoNetDialog(Landroid/content/Context;)V

    return-void
.end method

.method public noUpdateOutThread()V
    .registers 1

    return-void
.end method

.method public onGetUpdatedInformation(Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/SimpleUpdateCallBack;->context:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/pinguo/camera360/updateOnline/SimpleUpdateCallBack;->showUpdateProgress(Landroid/content/Context;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public onGetUpdatedInformationOK()V
    .registers 1

    return-void
.end method

.method public updateOutThread(Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/updateOnline/SimpleUpdateCallBack;->doUpdate(Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;)V

    return-void
.end method
