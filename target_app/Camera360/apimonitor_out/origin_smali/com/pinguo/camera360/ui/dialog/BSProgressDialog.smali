.class public Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
.super Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
.source "BSProgressDialog.java"


# static fields
.field public static final STYLE_BUTTON:I = 0x3

.field public static final STYLE_DEFAULT:I = 0x2

.field public static final STYLE_FULLSCREEN:I = 0x0

.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_HORIZONTAL_BUTTON:I = 0x5

.field public static final STYLE_SIMPLE:I = 0x6

.field public static final STYLE_TRANSPARENT:I = 0x4


# instance fields
.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressNumber:Landroid/widget/TextView;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mSecondaryProgressVal:I

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const v0, 0x7f090042

    invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressStyle:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressStyle:I

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)Landroid/widget/ProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)Ljava/text/NumberFormat;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method private onProgressChanged()V
    .registers 3

    iget v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressStyle:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    :cond_a
    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_10
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
    .registers 7

    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, p4}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0, p5}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->show()V

    return-object v0
.end method


# virtual methods
.method public getMax()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mMax:I

    goto :goto_a
.end method

.method public getProgress()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressVal:I

    goto :goto_a
.end method

.method public incrementProgressBy(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->onProgressChanged()V

    :goto_c
    return-void

    :cond_d
    iget v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mIncrementBy:I

    goto :goto_c
.end method

.method public incrementSecondaryProgressBy(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->onProgressChanged()V

    :goto_c
    return-void

    :cond_d
    iget v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mIncrementSecondaryBy:I

    goto :goto_c
.end method

.method public isIndeterminate()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget-boolean v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mIndeterminate:Z

    goto :goto_a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12

    const/4 v9, 0x5

    const v8, 0x7f0a008d

    const/4 v7, 0x0

    const/4 v6, 0x0

    const v5, 0x7f0a0081

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressStyle:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b7

    new-instance v3, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog$1;

    invoke-direct {v3, p0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog$1;-><init>(Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V

    iput-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    const v3, 0x7f03003c

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v9}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const v3, 0x7f0a0083

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    const-string/jumbo v3, "%d/%d"

    iput-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    const v3, 0x7f0a0082

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    iget-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    invoke-virtual {v3, v7}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setView(Landroid/view/View;)V

    :goto_63
    iget v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mMax:I

    if-lez v3, :cond_6c

    iget v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mMax:I

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setMax(I)V

    :cond_6c
    iget v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressVal:I

    if-lez v3, :cond_75

    iget v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressVal:I

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setProgress(I)V

    :cond_75
    iget v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mSecondaryProgressVal:I

    if-lez v3, :cond_7e

    iget v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mSecondaryProgressVal:I

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setSecondaryProgress(I)V

    :cond_7e
    iget v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mIncrementBy:I

    if-lez v3, :cond_87

    iget v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mIncrementBy:I

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->incrementProgressBy(I)V

    :cond_87
    iget v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mIncrementSecondaryBy:I

    if-lez v3, :cond_90

    iget v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mIncrementSecondaryBy:I

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->incrementSecondaryProgressBy(I)V

    :cond_90
    iget-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_99

    iget-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_99
    iget-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_a2

    iget-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_a2
    iget-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_ab

    iget-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_ab
    iget-boolean v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setIndeterminate(Z)V

    invoke-direct {p0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->onProgressChanged()V

    invoke-super {p0, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_b7
    iget v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressStyle:I

    if-ne v3, v9, :cond_fc

    new-instance v3, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog$2;

    invoke-direct {v3, p0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog$2;-><init>(Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V

    iput-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    const v3, 0x7f03003c

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    const v3, 0x7f0a0083

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    const-string/jumbo v3, "%d/%d"

    iput-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    const v3, 0x7f0a0082

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    iget-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    invoke-virtual {v3, v7}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setView(Landroid/view/View;)V

    goto/16 :goto_63

    :cond_fc
    iget v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressStyle:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_11d

    const v3, 0x7f030041

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setView(Landroid/view/View;)V

    goto/16 :goto_63

    :cond_11d
    iget v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressStyle:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_13e

    const v3, 0x7f030041

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setView(Landroid/view/View;)V

    goto/16 :goto_63

    :cond_13e
    iget v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressStyle:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_162

    const v3, 0x7f030040

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setView(Landroid/view/View;)V

    goto/16 :goto_63

    :cond_162
    iget v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressStyle:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_17e

    const v3, 0x7f03003f

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setView(Landroid/view/View;)V

    goto/16 :goto_63

    :cond_17e
    const v3, 0x7f03003e

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setView(Landroid/view/View;)V

    goto/16 :goto_63
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mHasStarted:Z

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mHasStarted:Z

    return-void
.end method

.method public setIndeterminate(Z)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :goto_9
    return-void

    :cond_a
    iput-boolean p1, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mIndeterminate:Z

    goto :goto_9
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_9
    return-void

    :cond_a
    iput-object p1, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_9
.end method

.method public setMax(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->onProgressChanged()V

    :goto_c
    return-void

    :cond_d
    iput p1, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mMax:I

    goto :goto_c
.end method

.method public setMessage(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_32

    iget v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressStyle:I

    if-eq v0, v2, :cond_18

    iget v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressStyle:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_18

    iget v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_18
    :goto_18
    return-void

    :cond_19
    iget v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressStyle:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18

    :cond_24
    if-eqz p1, :cond_18

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v2, :cond_18

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18

    :cond_32
    iput-object p1, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mMessage:Ljava/lang/CharSequence;

    goto :goto_18
.end method

.method public setProgress(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->onProgressChanged()V

    :goto_c
    return-void

    :cond_d
    iput p1, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressVal:I

    goto :goto_c
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_9
    return-void

    :cond_a
    iput-object p1, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_9
.end method

.method public setProgressStyle(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgressStyle:I

    return-void
.end method

.method public setSecondaryProgress(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->onProgressChanged()V

    :goto_c
    return-void

    :cond_d
    iput p1, p0, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->mSecondaryProgressVal:I

    goto :goto_c
.end method
