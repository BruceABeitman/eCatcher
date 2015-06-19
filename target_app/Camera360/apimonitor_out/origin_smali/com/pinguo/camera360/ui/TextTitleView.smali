.class public Lcom/pinguo/camera360/ui/TextTitleView;
.super Landroid/widget/RelativeLayout;
.source "TextTitleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/ui/TextTitleView$OnTextTitleClickListener;
    }
.end annotation


# instance fields
.field private mClickListener:Lcom/pinguo/camera360/ui/TextTitleView$OnTextTitleClickListener;

.field private mTitleLeft:Landroid/widget/TextView;

.field private mTitleRight:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/ui/TextTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static findMeByDefault(Landroid/app/Activity;)Lcom/pinguo/camera360/ui/TextTitleView;
    .registers 2

    const v0, 0x7f0a03ca

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/ui/TextTitleView;

    return-object v0
.end method

.method private resetTextView(Landroid/widget/TextView;)V
    .registers 4

    const/4 v1, 0x0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public empty()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/ui/TextTitleView;->mTitleLeft:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/ui/TextTitleView;->resetTextView(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/TextTitleView;->mTitleRight:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/ui/TextTitleView;->resetTextView(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/TextTitleView;->mTitleText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/ui/TextTitleView;->resetTextView(Landroid/widget/TextView;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/TextTitleView;->mClickListener:Lcom/pinguo/camera360/ui/TextTitleView$OnTextTitleClickListener;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    goto :goto_4

    :pswitch_d
    iget-object v0, p0, Lcom/pinguo/camera360/ui/TextTitleView;->mClickListener:Lcom/pinguo/camera360/ui/TextTitleView$OnTextTitleClickListener;

    invoke-interface {v0}, Lcom/pinguo/camera360/ui/TextTitleView$OnTextTitleClickListener;->onLeftClick()V

    goto :goto_4

    :pswitch_13
    iget-object v0, p0, Lcom/pinguo/camera360/ui/TextTitleView;->mClickListener:Lcom/pinguo/camera360/ui/TextTitleView$OnTextTitleClickListener;

    invoke-interface {v0}, Lcom/pinguo/camera360/ui/TextTitleView$OnTextTitleClickListener;->onRightClick()V

    goto :goto_4

    nop

    :pswitch_data_1a
    .packed-switch 0x7f0a03e9
        :pswitch_d
        :pswitch_13
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a00b2

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/TextTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/ui/TextTitleView;->mTitleText:Landroid/widget/TextView;

    const v0, 0x7f0a03e9

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/TextTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/ui/TextTitleView;->mTitleLeft:Landroid/widget/TextView;

    const v0, 0x7f0a03ea

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/TextTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/ui/TextTitleView;->mTitleRight:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/TextTitleView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2b

    :goto_2a
    return-void

    :cond_2b
    iget-object v0, p0, Lcom/pinguo/camera360/ui/TextTitleView;->mTitleLeft:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/TextTitleView;->mTitleRight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2a
.end method

.method public performLeftButtonClick()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/ui/TextTitleView;->mTitleLeft:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    return-void
.end method

.method public reset()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/ui/TextTitleView;->mTitleLeft:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/ui/TextTitleView;->resetTextView(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/TextTitleView;->mTitleLeft:Landroid/widget/TextView;

    const v1, 0x7f0200db

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/TextTitleView;->mTitleRight:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/ui/TextTitleView;->resetTextView(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/TextTitleView;->mTitleText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/ui/TextTitleView;->resetTextView(Landroid/widget/TextView;)V

    return-void
.end method

.method public setLeftBtnText(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/TextTitleView;->mTitleLeft:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TextTitleView$OnTextTitleClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/TextTitleView;->mTitleLeft:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/TextTitleView;->mTitleRight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/pinguo/camera360/ui/TextTitleView;->mClickListener:Lcom/pinguo/camera360/ui/TextTitleView$OnTextTitleClickListener;

    return-void
.end method

.method public setRightBtnText(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/TextTitleView;->mTitleRight:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setRightBtnText(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/TextTitleView;->mTitleRight:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTiTleText(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/TextTitleView;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTiTleText(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/TextTitleView;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
