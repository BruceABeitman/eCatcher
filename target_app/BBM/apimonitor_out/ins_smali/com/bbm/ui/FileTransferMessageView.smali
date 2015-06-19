.class public Lcom/bbm/ui/FileTransferMessageView;
.super Lcom/bbm/ui/MessageView;
.source "FileTransferMessageView.java"
.field protected a:Landroid/widget/TextView;
.field protected b:Landroid/widget/TextView;
.field protected c:Landroid/widget/ProgressBar;
.field protected d:Landroid/widget/LinearLayout;
.field protected e:Landroid/widget/Button;
.field protected f:Landroid/widget/Button;
.field protected g:Landroid/widget/Button;
.field protected h:Landroid/widget/Button;
.field protected i:Landroid/view/View;
.field protected j:Lcom/bbm/ui/ObservingImageView;
.field protected k:Landroid/widget/TextView;
.field protected l:Landroid/widget/TextView;
.field protected m:Landroid/widget/FrameLayout;
.field private q:Z
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/bbm/ui/MessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/FileTransferMessageView;->q:Z
return-void
.end method
.method private setProgressbarVisibility(Z)V
.registers 4
iget-object v1, p0, Lcom/bbm/ui/FileTransferMessageView;->c:Landroid/widget/ProgressBar;
if-eqz p1, :cond_17
const/4 v0, 0x0
:goto_5
invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->a:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V
iget-object v1, p0, Lcom/bbm/ui/FileTransferMessageView;->a:Landroid/widget/TextView;
if-eqz p1, :cond_1a
sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
:goto_13
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
return-void
:cond_17
const/16 v0, 0x8
goto :goto_5
:cond_1a
const/4 v0, 0x0
goto :goto_13
.end method
.method public final a()V
.registers 4
const/16 v2, 0x8
invoke-super {p0}, Lcom/bbm/ui/MessageView;->a()V
iget-boolean v0, p0, Lcom/bbm/ui/FileTransferMessageView;->q:Z
if-eqz v0, :cond_65
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->a:Landroid/widget/TextView;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->b:Landroid/widget/TextView;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->c:Landroid/widget/ProgressBar;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->d:Landroid/widget/LinearLayout;
invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->e:Landroid/widget/Button;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->f:Landroid/widget/Button;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->g:Landroid/widget/Button;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->h:Landroid/widget/Button;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->i:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->k:Landroid/widget/TextView;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->k:Landroid/widget/TextView;
sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->k:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->l:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->l:Landroid/widget/TextView;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->m:Landroid/widget/FrameLayout;
invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->j:Lcom/bbm/ui/ObservingImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_65
return-void
.end method
.method protected onFinishInflate()V
.registers 2
invoke-super {p0}, Lcom/bbm/ui/MessageView;->onFinishInflate()V
const v0, 0x7f0a0455
invoke-virtual {p0, v0}, Lcom/bbm/ui/FileTransferMessageView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->a:Landroid/widget/TextView;
const v0, 0x7f0a049f
invoke-virtual {p0, v0}, Lcom/bbm/ui/FileTransferMessageView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->b:Landroid/widget/TextView;
const v0, 0x7f0a04a3
invoke-virtual {p0, v0}, Lcom/bbm/ui/FileTransferMessageView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->c:Landroid/widget/ProgressBar;
const v0, 0x7f0a04a4
invoke-virtual {p0, v0}, Lcom/bbm/ui/FileTransferMessageView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->d:Landroid/widget/LinearLayout;
const v0, 0x7f0a04a5
invoke-virtual {p0, v0}, Lcom/bbm/ui/FileTransferMessageView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->e:Landroid/widget/Button;
const v0, 0x7f0a04a6
invoke-virtual {p0, v0}, Lcom/bbm/ui/FileTransferMessageView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->f:Landroid/widget/Button;
const v0, 0x7f0a04a7
invoke-virtual {p0, v0}, Lcom/bbm/ui/FileTransferMessageView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->g:Landroid/widget/Button;
const v0, 0x7f0a04a8
invoke-virtual {p0, v0}, Lcom/bbm/ui/FileTransferMessageView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->h:Landroid/widget/Button;
const v0, 0x7f0a048d
invoke-virtual {p0, v0}, Lcom/bbm/ui/FileTransferMessageView;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->i:Landroid/view/View;
const v0, 0x7f0a049c
invoke-virtual {p0, v0}, Lcom/bbm/ui/FileTransferMessageView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->j:Lcom/bbm/ui/ObservingImageView;
const v0, 0x7f0a049e
invoke-virtual {p0, v0}, Lcom/bbm/ui/FileTransferMessageView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->k:Landroid/widget/TextView;
const v0, 0x7f0a04a0
invoke-virtual {p0, v0}, Lcom/bbm/ui/FileTransferMessageView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->l:Landroid/widget/TextView;
const v0, 0x7f0a04a1
invoke-virtual {p0, v0}, Lcom/bbm/ui/FileTransferMessageView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout;
iput-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->m:Landroid/widget/FrameLayout;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/FileTransferMessageView;->q:Z
return-void
.end method
.method public setColoredStatusText(IZ)V
.registers 4
invoke-virtual {p0}, Lcom/bbm/ui/FileTransferMessageView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0, p2}, Lcom/bbm/ui/FileTransferMessageView;->setColoredStatusText(Ljava/lang/String;Z)V
return-void
.end method
.method public setColoredStatusText(Ljava/lang/String;Z)V
.registers 6
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->a:Landroid/widget/TextView;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "<i>"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "</i>"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/bbm/ui/FileTransferMessageView;->a:Landroid/widget/TextView;
if-eqz p2, :cond_28
const/high16 v0, -0x1
:goto_24
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V
return-void
:cond_28
invoke-virtual {p0}, Lcom/bbm/ui/FileTransferMessageView;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v2, 0x7f09001e
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
goto :goto_24
.end method
.method public setDescriptionText(Ljava/lang/String;)V
.registers 5
const/16 v2, 0x8
const/4 v1, 0x0
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->p:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->i:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
:goto_13
return-void
:cond_14
invoke-virtual {p0, p1}, Lcom/bbm/ui/FileTransferMessageView;->setBodyText(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->p:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->i:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto :goto_13
.end method
.method public setFilenameText(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->k:Landroid/widget/TextView;
sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->k:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->k:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method protected setFilesizeText(J)V
.registers 4
invoke-virtual {p0}, Lcom/bbm/ui/FileTransferMessageView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0, p1, p2}, Lcom/bbm/util/bj;->a(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/ui/FileTransferMessageView;->setFilesizeText(Ljava/lang/String;)V
return-void
.end method
.method protected setFilesizeText(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->b:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/bbm/ui/FileTransferMessageView;->b:Landroid/widget/TextView;
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_12
const/4 v0, 0x4
:goto_e
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V
return-void
:cond_12
const/4 v0, 0x0
goto :goto_e
.end method
.method public setHdRequestButtonVisibility(Z)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/ui/FileTransferMessageView;->setProgressbarVisibility(Z)V
iget-object v1, p0, Lcom/bbm/ui/FileTransferMessageView;->m:Landroid/widget/FrameLayout;
if-eqz p1, :cond_c
:goto_8
invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V
return-void
:cond_c
const/16 v0, 0x8
goto :goto_8
.end method
.method public setHigherQualityRequestReceivedState(J)V
.registers 6
const/4 v2, 0x0
const/16 v1, 0x8
invoke-direct {p0, v2}, Lcom/bbm/ui/FileTransferMessageView;->setProgressbarVisibility(Z)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->d:Landroid/widget/LinearLayout;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->e:Landroid/widget/Button;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->f:Landroid/widget/Button;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->g:Landroid/widget/Button;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->a:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
invoke-virtual {p0, p1, p2}, Lcom/bbm/ui/FileTransferMessageView;->setFilesizeText(J)V
return-void
.end method
.method public setIdleState()V
.registers 4
const/4 v2, 0x0
const/16 v1, 0x8
invoke-direct {p0, v2}, Lcom/bbm/ui/FileTransferMessageView;->setProgressbarVisibility(Z)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->d:Landroid/widget/LinearLayout;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->e:Landroid/widget/Button;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->f:Landroid/widget/Button;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->g:Landroid/widget/Button;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->a:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
return-void
.end method
.method public setIdleState(J)V
.registers 3
invoke-virtual {p0}, Lcom/bbm/ui/FileTransferMessageView;->setIdleState()V
invoke-virtual {p0, p1, p2}, Lcom/bbm/ui/FileTransferMessageView;->setFilesizeText(J)V
return-void
.end method
.method public setPicture(I)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->j:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, p1}, Lcom/bbm/ui/ObservingImageView;->setImageResource(I)V
:goto_5
:try_end_5
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
const-string v0, "File transfer can\'t load image"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_5
.end method
.method public setProgressingState(IIZ)V
.registers 9
const/4 v0, 0x1
const/4 v1, 0x0
const/16 v3, 0x8
invoke-direct {p0, v0}, Lcom/bbm/ui/FileTransferMessageView;->setProgressbarVisibility(Z)V
if-eqz p3, :cond_68
const/high16 v2, 0x10
if-lt p2, v2, :cond_68
:goto_d
iget-object v4, p0, Lcom/bbm/ui/FileTransferMessageView;->d:Landroid/widget/LinearLayout;
if-eqz v0, :cond_6a
move v2, v1
:goto_12
invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V
iget-object v2, p0, Lcom/bbm/ui/FileTransferMessageView;->e:Landroid/widget/Button;
invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V
iget-object v2, p0, Lcom/bbm/ui/FileTransferMessageView;->f:Landroid/widget/Button;
invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V
iget-object v2, p0, Lcom/bbm/ui/FileTransferMessageView;->g:Landroid/widget/Button;
if-eqz v0, :cond_6c
move v0, v1
:goto_24
invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->a:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->m:Landroid/widget/FrameLayout;
invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->c:Landroid/widget/ProgressBar;
invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->c:Landroid/widget/ProgressBar;
invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setMax(I)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/bbm/ui/FileTransferMessageView;->getContext()Landroid/content/Context;
move-result-object v1
int-to-long v2, p1
invoke-static {v1, v2, v3}, Lcom/bbm/util/bj;->a(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/bbm/ui/FileTransferMessageView;->getContext()Landroid/content/Context;
move-result-object v1
int-to-long v2, p2
invoke-static {v1, v2, v3}, Lcom/bbm/util/bj;->a(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/ui/FileTransferMessageView;->setFilesizeText(Ljava/lang/String;)V
return-void
:cond_68
move v0, v1
goto :goto_d
:cond_6a
move v2, v3
goto :goto_12
:cond_6c
move v0, v3
goto :goto_24
.end method
.method public setRequestHigherQualityMessageState(J)V
.registers 6
const/16 v2, 0x8
const/4 v1, 0x0
invoke-direct {p0, v1}, Lcom/bbm/ui/FileTransferMessageView;->setProgressbarVisibility(Z)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->d:Landroid/widget/LinearLayout;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->e:Landroid/widget/Button;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->f:Landroid/widget/Button;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->g:Landroid/widget/Button;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->a:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->m:Landroid/widget/FrameLayout;
invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->e:Landroid/widget/Button;
const v1, 0x7f0e04e8
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->f:Landroid/widget/Button;
const v1, 0x7f0e04eb
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V
invoke-virtual {p0, p1, p2}, Lcom/bbm/ui/FileTransferMessageView;->setFilesizeText(J)V
return-void
.end method
.method public setRequestHigherQualityState(J)V
.registers 9
const-wide/32 v4, 0x100000
const/4 v1, 0x0
const/16 v2, 0x8
invoke-direct {p0, v1}, Lcom/bbm/ui/FileTransferMessageView;->setProgressbarVisibility(Z)V
iget-object v3, p0, Lcom/bbm/ui/FileTransferMessageView;->d:Landroid/widget/LinearLayout;
cmp-long v0, p1, v4
if-ltz v0, :cond_35
move v0, v1
:goto_10
invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->e:Landroid/widget/Button;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->f:Landroid/widget/Button;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V
iget-object v3, p0, Lcom/bbm/ui/FileTransferMessageView;->g:Landroid/widget/Button;
cmp-long v0, p1, v4
if-ltz v0, :cond_37
move v0, v1
:goto_24
invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->a:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->m:Landroid/widget/FrameLayout;
invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V
invoke-virtual {p0, p1, p2}, Lcom/bbm/ui/FileTransferMessageView;->setFilesizeText(J)V
return-void
:cond_35
move v0, v2
goto :goto_10
:cond_37
move v0, v2
goto :goto_24
.end method
.method public setRequestSendState(ZJZ)V
.registers 9
const/16 v1, 0x8
const/4 v2, 0x0
invoke-direct {p0, v2}, Lcom/bbm/ui/FileTransferMessageView;->setProgressbarVisibility(Z)V
iget-object v3, p0, Lcom/bbm/ui/FileTransferMessageView;->d:Landroid/widget/LinearLayout;
if-nez p1, :cond_e
if-nez p1, :cond_51
if-nez p4, :cond_51
:cond_e
move v0, v2
:goto_f
invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V
iget-object v3, p0, Lcom/bbm/ui/FileTransferMessageView;->e:Landroid/widget/Button;
if-eqz p1, :cond_53
move v0, v2
:goto_17
invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V
iget-object v3, p0, Lcom/bbm/ui/FileTransferMessageView;->f:Landroid/widget/Button;
if-eqz p1, :cond_55
move v0, v2
:goto_1f
invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->g:Landroid/widget/Button;
if-nez p1, :cond_28
if-eqz p4, :cond_57
:cond_28
:goto_28
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->a:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->b:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->e:Landroid/widget/Button;
const v1, 0x7f0e04e7
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->f:Landroid/widget/Button;
const v1, 0x7f0e04ea
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->g:Landroid/widget/Button;
const v1, 0x7f0e04e9
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V
invoke-virtual {p0, p2, p3}, Lcom/bbm/ui/FileTransferMessageView;->setFilesizeText(J)V
return-void
:cond_51
move v0, v1
goto :goto_f
:cond_53
move v0, v1
goto :goto_17
:cond_55
move v0, v1
goto :goto_1f
:cond_57
move v1, v2
goto :goto_28
.end method
.method public setText(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->k:Landroid/widget/TextView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->k:Landroid/widget/TextView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V
iget-object v0, p0, Lcom/bbm/ui/FileTransferMessageView;->k:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method