.class public Lcom/bbm/ui/ChannelPostMessageView;
.super Lcom/bbm/ui/MessageView;
.source "ChannelPostMessageView.java"


# instance fields
.field private a:Lcom/bbm/ui/ObservingImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/bbm/ui/MessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getChannelPostImage()Lcom/bbm/ui/ObservingImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/ChannelPostMessageView;->a:Lcom/bbm/ui/ObservingImageView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/MessageView;->onFinishInflate()V

    const v0, 0x7f0a042d

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ChannelPostMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    iput-object v0, p0, Lcom/bbm/ui/ChannelPostMessageView;->a:Lcom/bbm/ui/ObservingImageView;

    const v0, 0x7f0a042e

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ChannelPostMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/ChannelPostMessageView;->b:Landroid/widget/TextView;

    const v0, 0x7f0a042f

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ChannelPostMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/ChannelPostMessageView;->c:Landroid/widget/TextView;

    const v0, 0x7f0a0496

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ChannelPostMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/ChannelPostMessageView;->d:Landroid/widget/TextView;

    return-void
.end method

.method public setBodyText(Ljava/lang/String;)V
    .registers 4

    const v0, 0x7f0a0456

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ChannelPostMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0495

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ChannelPostMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-super {p0, p1}, Lcom/bbm/ui/MessageView;->setBodyText(Ljava/lang/String;)V

    return-void
.end method

.method public setChannelNameText(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/ChannelPostMessageView;->d:Landroid/widget/TextView;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public setChannelPostText(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/ChannelPostMessageView;->c:Landroid/widget/TextView;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public setChannelPostTitleText(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/ChannelPostMessageView;->b:Landroid/widget/TextView;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public setChannelPostTitleVisibility(I)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/ChannelPostMessageView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setChannelVerified(Z)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_39

    invoke-virtual {p0}, Lcom/bbm/ui/ChannelPostMessageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020260

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbm/ui/ChannelPostMessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v2, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/bbm/ui/ChannelPostMessageView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v0, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_38
    return-void

    :cond_39
    iget-object v0, p0, Lcom/bbm/ui/ChannelPostMessageView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_38
.end method
