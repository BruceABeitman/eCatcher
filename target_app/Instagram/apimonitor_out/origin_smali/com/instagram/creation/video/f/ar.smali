.class public final Lcom/instagram/creation/video/f/ar;
.super Lcom/instagram/creation/video/f/bf;
.source "VideoEditFragment.java"


# instance fields
.field private final a:Lcom/instagram/creation/video/f/ba;

.field private b:Lcom/instagram/ui/dialog/f;

.field private c:Lcom/instagram/creation/video/f/av;

.field private d:Lcom/instagram/creation/video/f/aw;

.field private final e:Landroid/os/Handler;

.field private f:Lcom/instagram/creation/video/ui/r;

.field private g:Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/instagram/creation/video/f/bf;-><init>()V

    new-instance v0, Lcom/instagram/creation/video/f/ba;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/creation/video/f/ba;-><init>(Lcom/instagram/creation/video/f/ar;B)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/ar;->a:Lcom/instagram/creation/video/f/ba;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/f/ar;->e:Landroid/os/Handler;

    return-void
.end method

.method private V()V
    .registers 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->D()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->creation_secondary_actions:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget v0, Lcom/facebook/av;->button_mode_trim:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instagram/creation/video/f/ar;->g:Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;

    if-eqz v1, :cond_86

    move v2, v3

    :goto_19
    iget-object v1, p0, Lcom/instagram/creation/video/f/ar;->c:Lcom/instagram/creation/video/f/av;

    sget-object v6, Lcom/instagram/creation/video/f/av;->c:Lcom/instagram/creation/video/f/av;

    if-eq v1, v6, :cond_21

    if-eqz v2, :cond_88

    :cond_21
    sget v1, Lcom/facebook/au;->tab_trim_anim_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_26
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    if-eqz v2, :cond_85

    iget-object v1, p0, Lcom/instagram/creation/video/f/ar;->g:Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;

    new-instance v2, Lcom/instagram/creation/video/f/au;

    invoke-direct {v2, p0}, Lcom/instagram/creation/video/f/au;-><init>(Lcom/instagram/creation/video/f/ar;)V

    invoke-virtual {v1, v2}, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->o()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/creation/base/ui/a;->b(Landroid/content/res/Resources;)Z

    move-result v2

    if-eqz v2, :cond_8e

    iget-object v2, p0, Lcom/instagram/creation/video/f/ar;->g:Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;

    aget v4, v1, v4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    aget v6, v1, v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v6

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3ecccccd

    mul-float/2addr v5, v6

    invoke-virtual {v2, v4, v0, v5}, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->a(IIF)V

    sget-object v0, Lcom/instagram/creation/video/ui/s;->e:Lcom/instagram/creation/video/ui/s;

    const/16 v2, 0x51

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->D()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    aget v1, v1, v3

    sub-int v1, v4, v1

    invoke-direct {p0, v0, v2, v1}, Lcom/instagram/creation/video/f/ar;->a(Lcom/instagram/creation/video/ui/s;II)V

    :goto_7e
    invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/k/b/a;->s()Z

    :cond_85
    return-void

    :cond_86
    move v2, v4

    goto :goto_19

    :cond_88
    sget v1, Lcom/facebook/au;->tab_trim_anim_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_26

    :cond_8e
    iget-object v2, p0, Lcom/instagram/creation/video/f/ar;->g:Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;

    aget v4, v1, v4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    aget v1, v1, v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3eb851ec

    mul-float/2addr v1, v3

    invoke-virtual {v2, v4, v0, v1}, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->a(IIF)V

    sget-object v0, Lcom/instagram/creation/video/ui/s;->f:Lcom/instagram/creation/video/ui/s;

    const/16 v1, 0x31

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x6

    invoke-direct {p0, v0, v1, v2}, Lcom/instagram/creation/video/f/ar;->a(Lcom/instagram/creation/video/ui/s;II)V

    goto :goto_7e
.end method

