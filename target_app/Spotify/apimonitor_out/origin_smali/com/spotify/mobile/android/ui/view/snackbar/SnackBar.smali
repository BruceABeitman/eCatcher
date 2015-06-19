.class public Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/ui/view/snackbar/d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/BitSet;

.field private c:I

.field private d:Z

.field private e:Lcom/spotify/mobile/android/util/u;

.field private f:Landroid/animation/TimeInterpolator;

.field private g:J

.field private h:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a:Ljava/util/List;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->b:Ljava/util/BitSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->d:Z

    const-class v0, Lcom/spotify/mobile/android/util/do;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    invoke-static {}, Lcom/spotify/mobile/android/util/do;->a()Lcom/spotify/mobile/android/util/u;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->e:Lcom/spotify/mobile/android/util/u;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->f:Landroid/animation/TimeInterpolator;

    invoke-static {}, Lcom/google/common/base/Optional;->d()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->h:Lcom/google/common/base/Optional;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a:Ljava/util/List;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->b:Ljava/util/BitSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->d:Z

    const-class v0, Lcom/spotify/mobile/android/util/do;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    invoke-static {}, Lcom/spotify/mobile/android/util/do;->a()Lcom/spotify/mobile/android/util/u;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->e:Lcom/spotify/mobile/android/util/u;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->f:Landroid/animation/TimeInterpolator;

    invoke-static {}, Lcom/google/common/base/Optional;->d()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->h:Lcom/google/common/base/Optional;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a:Ljava/util/List;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->b:Ljava/util/BitSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->d:Z

    const-class v0, Lcom/spotify/mobile/android/util/do;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    invoke-static {}, Lcom/spotify/mobile/android/util/do;->a()Lcom/spotify/mobile/android/util/u;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->e:Lcom/spotify/mobile/android/util/u;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->f:Landroid/animation/TimeInterpolator;

    invoke-static {}, Lcom/google/common/base/Optional;->d()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->h:Lcom/google/common/base/Optional;

    return-void
.end method

.method private a(I)Landroid/view/ViewGroup;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private b(I)Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->h:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->a()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->h:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method


# virtual methods
.method public final a()V
    .registers 4

    const/4 v2, 0x0

    const-string v0, "Snack visibility changed"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->d:Z

    if-nez v0, :cond_1a

    const-string v0, " -- Requesting layout"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->requestLayout()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->d:Z

    :goto_19
    return-void

    :cond_1a
    const-string v0, " -- Layout already requested"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_19
.end method

