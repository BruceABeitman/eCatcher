.class public final Lcom/spotify/mobile/android/spotlets/video/c;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/StringBuilder;

.field b:Ljava/util/Formatter;

.field private c:Lcom/spotify/mobile/android/spotlets/video/d;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Z

.field private i:Lcom/spotify/android/paste/widget/CheckableImageButton;

.field private j:Landroid/widget/ImageButton;

.field private k:Landroid/widget/ImageButton;

.field private l:Landroid/os/Handler;

.field private m:Landroid/view/animation/Animation;

.field private n:Landroid/view/animation/Animation;

.field private o:Landroid/view/animation/Animation;

.field private p:Landroid/view/animation/Animation;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/view/View$OnClickListener;

.field private t:Landroid/view/View$OnClickListener;

.field private u:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/video/e;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/video/e;-><init>(Lcom/spotify/mobile/android/spotlets/video/c;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->l:Landroid/os/Handler;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/video/c$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/video/c$2;-><init>(Lcom/spotify/mobile/android/spotlets/video/c;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->s:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/video/c$3;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/video/c$3;-><init>(Lcom/spotify/mobile/android/spotlets/video/c;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->t:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/video/c$4;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/video/c$4;-><init>(Lcom/spotify/mobile/android/spotlets/video/c;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->u:Landroid/view/View$OnClickListener;

    const v0, 0x7f030094

    invoke-static {p1, v0, p0}, Lcom/spotify/mobile/android/spotlets/video/c;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string v0, "initControllerView"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/video/c;->setVisibility(I)V

    const v0, 0x7f0a0302

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/video/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->q:Landroid/view/View;

    const v0, 0x7f0a0308

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/video/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/android/paste/widget/CheckableImageButton;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->i:Lcom/spotify/android/paste/widget/CheckableImageButton;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->i:Lcom/spotify/android/paste/widget/CheckableImageButton;

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->i:Lcom/spotify/android/paste/widget/CheckableImageButton;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/CheckableImageButton;->requestFocus()Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->i:Lcom/spotify/android/paste/widget/CheckableImageButton;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/c;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/CheckableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/video/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/j;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/video/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/j;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v3, v6, [I

    const v4, -0x10100a0

    aput v4, v3, v5

    invoke-virtual {v2, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v0, v6, [I

    const v3, 0x10100a0

    aput v3, v0, v5

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->i:Lcom/spotify/android/paste/widget/CheckableImageButton;

    invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_85
    const v0, 0x7f0a0309

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/video/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->j:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->j:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/video/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/j;->f(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a0307

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/video/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->k:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->k:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/video/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/j;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/video/c;->g()V

    const v0, 0x7f0a0304

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/video/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->e:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->e:Landroid/widget/ProgressBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    const v0, 0x7f0a0305

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/video/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->f:Landroid/widget/TextView;

    const v0, 0x7f0a0303

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/video/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->g:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->a:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/c;->a:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->b:Ljava/util/Formatter;

    const v0, 0x7f0a0301

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/video/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/video/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->m:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/video/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->n:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->n:Landroid/view/animation/Animation;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/video/c$1;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/video/c$1;-><init>(Lcom/spotify/mobile/android/spotlets/video/c;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/video/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040009

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->o:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/video/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->p:Landroid/view/animation/Animation;

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/video/c;->g()V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .registers 11

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    div-int/lit16 v0, p1, 0x3e8

    rem-int/lit8 v1, v0, 0x3c

    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    div-int/lit16 v0, v0, 0xe10

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/video/c;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    if-lez v0, :cond_36

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/video/c;->b:Ljava/util/Formatter;

    const-string v4, "%d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_35
    return-object v0

    :cond_36
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->b:Ljava/util/Formatter;

    const-string v3, "%02d:%02d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_35
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/video/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/video/c;->f()V

    return-void
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/video/c;)Lcom/spotify/mobile/android/spotlets/video/d;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->c:Lcom/spotify/mobile/android/spotlets/video/d;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/spotlets/video/c;)I
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/video/c;->d()I

    move-result v0

    return v0
.end method

.method private d()I
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/c;->c:Lcom/spotify/mobile/android/spotlets/video/d;

    if-nez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/c;->c:Lcom/spotify/mobile/android/spotlets/video/d;

    invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/video/d;->b()I

    move-result v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/video/c;->c:Lcom/spotify/mobile/android/spotlets/video/d;

    invoke-interface {v2}, Lcom/spotify/mobile/android/spotlets/video/d;->c()I

    move-result v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/video/c;->e:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_2d

    if-lez v2, :cond_23

    mul-int/lit16 v3, v1, 0x3e8

    div-int v2, v3, v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/video/c;->e:Landroid/widget/ProgressBar;

    long-to-int v2, v2

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_23
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/video/c;->c:Lcom/spotify/mobile/android/spotlets/video/d;

    invoke-interface {v2}, Lcom/spotify/mobile/android/spotlets/video/d;->e()I

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/video/c;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    :cond_2d
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->g:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/spotify/mobile/android/spotlets/video/c;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->c:Lcom/spotify/mobile/android/spotlets/video/d;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/video/d;->j()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->j:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_44
    move v0, v1

    goto :goto_5
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->i:Lcom/spotify/android/paste/widget/CheckableImageButton;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->c:Lcom/spotify/mobile/android/spotlets/video/d;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->c:Lcom/spotify/mobile/android/spotlets/video/d;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/video/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->i:Lcom/spotify/android/paste/widget/CheckableImageButton;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/CheckableImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->i:Lcom/spotify/android/paste/widget/CheckableImageButton;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/CheckableImageButton;->toggle()V

    goto :goto_8

    :cond_1f
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->i:Lcom/spotify/android/paste/widget/CheckableImageButton;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/CheckableImageButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->i:Lcom/spotify/android/paste/widget/CheckableImageButton;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/CheckableImageButton;->toggle()V

    goto :goto_8
.end method

.method private f()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->c:Lcom/spotify/mobile/android/spotlets/video/d;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->c:Lcom/spotify/mobile/android/spotlets/video/d;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/video/d;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->c:Lcom/spotify/mobile/android/spotlets/video/d;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/video/d;->f()V

    :goto_12
    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/video/c;->e()V

    goto :goto_4

    :cond_16
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->c:Lcom/spotify/mobile/android/spotlets/video/d;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/video/d;->g()V

    goto :goto_12
.end method

.method private g()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->j:Landroid/widget/ImageButton;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->j:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/video/c;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/video/c;->j:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->t:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->c:Lcom/spotify/mobile/android/spotlets/video/d;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->c:Lcom/spotify/mobile/android/spotlets/video/d;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/video/d;->j()Z

    move-result v0

    if-eqz v0, :cond_47

    const/4 v0, 0x1

    :goto_24
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_27
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->k:Landroid/widget/ImageButton;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->k:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/video/c;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->k:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/video/c;->u:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/video/c;->c:Lcom/spotify/mobile/android/spotlets/video/d;

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/video/c;->c:Lcom/spotify/mobile/android/spotlets/video/d;

    :cond_43
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_46
    return-void

    :cond_47
    move v0, v1

    goto :goto_24
.end method


# virtual methods
.method public final a()V
    .registers 5

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->h:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_29

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/video/c;->d()I

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->i:Lcom/spotify/android/paste/widget/CheckableImageButton;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->i:Lcom/spotify/android/paste/widget/CheckableImageButton;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/CheckableImageButton;->requestFocus()Z

    :cond_15
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/video/c;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->q:Landroid/view/View;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/c;->m:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/c;->o:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iput-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/video/c;->h:Z

    :cond_29
    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/video/c;->e()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->l:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->l:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/c;->l:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/c;->l:Landroid/os/Handler;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final a(Landroid/widget/FrameLayout;)V
    .registers 5

    const/4 v2, -0x1

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/video/c;->d:Landroid/view/ViewGroup;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x50

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/video/d;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/video/c;->c:Lcom/spotify/mobile/android/spotlets/video/d;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->c:Lcom/spotify/mobile/android/spotlets/video/d;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/c;->c:Lcom/spotify/mobile/android/spotlets/video/d;

    invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/video/d;->c()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/spotify/mobile/android/spotlets/video/c;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/video/c;->e()V

    :cond_18
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b()V
    .registers 3

    const-string v0, "removeMessages (video)"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->l:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->l:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->d:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->q:Landroid/view/View;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/c;->n:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/c;->p:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/video/c;->h:Z

    goto :goto_4
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1d

    move v1, v0

    :goto_12
    sparse-switch v2, :sswitch_data_68

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/video/c;->a()V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    const/4 v1, 0x0

    goto :goto_12

    :sswitch_1f
    if-eqz v1, :cond_1c

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/video/c;->f()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/video/c;->a()V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/c;->i:Lcom/spotify/android/paste/widget/CheckableImageButton;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/c;->i:Lcom/spotify/android/paste/widget/CheckableImageButton;

    invoke-virtual {v1}, Lcom/spotify/android/paste/widget/CheckableImageButton;->requestFocus()Z

    goto :goto_1c

    :sswitch_31
    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/c;->c:Lcom/spotify/mobile/android/spotlets/video/d;

    invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/video/d;->d()Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/c;->c:Lcom/spotify/mobile/android/spotlets/video/d;

    invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/video/d;->g()V

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/video/c;->e()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/video/c;->a()V

    goto :goto_1c

    :sswitch_47
    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/c;->c:Lcom/spotify/mobile/android/spotlets/video/d;

    invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/video/d;->d()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/c;->c:Lcom/spotify/mobile/android/spotlets/video/d;

    invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/video/d;->f()V

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/video/c;->e()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/video/c;->a()V

    goto :goto_1c

    :sswitch_5d
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1c

    :sswitch_62
    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/video/c;->c()V

    goto :goto_1c

    :sswitch_data_68
    .sparse-switch
        0x4 -> :sswitch_62
        0x18 -> :sswitch_5d
        0x19 -> :sswitch_5d
        0x3e -> :sswitch_1f
        0x4f -> :sswitch_1f
        0x52 -> :sswitch_62
        0x55 -> :sswitch_1f
        0x56 -> :sswitch_47
        0x7e -> :sswitch_31
        0x7f -> :sswitch_47
        0xa4 -> :sswitch_5d
    .end sparse-switch
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/video/c;->a()V

    const/4 v0, 0x1

    return v0
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/video/c;->a()V

    const/4 v0, 0x0

    return v0
.end method
