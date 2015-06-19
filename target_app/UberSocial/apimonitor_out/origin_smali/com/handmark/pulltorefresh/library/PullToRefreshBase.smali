.class public abstract Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/c;


# static fields
.field static final a:Z = false

.field static final b:Z = false

.field static final c:Ljava/lang/String; = "PullToRefresh"

.field static final d:F = 2.0f

.field public static final e:I = 0xc8

.field public static final f:I = 0x145

.field static final g:I = 0xe1

.field static final h:Ljava/lang/String; = "ptr_state"

.field static final i:Ljava/lang/String; = "ptr_mode"

.field static final j:Ljava/lang/String; = "ptr_current_mode"

.field static final k:Ljava/lang/String; = "ptr_disable_scrolling"

.field static final l:Ljava/lang/String; = "ptr_show_refreshing_view"

.field static final m:Ljava/lang/String; = "ptr_super"


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Landroid/view/animation/Interpolator;

.field private E:Lcom/handmark/pulltorefresh/library/f;

.field private F:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

.field private G:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

.field private H:Lcom/handmark/pulltorefresh/library/j;

.field private I:Lcom/handmark/pulltorefresh/library/k;

.field private J:Lcom/handmark/pulltorefresh/library/i;

.field private K:Lcom/handmark/pulltorefresh/library/n;

.field n:Landroid/view/View;

.field private o:I

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:Z

.field private u:Lcom/handmark/pulltorefresh/library/o;

.field private v:Lcom/handmark/pulltorefresh/library/g;

.field private w:Lcom/handmark/pulltorefresh/library/g;

.field private x:Landroid/widget/FrameLayout;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Z

    sget-object v0, Lcom/handmark/pulltorefresh/library/o;->a:Lcom/handmark/pulltorefresh/library/o;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->u:Lcom/handmark/pulltorefresh/library/o;

    invoke-static {}, Lcom/handmark/pulltorefresh/library/g;->a()Lcom/handmark/pulltorefresh/library/g;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->y:Z

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->z:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->A:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->B:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->C:Z

    invoke-static {}, Lcom/handmark/pulltorefresh/library/f;->a()Lcom/handmark/pulltorefresh/library/f;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->E:Lcom/handmark/pulltorefresh/library/f;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Z

    sget-object v0, Lcom/handmark/pulltorefresh/library/o;->a:Lcom/handmark/pulltorefresh/library/o;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->u:Lcom/handmark/pulltorefresh/library/o;

    invoke-static {}, Lcom/handmark/pulltorefresh/library/g;->a()Lcom/handmark/pulltorefresh/library/g;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->y:Z

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->z:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->A:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->B:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->C:Z

    invoke-static {}, Lcom/handmark/pulltorefresh/library/f;->a()Lcom/handmark/pulltorefresh/library/f;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->E:Lcom/handmark/pulltorefresh/library/f;

    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Z

    sget-object v0, Lcom/handmark/pulltorefresh/library/o;->a:Lcom/handmark/pulltorefresh/library/o;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->u:Lcom/handmark/pulltorefresh/library/o;

    invoke-static {}, Lcom/handmark/pulltorefresh/library/g;->a()Lcom/handmark/pulltorefresh/library/g;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->y:Z

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->z:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->A:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->B:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->C:Z

    invoke-static {}, Lcom/handmark/pulltorefresh/library/f;->a()Lcom/handmark/pulltorefresh/library/f;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->E:Lcom/handmark/pulltorefresh/library/f;

    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;Lcom/handmark/pulltorefresh/library/f;)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Z

    sget-object v0, Lcom/handmark/pulltorefresh/library/o;->a:Lcom/handmark/pulltorefresh/library/o;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->u:Lcom/handmark/pulltorefresh/library/o;

    invoke-static {}, Lcom/handmark/pulltorefresh/library/g;->a()Lcom/handmark/pulltorefresh/library/g;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->y:Z

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->z:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->A:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->B:Z

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->C:Z

    invoke-static {}, Lcom/handmark/pulltorefresh/library/f;->a()Lcom/handmark/pulltorefresh/library/f;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->E:Lcom/handmark/pulltorefresh/library/f;

    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    iput-object p3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->E:Lcom/handmark/pulltorefresh/library/f;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final a(IJ)V
    .registers 11

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(IJJLcom/handmark/pulltorefresh/library/l;)V

    return-void
