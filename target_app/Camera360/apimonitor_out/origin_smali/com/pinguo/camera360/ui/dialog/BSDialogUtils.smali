.class public final Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;
.super Ljava/lang/Object;
.source "BSDialogUtils.java"


# static fields
.field public static final NO_RES:I = -0x3e7


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showDialog(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    .registers 10

    const/16 v2, -0x3e7

    new-instance v1, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setTitle(I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-virtual {v1, p2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setMessage(I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    if-eq p3, v2, :cond_12

    invoke-virtual {v1, p3, p5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    :cond_12
    if-eq p4, v2, :cond_17

    invoke-virtual {v1, p4, p6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    :cond_17
    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->create()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object v0
.end method

.method public static showDialog(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;IZ)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    .registers 12

    const/16 v2, -0x3e7

    new-instance v1, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setTitle(I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-virtual {v1, p2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setMessage(I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    if-eq p3, v2, :cond_12

    invoke-virtual {v1, p3, p5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    :cond_12
    if-eq p4, v2, :cond_17

    invoke-virtual {v1, p4, p6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    :cond_17
    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->create()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V

    invoke-virtual {v0, p7, p8}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V

    return-object v0
.end method

.method public static showDialog(Landroid/content/Context;ILjava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    .registers 10

    const/16 v2, -0x3e7

    new-instance v1, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setTitle(I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-virtual {v1, p2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    if-eq p3, v2, :cond_12

    invoke-virtual {v1, p3, p5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    :cond_12
    if-eq p4, v2, :cond_17

    invoke-virtual {v1, p4, p6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    :cond_17
    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->create()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static showDialog(Landroid/content/Context;ILjava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Lcom/pinguo/camera360/ui/dialog/BSAlertController$RichText;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    .registers 11

    const/16 v2, -0x3e7

    new-instance v1, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setTitle(I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-virtual {v1, p7, p2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setMessage(Lcom/pinguo/camera360/ui/dialog/BSAlertController$RichText;Ljava/lang/String;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    if-eq p3, v2, :cond_12

    invoke-virtual {v1, p3, p5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    :cond_12
    if-eq p4, v2, :cond_17

    invoke-virtual {v1, p4, p6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    :cond_17
    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->create()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V

    return-object v0
.end method

.method public static showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    .registers 10

    const/16 v2, -0x3e7

    new-instance v1, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-virtual {v1, p2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    if-eq p3, v2, :cond_12

    invoke-virtual {v1, p3, p5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    :cond_12
    if-eq p4, v2, :cond_17

    invoke-virtual {v1, p4, p6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    :cond_17
    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->create()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V

    return-object v0
.end method

.method public static showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;IZ)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    .registers 12

    const/16 v2, -0x3e7

    new-instance v1, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-virtual {v1, p2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    if-eq p3, v2, :cond_12

    invoke-virtual {v1, p3, p5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    :cond_12
    if-eq p4, v2, :cond_17

    invoke-virtual {v1, p4, p6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    :cond_17
    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->create()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V

    return-object v0
.end method

.method public static showDialogHasViewAndTwoButton(Landroid/content/Context;Landroid/view/View;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;IZ)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    .registers 11

    const/16 v2, -0x3e7

    new-instance v1, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    if-eq p2, v2, :cond_f

    invoke-virtual {v1, p2, p4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    :cond_f
    if-eq p3, v2, :cond_14

    invoke-virtual {v1, p3, p5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    :cond_14
    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->create()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V

    invoke-virtual {v0, p6, p7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V

    return-object v0
.end method

.method public static showDialogHaveTitle(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    .registers 12

    const/16 v3, -0x3e7

    new-instance v1, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setTitle(I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    if-eq p3, v3, :cond_16

    invoke-virtual {v1, p3, p5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    :cond_16
    if-eq p4, v3, :cond_1b

    invoke-virtual {v1, p4, p6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    :cond_1b
    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->create()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V

    return-object v0
.end method

.method public static showDialogItems(Landroid/content/Context;I[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    .registers 6

    new-instance v1, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setTitle(I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-virtual {v1, p2, p3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->show()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static showDialogItems(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    .registers 7

    new-instance v1, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-virtual {v1, p2, p3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->create()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V

    return-object v0
.end method

.method public static showDialogNoTitle(Landroid/content/Context;I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    .registers 8

    const/4 v4, 0x0

    const/16 v2, -0x3e7

    move-object v0, p0

    move v1, p1

    move v3, v2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    .registers 10

    const/16 v3, -0x3e7

    new-instance v1, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setMessage(I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    if-eq p2, v3, :cond_f

    invoke-virtual {v1, p2, p4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    :cond_f
    if-eq p3, v3, :cond_14

    invoke-virtual {v1, p3, p5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    :cond_14
    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->create()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->getDialogMessageView()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_25

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    :cond_25
    return-object v0
.end method

.method public static showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Lcom/pinguo/camera360/ui/dialog/BSAlertController$RichText;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    .registers 11

    const/16 v3, -0x3e7

    new-instance v1, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p6, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setMessage(Lcom/pinguo/camera360/ui/dialog/BSAlertController$RichText;Ljava/lang/String;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    if-eq p2, v3, :cond_17

    invoke-virtual {v1, p2, p4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    :cond_17
    if-eq p3, v3, :cond_1c

    invoke-virtual {v1, p3, p5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    :cond_1c
    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->create()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V

    return-object v0
.end method

.method public static showDialogNoTitle(Landroid/content/Context;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    .registers 9

    const/16 v2, -0x3e7

    new-instance v1, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    if-eq p2, v2, :cond_f

    invoke-virtual {v1, p2, p4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    :cond_f
    if-eq p3, v2, :cond_14

    invoke-virtual {v1, p3, p5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    :cond_14
    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->create()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V

    return-object v0
.end method

.method public static showDialogNoTitle(Landroid/content/Context;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    .registers 10

    const/16 v2, -0x3e7

    new-instance v1, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1, p6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    if-eq p2, v2, :cond_f

    invoke-virtual {v1, p2, p4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    :cond_f
    if-eq p3, v2, :cond_14

    invoke-virtual {v1, p3, p5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    :cond_14
    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->create()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V

    return-object v0
.end method

.method public static showOptionsItems(Landroid/app/Activity;Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;Landroid/widget/TextView;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    .registers 12

    new-instance v1, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntries()[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v6

    new-instance v7, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils$1;

    invoke-direct {v7, p1, p2, p0}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils$1;-><init>(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;Landroid/widget/TextView;Landroid/app/Activity;)V

    invoke-virtual {v1, v5, v6, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/Object;ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->show()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0066

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3fe6666666666666L

    mul-double/2addr v5, v7

    double-to-int v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object v0
.end method

.method public static showOptionsItems(Landroid/app/Activity;Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;Landroid/widget/TextView;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    .registers 13

    new-instance v1, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntries()[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v6

    new-instance v7, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils$3;

    invoke-direct {v7, p1, p2, p3}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils$3;-><init>(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;Landroid/widget/TextView;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v5, v6, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/Object;ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->show()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0066

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3fe6666666666666L

    mul-double/2addr v5, v7

    double-to-int v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object v0
.end method

.method public static showOptionsItemsWithDesc(Landroid/app/Activity;Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;Landroid/widget/TextView;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    .registers 14

    new-instance v1, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-virtual {v1, p3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setTitleDesc(Ljava/lang/CharSequence;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntries()[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v6

    new-instance v7, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils$2;

    invoke-direct {v7, p1, p2, p0, p4}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils$2;-><init>(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;Landroid/widget/TextView;Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v5, v6, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/Object;ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->show()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0066

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3fe6666666666666L

    mul-double/2addr v5, v7

    double-to-int v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object v0
.end method

.method public static showProgressDialog(Landroid/content/Context;IZI)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
    .registers 6

    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setOrientation(IZ)V

    return-object v0
.end method

.method public static showProgressDialog(Landroid/content/Context;IZLandroid/content/DialogInterface$OnCancelListener;I)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
    .registers 7

    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0, p3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V

    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setOrientation(IZ)V

    return-object v0
.end method

.method public static showProgressDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;I)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
    .registers 7

    const/4 v1, 0x0

    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, p2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0, p3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V

    invoke-virtual {v0, p4, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setOrientation(IZ)V

    return-object v0
.end method

.method public static showProgressDialogTransparent(Landroid/content/Context;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
    .registers 4

    const/4 v2, 0x0

    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setProgressStyle(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setBgTrans(Z)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V

    invoke-virtual {v0, v2, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setOrientation(IZ)V

    return-object v0
.end method

.method public static showSingleChoiceItems(Landroid/app/Activity;Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    .registers 7

    new-instance v1, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntries()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/Object;ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->show()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static showSingleChoiceItems(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
    .registers 7

    new-instance v1, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-virtual {v1, p2, p3, p4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/Object;ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->show()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    return-object v0
.end method
