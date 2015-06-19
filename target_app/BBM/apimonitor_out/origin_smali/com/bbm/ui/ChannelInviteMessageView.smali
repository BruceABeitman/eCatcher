.class public Lcom/bbm/ui/ChannelInviteMessageView;
.super Lcom/bbm/ui/MessageView;
.source "ChannelInviteMessageView.java"


# instance fields
.field protected a:Landroid/widget/TextView;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/widget/TextView;

.field protected d:Lcom/bbm/ui/ObservingImageView;

.field protected e:Landroid/widget/Button;

.field protected f:Landroid/widget/Button;

.field protected g:Landroid/widget/TextView;

.field protected h:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/bbm/ui/MessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/ChannelInviteMessageView;->g:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/ChannelInviteMessageView;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bbm/d/a;)V
    .registers 5

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/bbm/ui/ChannelInviteMessageView;->d:Lcom/bbm/ui/ObservingImageView;

    iget-object v1, p1, Lcom/bbm/d/a;->a:Lcom/bbm/d/a/d/c;

    invoke-virtual {v1}, Lcom/bbm/d/a/d/c;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ChannelInviteMessageView;->setChanneNameText(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ChannelInviteMessageView;->setChanneDescriptionText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/ChannelInviteMessageView;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/ChannelInviteMessageView;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-direct {p0}, Lcom/bbm/ui/ChannelInviteMessageView;->b()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/MessageView;->onFinishInflate()V

    const v0, 0x7f0a0228

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ChannelInviteMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/ChannelInviteMessageView;->a:Landroid/widget/TextView;

    const v0, 0x7f0a0229

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ChannelInviteMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/ChannelInviteMessageView;->b:Landroid/widget/TextView;

    const v0, 0x7f0a048f

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ChannelInviteMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/ChannelInviteMessageView;->c:Landroid/widget/TextView;

    const v0, 0x7f0a0362

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ChannelInviteMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    iput-object v0, p0, Lcom/bbm/ui/ChannelInviteMessageView;->d:Lcom/bbm/ui/ObservingImageView;

    const v0, 0x7f0a048d

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ChannelInviteMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/ChannelInviteMessageView;->h:Landroid/view/View;

    const v0, 0x7f0a0491

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ChannelInviteMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbm/ui/ChannelInviteMessageView;->e:Landroid/widget/Button;

    const v0, 0x7f0a0492

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ChannelInviteMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbm/ui/ChannelInviteMessageView;->f:Landroid/widget/Button;

    const v0, 0x7f0a0493

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ChannelInviteMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/ChannelInviteMessageView;->g:Landroid/widget/TextView;

    return-void
.end method

.method public setChanneDescriptionText(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/ChannelInviteMessageView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbm/ui/ChannelInviteMessageView;->b:Landroid/widget/TextView;

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

.method public setChanneNameText(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/ChannelInviteMessageView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setChannelAvatar(Lcom/bbm/d/ec;)V
    .registers 6

    iget-object v0, p0, Lcom/bbm/ui/ChannelInviteMessageView;->d:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/bbm/util/b/a;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/bbm/util/b/a;-><init>(Landroid/app/Activity;I)V

    iget-object v0, p1, Lcom/bbm/d/ec;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/ui/ChannelInviteMessageView;->d:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1, v0, v2}, Lcom/bbm/util/b/a;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V

    return-void
.end method

.method public setInviteStatusText(I)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/ChannelInviteMessageView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbm/ui/ChannelInviteMessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setInviteStatusText(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/ChannelInviteMessageView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setInviteeRestritedState()V
    .registers 5

    const/16 v1, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/bbm/ui/ChannelInviteMessageView;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/ChannelInviteMessageView;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/ChannelInviteMessageView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/bbm/ui/ChannelInviteMessageView;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbm/ui/ChannelInviteMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e01f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/ChannelInviteMessageView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setInviteeState(Z)V
    .registers 7

    const/16 v1, 0x8

    const/4 v0, 0x0

    if-eqz p1, :cond_2c

    iget-object v2, p0, Lcom/bbm/ui/ChannelInviteMessageView;->e:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/bbm/ui/ChannelInviteMessageView;->f:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/bbm/ui/ChannelInviteMessageView;->g:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/bbm/ui/ChannelInviteMessageView;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbm/ui/ChannelInviteMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0495

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbm/ui/ChannelInviteMessageView;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2b
    return-void

    :cond_2c
    :try_start_2c
    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bbm/d/a;->B()Lcom/bbm/util/ay;

    move-result-object v2

    sget-object v3, Lcom/bbm/util/ay;->a:Lcom/bbm/util/ay;

    if-eq v2, v3, :cond_4d

    const/4 v2, 0x1

    move v3, v2

    :goto_3a
    iget-object v4, p0, Lcom/bbm/ui/ChannelInviteMessageView;->e:Landroid/widget/Button;

    if-eqz v3, :cond_4f

    move v2, v0

    :goto_3f
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/bbm/ui/ChannelInviteMessageView;->f:Landroid/widget/Button;

    if-eqz v3, :cond_51

    :goto_46
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_49
    .catch Lcom/bbm/j/z; {:try_start_2c .. :try_end_49} :catch_53

    :goto_49
    invoke-direct {p0}, Lcom/bbm/ui/ChannelInviteMessageView;->b()V

    goto :goto_2b

    :cond_4d
    move v3, v0

    goto :goto_3a

    :cond_4f
    move v2, v1

    goto :goto_3f

    :cond_51
    move v0, v1

    goto :goto_46

    :catch_53
    move-exception v0

    goto :goto_49
.end method

.method public setInviterState()V
    .registers 3

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/bbm/ui/ChannelInviteMessageView;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/ChannelInviteMessageView;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    invoke-direct {p0}, Lcom/bbm/ui/ChannelInviteMessageView;->b()V

    return-void
.end method
