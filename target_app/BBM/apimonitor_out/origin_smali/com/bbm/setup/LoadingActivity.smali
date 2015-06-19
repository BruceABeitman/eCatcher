.class public Lcom/bbm/setup/LoadingActivity;
.super Lcom/bbm/setup/r;
.source "LoadingActivity.java"


# instance fields
.field private a:Lcom/bbm/util/cr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/util/cr",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/app/Dialog;

.field private c:Lcom/bbm/c/n;

.field private final d:Lcom/bbm/j/k;

.field private final e:Lcom/bbm/j/k;

.field private final f:Ljava/lang/Runnable;

.field private final g:[I

.field private h:Lcom/bbm/af;

.field private i:Landroid/os/Handler;

.field private j:I

.field private k:Z

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/bbm/setup/r;-><init>()V

    new-instance v0, Lcom/bbm/util/cr;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/setup/LoadingActivity;->a:Lcom/bbm/util/cr;

    new-instance v0, Lcom/bbm/setup/i;

    invoke-direct {v0, p0}, Lcom/bbm/setup/i;-><init>(Lcom/bbm/setup/LoadingActivity;)V

    iput-object v0, p0, Lcom/bbm/setup/LoadingActivity;->d:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/setup/j;

    invoke-direct {v0, p0}, Lcom/bbm/setup/j;-><init>(Lcom/bbm/setup/LoadingActivity;)V

    iput-object v0, p0, Lcom/bbm/setup/LoadingActivity;->e:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/setup/k;

    invoke-direct {v0, p0}, Lcom/bbm/setup/k;-><init>(Lcom/bbm/setup/LoadingActivity;)V

    iput-object v0, p0, Lcom/bbm/setup/LoadingActivity;->f:Ljava/lang/Runnable;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3e

    iput-object v0, p0, Lcom/bbm/setup/LoadingActivity;->g:[I

    invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/setup/LoadingActivity;->h:Lcom/bbm/af;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/bbm/setup/LoadingActivity;->i:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/bbm/setup/LoadingActivity;->j:I

    return-void

    nop

    :array_3e
    .array-data 0x4
        0xebt 0x2t 0xat 0x7ft
        0xeet 0x2t 0xat 0x7ft
        0xf1t 0x2t 0xat 0x7ft
    .end array-data
.end method

.method private a(IILandroid/graphics/Typeface;Landroid/graphics/Typeface;FF)V
    .registers 10

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/bbm/setup/LoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v0, v2, p5}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0, p2}, Lcom/bbm/setup/LoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v0, v2, p6}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/setup/LoadingActivity;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/setup/LoadingActivity;->p:Landroid/widget/TextView;

    const v1, 0x7f0e067c

    invoke-virtual {p0, v1}, Lcom/bbm/setup/LoadingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/setup/LoadingActivity;Lcom/bbm/c/n;)V
    .registers 3

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bbm/c/c;->a(Lcom/bbm/c/n;)V

    iput-object p1, p0, Lcom/bbm/setup/LoadingActivity;->c:Lcom/bbm/c/n;

    :cond_b
    return-void
.end method

