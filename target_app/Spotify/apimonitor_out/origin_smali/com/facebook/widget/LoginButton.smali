.class public Lcom/facebook/widget/LoginButton;
.super Landroid/widget/Button;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/facebook/internal/ae;

.field private d:Lcom/facebook/model/GraphUser;

.field private e:Lcom/facebook/Session;

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/facebook/widget/f;

.field private k:Landroid/support/v4/app/Fragment;

.field private l:Lcom/facebook/widget/c;

.field private m:Ljava/lang/String;

.field private n:Landroid/view/View$OnClickListener;

.field private o:Z

.field private p:Lcom/facebook/widget/ToolTipPopup$Style;

.field private q:Lcom/facebook/widget/LoginButton$ToolTipMode;

.field private r:J

.field private s:Lcom/facebook/widget/ToolTipPopup;


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
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->d:Lcom/facebook/model/GraphUser;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->e:Lcom/facebook/Session;

    new-instance v0, Lcom/facebook/widget/c;

    invoke-direct {v0}, Lcom/facebook/widget/c;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;

    const-string v0, "fb_login_view_usage"

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->m:Ljava/lang/String;

    sget-object v0, Lcom/facebook/widget/ToolTipPopup$Style;->a:Lcom/facebook/widget/ToolTipPopup$Style;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->p:Lcom/facebook/widget/ToolTipPopup$Style;

    sget-object v0, Lcom/facebook/widget/LoginButton$ToolTipMode;->a:Lcom/facebook/widget/LoginButton$ToolTipMode;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->q:Lcom/facebook/widget/LoginButton$ToolTipMode;

    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/facebook/widget/LoginButton;->r:J

    invoke-static {p1}, Lcom/facebook/widget/LoginButton;->a(Landroid/content/Context;)Z

    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->d:Lcom/facebook/model/GraphUser;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->e:Lcom/facebook/Session;

    new-instance v0, Lcom/facebook/widget/c;

    invoke-direct {v0}, Lcom/facebook/widget/c;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;

    const-string v0, "fb_login_view_usage"

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->m:Ljava/lang/String;

    sget-object v0, Lcom/facebook/widget/ToolTipPopup$Style;->a:Lcom/facebook/widget/ToolTipPopup$Style;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->p:Lcom/facebook/widget/ToolTipPopup$Style;

    sget-object v0, Lcom/facebook/widget/LoginButton$ToolTipMode;->a:Lcom/facebook/widget/LoginButton$ToolTipMode;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->q:Lcom/facebook/widget/LoginButton$ToolTipMode;

    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/facebook/widget/LoginButton;->r:J

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-nez v0, :cond_63

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setGravity(I)V

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/b;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/c;->f:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/facebook/widget/LoginButton;->setTextSize(IF)V

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/b;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setBackgroundColor(I)V

    const-string v0, "Log in with Facebook"

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->h:Ljava/lang/String;

    :cond_63
    :goto_63
    invoke-direct {p0, p2}, Lcom/facebook/widget/LoginButton;->a(Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_6f

    invoke-static {p1}, Lcom/facebook/widget/LoginButton;->a(Landroid/content/Context;)Z

    :cond_6f
    return-void

    :cond_70
    sget v0, Lcom/facebook/a/d;->a:I

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setBackgroundResource(I)V

    sget v0, Lcom/facebook/a/d;->c:I

    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/facebook/widget/LoginButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/c;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setCompoundDrawablePadding(I)V

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/c;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/a/c;->e:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/a/c;->d:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/a/c;->b:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/facebook/widget/LoginButton;->setPadding(IIII)V

    goto :goto_63
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->d:Lcom/facebook/model/GraphUser;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->e:Lcom/facebook/Session;

    new-instance v0, Lcom/facebook/widget/c;

    invoke-direct {v0}, Lcom/facebook/widget/c;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;

    const-string v0, "fb_login_view_usage"

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->m:Ljava/lang/String;

    sget-object v0, Lcom/facebook/widget/ToolTipPopup$Style;->a:Lcom/facebook/widget/ToolTipPopup$Style;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->p:Lcom/facebook/widget/ToolTipPopup$Style;

    sget-object v0, Lcom/facebook/widget/LoginButton$ToolTipMode;->a:Lcom/facebook/widget/LoginButton$ToolTipMode;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->q:Lcom/facebook/widget/LoginButton$ToolTipMode;

    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/facebook/widget/LoginButton;->r:J

    invoke-direct {p0, p2}, Lcom/facebook/widget/LoginButton;->a(Landroid/util/AttributeSet;)V

    invoke-static {p1}, Lcom/facebook/widget/LoginButton;->a(Landroid/content/Context;)Z

    return-void
.end method

.method static synthetic a(Lcom/facebook/widget/LoginButton;)Lcom/facebook/internal/ae;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/internal/ae;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/widget/LoginButton;Lcom/facebook/model/GraphUser;)Lcom/facebook/model/GraphUser;
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->d:Lcom/facebook/model/GraphUser;

    return-object p1
