.class public Lcom/facebook/widget/LoginButton;
.super Landroid/widget/Button;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/facebook/b/m;

.field private d:Lcom/facebook/c/j;

.field private e:Lcom/facebook/aw;

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/facebook/widget/ae;

.field private k:Landroid/support/v4/app/Fragment;

.field private l:Lcom/facebook/widget/ab;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/widget/LoginButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/widget/LoginButton;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->d:Lcom/facebook/c/j;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->e:Lcom/facebook/aw;

    new-instance v0, Lcom/facebook/widget/ab;

    invoke-direct {v0}, Lcom/facebook/widget/ab;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/ab;

    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton;->a(Landroid/content/Context;)Z

    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->d:Lcom/facebook/c/j;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->e:Lcom/facebook/aw;

    new-instance v0, Lcom/facebook/widget/ab;

    invoke-direct {v0}, Lcom/facebook/widget/ab;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/ab;

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-nez v0, :cond_96

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/o;->com_facebook_loginview_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setTextColor(I)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/a/p;->com_facebook_loginview_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/widget/LoginButton;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/p;->com_facebook_loginview_padding_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/a/p;->com_facebook_loginview_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/a/p;->com_facebook_loginview_padding_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/a/p;->com_facebook_loginview_padding_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/facebook/widget/LoginButton;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/p;->com_facebook_loginview_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setWidth(I)V

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/p;->com_facebook_loginview_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setHeight(I)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setGravity(I)V

    invoke-direct {p0, p2}, Lcom/facebook/widget/LoginButton;->a(Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/o;->com_facebook_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setBackgroundColor(I)V

    const-string v0, "Log in"

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->h:Ljava/lang/String;

    :cond_96
    :goto_96
    return-void

    :cond_97
    sget v0, Lcom/facebook/a/q;->com_facebook_loginbutton_blue:I

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setBackgroundResource(I)V

    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton;->a(Landroid/content/Context;)Z

    goto :goto_96
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->d:Lcom/facebook/c/j;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->e:Lcom/facebook/aw;

    new-instance v0, Lcom/facebook/widget/ab;

    invoke-direct {v0}, Lcom/facebook/widget/ab;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/ab;

    invoke-direct {p0, p2}, Lcom/facebook/widget/LoginButton;->a(Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton;->a(Landroid/content/Context;)Z

    return-void
.end method

.method static synthetic a(Lcom/facebook/widget/LoginButton;)Lcom/facebook/b/m;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/b/m;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/widget/LoginButton;Lcom/facebook/c/j;)Lcom/facebook/c/j;
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->d:Lcom/facebook/c/j;

    return-object p1
.end method

.method private a(Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/a/v;->com_facebook_login_view:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/widget/LoginButton;->f:Z

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/widget/LoginButton;->g:Z

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/LoginButton;->h:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/LoginButton;->i:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-static {}, Lcom/facebook/aw;->k()Lcom/facebook/aw;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/facebook/aw;->b()Z

    move-result v0

    goto :goto_3

    :cond_f
    invoke-static {p1}, Lcom/facebook/b/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/facebook/aw;->a(Landroid/content/Context;)Lcom/facebook/aw;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method static synthetic b(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/ae;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->j:Lcom/facebook/widget/ae;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/facebook/widget/LoginButton;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/widget/LoginButton;)Lcom/facebook/c/j;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->d:Lcom/facebook/c/j;

    return-object v0
.end method

.method private c()V
    .registers 6

    const/4 v4, 0x0

    new-instance v0, Lcom/facebook/widget/ac;

    invoke-direct {v0, p0, v4}, Lcom/facebook/widget/ac;-><init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/widget/LoginButton$1;)V

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->d()V

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_26

    new-instance v0, Lcom/facebook/b/m;

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/facebook/widget/aa;

    invoke-direct {v2, p0, v4}, Lcom/facebook/widget/aa;-><init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/widget/LoginButton$1;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/facebook/b/m;-><init>(Landroid/content/Context;Lcom/facebook/bf;Lcom/facebook/aw;Z)V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/b/m;

    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->e()V

    :cond_26
    return-void
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/b/m;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/b/m;

    invoke-virtual {v0}, Lcom/facebook/b/m;->b()Lcom/facebook/aw;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->i:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->i:Ljava/lang/String;

    :goto_12
    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setText(Ljava/lang/CharSequence;)V

    :goto_15
    return-void

    :cond_16
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/t;->com_facebook_loginview_log_out_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_21
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->h:Ljava/lang/String;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->h:Ljava/lang/String;

    :goto_27
    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    :cond_2b
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/t;->com_facebook_loginview_log_in_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_27
.end method

.method static synthetic d(Lcom/facebook/widget/LoginButton;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/widget/LoginButton;->f:Z

    return v0
.end method

.method static synthetic e(Lcom/facebook/widget/LoginButton;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->b:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .registers 5

    iget-boolean v0, p0, Lcom/facebook/widget/LoginButton;->g:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/b/m;

    invoke-virtual {v0}, Lcom/facebook/b/m;->b()Lcom/facebook/aw;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->e:Lcom/facebook/aw;

    if-eq v0, v1, :cond_24

    new-instance v1, Lcom/facebook/widget/LoginButton$1;

    invoke-direct {v1, p0, v0}, Lcom/facebook/widget/LoginButton$1;-><init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/aw;)V

    invoke-static {v0, v1}, Lcom/facebook/ai;->a(Lcom/facebook/aw;Lcom/facebook/al;)Lcom/facebook/ai;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/facebook/ai;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/facebook/ai;->c([Lcom/facebook/ai;)Lcom/facebook/ap;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->e:Lcom/facebook/aw;

    :cond_24
    :goto_24
    return-void

    :cond_25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->d:Lcom/facebook/c/j;

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->j:Lcom/facebook/widget/ae;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->j:Lcom/facebook/widget/ae;

    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->d:Lcom/facebook/c/j;

    invoke-interface {v0, v1}, Lcom/facebook/widget/ae;->a(Lcom/facebook/c/j;)V

    goto :goto_24
.end method

.method static synthetic f(Lcom/facebook/widget/LoginButton;)Landroid/support/v4/app/Fragment;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->k:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/ab;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/ab;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/widget/LoginButton;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->e()V

    return-void
.end method

.method static synthetic i(Lcom/facebook/widget/LoginButton;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/ab;

    invoke-virtual {v0}, Lcom/facebook/widget/ab;->d()V

    return-void
.end method

.method a(Ljava/lang/Exception;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/ab;

    invoke-static {v0}, Lcom/facebook/widget/ab;->f(Lcom/facebook/widget/ab;)Lcom/facebook/widget/ad;

    move-result-object v0

    if-eqz v0, :cond_17

    instance-of v0, p1, Lcom/facebook/t;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/ab;

    invoke-static {v0}, Lcom/facebook/widget/ab;->f(Lcom/facebook/widget/ab;)Lcom/facebook/widget/ad;

    move-result-object v0

    check-cast p1, Lcom/facebook/t;

    invoke-interface {v0, p1}, Lcom/facebook/widget/ad;->a(Lcom/facebook/t;)V

    :cond_17
    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/ab;

    invoke-static {v0}, Lcom/facebook/widget/ab;->f(Lcom/facebook/widget/ab;)Lcom/facebook/widget/ad;

    move-result-object v0

    new-instance v1, Lcom/facebook/t;

    invoke-direct {v1, p1}, Lcom/facebook/t;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/facebook/widget/ad;->a(Lcom/facebook/t;)V

    goto :goto_17
.end method

.method public a(IILandroid/content/Intent;)Z
    .registers 6

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/b/m;

    invoke-virtual {v0}, Lcom/facebook/b/m;->a()Lcom/facebook/aw;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/facebook/aw;->a(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getDefaultAudience()Lcom/facebook/bi;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/ab;

    invoke-virtual {v0}, Lcom/facebook/widget/ab;->b()Lcom/facebook/bi;

    move-result-object v0

    return-object v0
.end method

.method public getLoginBehavior()Lcom/facebook/bj;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/ab;

    invoke-virtual {v0}, Lcom/facebook/widget/ab;->e()Lcom/facebook/bj;

    move-result-object v0

    return-object v0
.end method

.method public getOnErrorListener()Lcom/facebook/widget/ad;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/ab;

    invoke-virtual {v0}, Lcom/facebook/widget/ab;->a()Lcom/facebook/widget/ad;

    move-result-object v0

    return-object v0
.end method

.method getPermissions()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/ab;

    invoke-virtual {v0}, Lcom/facebook/widget/ab;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSessionStatusCallback()Lcom/facebook/bf;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/ab;

    invoke-virtual {v0}, Lcom/facebook/widget/ab;->f()Lcom/facebook/bf;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfoChangedCallback()Lcom/facebook/widget/ae;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->j:Lcom/facebook/widget/ae;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/b/m;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/b/m;

    invoke-virtual {v0}, Lcom/facebook/b/m;->e()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/b/m;

    invoke-virtual {v0}, Lcom/facebook/b/m;->c()V

    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->e()V

    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->d()V

    :cond_1a
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/b/m;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/b/m;

    invoke-virtual {v0}, Lcom/facebook/b/m;->d()V

    :cond_c
    return-void
.end method

.method public onFinishInflate()V
    .registers 1

    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->c()V

    return-void
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->b:Ljava/lang/String;

    return-void
.end method

.method public setDefaultAudience(Lcom/facebook/bi;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/ab;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/ab;->a(Lcom/facebook/bi;)V

    return-void
.end method

.method public setFragment(Landroid/support/v4/app/Fragment;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->k:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method public setLoginBehavior(Lcom/facebook/bj;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/ab;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/ab;->a(Lcom/facebook/bj;)V

    return-void
.end method

.method public setOnErrorListener(Lcom/facebook/widget/ad;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/ab;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/ab;->a(Lcom/facebook/widget/ad;)V

    return-void
.end method

.method setProperties(Lcom/facebook/widget/ab;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/ab;

    return-void
.end method

.method public setPublishPermissions(Ljava/util/List;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/ab;

    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/b/m;

    invoke-virtual {v1}, Lcom/facebook/b/m;->a()Lcom/facebook/aw;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/ab;->b(Ljava/util/List;Lcom/facebook/aw;)V

    return-void
.end method

.method public setReadPermissions(Ljava/util/List;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/ab;

    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/b/m;

    invoke-virtual {v1}, Lcom/facebook/b/m;->a()Lcom/facebook/aw;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/ab;->a(Ljava/util/List;Lcom/facebook/aw;)V

    return-void
.end method

.method public setSession(Lcom/facebook/aw;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/b/m;

    invoke-virtual {v0, p1}, Lcom/facebook/b/m;->a(Lcom/facebook/aw;)V

    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->e()V

    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->d()V

    return-void
.end method

.method public setSessionStatusCallback(Lcom/facebook/bf;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/ab;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/ab;->a(Lcom/facebook/bf;)V

    return-void
.end method

.method public setUserInfoChangedCallback(Lcom/facebook/widget/ae;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->j:Lcom/facebook/widget/ae;

    return-void
.end method
