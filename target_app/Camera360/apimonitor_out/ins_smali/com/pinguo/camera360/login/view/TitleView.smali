.class public Lcom/pinguo/camera360/login/view/TitleView;
.super Landroid/widget/RelativeLayout;
.source "TitleView.java"
.field private mClickListener:Lcom/pinguo/camera360/login/view/TitleView$OnTitleViewClickListener;
.field private mTitleBackBtn:Landroid/view/View;
.field private mTitleRightBtn:Landroid/widget/TextView;
.field private mTitleRightImageBtn:Landroid/widget/ImageView;
.field private mTitleText:Landroid/widget/TextView;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/login/view/TitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/login/view/TitleView;)Lcom/pinguo/camera360/login/view/TitleView$OnTitleViewClickListener;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/login/view/TitleView;->mClickListener:Lcom/pinguo/camera360/login/view/TitleView$OnTitleViewClickListener;
return-object v0
.end method
.method public hideRightBtn()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/login/view/TitleView;->mTitleRightBtn:Landroid/widget/TextView;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/pinguo/camera360/login/view/TitleView;->mTitleRightBtn:Landroid/widget/TextView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
:cond_b
return-void
.end method
.method protected onFinishInflate()V
.registers 3
invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V
const v0, 0x7f0a0035
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/login/view/TitleView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/login/view/TitleView;->mTitleText:Landroid/widget/TextView;
const v0, 0x7f0a0036
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/login/view/TitleView;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/login/view/TitleView;->mTitleBackBtn:Landroid/view/View;
const v0, 0x7f0a0037
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/login/view/TitleView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/login/view/TitleView;->mTitleRightBtn:Landroid/widget/TextView;
const v0, 0x7f0a0038
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/login/view/TitleView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/login/view/TitleView;->mTitleRightImageBtn:Landroid/widget/ImageView;
invoke-virtual {p0}, Lcom/pinguo/camera360/login/view/TitleView;->isInEditMode()Z
move-result v0
if-eqz v0, :cond_34
:goto_33
:cond_33
return-void
:cond_34
iget-object v0, p0, Lcom/pinguo/camera360/login/view/TitleView;->mTitleBackBtn:Landroid/view/View;
new-instance v1, Lcom/pinguo/camera360/login/view/TitleView$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/login/view/TitleView$1;-><init>(Lcom/pinguo/camera360/login/view/TitleView;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/login/view/TitleView;->mTitleRightBtn:Landroid/widget/TextView;
new-instance v1, Lcom/pinguo/camera360/login/view/TitleView$2;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/login/view/TitleView$2;-><init>(Lcom/pinguo/camera360/login/view/TitleView;)V
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/login/view/TitleView;->mTitleRightImageBtn:Landroid/widget/ImageView;
if-eqz v0, :cond_33
iget-object v0, p0, Lcom/pinguo/camera360/login/view/TitleView;->mTitleRightImageBtn:Landroid/widget/ImageView;
new-instance v1, Lcom/pinguo/camera360/login/view/TitleView$3;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/login/view/TitleView$3;-><init>(Lcom/pinguo/camera360/login/view/TitleView;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto :goto_33
.end method
.method public setOnTitleViewClickListener(Lcom/pinguo/camera360/login/view/TitleView$OnTitleViewClickListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/login/view/TitleView;->mClickListener:Lcom/pinguo/camera360/login/view/TitleView$OnTitleViewClickListener;
return-void
.end method
.method public setRightBtnText(I)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/login/view/TitleView;->mTitleRightBtn:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V
return-void
.end method
.method public setRightBtnText(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/login/view/TitleView;->mTitleRightBtn:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setTiTleText(I)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/login/view/TitleView;->mTitleText:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V
return-void
.end method
.method public setTiTleText(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/login/view/TitleView;->mTitleText:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method public showRightBtn()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/login/view/TitleView;->mTitleRightBtn:Landroid/widget/TextView;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/pinguo/camera360/login/view/TitleView;->mTitleRightBtn:Landroid/widget/TextView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
:cond_a
return-void
.end method
.method public showRightImageBtn()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/login/view/TitleView;->mTitleRightImageBtn:Landroid/widget/ImageView;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/pinguo/camera360/login/view/TitleView;->mTitleRightImageBtn:Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_a
return-void
.end method