.end method

.method private a()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->s:Lcom/facebook/widget/ToolTipPopup;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->s:Lcom/facebook/widget/ToolTipPopup;

    invoke-virtual {v0}, Lcom/facebook/widget/ToolTipPopup;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->s:Lcom/facebook/widget/ToolTipPopup;

    :cond_c
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/a/h;->b:[I

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

.method static synthetic a(Lcom/facebook/widget/LoginButton;Lcom/facebook/internal/aj;)V
    .registers 3

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/facebook/internal/aj;->d()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p1}, Lcom/facebook/internal/aj;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/widget/LoginButton;->a(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/facebook/widget/ToolTipPopup;

    invoke-direct {v0, p1, p0}, Lcom/facebook/widget/ToolTipPopup;-><init>(Ljava/lang/String;Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->s:Lcom/facebook/widget/ToolTipPopup;

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->s:Lcom/facebook/widget/ToolTipPopup;

    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->p:Lcom/facebook/widget/ToolTipPopup$Style;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/ToolTipPopup;->a(Lcom/facebook/widget/ToolTipPopup$Style;)V

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->s:Lcom/facebook/widget/ToolTipPopup;

    iget-wide v1, p0, Lcom/facebook/widget/LoginButton;->r:J

    invoke-virtual {v0, v1, v2}, Lcom/facebook/widget/ToolTipPopup;->a(J)V

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->s:Lcom/facebook/widget/ToolTipPopup;

    invoke-virtual {v0}, Lcom/facebook/widget/ToolTipPopup;->a()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-static {}, Lcom/facebook/Session;->h()Lcom/facebook/Session;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/facebook/Session;->a()Z

    move-result v0

    goto :goto_3

    :cond_f
    invoke-static {p0}, Lcom/facebook/internal/ai;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/facebook/Session;->a(Landroid/content/Context;)Lcom/facebook/Session;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method static synthetic b(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/f;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->j:Lcom/facebook/widget/f;

    return-object v0
.end method

.method private b()V
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Lcom/facebook/widget/d;

    invoke-direct {v0, p0, v3}, Lcom/facebook/widget/d;-><init>(Lcom/facebook/widget/LoginButton;B)V

    invoke-super {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->c()V

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_25

    new-instance v0, Lcom/facebook/internal/ae;

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/facebook/widget/b;

    invoke-direct {v2, p0, v3}, Lcom/facebook/widget/b;-><init>(Lcom/facebook/widget/LoginButton;B)V

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/ae;-><init>(Landroid/content/Context;Lcom/facebook/ae;)V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/internal/ae;

    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->d()V

    :cond_25
    return-void
.end method

.method static synthetic c(Lcom/facebook/widget/LoginButton;)Lcom/facebook/model/GraphUser;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->d:Lcom/facebook/model/GraphUser;

    return-object v0
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/internal/ae;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/internal/ae;

    invoke-virtual {v0}, Lcom/facebook/internal/ae;->b()Lcom/facebook/Session;

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

    sget v1, Lcom/facebook/a/g;->g:I

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

    sget v1, Lcom/facebook/a/g;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_27
.end method

.method private d()V
    .registers 5

    iget-boolean v0, p0, Lcom/facebook/widget/LoginButton;->g:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/internal/ae;

    invoke-virtual {v0}, Lcom/facebook/internal/ae;->b()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->e:Lcom/facebook/Session;

    if-eq v0, v1, :cond_24

    new-instance v1, Lcom/facebook/widget/LoginButton$2;

    invoke-direct {v1, p0, v0}, Lcom/facebook/widget/LoginButton$2;-><init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/Session;)V

    invoke-static {v0, v1}, Lcom/facebook/Request;->a(Lcom/facebook/Session;Lcom/facebook/q;)Lcom/facebook/Request;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/facebook/Request;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/facebook/Request;->a([Lcom/facebook/Request;)Lcom/facebook/u;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->e:Lcom/facebook/Session;

    :cond_24
    :goto_24
    return-void

    :cond_25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->d:Lcom/facebook/model/GraphUser;

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->j:Lcom/facebook/widget/f;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->j:Lcom/facebook/widget/f;

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->d:Lcom/facebook/model/GraphUser;

    goto :goto_24
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

.method static synthetic f(Lcom/facebook/widget/LoginButton;)Landroid/support/v4/app/Fragment;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->k:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/c;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/widget/LoginButton;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/facebook/widget/LoginButton;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->n:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic j(Lcom/facebook/widget/LoginButton;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->d()V

    return-void
.end method

.method static synthetic k(Lcom/facebook/widget/LoginButton;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->c()V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;

    invoke-static {v0}, Lcom/facebook/widget/c;->f(Lcom/facebook/widget/c;)Lcom/facebook/widget/e;

    move-result-object v0

    if-eqz v0, :cond_11

    instance-of v0, p1, Lcom/facebook/FacebookException;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;

    invoke-static {v0}, Lcom/facebook/widget/c;->f(Lcom/facebook/widget/c;)Lcom/facebook/widget/e;

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->l:Lcom/facebook/widget/c;

    invoke-static {v0}, Lcom/facebook/widget/c;->f(Lcom/facebook/widget/c;)Lcom/facebook/widget/e;

    new-instance v0, Lcom/facebook/FacebookException;

    invoke-direct {v0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/internal/ae;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/internal/ae;

    invoke-virtual {v0}, Lcom/facebook/internal/ae;->f()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/internal/ae;

    invoke-virtual {v0}, Lcom/facebook/internal/ae;->d()V

    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->d()V

    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->c()V

    :cond_1a
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/internal/ae;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->c:Lcom/facebook/internal/ae;

    invoke-virtual {v0}, Lcom/facebook/internal/ae;->e()V

    :cond_c
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->a()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/facebook/widget/LoginButton;->o:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->q:Lcom/facebook/widget/LoginButton$ToolTipMode;

    sget-object v1, Lcom/facebook/widget/LoginButton$ToolTipMode;->c:Lcom/facebook/widget/LoginButton$ToolTipMode;

    if-eq v0, v1, :cond_29

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/LoginButton;->o:Z

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->q:Lcom/facebook/widget/LoginButton$ToolTipMode;

    sget-object v1, Lcom/facebook/widget/LoginButton$ToolTipMode;->b:Lcom/facebook/widget/LoginButton$ToolTipMode;

    if-ne v0, v1, :cond_2a

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/g;->o:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/widget/LoginButton;->a(Ljava/lang/String;)V

    :cond_29
    :goto_29
    return-void

    :cond_2a
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/ai;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/widget/LoginButton$1;

    invoke-direct {v1, p0, v0}, Lcom/facebook/widget/LoginButton$1;-><init>(Lcom/facebook/widget/LoginButton;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_29
.end method

.method public onFinishInflate()V
    .registers 1

    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->b()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/Button;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_8

    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->a()V

    :cond_8
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->n:Landroid/view/View$OnClickListener;

    return-void
.end method
