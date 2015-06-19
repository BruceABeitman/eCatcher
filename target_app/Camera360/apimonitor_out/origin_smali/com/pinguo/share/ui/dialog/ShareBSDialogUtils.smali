.class public final Lcom/pinguo/share/ui/dialog/ShareBSDialogUtils;
.super Ljava/lang/Object;
.source "ShareBSDialogUtils.java"


# static fields
.field public static final NO_RES:I = -0x3e7


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showDialog(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;
    .registers 10

    const/16 v2, -0x3e7

    new-instance v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setTitle(I)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    invoke-virtual {v1, p2}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setMessage(I)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    if-eq p3, v2, :cond_12

    invoke-virtual {v1, p3, p5}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    :cond_12
    if-eq p4, v2, :cond_17

    invoke-virtual {v1, p4, p6}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    :cond_17
    invoke-virtual {v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->create()Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object v0
.end method

.method public static showDialog(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;IZ)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;
    .registers 12

    const/16 v2, -0x3e7

    new-instance v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setTitle(I)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    invoke-virtual {v1, p2}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setMessage(I)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    if-eq p3, v2, :cond_12

    invoke-virtual {v1, p3, p5}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    :cond_12
    if-eq p4, v2, :cond_17

    invoke-virtual {v1, p4, p6}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    :cond_17
    invoke-virtual {v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->create()Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->show()V

    invoke-virtual {v0, p7, p8}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->setOrientation(IZ)V

    return-object v0
.end method

.method public static showDialog(Landroid/content/Context;ILjava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;
    .registers 10

    const/16 v2, -0x3e7

    new-instance v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setTitle(I)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    invoke-virtual {v1, p2}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    if-eq p3, v2, :cond_12

    invoke-virtual {v1, p3, p5}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    :cond_12
    if-eq p4, v2, :cond_17

    invoke-virtual {v1, p4, p6}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    :cond_17
    invoke-virtual {v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->create()Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static showDialog(Landroid/content/Context;ILjava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Lcom/pinguo/share/ui/dialog/ShareBSAlertController$RichText;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;
    .registers 11

    const/16 v2, -0x3e7

    new-instance v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setTitle(I)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    invoke-virtual {v1, p7, p2}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setMessage(Lcom/pinguo/share/ui/dialog/ShareBSAlertController$RichText;Ljava/lang/String;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    if-eq p3, v2, :cond_12

    invoke-virtual {v1, p3, p5}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    :cond_12
    if-eq p4, v2, :cond_17

    invoke-virtual {v1, p4, p6}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    :cond_17
    invoke-virtual {v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->create()Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->show()V

    return-object v0
.end method

.method public static showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;
    .registers 10

    const/16 v2, -0x3e7

    new-instance v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    invoke-virtual {v1, p2}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    if-eq p3, v2, :cond_12

    invoke-virtual {v1, p3, p5}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    :cond_12
    if-eq p4, v2, :cond_17

    invoke-virtual {v1, p4, p6}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    :cond_17
    invoke-virtual {v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->create()Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->show()V

    return-object v0
.end method

.method public static showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;IZ)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;
    .registers 12

    const/16 v2, -0x3e7

    new-instance v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    invoke-virtual {v1, p2}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    if-eq p3, v2, :cond_12

    invoke-virtual {v1, p3, p5}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    :cond_12
    if-eq p4, v2, :cond_17

    invoke-virtual {v1, p4, p6}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    :cond_17
    invoke-virtual {v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->create()Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->show()V

    return-object v0
.end method

.method public static showDialogNoTitle(Landroid/content/Context;I)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;
    .registers 8

    const/4 v4, 0x0

    const/16 v2, -0x3e7

    move-object v0, p0

    move v1, p1

    move v3, v2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/pinguo/share/ui/dialog/ShareBSDialogUtils;->showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;
    .registers 9

    const/16 v2, -0x3e7

    new-instance v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setMessage(I)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    if-eq p2, v2, :cond_f

    invoke-virtual {v1, p2, p4}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    :cond_f
    if-eq p3, v2, :cond_14

    invoke-virtual {v1, p3, p5}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    :cond_14
    invoke-virtual {v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->create()Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->show()V

    return-object v0
.end method

.method public static showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Lcom/pinguo/share/ui/dialog/ShareBSAlertController$RichText;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;
    .registers 11

    const/16 v3, -0x3e7

    new-instance v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p6, v2}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setMessage(Lcom/pinguo/share/ui/dialog/ShareBSAlertController$RichText;Ljava/lang/String;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    if-eq p2, v3, :cond_17

    invoke-virtual {v1, p2, p4}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    :cond_17
    if-eq p3, v3, :cond_1c

    invoke-virtual {v1, p3, p5}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    :cond_1c
    invoke-virtual {v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->create()Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->show()V

    return-object v0
.end method

.method public static showDialogNoTitle(Landroid/content/Context;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;
    .registers 9

    const/16 v2, -0x3e7

    new-instance v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    if-eq p2, v2, :cond_f

    invoke-virtual {v1, p2, p4}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    :cond_f
    if-eq p3, v2, :cond_14

    invoke-virtual {v1, p3, p5}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    :cond_14
    invoke-virtual {v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->create()Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->show()V

    return-object v0
.end method

.method public static showDialogNoTitle(Landroid/content/Context;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;I)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;
    .registers 10

    const/16 v2, -0x3e7

    new-instance v1, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1, p6}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;I)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    if-eq p2, v2, :cond_f

    invoke-virtual {v1, p2, p4}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    :cond_f
    if-eq p3, v2, :cond_14

    invoke-virtual {v1, p3, p5}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;

    :cond_14
    invoke-virtual {v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog$Builder;->create()Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->show()V

    return-object v0
.end method

.method public static showProgressDialog(Landroid/content/Context;IZI)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
    .registers 6

    new-instance v0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;

    invoke-direct {v0, p0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->show()V

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setOrientation(IZ)V

    return-object v0
.end method

.method public static showProgressDialog(Landroid/content/Context;IZLandroid/content/DialogInterface$OnCancelListener;I)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
    .registers 7

    new-instance v0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;

    invoke-direct {v0, p0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0, p3}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->show()V

    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setOrientation(IZ)V

    return-object v0
.end method