.method private W()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->f:Lcom/instagram/creation/video/ui/r;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->f:Lcom/instagram/creation/video/ui/r;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/r;->dismiss()V

    iput-object v2, p0, Lcom/instagram/creation/video/f/ar;->f:Lcom/instagram/creation/video/ui/r;

    :cond_c
    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->g:Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->g:Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->D()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->button_mode_trim:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/facebook/au;->tab_trim_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    iput-object v2, p0, Lcom/instagram/creation/video/f/ar;->g:Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;

    :cond_2d
    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->e:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private X()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->j()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/f/aw;->c(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/aw;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    :cond_15
    return-void
.end method

.method private Y()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->c:Lcom/instagram/creation/video/f/av;

    sget-object v1, Lcom/instagram/creation/video/f/av;->a:Lcom/instagram/creation/video/f/av;

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    if-eqz v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-direct {p0}, Lcom/instagram/creation/video/f/ar;->X()V

    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->j()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    sget-object v1, Lcom/instagram/creation/video/f/av;->a:Lcom/instagram/creation/video/f/av;

    iput-object v1, p0, Lcom/instagram/creation/video/f/ar;->c:Lcom/instagram/creation/video/f/av;

    new-instance v1, Lcom/instagram/creation/video/f/bb;

    invoke-direct {v1}, Lcom/instagram/creation/video/f/bb;-><init>()V

    iput-object v1, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    iget-object v1, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    invoke-virtual {v1, v0}, Lcom/instagram/creation/video/f/aw;->g(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->q()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    sget v1, Lcom/facebook/av;->video_edit_fragment_container_front:I

    iget-object v2, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->b()I

    goto :goto_a
.end method

.method private Z()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->c:Lcom/instagram/creation/video/f/av;

    sget-object v1, Lcom/instagram/creation/video/f/av;->c:Lcom/instagram/creation/video/f/av;

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    if-eqz v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-direct {p0}, Lcom/instagram/creation/video/f/ar;->X()V

    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->j()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    sget-object v1, Lcom/instagram/creation/video/f/av;->c:Lcom/instagram/creation/video/f/av;

    iput-object v1, p0, Lcom/instagram/creation/video/f/ar;->c:Lcom/instagram/creation/video/f/av;

    new-instance v1, Lcom/instagram/creation/video/f/bi;

    invoke-direct {v1}, Lcom/instagram/creation/video/f/bi;-><init>()V

    iput-object v1, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    iget-object v1, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    invoke-virtual {v1, v0}, Lcom/instagram/creation/video/f/aw;->g(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->q()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    sget v1, Lcom/facebook/av;->video_edit_fragment_container_front:I

    iget-object v2, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->b()I

    goto :goto_a
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/ar;Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;)Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/video/f/ar;->g:Lcom/instagram/common/ui/widget/imageview/PunchedOverlayView;

    return-object p1
.end method

.method private a(I)V
    .registers 5

    sget-object v0, Lcom/instagram/creation/video/f/av;->b:Lcom/instagram/creation/video/f/av;

    iget v0, v0, Lcom/instagram/creation/video/f/av;->d:I

    if-ne p1, v0, :cond_18

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/ar;->c(Z)V

    :goto_a
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VideoEditFragment.EDIT_MODE"

    iget-object v2, p0, Lcom/instagram/creation/video/f/ar;->c:Lcom/instagram/creation/video/f/av;

    iget v2, v2, Lcom/instagram/creation/video/f/av;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_18
    sget-object v0, Lcom/instagram/creation/video/f/av;->c:Lcom/instagram/creation/video/f/av;

    iget v0, v0, Lcom/instagram/creation/video/f/av;->d:I

    if-ne p1, v0, :cond_22

    invoke-direct {p0}, Lcom/instagram/creation/video/f/ar;->Z()V

    goto :goto_a

    :cond_22
    invoke-direct {p0}, Lcom/instagram/creation/video/f/ar;->Y()V

    goto :goto_a
.end method

.method public static a(Landroid/os/Bundle;Lcom/instagram/creation/video/f/av;)V
    .registers 4

    const-string v0, "VideoEditFragment.EDIT_MODE"

    iget v1, p1, Lcom/instagram/creation/video/f/av;->d:I

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/ar;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/video/f/ar;->aa()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/video/f/ar;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/ar;->a(I)V

    return-void
.end method

.method static a(Lcom/instagram/creation/video/f/av;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "VideoEditFragment.INTENT_ACTION_EDIT_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "VideoEditFragment.EDIT_MODE"

    iget v2, p0, Lcom/instagram/creation/video/f/av;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v0}, Lcom/instagram/common/u/d;->b(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Lcom/instagram/creation/video/ui/s;II)V
    .registers 7

    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->f:Lcom/instagram/creation/video/ui/r;

    if-nez v0, :cond_f

    new-instance v0, Lcom/instagram/creation/video/ui/r;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/instagram/creation/video/ui/r;-><init>(Landroid/content/Context;Lcom/instagram/creation/video/ui/s;)V

    iput-object v0, p0, Lcom/instagram/creation/video/f/ar;->f:Lcom/instagram/creation/video/ui/r;

    :cond_f
    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->f:Lcom/instagram/creation/video/ui/r;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/r;->isShowing()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->f:Lcom/instagram/creation/video/ui/r;

    sget v1, Lcom/facebook/ba;->Tooltip_Popup:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/ui/r;->setAnimationStyle(I)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->f:Lcom/instagram/creation/video/ui/r;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->D()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p3}, Lcom/instagram/creation/video/ui/r;->showAtLocation(Landroid/view/View;III)V

    :cond_28
    return-void
.end method

.method private aa()V
    .registers 4

    invoke-direct {p0}, Lcom/instagram/creation/video/f/ar;->X()V

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->q()Landroid/support/v4/app/s;

    move-result-object v0

    sget v1, Lcom/facebook/av;->video_edit_fragment_container_back:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/ag;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/ag;->b()I

    :cond_1a
    sget v1, Lcom/facebook/av;->video_edit_fragment_container_front:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->b()I

    :cond_2d
    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->b:Lcom/instagram/ui/dialog/f;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->b:Lcom/instagram/ui/dialog/f;

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/creation/video/f/ar;->b:Lcom/instagram/ui/dialog/f;

    :cond_39
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->U()Lcom/instagram/creation/b/a/b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/k/a;

    invoke-interface {v0, v1}, Lcom/instagram/creation/video/k/a;->d(Lcom/instagram/creation/b/a/b;)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/base/a;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/instagram/creation/video/f/ar;->ab()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/creation/base/a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private ab()Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->j()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "directShare"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method static b()V
    .registers 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "VideoEditFragment.INTENT_ACTION_START_SHARE_SCREEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/instagram/common/u/d;->b(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/instagram/creation/video/f/ar;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/video/f/ar;->V()V

    return-void
.end method

.method static synthetic c(Lcom/instagram/creation/video/f/ar;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->e:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Z)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->c:Lcom/instagram/creation/video/f/av;

    sget-object v1, Lcom/instagram/creation/video/f/av;->b:Lcom/instagram/creation/video/f/av;

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    if-eqz v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-direct {p0}, Lcom/instagram/creation/video/f/ar;->X()V

    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->j()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string v1, "VideoCoverFragmentBase.SAVE_AND_FINISH"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcom/instagram/creation/video/f/av;->b:Lcom/instagram/creation/video/f/av;

    iput-object v1, p0, Lcom/instagram/creation/video/f/ar;->c:Lcom/instagram/creation/video/f/av;

    invoke-static {}, Lcom/instagram/creation/c/a;->e()Z

    move-result v1

    if-eqz v1, :cond_48

    new-instance v1, Lcom/instagram/creation/video/f/am;

    invoke-direct {v1}, Lcom/instagram/creation/video/f/am;-><init>()V

    iput-object v1, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    :goto_2d
    iget-object v1, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    invoke-virtual {v1, v0}, Lcom/instagram/creation/video/f/aw;->g(Landroid/os/Bundle;)V

    if-eqz p1, :cond_50

    sget v0, Lcom/facebook/av;->video_edit_fragment_container_back:I

    :goto_36
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->q()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->b()I

    goto :goto_a

    :cond_48
    new-instance v1, Lcom/instagram/creation/video/f/ao;

    invoke-direct {v1}, Lcom/instagram/creation/video/f/ao;-><init>()V

    iput-object v1, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    goto :goto_2d

    :cond_50
    sget v0, Lcom/facebook/av;->video_edit_fragment_container_front:I

    goto :goto_36
.end method

.method static synthetic d(Lcom/instagram/creation/video/f/ar;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/video/f/ar;->W()V

    return-void
.end method


# virtual methods
.method public final E()V
    .registers 3

    invoke-super {p0}, Lcom/instagram/creation/video/f/bf;->E()V

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->l()Landroid/support/v4/app/k;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "VideoEditFragment.INTENT_ACTION_EDIT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "VideoEditFragment.INTENT_ACTION_START_SHARE_SCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/instagram/creation/video/f/ar;->a:Lcom/instagram/creation/video/f/ba;

    invoke-static {v1, v0}, Lcom/instagram/common/u/d;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public final F()V
    .registers 2

    invoke-super {p0}, Lcom/instagram/creation/video/f/bf;->F()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->a:Lcom/instagram/creation/video/f/ba;

    invoke-static {v0}, Lcom/instagram/common/u/d;->a(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/instagram/creation/video/f/ar;->W()V

    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    const/4 v3, 0x0

    sget v0, Lcom/facebook/aw;->fragment_video_edit:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    sget v0, Lcom/facebook/av;->video_edit_actionbar_container:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->o()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/creation/base/ui/a;->b(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_23

    sget v1, Lcom/facebook/aw;->action_bar_video:I

    :goto_1b
    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object v2

    :cond_23
    sget v1, Lcom/facebook/aw;->action_bar_video_small:I

    goto :goto_1b
.end method

.method public final a(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->U()Lcom/instagram/creation/b/a/b;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->K()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/creation/video/l/j;->a(Ljava/lang/String;Landroid/content/Context;)V

    :cond_11
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->onBackPressed()V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/instagram/creation/video/f/bf;->a(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->j()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/video/l/g;->a(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/e;

    new-instance v1, Lcom/instagram/creation/video/f/as;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/f/as;-><init>(Lcom/instagram/creation/video/f/ar;)V

    invoke-interface {v0, v1}, Lcom/instagram/creation/b/a/e;->a(Ljava/lang/Runnable;)V

    :goto_1b
    return-void

    :cond_1c
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VideoEditFragment.EDIT_MODE"

    sget-object v2, Lcom/instagram/creation/video/f/av;->a:Lcom/instagram/creation/video/f/av;

    iget v2, v2, Lcom/instagram/creation/video/f/av;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/ar;->a(I)V

    goto :goto_1b
.end method

.method public final c()V
    .registers 4

    sget v0, Lcom/facebook/az;->processing:I

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/f/ar;->c(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/instagram/ui/dialog/f;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->n()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/ui/dialog/f;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/instagram/creation/video/f/ar;->b:Lcom/instagram/ui/dialog/f;

    iget-object v1, p0, Lcom/instagram/creation/video/f/ar;->b:Lcom/instagram/ui/dialog/f;

    invoke-virtual {v1, v0}, Lcom/instagram/ui/dialog/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->b:Lcom/instagram/ui/dialog/f;

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->show()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->c:Lcom/instagram/creation/video/f/av;

    sget-object v1, Lcom/instagram/creation/video/f/av;->a:Lcom/instagram/creation/video/f/av;

    if-eq v0, v1, :cond_27

    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->c:Lcom/instagram/creation/video/f/av;

    sget-object v1, Lcom/instagram/creation/video/f/av;->c:Lcom/instagram/creation/video/f/av;

    if-ne v0, v1, :cond_2c

    :cond_27
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/f/ar;->c(Z)V

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->c:Lcom/instagram/creation/video/f/av;

    sget-object v1, Lcom/instagram/creation/video/f/av;->b:Lcom/instagram/creation/video/f/av;

    if-ne v0, v1, :cond_2b

    invoke-direct {p0}, Lcom/instagram/creation/video/f/ar;->X()V

    const-string v0, "VideoCoverFragmentBase.INTENT_ACTION_SAVE_COVER_FRAME"

    invoke-static {v0}, Lcom/instagram/common/u/d;->b(Ljava/lang/String;)V

    goto :goto_2b
.end method

.method public final d()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->o()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/az;->edit:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/instagram/creation/video/f/bf;->e(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/instagram/creation/video/f/ar;->d:Lcom/instagram/creation/video/f/aw;

    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->j()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/f/aw;->c(Landroid/os/Bundle;)V

    :cond_10
    invoke-virtual {p0}, Lcom/instagram/creation/video/f/ar;->j()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-void
.end method

.method public final i_()Ljava/lang/String;
    .registers 2

    const-string v0, "video_edit"

    return-object v0
.end method

.method public final l_()V
    .registers 1

    invoke-super {p0}, Lcom/instagram/creation/video/f/bf;->l_()V

    return-void
.end method
