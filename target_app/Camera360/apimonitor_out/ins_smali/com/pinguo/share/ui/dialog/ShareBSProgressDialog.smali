.class public Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
.super Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;
.source "ShareBSProgressDialog.java"
.field public static final STYLE_BUTTON:I = 0x3
.field public static final STYLE_DEFAULT:I = 0x2
.field public static final STYLE_FULLSCREEN:I = 0x0
.field public static final STYLE_HORIZONTAL:I = 0x1
.field public static final STYLE_HORIZONTAL_BUTTON:I = 0x5
.field public static final STYLE_SIMPLE:I = 0x6
.field public static final STYLE_TRANSPARENT:I = 0x4
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
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const v0, 0x7f090003
invoke-direct {p0, p1, v0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;-><init>(Landroid/content/Context;I)V
const/4 v0, 0x2
iput v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressStyle:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;I)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;-><init>(Landroid/content/Context;I)V
const/4 v0, 0x2
iput v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressStyle:I
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;)Landroid/widget/ProgressBar;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressNumberFormat:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressNumber:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;)Ljava/text/NumberFormat;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressPercent:Landroid/widget/TextView;
return-object v0
.end method
.method private onProgressChanged()V
.registers 3
iget v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressStyle:I
const/4 v1, 0x1
if-eq v0, v1, :cond_a
iget v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressStyle:I
const/4 v1, 0x5
if-ne v0, v1, :cond_10
:cond_a
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
:cond_10
return-void
.end method
.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
.registers 4
const/4 v0, 0x0
invoke-static {p0, p1, p2, v0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v0
return-object v0
.end method
.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
.registers 10
const/4 v4, 0x0
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v3, p3
invoke-static/range {v0 .. v5}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v0
return-object v0
.end method
.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
.registers 11
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v3, p3
move v4, p4
invoke-static/range {v0 .. v5}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
move-result-object v0
return-object v0
.end method
.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
.registers 7
new-instance v0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;
invoke-direct {v0, p0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, p1}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setTitle(Ljava/lang/CharSequence;)V
invoke-virtual {v0, p2}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
invoke-virtual {v0, p3}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setIndeterminate(Z)V
invoke-virtual {v0, p4}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setCancelable(Z)V
invoke-virtual {v0, p5}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
invoke-virtual {v0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->show()V
return-object v0
.end method
.method public getMax()I
.registers 2
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I
move-result v0
:goto_a
return v0
:cond_b
iget v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mMax:I
goto :goto_a
.end method
.method public getProgress()I
.registers 2
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I
move-result v0
:goto_a
return v0
:cond_b
iget v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressVal:I
goto :goto_a
.end method
.method public getSecondaryProgress()I
.registers 2
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I
move-result v0
:goto_a
return v0
:cond_b
iget v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mSecondaryProgressVal:I
goto :goto_a
.end method
.method public incrementProgressBy(I)V
.registers 3
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V
invoke-direct {p0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->onProgressChanged()V
:goto_c
return-void
:cond_d
iget v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mIncrementBy:I
add-int/2addr v0, p1
iput v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mIncrementBy:I
goto :goto_c
.end method
.method public incrementSecondaryProgressBy(I)V
.registers 3
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V
invoke-direct {p0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->onProgressChanged()V
:goto_c
return-void
:cond_d
iget v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mIncrementSecondaryBy:I
add-int/2addr v0, p1
iput v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mIncrementSecondaryBy:I
goto :goto_c
.end method
.method public isIndeterminate()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z
move-result v0
:goto_a
return v0
:cond_b
iget-boolean v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mIndeterminate:Z
goto :goto_a
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 12
const-string v1, " + Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v9, 0x7f03001b
const v8, 0x7f0a008d
const/4 v7, 0x0
const/4 v6, 0x0
const v5, 0x7f0a0081
invoke-virtual {p0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iget v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressStyle:I
const/4 v4, 0x1
if-ne v3, v4, :cond_bf
new-instance v3, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog$1;
invoke-direct {v3, p0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog$1;-><init>(Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;)V
iput-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;
const v3, 0x7f030017
invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/ProgressBar;
iput-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
iget-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
invoke-virtual {v3}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;
invoke-virtual {p0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->getContext()Landroid/content/Context;
move-result-object v3
const/high16 v4, 0x40a0
invoke-static {v3, v4}, Lcom/pinguo/share/util/ShareModuleUtil;->dpToPixel(Landroid/content/Context;F)I
move-result v3
iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I
const v3, 0x7f0a0083
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
iput-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressNumber:Landroid/widget/TextView;
const-string/jumbo v3, "%d/%d"
iput-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressNumberFormat:Ljava/lang/String;
const v3, 0x7f0a0082
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
iput-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressPercent:Landroid/widget/TextView;
invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;
move-result-object v3
iput-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;
iget-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;
invoke-virtual {v3, v7}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V
invoke-virtual {p0, v2}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setView(Landroid/view/View;)V
:goto_6b
iget v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mMax:I
if-lez v3, :cond_74
iget v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mMax:I
invoke-virtual {p0, v3}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setMax(I)V
:cond_74
iget v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressVal:I
if-lez v3, :cond_7d
iget v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressVal:I
invoke-virtual {p0, v3}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setProgress(I)V
:cond_7d
iget v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mSecondaryProgressVal:I
if-lez v3, :cond_86
iget v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mSecondaryProgressVal:I
invoke-virtual {p0, v3}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setSecondaryProgress(I)V
:cond_86
iget v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mIncrementBy:I
if-lez v3, :cond_8f
iget v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mIncrementBy:I
invoke-virtual {p0, v3}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->incrementProgressBy(I)V
:cond_8f
iget v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mIncrementSecondaryBy:I
if-lez v3, :cond_98
iget v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mIncrementSecondaryBy:I
invoke-virtual {p0, v3}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->incrementSecondaryProgressBy(I)V
:cond_98
iget-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v3, :cond_a1
iget-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0, v3}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_a1
iget-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v3, :cond_aa
iget-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0, v3}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_aa
iget-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mMessage:Ljava/lang/CharSequence;
if-eqz v3, :cond_b3
iget-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mMessage:Ljava/lang/CharSequence;
invoke-virtual {p0, v3}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
:cond_b3
iget-boolean v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mIndeterminate:Z
invoke-virtual {p0, v3}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setIndeterminate(Z)V
invoke-direct {p0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->onProgressChanged()V
invoke-super {p0, p1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->onCreate(Landroid/os/Bundle;)V
const-string v1, " - Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_bf
iget v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressStyle:I
const/4 v4, 0x5
if-ne v3, v4, :cond_105
new-instance v3, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog$2;
invoke-direct {v3, p0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog$2;-><init>(Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;)V
iput-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;
const v3, 0x7f030017
invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/ProgressBar;
iput-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
const v3, 0x7f0a0083
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
iput-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressNumber:Landroid/widget/TextView;
const-string/jumbo v3, "%d/%d"
iput-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressNumberFormat:Ljava/lang/String;
const v3, 0x7f0a0082
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
iput-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressPercent:Landroid/widget/TextView;
invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;
move-result-object v3
iput-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;
iget-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;
invoke-virtual {v3, v7}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V
invoke-virtual {p0, v2}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setView(Landroid/view/View;)V
goto/16 :goto_6b
:cond_105
iget v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressStyle:I
const/4 v4, 0x2
if-ne v3, v4, :cond_123
invoke-virtual {v0, v9, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/ProgressBar;
iput-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
iput-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mMessageView:Landroid/widget/TextView;
invoke-virtual {p0, v2}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setView(Landroid/view/View;)V
goto/16 :goto_6b
:cond_123
iget v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressStyle:I
const/4 v4, 0x3
if-ne v3, v4, :cond_141
invoke-virtual {v0, v9, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/ProgressBar;
iput-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
iput-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mMessageView:Landroid/widget/TextView;
invoke-virtual {p0, v2}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setView(Landroid/view/View;)V
goto/16 :goto_6b
:cond_141
iget v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressStyle:I
const/4 v4, 0x4
if-ne v3, v4, :cond_162
invoke-virtual {v0, v9, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundColor(I)V
invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/ProgressBar;
iput-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
iput-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mMessageView:Landroid/widget/TextView;
invoke-virtual {p0, v2}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setView(Landroid/view/View;)V
goto/16 :goto_6b
:cond_162
iget v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressStyle:I
const/4 v4, 0x6
if-ne v3, v4, :cond_17e
const v3, 0x7f03001a
invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundColor(I)V
invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/ProgressBar;
iput-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
invoke-virtual {p0, v2}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setView(Landroid/view/View;)V
goto/16 :goto_6b
:cond_17e
const v3, 0x7f030019
invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/ProgressBar;
iput-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
iput-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mMessageView:Landroid/widget/TextView;
invoke-virtual {p0, v2}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setView(Landroid/view/View;)V
goto/16 :goto_6b
.end method
.method public onStart()V
.registers 3
const-string v1, " + Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->onStart()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mHasStarted:Z
const-string v1, " - Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onStop()V
.registers 3
const-string v1, " + Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/share/ui/dialog/ShareBSAlertDialog;->onStop()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mHasStarted:Z
const-string v1, " - Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public setIndeterminate(Z)V
.registers 3
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V
:goto_9
return-void
:cond_a
iput-boolean p1, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mIndeterminate:Z
goto :goto_9
.end method
.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
:goto_9
return-void
:cond_a
iput-object p1, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;
goto :goto_9
.end method
.method public setMax(I)V
.registers 3
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V
invoke-direct {p0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->onProgressChanged()V
:goto_c
return-void
:cond_d
iput p1, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mMax:I
goto :goto_c
.end method
.method public setMessage(I)V
.registers 3
invoke-virtual {p0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setMessage(Ljava/lang/CharSequence;)V
.registers 5
const/4 v2, 0x1
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
if-eqz v0, :cond_32
iget v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressStyle:I
if-eq v0, v2, :cond_18
iget v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressStyle:I
const/4 v1, 0x5
if-eq v0, v1, :cond_18
iget v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressStyle:I
const/4 v1, 0x2
if-ne v0, v1, :cond_19
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mMessageView:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_18
:cond_18
return-void
:cond_19
iget v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressStyle:I
const/4 v1, 0x3
if-ne v0, v1, :cond_24
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mMessageView:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_18
:cond_24
if-eqz p1, :cond_18
invoke-interface {p1}, Ljava/lang/CharSequence;->length()I
move-result v0
if-le v0, v2, :cond_18
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mMessageView:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_18
:cond_32
iput-object p1, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mMessage:Ljava/lang/CharSequence;
goto :goto_18
.end method
.method public setProgress(I)V
.registers 3
iget-boolean v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mHasStarted:Z
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V
invoke-direct {p0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->onProgressChanged()V
:goto_c
return-void
:cond_d
iput p1, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressVal:I
goto :goto_c
.end method
.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
:goto_9
return-void
:cond_a
iput-object p1, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;
goto :goto_9
.end method
.method public setProgressNumberFormat(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressNumberFormat:Ljava/lang/String;
return-void
.end method
.method public setProgressStyle(I)V
.registers 2
iput p1, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgressStyle:I
return-void
.end method
.method public setSecondaryProgress(I)V
.registers 3
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mProgress:Landroid/widget/ProgressBar;
invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V
invoke-direct {p0}, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->onProgressChanged()V
:goto_c
return-void
:cond_d
iput p1, p0, Lcom/pinguo/share/ui/dialog/ShareBSProgressDialog;->mSecondaryProgressVal:I
goto :goto_c
.end method