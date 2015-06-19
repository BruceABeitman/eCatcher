.class public Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;
.super Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
.source "OrderProcessBar.java"
.field private mBody:Landroid/view/View;
.field private mContentTextView:Landroid/widget/TextView;
.field private mProgressBar:Landroid/widget/ProgressBar;
.field private mRateTextView:Landroid/widget/TextView;
.field private nowrate:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 6
const/4 v3, 0x0
invoke-direct {p0, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;-><init>(Landroid/content/Context;)V
iput v3, p0, Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;->nowrate:I
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f0300d8
const/4 v2, 0x0
invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;->mBody:Landroid/view/View;
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;->mBody:Landroid/view/View;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;->setView(Landroid/view/View;)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;->mBody:Landroid/view/View;
const v1, 0x7f0a00a7
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;->mProgressBar:Landroid/widget/ProgressBar;
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;->mBody:Landroid/view/View;
const v1, 0x7f0a00a6
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;->mRateTextView:Landroid/widget/TextView;
return-void
.end method
.method public dismiss()V
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;->isShowing()Z
move-result v0
if-eqz v0, :cond_9
invoke-super {p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->dismiss()V
:cond_9
return-void
.end method
.method public setContent(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;->mContentTextView:Landroid/widget/TextView;
if-nez v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;->mBody:Landroid/view/View;
const v1, 0x7f0a00a5
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;->mContentTextView:Landroid/widget/TextView;
:cond_11
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;->mContentTextView:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setProgress(I)V
.registers 5
iget v0, p0, Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;->nowrate:I
if-eq p1, v0, :cond_28
iput p1, p0, Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;->nowrate:I
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;->mProgressBar:Landroid/widget/ProgressBar;
iget v1, p0, Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;->nowrate:I
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;->mRateTextView:Landroid/widget/TextView;
new-instance v1, Ljava/lang/StringBuilder;
iget v2, p0, Lcom/pinguo/camera360/ui/dialog/OrderProcessBar;->nowrate:I
invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "%"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_28
return-void
.end method
.method public show()V
.registers 1
invoke-super {p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V
return-void
.end method