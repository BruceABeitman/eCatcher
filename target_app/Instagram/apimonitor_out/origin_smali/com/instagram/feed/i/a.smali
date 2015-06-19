.class public final Lcom/instagram/feed/i/a;
.super Ljava/lang/Object;
.source "CameraNuxHelper.java"


# static fields
.field private static a:Z


# instance fields
.field private final b:Landroid/os/Handler;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/instagram/feed/i/a;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/feed/i/a;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcom/instagram/feed/i/a;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/facebook/aw;->no_items_camera_nux:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/i/a;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/instagram/feed/i/a;->d:Landroid/view/View;

    sget v2, Lcom/facebook/av;->tap_on_camera_textview:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/facebook/az;->tap_on_the_camera_full:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/facebook/az;->tap_on_the_camera_bold:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    invoke-static {v1, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_5e

    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    const/16 v5, 0x12

    invoke-virtual {v3, v2, v4, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_5e
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/instagram/feed/i/a;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/feed/i/a;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/instagram/feed/i/a;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/feed/i/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/feed/i/a;->f()V

    return-void
.end method

.method static synthetic c(Lcom/instagram/feed/i/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/feed/i/a;->d()V

    return-void
.end method

.method static synthetic c()Z
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/instagram/feed/i/a;->a:Z

    return v0
.end method

.method private d()V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/instagram/feed/i/a;->c:Landroid/view/ViewGroup;

    sget v1, Lcom/facebook/av;->tap_on_camera_textview:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {v1, v2, v2, v0, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Lcom/instagram/feed/i/c;

    invoke-direct {v0, p0}, Lcom/instagram/feed/i/c;-><init>(Lcom/instagram/feed/i/a;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/instagram/feed/i/a;->d:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/feed/i/a;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private e()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/feed/i/a;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/feed/i/a;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    sget-boolean v0, Lcom/instagram/feed/i/a;->a:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/instagram/feed/i/a;->b:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/feed/i/b;

    invoke-direct {v1, p0}, Lcom/instagram/feed/i/b;-><init>(Lcom/instagram/feed/i/a;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_10
    return-void

    :cond_11
    invoke-direct {p0}, Lcom/instagram/feed/i/a;->e()V

    goto :goto_10
.end method

.method public final b()V
    .registers 3

    invoke-direct {p0}, Lcom/instagram/feed/i/a;->f()V

    iget-object v0, p0, Lcom/instagram/feed/i/a;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/instagram/feed/i/a;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/feed/i/a;->d:Landroid/view/View;

    return-void
.end method
