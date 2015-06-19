.class public Landroid/support/v4/widget/ContentLoadingProgressBar;
.super Landroid/widget/ProgressBar;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Z

.field private c:Z

.field private d:Z

.field private final e:Ljava/lang/Runnable;

.field private final f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->a:J

    iput-boolean v2, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->b:Z

    iput-boolean v2, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->c:Z

    iput-boolean v2, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->d:Z

    new-instance v0, Landroid/support/v4/widget/ContentLoadingProgressBar$1;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/ContentLoadingProgressBar$1;-><init>(Landroid/support/v4/widget/ContentLoadingProgressBar;)V

    iput-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->e:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v4/widget/ContentLoadingProgressBar$2;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/ContentLoadingProgressBar$2;-><init>(Landroid/support/v4/widget/ContentLoadingProgressBar;)V

    iput-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->f:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/ContentLoadingProgressBar;J)J
    .registers 3

    iput-wide p1, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->a:J

    return-wide p1
.end method

.method private a()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->e:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->f:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/ContentLoadingProgressBar;)Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->b:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v4/widget/ContentLoadingProgressBar;)Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->c:Z

    return v0
.end method

.method static synthetic c(Landroid/support/v4/widget/ContentLoadingProgressBar;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->d:Z

    return v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    invoke-direct {p0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->a()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    invoke-direct {p0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->a()V

    return-void
.end method
