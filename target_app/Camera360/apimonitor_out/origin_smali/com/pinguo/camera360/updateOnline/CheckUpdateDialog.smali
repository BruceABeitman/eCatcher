.class public Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;
.super Landroid/app/Dialog;
.source "CheckUpdateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog$UpdateDialogListener;
    }
.end annotation


# static fields
.field public static final PATCH_UPDATE_360:I = 0x1

.field public static final PATCH_UPDATE_NONE:I


# instance fields
.field private mDetail:Landroid/widget/TextView;

.field private mItemUpdate:Landroid/widget/TextView;

.field private mItemUpdateCancel:Landroid/widget/TextView;

.field private mItemUpdatePatchLayout:Landroid/widget/RelativeLayout;

.field private mItemUpdatePatchTv:Landroid/widget/TextView;

.field private mPatchCompanyImage:Landroid/widget/ImageView;

.field private mSaveSpaceTv:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mUpdateListener:Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog$UpdateDialogListener;

.field private mVersion:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    const v0, 0x7f090042

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f03006e

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->setContentView(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->initUI()V

    invoke-direct {p0}, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->initListener()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->setCancelable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private initListener()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mItemUpdatePatchLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mItemUpdate:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mItemUpdateCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initUI()V
    .registers 3

    const v0, 0x7f0a0267

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mVersion:Landroid/widget/TextView;

    const v0, 0x7f0a0268

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mDetail:Landroid/widget/TextView;

    const v0, 0x7f0a026a

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mItemUpdatePatchLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mItemUpdatePatchLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a026b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mItemUpdatePatchTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mItemUpdatePatchLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a026d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mSaveSpaceTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mItemUpdatePatchLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a026c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mPatchCompanyImage:Landroid/widget/ImageView;

    const v0, 0x7f0a026e

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mItemUpdate:Landroid/widget/TextView;

    const v0, 0x7f0a026f

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mItemUpdateCancel:Landroid/widget/TextView;

    const v0, 0x7f0a0266

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mTitle:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public initDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog$UpdateDialogListener;)V
    .registers 10

    const/16 v3, 0x8

    const/4 v2, 0x0

    iput-object p5, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mUpdateListener:Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog$UpdateDialogListener;

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mItemUpdate:Landroid/widget/TextView;

    const v1, 0x7f080184

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mItemUpdateCancel:Landroid/widget/TextView;

    const v1, 0x7f080327

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mDetail:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_5a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5a

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mVersion:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mVersion:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2c
    const/4 v0, 0x1

    if-ne v0, p3, :cond_60

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f080187

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mItemUpdate:Landroid/widget/TextView;

    const v1, 0x7f080186

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mItemUpdatePatchTv:Landroid/widget/TextView;

    const v1, 0x7f080185

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mPatchCompanyImage:Landroid/widget/ImageView;

    const v1, 0x7f020223

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mSaveSpaceTv:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mItemUpdatePatchLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_59
    return-void

    :cond_5a
    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mVersion:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2c

    :cond_60
    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mItemUpdatePatchLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_59
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    if-nez p1, :cond_f

    const-class v0, Lcom/pinguo/camera360/updateOnline/PushUpdateDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "the view is null"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    return-void

    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_4a

    :cond_16
    :goto_16
    :pswitch_16
    invoke-virtual {p0}, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->dismiss()V

    goto :goto_e

    :pswitch_1a
    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mUpdateListener:Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog$UpdateDialogListener;

    if-eqz v0, :cond_16

    const v0, 0x7f0a026b

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Other;->otherNewUpdateClick(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mUpdateListener:Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog$UpdateDialogListener;

    invoke-interface {v0}, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog$UpdateDialogListener;->onClickPatchUpdate()V

    goto :goto_16

    :pswitch_2a
    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mUpdateListener:Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog$UpdateDialogListener;

    if-eqz v0, :cond_16

    const v0, 0x7f0a026e

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Other;->otherNewUpdateClick(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mUpdateListener:Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog$UpdateDialogListener;

    invoke-interface {v0}, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog$UpdateDialogListener;->onClickUpdate()V

    goto :goto_16

    :pswitch_3a
    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mUpdateListener:Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog$UpdateDialogListener;

    if-eqz v0, :cond_16

    const v0, 0x7f0a026f

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Other;->otherNewUpdateClick(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog;->mUpdateListener:Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog$UpdateDialogListener;

    invoke-interface {v0}, Lcom/pinguo/camera360/updateOnline/CheckUpdateDialog$UpdateDialogListener;->onClickCancelUpdate()V

    goto :goto_16

    :pswitch_data_4a
    .packed-switch 0x7f0a026a
        :pswitch_1a
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_2a
        :pswitch_3a
    .end packed-switch
.end method
