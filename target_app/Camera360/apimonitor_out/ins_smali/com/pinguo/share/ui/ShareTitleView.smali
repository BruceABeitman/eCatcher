.class public Lcom/pinguo/share/ui/ShareTitleView;
.super Landroid/widget/RelativeLayout;
.source "ShareTitleView.java"
.field private mClickListener:Lcom/pinguo/share/ui/ShareTitleView$OnTitleViewClickListener;
.field private mTitleText:Landroid/widget/TextView;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/pinguo/share/ui/ShareTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/share/ui/ShareTitleView;)Lcom/pinguo/share/ui/ShareTitleView$OnTitleViewClickListener;
.registers 2
iget-object v0, p0, Lcom/pinguo/share/ui/ShareTitleView;->mClickListener:Lcom/pinguo/share/ui/ShareTitleView$OnTitleViewClickListener;
return-object v0
.end method
.method protected onFinishInflate()V
.registers 5
invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V
const v3, 0x7f0a00b2
invoke-virtual {p0, v3}, Lcom/pinguo/share/ui/ShareTitleView;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
iput-object v3, p0, Lcom/pinguo/share/ui/ShareTitleView;->mTitleText:Landroid/widget/TextView;
const v3, 0x7f0a00b1
invoke-virtual {p0, v3}, Lcom/pinguo/share/ui/ShareTitleView;->findViewById(I)Landroid/view/View;
move-result-object v0
const v3, 0x7f0a00b3
invoke-virtual {p0, v3}, Lcom/pinguo/share/ui/ShareTitleView;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
const v3, 0x7f0a00b4
invoke-virtual {p0, v3}, Lcom/pinguo/share/ui/ShareTitleView;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/ImageView;
invoke-virtual {p0}, Lcom/pinguo/share/ui/ShareTitleView;->isInEditMode()Z
move-result v3
if-eqz v3, :cond_2e
:goto_2d
:cond_2d
return-void
:cond_2e
new-instance v3, Lcom/pinguo/share/ui/ShareTitleView$1;
invoke-direct {v3, p0}, Lcom/pinguo/share/ui/ShareTitleView$1;-><init>(Lcom/pinguo/share/ui/ShareTitleView;)V
invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v3, Lcom/pinguo/share/ui/ShareTitleView$2;
invoke-direct {v3, p0}, Lcom/pinguo/share/ui/ShareTitleView$2;-><init>(Lcom/pinguo/share/ui/ShareTitleView;)V
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
if-eqz v2, :cond_2d
new-instance v3, Lcom/pinguo/share/ui/ShareTitleView$3;
invoke-direct {v3, p0}, Lcom/pinguo/share/ui/ShareTitleView$3;-><init>(Lcom/pinguo/share/ui/ShareTitleView;)V
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto :goto_2d
.end method
.method public setOnTitleViewClickListener(Lcom/pinguo/share/ui/ShareTitleView$OnTitleViewClickListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/ui/ShareTitleView;->mClickListener:Lcom/pinguo/share/ui/ShareTitleView$OnTitleViewClickListener;
return-void
.end method
.method public setTiTleText(I)V
.registers 3
iget-object v0, p0, Lcom/pinguo/share/ui/ShareTitleView;->mTitleText:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V
return-void
.end method
.method public setTiTleText(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/share/ui/ShareTitleView;->mTitleText:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method