.end method

.method private final a(IJJLcom/handmark/pulltorefresh/library/l;)V
    .registers 14

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->K:Lcom/handmark/pulltorefresh/library/n;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->K:Lcom/handmark/pulltorefresh/library/n;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/n;->a()V

    :cond_9
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/m;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4c

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getScrollY()I

    move-result v2

    :goto_1c
    if-eq v2, p1, :cond_3f

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->D:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_29

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->D:Landroid/view/animation/Interpolator;

    :cond_29
    new-instance v0, Lcom/handmark/pulltorefresh/library/n;

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/n;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIJLcom/handmark/pulltorefresh/library/l;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->K:Lcom/handmark/pulltorefresh/library/n;

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_45

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->K:Lcom/handmark/pulltorefresh/library/n;

    invoke-virtual {p0, v0, p4, p5}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3f
    :goto_3f
    return-void

    :pswitch_40
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getScrollX()I

    move-result v2

    goto :goto_1c

    :cond_45
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->K:Lcom/handmark/pulltorefresh/library/n;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    goto :goto_3f

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_40
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Landroid/view/View;)V
    .registers 6

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->x:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->x:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->x:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .registers 1

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->q()V

    return-void
.end method

.method static synthetic a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IJJLcom/handmark/pulltorefresh/library/l;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(IJJLcom/handmark/pulltorefresh/library/l;)V

    return-void
.end method