.method static synthetic b(Lcom/bbm/setup/LoadingActivity;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/setup/LoadingActivity;->p:Landroid/widget/TextView;

    const v1, 0x7f0e0689

    invoke-virtual {p0, v1}, Lcom/bbm/setup/LoadingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic c(Lcom/bbm/setup/LoadingActivity;)Z
    .registers 2

    iget-object v0, p0, Lcom/bbm/setup/LoadingActivity;->h:Lcom/bbm/af;

    invoke-virtual {v0}, Lcom/bbm/af;->j()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/bbm/setup/LoadingActivity;->h:Lcom/bbm/af;

    invoke-virtual {v0}, Lcom/bbm/af;->p()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/bbm/setup/LoadingActivity;->h:Lcom/bbm/af;

    invoke-virtual {v0}, Lcom/bbm/af;->h()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/bbm/setup/LoadingActivity;->h:Lcom/bbm/af;

    invoke-virtual {v0}, Lcom/bbm/af;->i()Z

    move-result v0

    if-nez v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method static synthetic d(Lcom/bbm/setup/LoadingActivity;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/setup/LoadingActivity;->p:Landroid/widget/TextView;

    const v1, 0x7f0e0373

    invoke-virtual {p0, v1}, Lcom/bbm/setup/LoadingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic e(Lcom/bbm/setup/LoadingActivity;)Lcom/bbm/c/n;
    .registers 2

    iget-object v0, p0, Lcom/bbm/setup/LoadingActivity;->c:Lcom/bbm/c/n;

    return-object v0
.end method

.method private e()Z
    .registers 4

    invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;

    invoke-static {}, Lcom/bbm/Alaska;->u()Lcom/bbm/setup/ag;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/setup/ag;->a:Lcom/bbm/setup/ah;

    const-class v1, Lcom/bbm/setup/ContactListAccessPromptActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/bbm/setup/LoadingActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/bbm/setup/ah;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/bbm/setup/LoadingActivity;->a:Lcom/bbm/util/cr;

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_33

    const/4 v0, 0x1

    :goto_32
    return v0

    :cond_33
    const/4 v0, 0x0

    goto :goto_32
.end method

.method private f()V
    .registers 5

    iget-boolean v0, p0, Lcom/bbm/setup/LoadingActivity;->k:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/bbm/setup/LoadingActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bbm/setup/LoadingActivity;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1194

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/setup/LoadingActivity;->k:Z

    :cond_10
    return-void
.end method

.method static synthetic f(Lcom/bbm/setup/LoadingActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/setup/LoadingActivity;->g()V

    return-void
.end method

.method static synthetic g(Lcom/bbm/setup/LoadingActivity;)Lcom/bbm/util/cr;
    .registers 2

    iget-object v0, p0, Lcom/bbm/setup/LoadingActivity;->a:Lcom/bbm/util/cr;

    return-object v0
.end method

.method private g()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/setup/LoadingActivity;->c:Lcom/bbm/c/n;

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/setup/LoadingActivity;->c:Lcom/bbm/c/n;

    invoke-virtual {v0, v1}, Lcom/bbm/c/c;->c(Lcom/bbm/c/n;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/setup/LoadingActivity;->c:Lcom/bbm/c/n;

    :cond_10
    return-void
.end method

.method static synthetic h(Lcom/bbm/setup/LoadingActivity;)V
    .registers 3

    new-instance v0, Lcom/bbm/setup/m;

    invoke-direct {v0, p0}, Lcom/bbm/setup/m;-><init>(Lcom/bbm/setup/LoadingActivity;)V

    invoke-static {p0, v0}, Lcom/bbm/setup/ContactListAccessPromptActivity;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/setup/LoadingActivity;->b:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/bbm/setup/LoadingActivity;->b:Landroid/app/Dialog;

    new-instance v1, Lcom/bbm/setup/n;

    invoke-direct {v1, p0}, Lcom/bbm/setup/n;-><init>(Lcom/bbm/setup/LoadingActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/bbm/setup/LoadingActivity;->e:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    invoke-direct {p0}, Lcom/bbm/setup/LoadingActivity;->g()V

    iget-object v0, p0, Lcom/bbm/setup/LoadingActivity;->a:Lcom/bbm/util/cr;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/setup/LoadingActivity;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic i(Lcom/bbm/setup/LoadingActivity;)Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/setup/LoadingActivity;->k:Z

    return v0
.end method

.method static synthetic j(Lcom/bbm/setup/LoadingActivity;)Z
    .registers 2

    invoke-direct {p0}, Lcom/bbm/setup/LoadingActivity;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic k(Lcom/bbm/setup/LoadingActivity;)V
    .registers 11

    const-wide/16 v8, 0xc8

    const-wide/16 v6, 0x12c

    const/4 v5, 0x2

    iget v0, p0, Lcom/bbm/setup/LoadingActivity;->j:I

    iget v1, p0, Lcom/bbm/setup/LoadingActivity;->j:I

    if-gez v1, :cond_aa

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    iget-object v3, p0, Lcom/bbm/setup/LoadingActivity;->g:[I

    array-length v3, v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/bbm/setup/LoadingActivity;->j:I

    :goto_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-ltz v0, :cond_5a

    iget-object v2, p0, Lcom/bbm/setup/LoadingActivity;->g:[I

    aget v0, v2, v0

    invoke-virtual {p0, v0}, Lcom/bbm/setup/LoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v2, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    new-array v3, v5, [F

    fill-array-data v3, :array_b6

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v5, [F

    fill-array-data v3, :array_be

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5a
    iget-object v0, p0, Lcom/bbm/setup/LoadingActivity;->g:[I

    iget v2, p0, Lcom/bbm/setup/LoadingActivity;->j:I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/bbm/setup/LoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v2, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    new-array v3, v5, [F

    fill-array-data v3, :array_c6

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v5, [F

    fill-array-data v3, :array_ce

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_aa
    iget v1, p0, Lcom/bbm/setup/LoadingActivity;->j:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/bbm/setup/LoadingActivity;->g:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/bbm/setup/LoadingActivity;->j:I

    goto/16 :goto_17

    :array_b6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xb4t 0xc2t
    .end array-data

    :array_be
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_c6
    .array-data 0x4
        0x0t 0x0t 0xb4t 0x42t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_ce
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic l(Lcom/bbm/setup/LoadingActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/setup/LoadingActivity;->f()V

    return-void
.end method

.method static synthetic m(Lcom/bbm/setup/LoadingActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbm/setup/LoadingActivity;->l:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic n(Lcom/bbm/setup/LoadingActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbm/setup/LoadingActivity;->m:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic o(Lcom/bbm/setup/LoadingActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbm/setup/LoadingActivity;->n:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic p(Lcom/bbm/setup/LoadingActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbm/setup/LoadingActivity;->o:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic q(Lcom/bbm/setup/LoadingActivity;)Landroid/app/Dialog;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/setup/LoadingActivity;->b:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/bbm/setup/r;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030058

    invoke-virtual {p0, v0}, Lcom/bbm/setup/LoadingActivity;->setContentView(I)V

    const v0, 0x7f0a02e8

    invoke-virtual {p0, v0}, Lcom/bbm/setup/LoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbm/setup/LoadingActivity;->l:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02eb

    invoke-virtual {p0, v0}, Lcom/bbm/setup/LoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbm/setup/LoadingActivity;->m:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02ee

    invoke-virtual {p0, v0}, Lcom/bbm/setup/LoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbm/setup/LoadingActivity;->n:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02f1

    invoke-virtual {p0, v0}, Lcom/bbm/setup/LoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbm/setup/LoadingActivity;->o:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02e9

    invoke-virtual {p0, v0}, Lcom/bbm/setup/LoadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/setup/LoadingActivity;->p:Landroid/widget/TextView;

    const-string v0, "sans-serif"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    const-string v0, "sans-serif-light"

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    iget-object v0, p0, Lcom/bbm/setup/LoadingActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/bbm/setup/LoadingActivity;->p:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbm/setup/LoadingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b032f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/bbm/setup/LoadingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b032e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {p0}, Lcom/bbm/setup/LoadingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0329

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    const v1, 0x7f0a02ec

    const v2, 0x7f0a02ed

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/bbm/setup/LoadingActivity;->a(IILandroid/graphics/Typeface;Landroid/graphics/Typeface;FF)V

    const v1, 0x7f0a02ef

    const v2, 0x7f0a02f0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/bbm/setup/LoadingActivity;->a(IILandroid/graphics/Typeface;Landroid/graphics/Typeface;FF)V

    const v1, 0x7f0a02f2

    const v2, 0x7f0a02f3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/bbm/setup/LoadingActivity;->a(IILandroid/graphics/Typeface;Landroid/graphics/Typeface;FF)V

    iget-object v0, p0, Lcom/bbm/setup/LoadingActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/bbm/setup/l;

    invoke-direct {v1, p0}, Lcom/bbm/setup/l;-><init>(Lcom/bbm/setup/LoadingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Lcom/bbm/setup/r;->onPause()V

    iget-object v0, p0, Lcom/bbm/setup/LoadingActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bbm/setup/LoadingActivity;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/setup/LoadingActivity;->k:Z

    iget-object v0, p0, Lcom/bbm/setup/LoadingActivity;->e:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/setup/LoadingActivity;->d:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    invoke-direct {p0}, Lcom/bbm/setup/LoadingActivity;->g()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/setup/r;->onResume()V

    invoke-direct {p0}, Lcom/bbm/setup/LoadingActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/bbm/setup/LoadingActivity;->b()V

    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/bbm/setup/LoadingActivity;->d:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    iget-object v0, p0, Lcom/bbm/setup/LoadingActivity;->e:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void

    :cond_17
    iget v0, p0, Lcom/bbm/setup/LoadingActivity;->j:I

    if-ltz v0, :cond_c

    invoke-direct {p0}, Lcom/bbm/setup/LoadingActivity;->f()V

    goto :goto_c
.end method