.method public final a(Lcom/spotify/mobile/android/ui/view/snackbar/d;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/spotify/mobile/android/ui/view/snackbar/d;->a()I

    move-result v0

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setId(I)V

    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->setBackgroundColor(I)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a(I)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/spotify/mobile/android/ui/view/snackbar/d;->a(Landroid/view/ViewGroup;)V

    invoke-interface {p1}, Lcom/spotify/mobile/android/ui/view/snackbar/d;->b()Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->b:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    :goto_4a
    return-void

    :cond_4b
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->b:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->clear(I)V

    goto :goto_4a
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->c:I

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 16

    const-wide/16 v12, 0x0

    const/high16 v1, 0x3f80

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->h:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->a()Z

    move-result v0

    if-eqz v0, :cond_df

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->h:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/snackbar/d;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/view/snackbar/d;->b()Z

    move-result v8

    iget-wide v5, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->g:J

    cmp-long v0, v5, v12

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->e:Lcom/spotify/mobile/android/util/u;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->g:J

    const-string v0, " <---> Starting animating view #%s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_41
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->e:Lcom/spotify/mobile/android/util/u;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v9, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->g:J

    sub-long/2addr v5, v9

    long-to-float v0, v5

    const/high16 v2, 0x43c8

    div-float/2addr v0, v2

    cmpl-float v2, v0, v1

    if-lez v2, :cond_99

    move v2, v3

    :goto_53
    move v6, v7

    :goto_54
    if-ltz v6, :cond_a1

    invoke-virtual {p0, v6}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->h:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->a()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/i;->b(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->h:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/snackbar/d;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/view/snackbar/d;->b()Z

    move-result v10

    invoke-virtual {p0, v5}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v5, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->f:Landroid/animation/TimeInterpolator;

    invoke-interface {v5, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v11

    if-eqz v10, :cond_9f

    move v5, v0

    move v0, v4

    :goto_8d
    int-to-float v10, v5

    sub-int/2addr v0, v5

    int-to-float v0, v0

    mul-float/2addr v0, v11

    add-float/2addr v0, v10

    invoke-virtual {v9, v0}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_54

    :cond_99
    invoke-static {p0}, Landroid/support/v4/view/at;->c(Landroid/view/View;)V

    move v1, v0

    move v2, v4

    goto :goto_53

    :cond_9f
    move v5, v4

    goto :goto_8d

    :cond_a1
    if-eqz v2, :cond_df

    const-string v0, " <---> Animation has ended"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-wide v12, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->g:J

    invoke-static {}, Lcom/google/common/base/Optional;->d()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->h:Lcom/google/common/base/Optional;

    const-string v1, "Setting visibility of a snack #%s, \'%s\' to visible: %s"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/snackbar/d;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/view/snackbar/d;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v8, :cond_e3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->b:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    :goto_dc
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a()V

    :cond_df
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_e3
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->b:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->clear(I)V

    goto :goto_dc
.end method

.method protected onLayout(ZIIII)V
    .registers 16

    const/4 v4, 0x1

    const/4 v2, 0x0

    move v1, v2

    move v3, v2

    :goto_4
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_65

    invoke-direct {p0, v1}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a(I)Landroid/view/ViewGroup;

    move-result-object v5

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->b:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-direct {p0, v1}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->b(I)Z

    move-result v0

    if-eqz v0, :cond_63

    :cond_1e
    move v0, v4

    :goto_1f
    if-eqz v0, :cond_5f

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->getMeasuredWidth()I

    move-result v0

    add-int v7, v3, v6

    invoke-virtual {v5, v2, v3, v0, v7}, Landroid/view/ViewGroup;->layout(IIII)V

    const-string v7, "Laying out item #%s, \'%s\': %s - %s"

    const/4 v0, 0x4

    new-array v8, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/snackbar/d;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/view/snackbar/d;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v4

    const/4 v0, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v0, 0x3

    add-int v9, v3, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    invoke-static {v7, v8}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    add-int/2addr v3, v6

    :cond_5f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_63
    move v0, v2

    goto :goto_1f

    :cond_65
    iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->d:Z

    return-void
.end method

.method protected onMeasure(II)V
    .registers 13

    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->getChildCount()I

    move-result v0

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_e7

    move v0, v1

    :goto_10
    invoke-static {v0}, Lcom/google/common/base/i;->b(Z)V

    iput v2, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->c:I

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->h:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->a()Z

    move-result v0

    if-eqz v0, :cond_ea

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->h:Lcom/google/common/base/Optional;

    :goto_1f
    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->h:Lcom/google/common/base/Optional;

    const-string v0, "onMeasure(): will animate snack #%s"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->h:Lcom/google/common/base/Optional;

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v2

    move v4, v2

    :goto_2e
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_149

    invoke-direct {p0, v3}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a(I)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v6, p1, v0}, Landroid/view/ViewGroup;->measure(II)V

    const/4 v0, 0x0

    invoke-virtual {v6, v2, v0}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    const-string v5, "Measuring snack #%s, \'%s\': height[%s]"

    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/snackbar/d;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/view/snackbar/d;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v1

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v9

    invoke-static {v5, v7}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->b:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_79

    invoke-direct {p0, v3}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->b(I)Z

    move-result v0

    if-eqz v0, :cond_13d

    :cond_79
    move v5, v1

    :goto_7a
    const-string v7, " -- Snack is visible: %s"

    new-array v8, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/snackbar/d;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/view/snackbar/d;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v8, v2

    invoke-static {v7, v8}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, " -- Snack is animating: %s"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->b(I)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v0, v7}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, " -- Snack will be visible during transition: %s"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v0, v7}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_140

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v4, v0

    :goto_bb
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->b:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_147

    invoke-direct {p0, v3}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->b(I)Z

    move-result v0

    if-nez v0, :cond_147

    move v0, v1

    :goto_ca
    const-string v5, " -- Snack is static and visible: %s"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v5, v7}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_e2

    iget v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->c:I

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v0, v5

    iput v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->c:I

    :cond_e2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2e

    :cond_e7
    move v0, v2

    goto/16 :goto_10

    :cond_ea
    move v3, v2

    :goto_eb
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_130

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->b:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/snackbar/d;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/view/snackbar/d;->b()Z

    move-result v0

    if-eq v4, v0, :cond_12c

    const-string v4, " -- Animating snack #%s, \'%s\'"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/snackbar/d;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/view/snackbar/d;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto/16 :goto_1f

    :cond_12c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_eb

    :cond_130
    const-string v0, " -- No snack to animate"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/common/base/Optional;->d()Lcom/google/common/base/Optional;

    move-result-object v0

    goto/16 :goto_1f

    :cond_13d
    move v5, v2

    goto/16 :goto_7a

    :cond_140
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_bb

    :cond_147
    move v0, v2

    goto :goto_ca

    :cond_149
    const-string v0, "Height: %s"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v0, v3}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Height reported to parent: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6

    instance-of v0, p1, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar$SavedState;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_7
    return-void

    :cond_8
    check-cast p1, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar$SavedState;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v2, p1, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar$SavedState;->a:[Z

    const/4 v0, 0x0

    move v1, v0

    :goto_15
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/snackbar/d;

    aget-boolean v3, v2, v1

    invoke-interface {v0, v3}, Lcom/spotify/mobile/android/ui/view/snackbar/d;->a(Z)V

    if-eqz v3, :cond_35

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->b:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :goto_31
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    :cond_35
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->b:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    goto :goto_31
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v2, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar$SavedState;

    invoke-direct {v2, v0}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Z

    const/4 v0, 0x0

    move v1, v0

    :goto_13
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2d

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/snackbar/d;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/view/snackbar/d;->b()Z

    move-result v0

    aput-boolean v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    :cond_2d
    iput-object v3, v2, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar$SavedState;->a:[Z

    return-object v2
.end method