.method static synthetic b(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)Landroid/view/animation/Interpolator;
    .registers 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->D:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const/16 v6, 0xc

    const/16 v5, 0x9

    const/4 v2, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/m;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_c2

    invoke-virtual {p0, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setOrientation(I)V

    :goto_19
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setGravity(I)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->o:I

    sget-object v0, Lcom/handmark/pulltorefresh/library/ag;->PullToRefresh:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-static {v1}, Lcom/handmark/pulltorefresh/library/g;->a(I)Lcom/handmark/pulltorefresh/library/g;

    move-result-object v1

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    :cond_3e
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    invoke-static {v1}, Lcom/handmark/pulltorefresh/library/f;->a(I)Lcom/handmark/pulltorefresh/library/f;

    move-result-object v1

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->E:Lcom/handmark/pulltorefresh/library/f;

    :cond_4e
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n:Landroid/view/View;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n:Landroid/view/View;

    invoke-direct {p0, p1, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/content/Context;Landroid/view/View;)V

    sget-object v1, Lcom/handmark/pulltorefresh/library/g;->b:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {p0, p1, v1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->F:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    sget-object v1, Lcom/handmark/pulltorefresh/library/g;->c:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {p0, p1, v1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->G:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_a5

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_7a

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7a
    :goto_7a
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->B:Z

    :cond_86
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_96

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->z:Z

    :cond_96
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m()V

    return-void

    :pswitch_a0
    invoke-virtual {p0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setOrientation(I)V

    goto/16 :goto_19

    :cond_a5
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_7a

    const-string v1, "ptrAdapterViewBackground"

    const-string v2, "ptrRefreshableViewBackground"

    invoke-static {v1, v2}, Lcom/handmark/pulltorefresh/library/internal/Utils;->warnDeprecation(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_7a

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7a

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_a0
    .end packed-switch
.end method

.method private final c(I)V
    .registers 9

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$3;

    invoke-direct {v6, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$3;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(IJJLcom/handmark/pulltorefresh/library/l;)V

    return-void
.end method

.method private getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    const/4 v3, -0x1

    const/4 v2, -0x2

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/m;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_16
    return-object v0

    :pswitch_17
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_16

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_17
    .end packed-switch
.end method

.method private getMaximumPullScroll()I
    .registers 4

    const/high16 v2, 0x4000

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/m;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_1b
    return v0

    :pswitch_1c
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_1b

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1c
    .end packed-switch
.end method

.method private q()V
    .registers 3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->H:Lcom/handmark/pulltorefresh/library/j;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->H:Lcom/handmark/pulltorefresh/library/j;

    invoke-interface {v0, p0}, Lcom/handmark/pulltorefresh/library/j;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->I:Lcom/handmark/pulltorefresh/library/k;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->w:Lcom/handmark/pulltorefresh/library/g;

    sget-object v1, Lcom/handmark/pulltorefresh/library/g;->b:Lcom/handmark/pulltorefresh/library/g;

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->I:Lcom/handmark/pulltorefresh/library/k;

    invoke-interface {v0, p0}, Lcom/handmark/pulltorefresh/library/k;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    goto :goto_9

    :cond_1a
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->w:Lcom/handmark/pulltorefresh/library/g;

    sget-object v1, Lcom/handmark/pulltorefresh/library/g;->c:Lcom/handmark/pulltorefresh/library/g;

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->I:Lcom/handmark/pulltorefresh/library/k;

    invoke-interface {v0, p0}, Lcom/handmark/pulltorefresh/library/k;->b(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    goto :goto_9
.end method

.method private r()Z
    .registers 4

    const/4 v0, 0x0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->c:[I

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/g;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_28

    :cond_e
    :goto_e
    :pswitch_e
    return v0

    :pswitch_f
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->k()Z

    move-result v0

    goto :goto_e

    :pswitch_14
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->l()Z

    move-result v0

    goto :goto_e

    :pswitch_19
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->l()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->k()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_25
    const/4 v0, 0x1

    goto :goto_e

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_14
        :pswitch_f
        :pswitch_e
        :pswitch_19
    .end packed-switch
.end method

.method private s()V
    .registers 8

    const/4 v6, 0x0

    const/high16 v5, 0x4000

    const/4 v4, 0x0

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/m;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_9a

    iget v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:F

    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->q:F

    :goto_17
    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->c:[I

    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->w:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/g;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_a0

    sub-float v0, v1, v0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getHeaderSize()I

    move-result v0

    :goto_33
    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setHeaderScroll(I)V

    if-eqz v1, :cond_6a

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d()Z

    move-result v2

    if-nez v2, :cond_6a

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->c:[I

    iget-object v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->w:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v4}, Lcom/handmark/pulltorefresh/library/g;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_a6

    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->F:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v3, v2}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->onPull(F)V

    :goto_57
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->u:Lcom/handmark/pulltorefresh/library/o;

    sget-object v3, Lcom/handmark/pulltorefresh/library/o;->b:Lcom/handmark/pulltorefresh/library/o;

    if-eq v2, v3, :cond_86

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v0, v2, :cond_86

    sget-object v0, Lcom/handmark/pulltorefresh/library/o;->b:Lcom/handmark/pulltorefresh/library/o;

    new-array v1, v6, [Z

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/o;[Z)V

    :cond_6a
    :goto_6a
    return-void

    :pswitch_6b
    iget v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->r:F

    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->p:F

    goto :goto_17

    :pswitch_70
    sub-float v0, v1, v0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getFooterSize()I

    move-result v0

    goto :goto_33

    :pswitch_80
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->G:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v3, v2}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->onPull(F)V

    goto :goto_57

    :cond_86
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->u:Lcom/handmark/pulltorefresh/library/o;

    sget-object v3, Lcom/handmark/pulltorefresh/library/o;->b:Lcom/handmark/pulltorefresh/library/o;

    if-ne v2, v3, :cond_6a

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_6a

    sget-object v0, Lcom/handmark/pulltorefresh/library/o;->c:Lcom/handmark/pulltorefresh/library/o;

    new-array v1, v6, [Z

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/o;[Z)V

    goto :goto_6a

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_6b
    .end packed-switch

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_70
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_80
    .end packed-switch
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end method

.method public final a(ZZ)Lcom/handmark/pulltorefresh/library/b;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b(ZZ)Lcom/handmark/pulltorefresh/library/d;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .registers 6

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->E:Lcom/handmark/pulltorefresh/library/f;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/m;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/handmark/pulltorefresh/library/f;->a(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;Lcom/handmark/pulltorefresh/library/m;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    return-object v0
.end method

.method protected final a(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(IJ)V

    return-void
.end method

.method protected final a(II)V
    .registers 6

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->x:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/m;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_30

    :cond_17
    :goto_17
    return-void

    :pswitch_18
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq v1, p1, :cond_17

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->x:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_17

    :pswitch_24
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v1, p2, :cond_17

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->x:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_17

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_18
        :pswitch_24
    .end packed-switch
.end method

.method protected final a(ILcom/handmark/pulltorefresh/library/l;)V
    .registers 10

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(IJJLcom/handmark/pulltorefresh/library/l;)V

    return-void
.end method

.method protected a(Landroid/content/res/TypedArray;)V
    .registers 2

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Lcom/handmark/pulltorefresh/library/g;)V
    .registers 5

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/g;->c()Z

    move-result v0

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/g;->d()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(ZZ)Lcom/handmark/pulltorefresh/library/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/b;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method protected final a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected final a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected a(Lcom/handmark/pulltorefresh/library/g;)V
    .registers 4

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->c:[I

    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    :cond_b
    :goto_b
    :pswitch_b
    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->F:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->F:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->enableAnimation()V

    :cond_15
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->G:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->G:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->enableAnimation()V

    goto :goto_b

    :pswitch_1f
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->F:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->F:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->enableAnimation()V

    goto :goto_b

    :pswitch_29
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->G:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->G:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->enableAnimation()V

    goto :goto_b

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_29
        :pswitch_1f
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method final varargs a(Lcom/handmark/pulltorefresh/library/o;[Z)V
    .registers 6

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->u:Lcom/handmark/pulltorefresh/library/o;

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->b:[I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->u:Lcom/handmark/pulltorefresh/library/o;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/o;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    :goto_f
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->J:Lcom/handmark/pulltorefresh/library/i;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->J:Lcom/handmark/pulltorefresh/library/i;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->u:Lcom/handmark/pulltorefresh/library/o;

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->w:Lcom/handmark/pulltorefresh/library/g;

    invoke-interface {v0, p0, v1, v2}, Lcom/handmark/pulltorefresh/library/i;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;Lcom/handmark/pulltorefresh/library/o;Lcom/handmark/pulltorefresh/library/g;)V

    :cond_1c
    return-void

    :pswitch_1d
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j()V

    goto :goto_f

    :pswitch_21
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h()V

    goto :goto_f

    :pswitch_25
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i()V

    goto :goto_f

    :pswitch_29
    const/4 v0, 0x0

    aget-boolean v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Z)V

    goto :goto_f

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_21
        :pswitch_25
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

.method public a(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/g;)V
    .registers 5

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/g;->c()Z

    move-result v0

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/g;->d()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(ZZ)Lcom/handmark/pulltorefresh/library/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/b;->setPullLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected a(Z)V
    .registers 5

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/g;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->F:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->refreshing()V

    :cond_d
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/g;->d()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->G:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->refreshing()V

    :cond_1a
    if-eqz p1, :cond_48

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->y:Z

    if-eqz v0, :cond_43

    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$1;

    invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$1;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->c:[I

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->w:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/g;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4c

    :pswitch_32
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0, v1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(ILcom/handmark/pulltorefresh/library/l;)V

    :goto_3a
    return-void

    :pswitch_3b
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getFooterSize()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(ILcom/handmark/pulltorefresh/library/l;)V

    goto :goto_3a

    :cond_43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(I)V

    goto :goto_3a

    :cond_48
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->q()V

    goto :goto_3a

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_32
        :pswitch_3b
    .end packed-switch
.end method

.method public final a()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/g;->c()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->k()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c(I)V

    :goto_19
    return v0

    :cond_1a
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/g;->d()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->l()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getFooterSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c(I)V

    goto :goto_19

    :cond_32
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_e

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Refreshable View is not a ViewGroup so can\'t addView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected b(ZZ)Lcom/handmark/pulltorefresh/library/d;
    .registers 5

    new-instance v0, Lcom/handmark/pulltorefresh/library/d;

    invoke-direct {v0}, Lcom/handmark/pulltorefresh/library/d;-><init>()V

    if-eqz p1, :cond_14

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/g;->c()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->F:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/d;->a(Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;)V

    :cond_14
    if-eqz p2, :cond_23

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/g;->d()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->G:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/d;->a(Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;)V

    :cond_23
    return-object v0
.end method

.method protected final b(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDurationLonger()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(IJ)V

    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method protected b(Lcom/handmark/pulltorefresh/library/g;)V
    .registers 4

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->c:[I

    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    :cond_b
    :goto_b
    :pswitch_b
    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->F:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->F:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->disableAnimation()V

    :cond_15
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->G:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->G:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->disableAnimation()V

    goto :goto_b

    :pswitch_1f
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->F:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->F:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->disableAnimation()V

    goto :goto_b

    :pswitch_29
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->G:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->G:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->disableAnimation()V

    goto :goto_b

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_29
        :pswitch_1f
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public b(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/g;)V
    .registers 5

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/g;->c()Z

    move-result v0

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/g;->d()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(ZZ)Lcom/handmark/pulltorefresh/library/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/b;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/g;->b()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/g;)V
    .registers 5

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/g;->c()Z

    move-result v0

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/g;->d()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(ZZ)Lcom/handmark/pulltorefresh/library/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/b;->setReleaseLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final c()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_14

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->B:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n:Landroid/view/View;

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/e;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public final d()Z
    .registers 3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->u:Lcom/handmark/pulltorefresh/library/o;

    sget-object v1, Lcom/handmark/pulltorefresh/library/o;->d:Lcom/handmark/pulltorefresh/library/o;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->u:Lcom/handmark/pulltorefresh/library/o;

    sget-object v1, Lcom/handmark/pulltorefresh/library/o;->e:Lcom/handmark/pulltorefresh/library/o;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->z:Z

    return v0
.end method

.method public final f()V
    .registers 3

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/handmark/pulltorefresh/library/o;->a:Lcom/handmark/pulltorefresh/library/o;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/o;[Z)V

    :cond_e
    return-void
.end method

.method public final g()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setRefreshing(Z)V

    return-void
.end method

.method public final getCurrentMode()Lcom/handmark/pulltorefresh/library/g;
    .registers 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->w:Lcom/handmark/pulltorefresh/library/g;

    return-object v0
.end method

.method public final getFilterTouchEvents()Z
    .registers 2

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->A:Z

    return v0
.end method

.method protected final getFooterLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .registers 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->G:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    return-object v0
.end method

.method protected final getFooterSize()I
    .registers 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->G:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContentSize()I

    move-result v0

    return v0
.end method

.method protected final getHeaderLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
    .registers 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->F:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    return-object v0
.end method

.method protected final getHeaderSize()I
    .registers 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->F:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContentSize()I

    move-result v0

    return v0
.end method

.method public final getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/b;
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(ZZ)Lcom/handmark/pulltorefresh/library/b;

    move-result-object v0

    return-object v0
.end method

.method public final getMode()Lcom/handmark/pulltorefresh/library/g;
    .registers 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    return-object v0
.end method

.method public abstract getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/m;
.end method

.method protected getPullToRefreshScrollDuration()I
    .registers 2

    const/16 v0, 0xc8

    return v0
.end method

.method protected getPullToRefreshScrollDurationLonger()I
    .registers 2

    const/16 v0, 0x145

    return v0
.end method

.method public final getRefreshableView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->n:Landroid/view/View;

    return-object v0
.end method

.method protected getRefreshableViewWrapper()Landroid/widget/FrameLayout;
    .registers 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->x:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getShowViewWhileRefreshing()Z
    .registers 2

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->y:Z

    return v0
.end method

.method public final getState()Lcom/handmark/pulltorefresh/library/o;
    .registers 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->u:Lcom/handmark/pulltorefresh/library/o;

    return-object v0
.end method

.method protected h()V
    .registers 3

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->c:[I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->w:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    :goto_d
    return-void

    :pswitch_e
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->G:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->pullToRefresh()V

    goto :goto_d

    :pswitch_14
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->F:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->pullToRefresh()V

    goto :goto_d

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_e
        :pswitch_14
    .end packed-switch
.end method

.method protected i()V
    .registers 3

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->c:[I

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->w:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    :goto_d
    return-void

    :pswitch_e
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->G:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->releaseToRefresh()V

    goto :goto_d

    :pswitch_14
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->F:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->releaseToRefresh()V

    goto :goto_d

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_e
        :pswitch_14
    .end packed-switch
.end method

.method protected j()V
    .registers 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->C:Z

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->F:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->reset()V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->G:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->reset()V

    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(I)V

    return-void
.end method

.method protected abstract k()Z
.end method

.method protected abstract l()Z
.end method

.method protected m()V
    .registers 4

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->F:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_11

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->F:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->removeView(Landroid/view/View;)V

    :cond_11
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/g;->c()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->F:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1f
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->G:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_2c

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->G:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->removeView(Landroid/view/View;)V

    :cond_2c
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/g;->d()Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->G:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {p0, v1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_39
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->p()V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    sget-object v1, Lcom/handmark/pulltorefresh/library/g;->d:Lcom/handmark/pulltorefresh/library/g;

    if-eq v0, v1, :cond_47

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    :goto_44
    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->w:Lcom/handmark/pulltorefresh/library/g;

    return-void

    :cond_47
    sget-object v0, Lcom/handmark/pulltorefresh/library/g;->b:Lcom/handmark/pulltorefresh/library/g;

    goto :goto_44
.end method

.method public final n()Z
    .registers 2

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->e()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected final o()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->C:Z

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b()Z

    move-result v1

    if-nez v1, :cond_9

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_12

    if-ne v1, v2, :cond_15

    :cond_12
    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Z

    goto :goto_8

    :cond_15
    if-eqz v1, :cond_1d

    iget-boolean v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Z

    if-eqz v3, :cond_1d

    move v0, v2

    goto :goto_8

    :cond_1d
    packed-switch v1, :pswitch_data_da

    :cond_20
    :goto_20
    :pswitch_20
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Z

    goto :goto_8

    :pswitch_23
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->z:Z

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d()Z

    move-result v0

    if-eqz v0, :cond_2f

    move v0, v2

    goto :goto_8

    :cond_2f
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->r()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/m;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_e4

    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->q:F

    sub-float v1, v3, v0

    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->p:F

    sub-float v0, v4, v0

    :goto_54
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->o:I

    int-to-float v6, v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_20

    iget-boolean v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->A:Z

    if-eqz v6, :cond_6b

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_20

    :cond_6b
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/g;->c()Z

    move-result v0

    if-eqz v0, :cond_99

    const/high16 v0, 0x3f80

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_99

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->k()Z

    move-result v0

    if-eqz v0, :cond_99

    iput v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->q:F

    iput v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->p:F

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Z

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    sget-object v1, Lcom/handmark/pulltorefresh/library/g;->d:Lcom/handmark/pulltorefresh/library/g;

    if-ne v0, v1, :cond_20

    sget-object v0, Lcom/handmark/pulltorefresh/library/g;->b:Lcom/handmark/pulltorefresh/library/g;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->w:Lcom/handmark/pulltorefresh/library/g;

    goto :goto_20

    :pswitch_90
    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->p:F

    sub-float v1, v4, v0

    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->q:F

    sub-float v0, v3, v0

    goto :goto_54

    :cond_99
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/g;->d()Z

    move-result v0

    if-eqz v0, :cond_20

    const/high16 v0, -0x4080

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_20

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->l()Z

    move-result v0

    if-eqz v0, :cond_20

    iput v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->q:F

    iput v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->p:F

    iput-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Z

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    sget-object v1, Lcom/handmark/pulltorefresh/library/g;->d:Lcom/handmark/pulltorefresh/library/g;

    if-ne v0, v1, :cond_20

    sget-object v0, Lcom/handmark/pulltorefresh/library/g;->c:Lcom/handmark/pulltorefresh/library/g;

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->w:Lcom/handmark/pulltorefresh/library/g;

    goto/16 :goto_20

    :pswitch_bf
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->r()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:F

    iput v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->q:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->r:F

    iput v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->p:F

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Z

    goto/16 :goto_20

    nop

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_bf
        :pswitch_20
        :pswitch_23
    .end packed-switch

    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_90
    .end packed-switch
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_57

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "ptr_mode"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/g;->a(I)Lcom/handmark/pulltorefresh/library/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setMode(Lcom/handmark/pulltorefresh/library/g;)V

    const-string v0, "ptr_current_mode"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/g;->a(I)Lcom/handmark/pulltorefresh/library/g;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->w:Lcom/handmark/pulltorefresh/library/g;

    const-string v0, "ptr_disable_scrolling"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->z:Z

    const-string v0, "ptr_show_refreshing_view"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->y:Z

    const-string v0, "ptr_super"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "ptr_state"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/o;->a(I)Lcom/handmark/pulltorefresh/library/o;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/o;->d:Lcom/handmark/pulltorefresh/library/o;

    if-eq v0, v1, :cond_4c

    sget-object v1, Lcom/handmark/pulltorefresh/library/o;->e:Lcom/handmark/pulltorefresh/library/o;

    if-ne v0, v1, :cond_53

    :cond_4c
    new-array v1, v3, [Z

    aput-boolean v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/o;[Z)V

    :cond_53
    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/os/Bundle;)V

    :goto_56
    return-void

    :cond_57
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_56
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b(Landroid/os/Bundle;)V

    const-string v1, "ptr_state"

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->u:Lcom/handmark/pulltorefresh/library/o;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/o;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ptr_mode"

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/g;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ptr_current_mode"

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->w:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/g;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ptr_disable_scrolling"

    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->z:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "ptr_show_refreshing_view"

    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->y:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "ptr_super"

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method protected final onSizeChanged(IIII)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->p()V

    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(II)V

    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;

    invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b()Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->z:Z

    if-nez v2, :cond_15

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d()Z

    move-result v2

    if-eqz v2, :cond_15

    move v0, v1

    goto :goto_8

    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-nez v2, :cond_8

    :cond_21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_8a

    goto :goto_8

    :pswitch_29
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->r()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s:F

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->q:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->r:F

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->p:F

    move v0, v1

    goto :goto_8

    :pswitch_41
    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Z

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->q:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->p:F

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->s()V

    move v0, v1

    goto :goto_8

    :pswitch_56
    iget-boolean v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Z

    if-eqz v2, :cond_8

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->t:Z

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->u:Lcom/handmark/pulltorefresh/library/o;

    sget-object v3, Lcom/handmark/pulltorefresh/library/o;->c:Lcom/handmark/pulltorefresh/library/o;

    if-ne v2, v3, :cond_75

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->H:Lcom/handmark/pulltorefresh/library/j;

    if-nez v2, :cond_6a

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->I:Lcom/handmark/pulltorefresh/library/k;

    if-eqz v2, :cond_75

    :cond_6a
    sget-object v2, Lcom/handmark/pulltorefresh/library/o;->d:Lcom/handmark/pulltorefresh/library/o;

    new-array v3, v1, [Z

    aput-boolean v1, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/o;[Z)V

    move v0, v1

    goto :goto_8

    :cond_75
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(I)V

    move v0, v1

    goto :goto_8

    :cond_80
    sget-object v2, Lcom/handmark/pulltorefresh/library/o;->a:Lcom/handmark/pulltorefresh/library/o;

    new-array v0, v0, [Z

    invoke-virtual {p0, v2, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/o;[Z)V

    move v0, v1

    goto :goto_8

    nop

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_29
        :pswitch_56
        :pswitch_41
        :pswitch_56
    .end packed-switch
.end method

.method protected final p()V
    .registers 9

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3f99999a

    mul-float/2addr v0, v2

    float-to-int v6, v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPaddingBottom()I

    move-result v2

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/m;

    move-result-object v7

    invoke-virtual {v7}, Lcom/handmark/pulltorefresh/library/m;->ordinal()I

    move-result v7

    aget v0, v0, v7

    packed-switch v0, :pswitch_data_80

    move v1, v2

    move v0, v3

    move v2, v4

    move v3, v5

    :goto_2e
    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setPadding(IIII)V

    return-void

    :pswitch_32
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/g;->c()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->F:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, v6}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setWidth(I)V

    neg-int v0, v6

    :goto_40
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/g;->d()Z

    move-result v3

    if-eqz v3, :cond_55

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->G:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v6}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setWidth(I)V

    neg-int v1, v6

    move v3, v0

    move v0, v1

    move v1, v2

    move v2, v4

    goto :goto_2e

    :cond_53
    move v0, v1

    goto :goto_40

    :cond_55
    move v3, v0

    move v0, v1

    move v1, v2

    move v2, v4

    goto :goto_2e

    :pswitch_5a
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/g;->c()Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->F:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, v6}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setHeight(I)V

    neg-int v0, v6

    :goto_68
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/g;->d()Z

    move-result v2

    if-eqz v2, :cond_7c

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->G:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v6}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setHeight(I)V

    neg-int v1, v6

    move v2, v0

    move v0, v3

    move v3, v5

    goto :goto_2e

    :cond_7a
    move v0, v1

    goto :goto_68

    :cond_7c
    move v2, v0

    move v0, v3

    move v3, v5

    goto :goto_2e

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_32
        :pswitch_5a
    .end packed-switch
.end method

.method public setDisableScrollingWhileRefreshing(Z)V
    .registers 3

    if-nez p1, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setScrollingWhileRefreshingEnabled(Z)V

    return-void

    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final setFilterTouchEvents(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->A:Z

    return-void
.end method

.method protected final setHeaderScroll(I)V
    .registers 6

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v0

    neg-int v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->C:Z

    if-eqz v1, :cond_1a

    if-gez v0, :cond_2a

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->F:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v3}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    :cond_1a
    :goto_1a
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$4;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/m;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_46

    :goto_29
    return-void

    :cond_2a
    if-lez v0, :cond_32

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->G:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v3}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    goto :goto_1a

    :cond_32
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->F:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->G:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    goto :goto_1a

    :pswitch_3d
    invoke-virtual {p0, v3, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->scrollTo(II)V

    goto :goto_29

    :pswitch_41
    invoke-virtual {p0, v0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->scrollTo(II)V

    goto :goto_29

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_41
        :pswitch_3d
    .end packed-switch
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .registers 3

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/b;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/b;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLongClickable(Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    return-void
.end method

.method public final setMode(Lcom/handmark/pulltorefresh/library/g;)V
    .registers 3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    if-eq p1, v0, :cond_9

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->v:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m()V

    :cond_9
    return-void
.end method

.method public setOnPullEventListener(Lcom/handmark/pulltorefresh/library/i;)V
    .registers 2

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->J:Lcom/handmark/pulltorefresh/library/i;

    return-void
.end method

.method public final setOnRefreshListener(Lcom/handmark/pulltorefresh/library/j;)V
    .registers 3

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->H:Lcom/handmark/pulltorefresh/library/j;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->I:Lcom/handmark/pulltorefresh/library/k;

    return-void
.end method

.method public final setOnRefreshListener(Lcom/handmark/pulltorefresh/library/k;)V
    .registers 3

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->I:Lcom/handmark/pulltorefresh/library/k;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->H:Lcom/handmark/pulltorefresh/library/j;

    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .registers 3

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/b;->setPullLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setPullToRefreshEnabled(Z)V
    .registers 3

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/handmark/pulltorefresh/library/g;->a()Lcom/handmark/pulltorefresh/library/g;

    move-result-object v0

    :goto_6
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setMode(Lcom/handmark/pulltorefresh/library/g;)V

    return-void

    :cond_a
    sget-object v0, Lcom/handmark/pulltorefresh/library/g;->a:Lcom/handmark/pulltorefresh/library/g;

    goto :goto_6
.end method

.method public final setPullToRefreshOverScrollEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->B:Z

    return-void
.end method

.method public final setRefreshing(Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d()Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/handmark/pulltorefresh/library/o;->e:Lcom/handmark/pulltorefresh/library/o;

    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Lcom/handmark/pulltorefresh/library/o;[Z)V

    :cond_11
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .registers 3

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/b;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .registers 3

    sget-object v0, Lcom/handmark/pulltorefresh/library/g;->d:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {p0, p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/g;)V

    return-void
.end method

.method public setScrollAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->D:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public final setScrollingWhileRefreshingEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->z:Z

    return-void
.end method

.method public final setShowViewWhileRefreshing(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->y:Z

    return-void
.end method
