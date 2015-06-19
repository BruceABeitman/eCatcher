.class public abstract Lit/sephiroth/android/library/widget/AbsHListView;
.super Lit/sephiroth/android/library/widget/AdapterView;
.source "AbsHListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lit/sephiroth/android/library/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;"
    }
.end annotation


# static fields
.field static final T:Landroid/view/animation/Interpolator;

.field public static final U:[I


# instance fields
.field protected A:I

.field B:I

.field C:I

.field D:I

.field E:I

.field protected F:I

.field G:I

.field H:I

.field protected I:Lit/sephiroth/android/library/widget/m;

.field protected J:I

.field protected K:Z

.field L:Z

.field protected M:I

.field protected N:I

.field protected O:Ljava/lang/Runnable;

.field protected final P:[Z

.field Q:I

.field R:I

.field protected S:Z

.field a:Lit/sephiroth/android/library/a/b;

.field private aA:Lit/sephiroth/android/library/widget/e;

.field private aB:Ljava/lang/Runnable;

.field private aC:Lit/sephiroth/android/library/widget/d;

.field private aD:Lit/sephiroth/android/library/widget/l;

.field private aE:Ljava/lang/Runnable;

.field private aF:I

.field private aG:I

.field private aH:Z

.field private aI:I

.field private aJ:I

.field private aK:Ljava/lang/Runnable;

.field private aL:I

.field private aM:I

.field private aN:F

.field private aO:I

.field private aP:Lit/sephiroth/android/library/widget/z;

.field private aQ:Lit/sephiroth/android/library/widget/z;

.field private aR:I

.field private aS:I

.field private aT:I

.field private aU:Z

.field private aV:I

.field private aW:I

.field private aX:Lit/sephiroth/android/library/widget/j;

.field private aY:I

.field private aZ:I

.field private at:Landroid/view/VelocityTracker;

.field private au:Lit/sephiroth/android/library/widget/g;

.field private av:Lit/sephiroth/android/library/widget/k;

.field private aw:Z

.field private ax:Landroid/graphics/Rect;

.field private ay:Landroid/view/ContextMenu$ContextMenuInfo;

.field private az:I

.field protected b:I

.field private ba:I

.field private bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

.field private bc:F

.field public c:Ljava/lang/Object;

.field d:Ljava/lang/Object;

.field e:I

.field protected f:Landroid/support/v4/b/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/b/o",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field g:Landroid/support/v4/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/b/f",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected h:I

.field protected i:Lit/sephiroth/android/library/widget/c;

.field protected j:Landroid/widget/ListAdapter;

.field k:Z

.field l:Z

.field m:Landroid/graphics/drawable/Drawable;

.field n:I

.field protected o:Landroid/graphics/Rect;

.field protected final p:Lit/sephiroth/android/library/widget/p;

.field q:I

.field r:I

.field s:I

.field t:I

.field protected u:Landroid/graphics/Rect;

.field protected v:I

.field w:Landroid/view/View;

.field x:Landroid/view/View;

.field protected y:Z

.field protected z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lit/sephiroth/android/library/widget/AbsHListView;->T:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    sput-object v0, Lit/sephiroth/android/library/widget/AbsHListView;->U:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l:Z

    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o:Landroid/graphics/Rect;

    new-instance v0, Lit/sephiroth/android/library/widget/p;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/p;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/p;

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:I

    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:I

    iput-boolean v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aw:Z

    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ay:Landroid/view/ContextMenu$ContextMenuInfo;

    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->az:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aI:I

    const/high16 v0, 0x3f80

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aN:F

    new-array v0, v3, [Z

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P:[Z

    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aT:I

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->p()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lit/sephiroth/android/library/b;->hlv_absHListViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lit/sephiroth/android/library/widget/AbsHListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l:Z

    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o:Landroid/graphics/Rect;

    new-instance v3, Lit/sephiroth/android/library/widget/p;

    invoke-direct {v3, p0}, Lit/sephiroth/android/library/widget/p;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/p;

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:I

    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:I

    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aw:Z

    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    iput-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ay:Landroid/view/ContextMenu$ContextMenuInfo;

    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->az:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aI:I

    const/high16 v3, 0x3f80

    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aN:F

    new-array v3, v1, [Z

    iput-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P:[Z

    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aT:I

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->p()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Lit/sephiroth/android/library/d;->AbsHListView:[I

    invoke-virtual {v3, p2, v4, p3, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    if-eqz v8, :cond_9a

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v8, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    const/4 v2, 0x6

    invoke-virtual {v8, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    const/4 v2, 0x2

    invoke-virtual {v8, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    const/4 v2, 0x7

    invoke-virtual {v8, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v2, 0x3

    invoke-virtual {v8, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    const/4 v9, 0x5

    invoke-virtual {v8, v9, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v9, 0x4

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    :goto_80
    if-eqz v7, :cond_85

    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_85
    iput-boolean v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l:Z

    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->setStackFromRight(Z)V

    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->setScrollingCacheEnabled(Z)V

    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->setTranscriptMode(I)V

    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setCacheColorHint(I)V

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setSmoothScrollbarEnabled(Z)V

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setChoiceMode(I)V

    return-void

    :cond_9a
    move v3, v0

    move v4, v1

    move v5, v0

    move v6, v0

    move-object v7, v2

    move v2, v0

    goto :goto_80
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/AbsHListView;)I
    .registers 2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static a(Ljava/util/ArrayList;I)Landroid/view/View;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2b

    const/4 v0, 0x0

    move v2, v0

    :goto_8
    if-ge v2, v3, :cond_22

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lit/sephiroth/android/library/widget/i;

    iget v1, v1, Lit/sephiroth/android/library/widget/i;->d:I

    if-ne v1, p1, :cond_1e

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_1d
    return-object v0

    :cond_1e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_22
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_1d

    :cond_2b
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/e;)Lit/sephiroth/android/library/widget/e;
    .registers 2

    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aA:Lit/sephiroth/android/library/widget/e;

    return-object p1
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 4

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_12
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v2, 0xff00

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    if-ne v2, v3, :cond_2c

    if-nez v0, :cond_2d

    const/4 v0, 0x1

    :goto_16
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    :cond_2c
    return-void

    :cond_2d
    move v0, v1

    goto :goto_16
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/AbsHListView;III)Z
    .registers 14

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, p3

    move v8, v2

    move v9, v2

    invoke-virtual/range {v0 .. v9}, Lit/sephiroth/android/library/widget/AbsHListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lit/sephiroth/android/library/widget/AbsHListView;)I
    .registers 2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic b(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic b(Lit/sephiroth/android/library/widget/AbsHListView;III)Z
    .registers 14

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, p3

    move v8, v2

    move v9, v2

    invoke-virtual/range {v0 .. v9}, Lit/sephiroth/android/library/widget/AbsHListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method private c(II)I
    .registers 7

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ax:Landroid/graphics/Rect;

    if-nez v0, :cond_d

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ax:Landroid/graphics/Rect;

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ax:Landroid/graphics/Rect;

    :cond_d
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_13
    if-ltz v1, :cond_2f

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    add-int/2addr v0, v1

    :goto_2b
    return v0

    :cond_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    :cond_2f
    const/4 v0, -0x1

    goto :goto_2b
.end method

.method static synthetic c(Lit/sephiroth/android/library/widget/AbsHListView;)Lit/sephiroth/android/library/widget/e;
    .registers 2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aA:Lit/sephiroth/android/library/widget/e;

    return-object v0
.end method

.method static synthetic c(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic d(Lit/sephiroth/android/library/widget/AbsHListView;)I
    .registers 2

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    return v0
.end method

.method static synthetic d(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic e(Lit/sephiroth/android/library/widget/AbsHListView;)Landroid/view/VelocityTracker;
    .registers 2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->at:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic e(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic f(Lit/sephiroth/android/library/widget/AbsHListView;)I
    .registers 2

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aM:I

    return v0
.end method

.method static synthetic g(Lit/sephiroth/android/library/widget/AbsHListView;)I
    .registers 2

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aL:I

    return v0
.end method

.method private g(I)Z
    .registers 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    sub-int v2, p1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_50

    move v0, v3

    :goto_11
    if-nez v0, :cond_17

    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aJ:I

    if-le v4, v5, :cond_4f

    :cond_17
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->w()V

    if-eqz v0, :cond_52

    const/4 v0, 0x5

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    move v0, v1

    move-object v2, p0

    :goto_21
    iput v0, v2, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aA:Lit/sephiroth/android/library/widget/e;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2e
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_3f
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->a(I)V

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4b
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->h(I)V

    move v1, v3

    :cond_4f
    return v1

    :cond_50
    move v0, v1

    goto :goto_11

    :cond_52
    const/4 v0, 0x3

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    if-lez v2, :cond_5b

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aJ:I

    move-object v2, p0

    goto :goto_21

    :cond_5b
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aJ:I

    neg-int v0, v0

    move-object v2, p0

    goto :goto_21
.end method

.method private h(I)V
    .registers 15

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    sub-int v12, p1, v0

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    sub-int v1, v12, v0

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    const/high16 v2, -0x8000

    if-eq v0, v2, :cond_c2

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    sub-int v0, p1, v0

    :goto_12
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_f3

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    if-eq p1, v2, :cond_c1

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aJ:I

    if-le v2, v3, :cond_2d

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2d

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2d
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    if-ltz v2, :cond_c5

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int/2addr v2, v3

    :goto_36
    const/4 v3, 0x0

    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1db

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    move v4, v3

    :goto_42
    const/4 v3, 0x0

    if-eqz v0, :cond_1d8

    invoke-virtual {p0, v1, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->b(II)Z

    move-result v1

    :goto_49
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_bf

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    if-eqz v1, :cond_bd

    neg-int v0, v0

    sub-int v1, v2, v4

    sub-int v1, v0, v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lit/sephiroth/android/library/widget/AbsHListView;->overScrollBy(IIIIIIIIZ)Z

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ne v0, v2, :cond_83

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->at:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_83

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->at:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_83
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_92

    const/4 v2, 0x1

    if-ne v0, v2, :cond_bd

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->q()Z

    move-result v0

    if-nez v0, :cond_bd

    :cond_92
    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aT:I

    const/4 v0, 0x5

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    if-lez v12, :cond_cd

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/z;

    int-to-float v1, v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/z;->a(F)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/z;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/z;->a()Z

    move-result v0

    if-nez v0, :cond_b3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/z;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/z;->b()V

    :cond_b3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/z;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/z;->a(Z)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate(Landroid/graphics/Rect;)V

    :cond_bd
    :goto_bd
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    :cond_bf
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    :cond_c1
    :goto_c1
    return-void

    :cond_c2
    move v0, v1

    goto/16 :goto_12

    :cond_c5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    goto/16 :goto_36

    :cond_cd
    if-gez v12, :cond_bd

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/z;

    int-to-float v1, v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/z;->a(F)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/z;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/z;->a()Z

    move-result v0

    if-nez v0, :cond_e8

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/z;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/z;->b()V

    :cond_e8
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/z;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/z;->a(Z)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_bd

    :cond_f3
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_c1

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    if-eq p1, v1, :cond_c1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v2

    sub-int v3, v2, v0

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    if-le p1, v1, :cond_19b

    const/4 v1, 0x1

    move v10, v1

    :goto_108
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aT:I

    if-nez v1, :cond_10e

    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aT:I

    :cond_10e
    neg-int v1, v0

    if-gez v3, :cond_113

    if-gez v2, :cond_117

    :cond_113
    if-lez v3, :cond_19f

    if-gtz v2, :cond_19f

    :cond_117
    neg-int v1, v2

    add-int/2addr v0, v1

    move v11, v0

    :goto_11a
    if-eqz v1, :cond_160

    const/4 v2, 0x0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lit/sephiroth/android/library/widget/AbsHListView;->overScrollBy(IIIIIIIIZ)Z

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_13b

    const/4 v2, 0x1

    if-ne v0, v2, :cond_160

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->q()Z

    move-result v0

    if-nez v0, :cond_160

    :cond_13b
    if-lez v12, :cond_1a3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/z;

    int-to-float v1, v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/z;->a(F)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/z;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/z;->a()Z

    move-result v0

    if-nez v0, :cond_156

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/z;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/z;->b()V

    :cond_156
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/z;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/z;->a(Z)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate(Landroid/graphics/Rect;)V

    :cond_160
    :goto_160
    if-eqz v11, :cond_195

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_171

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/a/b;->a(I)V

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->t()V

    :cond_171
    invoke-virtual {p0, v11, v11}, Lit/sephiroth/android/library/widget/AbsHListView;->b(II)Z

    const/4 v0, 0x3

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1c9

    const/4 v0, -0x1

    :cond_17e
    :goto_17e
    const/4 v1, 0x0

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1d6

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_18f
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    :cond_195
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aT:I

    goto/16 :goto_c1

    :cond_19b
    const/4 v1, -0x1

    move v10, v1

    goto/16 :goto_108

    :cond_19f
    const/4 v0, 0x0

    move v11, v0

    goto/16 :goto_11a

    :cond_1a3
    if-gez v12, :cond_160

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/z;

    int-to-float v1, v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/z;->a(F)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/z;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/z;->a()Z

    move-result v0

    if-nez v0, :cond_1be

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/z;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/z;->b()V

    :cond_1be
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/z;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/z;->a(Z)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_160

    :cond_1c9
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->e(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_17e

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_17e

    :cond_1d6
    const/4 v1, 0x0

    goto :goto_18f

    :cond_1d8
    move v1, v3

    goto/16 :goto_49

    :cond_1db
    move v4, v3

    goto/16 :goto_42
.end method

.method static synthetic h(Lit/sephiroth/android/library/widget/AbsHListView;)Z
    .registers 2

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->q()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lit/sephiroth/android/library/widget/AbsHListView;)Lit/sephiroth/android/library/widget/z;
    .registers 2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/z;

    return-object v0
.end method

.method static synthetic j(Lit/sephiroth/android/library/widget/AbsHListView;)Lit/sephiroth/android/library/widget/z;
    .registers 2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/z;

    return-object v0
.end method

.method static synthetic k(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .registers 1

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->x()V

    return-void
.end method

.method static synthetic l(Lit/sephiroth/android/library/widget/AbsHListView;)Z
    .registers 11

    const/4 v1, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    move v9, v1

    invoke-virtual/range {v0 .. v9}, Lit/sephiroth/android/library/widget/AbsHListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic m(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic n(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method private p()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setWillNotDraw(Z)V

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setScrollingCacheEnabled(Z)V

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aJ:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aL:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aM:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_45

    new-instance v0, Lit/sephiroth/android/library/a/c/a;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/a/c/a;-><init>(Landroid/view/View;)V

    :goto_42
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;

    return-void

    :cond_45
    const/16 v1, 0xe

    if-lt v0, v1, :cond_4f

    new-instance v0, Lit/sephiroth/android/library/a/b/a;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/a/b/a;-><init>(Landroid/view/View;)V

    goto :goto_42

    :cond_4f
    new-instance v0, Lit/sephiroth/android/library/a/c;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/a/c;-><init>(Landroid/view/View;)V

    goto :goto_42
.end method

.method private q()Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    if-eq v2, v3, :cond_f

    move v0, v1

    goto :goto_8

    :cond_f
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v3, v4, :cond_32

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_8

    :cond_32
    move v0, v1

    goto :goto_8
.end method

.method private r()Z
    .registers 2

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    packed-switch v0, :pswitch_data_a

    const/4 v0, 0x0

    :goto_6
    return v0

    :pswitch_7
    const/4 v0, 0x1

    goto :goto_6

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private s()V
    .registers 3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->f()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lit/sephiroth/android/library/widget/AbsHListView;->U:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_13
.end method

.method private t()V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0}, Lit/sephiroth/android/library/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_19
    return-void
.end method

.method private u()V
    .registers 2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->at:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->at:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method

.method private v()V
    .registers 2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->at:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->at:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->at:Landroid/view/VelocityTracker;

    :cond_c
    return-void
.end method

.method private w()V
    .registers 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->L:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0}, Lit/sephiroth/android/library/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setChildrenDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setChildrenDrawingCacheEnabled(Z)V

    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->z:Z

    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y:Z

    :cond_1b
    return-void
.end method

.method private x()V
    .registers 2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0}, Lit/sephiroth/android/library/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aK:Ljava/lang/Runnable;

    if-nez v0, :cond_13

    new-instance v0, Lit/sephiroth/android/library/widget/b;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/b;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aK:Ljava/lang/Runnable;

    :cond_13
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aK:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->post(Ljava/lang/Runnable;)Z

    :cond_18
    return-void
.end method

.method private y()Z
    .registers 15

    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v9

    if-gtz v9, :cond_a

    :cond_9
    :goto_9
    return v2

    :cond_a
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getLeft()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v7, v0, v3

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    if-lt v3, v4, :cond_86

    add-int v0, v4, v9

    if-ge v3, v0, :cond_86

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v0, v5, :cond_76

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    add-int/2addr v0, v5

    move v5, v0

    move v0, v1

    :goto_40
    iput v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/m;

    if-eqz v7, :cond_50

    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/m;

    invoke-virtual {v7}, Lit/sephiroth/android/library/widget/m;->a()V

    :cond_50
    iput v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->x()V

    iput v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    invoke-virtual {p0, v3, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IZ)I

    move-result v0

    if-lt v0, v4, :cond_ec

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getLastVisiblePosition()I

    move-result v3

    if-gt v0, v3, :cond_ec

    const/4 v3, 0x4

    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->s()V

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelectionInt(I)V

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->b()V

    :goto_6f
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->a(I)V

    if-ltz v0, :cond_9

    move v2, v1

    goto :goto_9

    :cond_76
    if-le v9, v7, :cond_83

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v7, v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    sub-int/2addr v0, v5

    :cond_83
    move v5, v0

    move v0, v1

    goto :goto_40

    :cond_86
    if-ge v3, v4, :cond_b3

    move v7, v2

    move v0, v2

    :goto_8a
    if-ge v7, v9, :cond_af

    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-nez v7, :cond_fc

    if-gtz v4, :cond_9a

    if-ge v3, v5, :cond_f9

    :cond_9a
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    add-int/2addr v0, v5

    move v5, v3

    :goto_a0
    if-lt v3, v0, :cond_a8

    add-int v0, v4, v7

    move v5, v3

    move v3, v0

    move v0, v1

    goto :goto_40

    :cond_a8
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move v13, v0

    move v0, v5

    move v5, v13

    goto :goto_8a

    :cond_af
    move v3, v4

    move v5, v0

    move v0, v1

    goto :goto_40

    :cond_b3
    iget v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    add-int v0, v4, v9

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v9, -0x1

    move v8, v3

    move v5, v2

    :goto_bd
    if-ltz v8, :cond_f5

    invoke-virtual {p0, v8}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    add-int/lit8 v12, v9, -0x1

    if-ne v8, v12, :cond_f1

    add-int v5, v4, v9

    if-lt v5, v10, :cond_d5

    if-le v11, v7, :cond_ee

    :cond_d5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    sub-int v5, v7, v5

    move v7, v3

    :goto_dc
    if-gt v11, v5, :cond_e5

    add-int v0, v4, v8

    move v5, v3

    move v3, v0

    move v0, v2

    goto/16 :goto_40

    :cond_e5
    add-int/lit8 v3, v8, -0x1

    move v8, v3

    move v13, v5

    move v5, v7

    move v7, v13

    goto :goto_bd

    :cond_ec
    move v0, v6

    goto :goto_6f

    :cond_ee
    move v5, v7

    move v7, v3

    goto :goto_dc

    :cond_f1
    move v13, v7

    move v7, v5

    move v5, v13

    goto :goto_dc

    :cond_f5
    move v3, v0

    move v0, v2

    goto/16 :goto_40

    :cond_f9
    move v0, v5

    move v5, v3

    goto :goto_a0

    :cond_fc
    move v13, v5

    move v5, v0

    move v0, v13

    goto :goto_a0
.end method

.method private z()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/z;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/z;

    iput v1, v0, Lit/sephiroth/android/library/widget/z;->c:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/z;

    iput v1, v0, Lit/sephiroth/android/library/widget/z;->c:I

    :cond_d
    return-void
.end method


# virtual methods
.method protected final a(I[Z)Landroid/view/View;
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/16 v6, 0x10

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    aput-boolean v4, p2, v4

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/p;

    iget-object v0, v1, Lit/sephiroth/android/library/widget/p;->g:Landroid/support/v4/b/o;

    if-nez v0, :cond_11

    move-object v1, v2

    :goto_e
    if-eqz v1, :cond_35

    :cond_10
    :goto_10
    return-object v1

    :cond_11
    iget-object v0, v1, Lit/sephiroth/android/library/widget/p;->g:Landroid/support/v4/b/o;

    iget-boolean v3, v0, Landroid/support/v4/b/o;->a:Z

    if-eqz v3, :cond_1a

    invoke-virtual {v0}, Landroid/support/v4/b/o;->b()V

    :cond_1a
    iget-object v3, v0, Landroid/support/v4/b/o;->b:[I

    iget v0, v0, Landroid/support/v4/b/o;->d:I

    invoke-static {v3, v0, p1}, Landroid/support/v4/b/c;->a([III)I

    move-result v3

    if-gez v3, :cond_26

    move-object v1, v2

    goto :goto_e

    :cond_26
    iget-object v0, v1, Lit/sephiroth/android/library/widget/p;->g:Landroid/support/v4/b/o;

    invoke-virtual {v0, v3}, Landroid/support/v4/b/o;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, v1, Lit/sephiroth/android/library/widget/p;->g:Landroid/support/v4/b/o;

    invoke-virtual {v1, v3}, Landroid/support/v4/b/o;->a(I)V

    move-object v1, v0

    goto :goto_e

    :cond_35
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/p;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/p;->a(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_97

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_50

    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_50

    invoke-virtual {v0, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_50
    if-eq v0, v1, :cond_90

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/p;

    invoke-virtual {v2, v1, p1}, Lit/sephiroth/android/library/widget/p;->a(Landroid/view/View;I)V

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aG:I

    if-eqz v1, :cond_b3

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aG:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    move-object v1, v0

    :goto_61
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Z

    if-eqz v0, :cond_7c

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_b5

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/i;

    :goto_71
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v0, Lit/sephiroth/android/library/widget/i;->e:J

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7c
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ap:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aX:Lit/sephiroth/android/library/widget/j;

    if-nez v0, :cond_10

    new-instance v0, Lit/sephiroth/android/library/widget/j;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/j;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aX:Lit/sephiroth/android/library/widget/j;

    goto :goto_10

    :cond_90
    aput-boolean v5, p2, v4

    invoke-virtual {v0}, Landroid/view/View;->onFinishTemporaryDetach()V

    move-object v1, v0

    goto :goto_61

    :cond_97
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_aa

    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_aa

    invoke-virtual {v0, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_aa
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aG:I

    if-eqz v1, :cond_b3

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aG:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    :cond_b3
    move-object v1, v0

    goto :goto_61

    :cond_b5
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_c2

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/i;

    goto :goto_71

    :cond_c2
    check-cast v0, Lit/sephiroth/android/library/widget/i;

    goto :goto_71
.end method

.method public final a()V
    .registers 2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    invoke-virtual {v0}, Landroid/support/v4/b/o;->d()V

    :cond_9
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    invoke-virtual {v0}, Landroid/support/v4/b/f;->c()V

    :cond_12
    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    return-void
.end method

.method final a(I)V
    .registers 3

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aI:I

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/k;

    if-eqz v0, :cond_c

    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aI:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/k;

    :cond_c
    return-void
.end method

.method public final a(II)V
    .registers 4

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/m;

    if-nez v0, :cond_b

    new-instance v0, Lit/sephiroth/android/library/widget/m;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/m;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/m;

    :cond_b
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/m;

    invoke-virtual {v0, p1, p2}, Lit/sephiroth/android/library/widget/m;->a(II)V

    return-void
.end method

.method public final a(IIZ)V
    .registers 10

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    if-nez v0, :cond_b

    new-instance v0, Lit/sephiroth/android/library/widget/g;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/g;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    :cond_b
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    add-int v2, v0, v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    if-eqz p1, :cond_49

    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    if-eqz v5, :cond_49

    if-eqz v1, :cond_49

    if-nez v0, :cond_37

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-ne v0, v3, :cond_37

    if-ltz p1, :cond_49

    :cond_37
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    if-ne v2, v0, :cond_58

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    if-ne v0, v4, :cond_58

    if-lez p1, :cond_58

    :cond_49
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/g;->b()V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/m;

    if-eqz v0, :cond_57

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/m;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/m;->a()V

    :cond_57
    :goto_57
    return-void

    :cond_58
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->a(I)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    invoke-virtual {v0, p1, p2, p3}, Lit/sephiroth/android/library/widget/g;->a(IIZ)V

    goto :goto_57
.end method

.method protected final a(ILandroid/view/View;)V
    .registers 10

    const/4 v6, -0x1

    if-eq p1, v6, :cond_5

    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:I

    :cond_5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o:Landroid/graphics/Rect;

    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q:I

    sub-int/2addr v1, v5

    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r:I

    sub-int/2addr v2, v5

    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s:I

    add-int/2addr v3, v5

    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t:I

    add-int/2addr v0, v5

    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aH:Z

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_49

    if-nez v0, :cond_4a

    const/4 v0, 0x1

    :goto_3e
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aH:Z

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedItemPosition()I

    move-result v0

    if-eq v0, v6, :cond_49

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->refreshDrawableState()V

    :cond_49
    return-void

    :cond_4a
    const/4 v0, 0x0

    goto :goto_3e
.end method

.method protected abstract a(Z)V
.end method

.method public a(Landroid/view/View;IJ)Z
    .registers 16

    const/16 v9, 0xb

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-eqz v0, :cond_14a

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_b7

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b7

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    if-eqz v0, :cond_b7

    :cond_1a
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/b/o;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a2

    move v5, v6

    :goto_2d
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/b/o;->b(ILjava/lang/Object;)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_53

    if-eqz v5, :cond_a4

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/b/f;->a(JLjava/lang/Object;)V

    :cond_53
    :goto_53
    if-eqz v5, :cond_b0

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    :goto_5b
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    if-eqz v0, :cond_147

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    check-cast v0, Lit/sephiroth/android/library/a/a/b;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/ActionMode;

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lit/sephiroth/android/library/a/a/b;->a(Landroid/view/ActionMode;IJZ)V

    move v0, v7

    :goto_6d
    move v3, v0

    move v0, v6

    :goto_6f
    if-eqz v0, :cond_139

    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_11f

    move v2, v6

    :goto_7c
    move v4, v7

    :goto_7d
    if-ge v4, v8, :cond_139

    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int v1, v5, v4

    instance-of v9, v0, Landroid/widget/Checkable;

    if-eqz v9, :cond_122

    check-cast v0, Landroid/widget/Checkable;

    iget-object v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Landroid/support/v4/b/o;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_9e
    :goto_9e
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_7d

    :cond_a2
    move v5, v7

    goto :goto_2d

    :cond_a4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/b/f;->a(J)V

    goto :goto_53

    :cond_b0
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    goto :goto_5b

    :cond_b7
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-ne v0, v6, :cond_143

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/b/o;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_104

    move v0, v6

    :goto_ce
    if-eqz v0, :cond_106

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    invoke-virtual {v0}, Landroid/support/v4/b/o;->d()V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/b/o;->b(ILjava/lang/Object;)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    if-eqz v0, :cond_fe

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_fe

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    invoke-virtual {v0}, Landroid/support/v4/b/f;->c()V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/b/f;->a(JLjava/lang/Object;)V

    :cond_fe
    iput v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    :cond_100
    :goto_100
    move v0, v6

    move v3, v6

    goto/16 :goto_6f

    :cond_104
    move v0, v7

    goto :goto_ce

    :cond_106
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    invoke-virtual {v0}, Landroid/support/v4/b/o;->c()I

    move-result v0

    if-eqz v0, :cond_11c

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    invoke-virtual {v0, v7}, Landroid/support/v4/b/o;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_100

    :cond_11c
    iput v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    goto :goto_100

    :cond_11f
    move v2, v7

    goto/16 :goto_7c

    :cond_122
    if-eqz v2, :cond_9e

    iget-object v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Landroid/support/v4/b/o;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_9e

    :cond_139
    move v0, v6

    move v6, v3

    :goto_13b
    if-eqz v6, :cond_142

    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/AdapterView;->a(Landroid/view/View;IJ)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_142
    return v0

    :cond_143
    move v0, v7

    move v3, v6

    goto/16 :goto_6f

    :cond_147
    move v0, v6

    goto/16 :goto_6d

    :cond_14a
    move v0, v7

    goto :goto_13b
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    if-nez v3, :cond_b

    :cond_a
    return-void

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_a

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int v5, v2, v0

    invoke-interface {v3, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    invoke-virtual {v4, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method b(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 6

    new-instance v0, Lit/sephiroth/android/library/widget/t;

    invoke-direct {v0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/t;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected final b()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/k;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/k;

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    :cond_e
    invoke-virtual {p0, v1, v1, v1, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->onScrollChanged(IIII)V

    return-void
.end method

.method public b(I)V
    .registers 3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/m;

    if-nez v0, :cond_b

    new-instance v0, Lit/sephiroth/android/library/widget/m;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/m;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/m;

    :cond_b
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/m;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/m;->a(I)V

    return-void
.end method

.method final b(II)Z
    .registers 23

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v9

    if-nez v9, :cond_8

    const/4 v2, 0x1

    :goto_7
    return v2

    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/lit8 v2, v9, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    rsub-int/lit8 v10, v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    sub-int v11, v4, v2

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v2, v6

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingLeft()I

    move-result v6

    sub-int v6, v2, v6

    if-gez p1, :cond_97

    add-int/lit8 v2, v6, -0x1

    neg-int v2, v2

    move/from16 v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v8, v2

    :goto_48
    if-gez p2, :cond_a1

    add-int/lit8 v2, v6, -0x1

    neg-int v2, v2

    move/from16 v0, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_53
    move-object/from16 v0, p0

    iget v12, v0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    if-nez v12, :cond_aa

    iget v6, v5, Landroid/graphics/Rect;->left:I

    sub-int v6, v3, v6

    move-object/from16 v0, p0

    iput v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:I

    :goto_61
    add-int v6, v12, v9

    move-object/from16 v0, p0

    iget v7, v0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    if-ne v6, v7, :cond_b4

    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v4

    move-object/from16 v0, p0

    iput v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aS:I

    :goto_70
    if-nez v12, :cond_be

    iget v6, v5, Landroid/graphics/Rect;->left:I

    if-lt v3, v6, :cond_be

    if-ltz v2, :cond_be

    const/4 v3, 0x1

    :goto_79
    add-int v6, v12, v9

    move-object/from16 v0, p0

    iget v7, v0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    if-ne v6, v7, :cond_c0

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v6

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v5, v6, v5

    if-gt v4, v5, :cond_c0

    if-gtz v2, :cond_c0

    const/4 v4, 0x1

    :goto_8e
    if-nez v3, :cond_92

    if-eqz v4, :cond_c5

    :cond_92
    if-eqz v2, :cond_c2

    const/4 v2, 0x1

    goto/16 :goto_7

    :cond_97
    add-int/lit8 v2, v6, -0x1

    move/from16 v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v8, v2

    goto :goto_48

    :cond_a1
    add-int/lit8 v2, v6, -0x1

    move/from16 v0, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_53

    :cond_aa
    move-object/from16 v0, p0

    iget v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:I

    add-int/2addr v6, v2

    move-object/from16 v0, p0

    iput v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:I

    goto :goto_61

    :cond_b4
    move-object/from16 v0, p0

    iget v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aS:I

    add-int/2addr v6, v2

    move-object/from16 v0, p0

    iput v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aS:I

    goto :goto_70

    :cond_be
    const/4 v3, 0x0

    goto :goto_79

    :cond_c0
    const/4 v4, 0x0

    goto :goto_8e

    :cond_c2
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_c5
    if-gez v2, :cond_116

    const/4 v3, 0x1

    :goto_c8
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isInTouchMode()Z

    move-result v13

    if-eqz v13, :cond_d1

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->h()V

    :cond_d1
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHeaderViewsCount()I

    move-result v14

    move-object/from16 v0, p0

    iget v4, v0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getFooterViewsCount()I

    move-result v5

    sub-int v15, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_118

    neg-int v0, v2

    move/from16 v16, v0

    const/4 v4, 0x0

    move/from16 v19, v4

    move v4, v6

    move/from16 v6, v19

    :goto_ec
    if-ge v6, v9, :cond_151

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v7

    move/from16 v0, v16

    if-ge v7, v0, :cond_151

    add-int/lit8 v7, v4, 0x1

    add-int v4, v12, v6

    if-lt v4, v14, :cond_111

    if-ge v4, v15, :cond_111

    move-object/from16 v0, p0

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/p;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lit/sephiroth/android/library/widget/p;->a(Landroid/view/View;I)V

    :cond_111
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v7

    goto :goto_ec

    :cond_116
    const/4 v3, 0x0

    goto :goto_c8

    :cond_118
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v4

    sub-int v7, v4, v2

    add-int/lit8 v4, v9, -0x1

    move/from16 v19, v4

    move v4, v6

    move/from16 v6, v19

    :goto_125
    if-ltz v6, :cond_151

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v16

    move/from16 v0, v16

    if-le v0, v7, :cond_151

    add-int/lit8 v5, v4, 0x1

    add-int v4, v12, v6

    if-lt v4, v14, :cond_148

    if-ge v4, v15, :cond_148

    move-object/from16 v0, p0

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/p;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v4}, Lit/sephiroth/android/library/widget/p;->a(Landroid/view/View;I)V

    :cond_148
    add-int/lit8 v4, v6, -0x1

    move/from16 v19, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v19

    goto :goto_125

    :cond_151
    move-object/from16 v0, p0

    iget v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    add-int/2addr v6, v8

    move-object/from16 v0, p0

    iput v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->C:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->as:Z

    if-lez v4, :cond_16d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->detachViewsFromParent(II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/p;

    invoke-virtual {v5}, Lit/sephiroth/android/library/widget/p;->b()V

    :cond_16d
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->awakenScrollBars()Z

    move-result v5

    if-nez v5, :cond_176

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    :cond_176
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->d(I)V

    if-eqz v3, :cond_186

    move-object/from16 v0, p0

    iget v5, v0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    :cond_186
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v10, v2, :cond_18e

    if-ge v11, v2, :cond_193

    :cond_18e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Z)V

    :cond_193
    if-nez v13, :cond_1c7

    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->al:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1c7

    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->al:I

    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int/2addr v2, v3

    if-ltz v2, :cond_1bc

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1bc

    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/library/widget/AbsHListView;->al:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->a(ILandroid/view/View;)V

    :cond_1bc
    :goto_1bc
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->as:Z

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->b()V

    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_1c7
    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->n:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1ec

    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->n:I

    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int/2addr v2, v3

    if-ltz v2, :cond_1bc

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1bc

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->a(ILandroid/view/View;)V

    goto :goto_1bc

    :cond_1ec
    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->o:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1bc
.end method

.method protected c()V
    .registers 5

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeAllViewsInLayout()V

    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    iput-boolean v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Z

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O:Ljava/lang/Runnable;

    iput-boolean v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ac:Z

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aq:I

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ar:J

    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setNextSelectedPositionInt(I)V

    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:I

    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    return-void
.end method

.method public final c(I)V
    .registers 4

    const/16 v0, 0xc8

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V

    return-void
.end method

.method final c(Landroid/view/View;IJ)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_25

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_25

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    if-nez v0, :cond_23

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    check-cast v0, Lit/sephiroth/android/library/a/a/b;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    if-eqz v0, :cond_23

    invoke-virtual {p0, p2, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setItemChecked(IZ)V

    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->performHapticFeedback(I)Z

    :cond_23
    move v0, v1

    :cond_24
    :goto_24
    return v0

    :cond_25
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ah:Lit/sephiroth/android/library/widget/w;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ah:Lit/sephiroth/android/library/widget/w;

    invoke-interface {v0}, Lit/sephiroth/android/library/widget/w;->a()Z

    move-result v0

    :goto_2f
    if-nez v0, :cond_3b

    invoke-virtual {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ay:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-super {p0, p0}, Lit/sephiroth/android/library/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    :cond_3b
    if-eqz v0, :cond_24

    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->performHapticFeedback(I)Z

    goto :goto_24

    :cond_41
    move v0, v2

    goto :goto_2f
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Lit/sephiroth/android/library/widget/i;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_3d

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aw:Z

    if-eqz v0, :cond_3b

    mul-int/lit8 v0, v2, 0x64

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_20

    mul-int/lit8 v3, v3, 0x64

    div-int v1, v3, v1

    add-int/2addr v0, v1

    :cond_20
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_3a

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x64

    div-int v1, v2, v1

    sub-int/2addr v0, v1

    :cond_3a
    :goto_3a
    return v0

    :cond_3b
    const/4 v0, 0x1

    goto :goto_3a

    :cond_3d
    move v0, v1

    goto :goto_3a
.end method

.method protected computeHorizontalScrollOffset()I
    .registers 5

    const/4 v0, 0x0

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v3

    if-ltz v2, :cond_3d

    if-lez v3, :cond_3d

    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aw:Z

    if-eqz v1, :cond_3e

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_3d

    mul-int/lit8 v2, v2, 0x64

    mul-int/lit8 v3, v3, 0x64

    div-int v1, v3, v1

    sub-int v1, v2, v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c8

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_3d
    :goto_3d
    return v0

    :cond_3e
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    if-nez v2, :cond_4b

    :goto_42
    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3d

    :cond_4b
    add-int v0, v2, v3

    if-ne v0, v1, :cond_51

    move v0, v1

    goto :goto_42

    :cond_51
    div-int/lit8 v0, v3, 0x2

    add-int/2addr v0, v2

    goto :goto_42
.end method

.method protected computeHorizontalScrollRange()I
    .registers 4

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aw:Z

    if-eqz v0, :cond_2c

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2b
    :goto_2b
    return v0

    :cond_2c
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    goto :goto_2b
.end method

.method protected d()V
    .registers 1

    return-void
.end method

.method public final d(I)V
    .registers 5

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_11

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l:Z

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/graphics/Canvas;)V

    :cond_7
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_f

    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/graphics/Canvas;)V

    :cond_f
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .registers 2

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/z;

    if-eqz v0, :cond_a8

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/z;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/z;->a()Z

    move-result v1

    if-nez v1, :cond_5d

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aV:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aW:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    sub-int v3, v4, v3

    const/4 v4, 0x0

    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:I

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/high16 v5, -0x3d4c

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHeight()I

    move-result v5

    neg-int v5, v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    int-to-float v6, v4

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/z;

    invoke-virtual {v5, v3, v3}, Lit/sephiroth/android/library/widget/z;->a(II)V

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/z;

    invoke-virtual {v3, p1}, Lit/sephiroth/android/library/widget/z;->a(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_5a

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/z;

    iput v4, v3, Lit/sephiroth/android/library/widget/z;->a:I

    iput v2, v3, Lit/sephiroth/android/library/widget/z;->b:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    :cond_5a
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_5d
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/z;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/z;->a()Z

    move-result v1

    if-nez v1, :cond_a8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aV:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aW:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    sub-int v3, v4, v3

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v4

    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aS:I

    add-int/2addr v0, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v4, 0x42b4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v2, v2

    int-to-float v2, v2

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/z;

    invoke-virtual {v0, v3, v3}, Lit/sephiroth/android/library/widget/z;->a(II)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/z;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/z;->a(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    :cond_a5
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_a8
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 1

    invoke-super {p0}, Lit/sephiroth/android/library/widget/AdapterView;->drawableStateChanged()V

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->s()V

    return-void
.end method

.method protected abstract e(I)I
.end method

.method protected final e()V
    .registers 7

    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->w:Landroid/view/View;

    if-eqz v0, :cond_2b

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    if-lez v0, :cond_5c

    move v0, v1

    :goto_c
    if-nez v0, :cond_23

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_23

    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ge v0, v4, :cond_5e

    move v0, v1

    :cond_23
    :goto_23
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->w:Landroid/view/View;

    if-eqz v0, :cond_60

    move v0, v2

    :goto_28
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2b
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->x:Landroid/view/View;

    if-eqz v0, :cond_5b

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v4

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    add-int/2addr v0, v4

    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    if-ge v0, v5, :cond_62

    move v0, v1

    :goto_3b
    if-nez v0, :cond_68

    if-lez v4, :cond_68

    add-int/lit8 v0, v4, -0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getRight()I

    move-result v4

    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-le v0, v4, :cond_64

    :goto_54
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->x:Landroid/view/View;

    if-eqz v1, :cond_66

    :goto_58
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5b
    return-void

    :cond_5c
    move v0, v2

    goto :goto_c

    :cond_5e
    move v0, v2

    goto :goto_23

    :cond_60
    move v0, v3

    goto :goto_28

    :cond_62
    move v0, v2

    goto :goto_3b

    :cond_64
    move v1, v2

    goto :goto_54

    :cond_66
    move v2, v3

    goto :goto_58

    :cond_68
    move v1, v0

    goto :goto_54
.end method

.method protected final f()Z
    .registers 2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_c
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->r()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method protected final g()V
    .registers 5

    const/4 v3, 0x1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o:Landroid/graphics/Rect;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_20

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->r()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_20
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->al:I

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    :cond_3a
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isLongClickable()Z

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_56

    instance-of v2, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v2, :cond_56

    if-eqz v1, :cond_78

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_56
    :goto_56
    if-eqz v1, :cond_d

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aC:Lit/sephiroth/android/library/widget/d;

    if-nez v0, :cond_68

    new-instance v0, Lit/sephiroth/android/library/widget/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lit/sephiroth/android/library/widget/d;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;B)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aC:Lit/sephiroth/android/library/widget/d;

    :cond_68
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aC:Lit/sephiroth/android/library/widget/d;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/d;->a()V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aC:Lit/sephiroth/android/library/widget/d;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d

    :cond_78
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_56
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    new-instance v0, Lit/sephiroth/android/library/widget/i;

    invoke-direct {v0}, Lit/sephiroth/android/library/widget/i;-><init>()V

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Lit/sephiroth/android/library/widget/i;

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lit/sephiroth/android/library/widget/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    new-instance v0, Lit/sephiroth/android/library/widget/i;

    invoke-direct {v0, p1}, Lit/sephiroth/android/library/widget/i;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCacheColorHint()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aG:I

    return v0
.end method

.method public getCheckedItemCount()I
    .registers 2

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .registers 7

    const/4 v1, 0x0

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-eqz v0, :cond_d

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    if-nez v0, :cond_10

    :cond_d
    new-array v0, v1, [J

    :cond_f
    return-object v0

    :cond_10
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    invoke-virtual {v2}, Landroid/support/v4/b/f;->b()I

    move-result v3

    new-array v0, v3, [J

    :goto_18
    if-ge v1, v3, :cond_f

    invoke-virtual {v2, v1}, Landroid/support/v4/b/f;->a(I)J

    move-result-wide v4

    aput-wide v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_18
.end method

.method public getCheckedItemPosition()I
    .registers 3

    const/4 v1, 0x1

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    invoke-virtual {v0}, Landroid/support/v4/b/o;->c()I

    move-result v0

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/b/o;->b(I)I

    move-result v0

    :goto_18
    return v0

    :cond_19
    const/4 v0, -0x1

    goto :goto_18
.end method

.method public getCheckedItemPositions()Landroid/support/v4/b/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/b/o",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-eqz v0, :cond_7

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getChoiceMode()I
    .registers 2

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ay:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 4

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_13

    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    :goto_12
    return-void

    :cond_13
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_12
.end method

.method protected getFooterViewsCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected getHeaderViewsCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected getHorizontalScrollFactor()F
    .registers 5

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2f

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lit/sephiroth/android/library/b;->hlv_listPreferredItemWidth:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:F

    :cond_2f
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:F

    return v0

    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected theme to define hlv_listPreferredItemWidth."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getHorizontalScrollbarHeight()I
    .registers 2

    invoke-super {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getHorizontalScrollbarHeight()I

    move-result v0

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .registers 5

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    invoke-super {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getLeftFadingEdgeStrength()F

    move-result v0

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    if-lez v1, :cond_12

    const/high16 v0, 0x3f80

    goto :goto_a

    :cond_12
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalFadingEdgeLength()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingLeft()I

    move-result v3

    if-ge v1, v3, :cond_a

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingLeft()I

    move-result v0

    sub-int v0, v1, v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    goto :goto_a
.end method

.method public getListPaddingBottom()I
    .registers 2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .registers 2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .registers 2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .registers 2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .registers 6

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    invoke-super {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getRightFadingEdgeStrength()F

    move-result v0

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_19

    const/high16 v0, 0x3f80

    goto :goto_a

    :cond_19
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalFadingEdgeLength()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v4

    sub-int v4, v2, v4

    if-le v1, v4, :cond_a

    sub-int v0, v1, v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v3

    goto :goto_a
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    if-lez v0, :cond_12

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->al:I

    if-ltz v0, :cond_12

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->al:I

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .registers 2

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aG:I

    return v0
.end method

.method public getTranscriptMode()I
    .registers 2

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aF:I

    return v0
.end method

.method protected final h()V
    .registers 4

    const/4 v2, -0x1

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->al:I

    if-eq v0, v2, :cond_25

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->al:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    :cond_e
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:I

    if-ltz v0, :cond_1c

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:I

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->al:I

    if-eq v0, v1, :cond_1c

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    :cond_1c
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setNextSelectedPositionInt(I)V

    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:I

    :cond_25
    return-void
.end method

.method protected final i()I
    .registers 3

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->al:I

    if-gez v0, :cond_6

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    :cond_6
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method protected final j()Z
    .registers 2

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->al:I

    if-gez v0, :cond_f

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->y()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->s()V

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-super {p0}, Lit/sephiroth/android/library/widget/AdapterView;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_c
    return-void
.end method

.method protected final k()V
    .registers 13

    iget v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    iget v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ba:I

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ba:I

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-eqz v0, :cond_d4

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_d4

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_d4

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    invoke-virtual {v0}, Landroid/support/v4/b/o;->d()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v5, v1

    move v1, v0

    :goto_21
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    invoke-virtual {v0}, Landroid/support/v4/b/f;->b()I

    move-result v0

    if-ge v1, v0, :cond_c1

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/f;->a(I)J

    move-result-wide v3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/f;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    cmp-long v0, v3, v6

    if-eqz v0, :cond_b4

    const/4 v0, 0x0

    add-int/lit8 v6, v2, -0x14

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v0, v2, 0x14

    iget v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v0, 0x0

    :goto_55
    if-ge v6, v7, :cond_7d

    iget-object v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v10, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    cmp-long v10, v3, v10

    if-nez v10, :cond_b1

    const/4 v0, 0x1

    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v6, v10}, Landroid/support/v4/b/o;->b(ILjava/lang/Object;)V

    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-boolean v10, v7, Landroid/support/v4/b/f;->a:Z

    if-eqz v10, :cond_79

    invoke-virtual {v7}, Landroid/support/v4/b/f;->a()V

    :cond_79
    iget-object v7, v7, Landroid/support/v4/b/f;->b:[Ljava/lang/Object;

    aput-object v6, v7, v1

    :cond_7d
    if-nez v0, :cond_a9

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/b/f;->a(J)V

    add-int/lit8 v6, v1, -0x1

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    const/4 v7, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_a7

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    check-cast v0, Lit/sephiroth/android/library/a/a/b;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/ActionMode;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lit/sephiroth/android/library/a/a/b;->a(Landroid/view/ActionMode;IJZ)V

    :cond_a7
    move v1, v6

    move v5, v7

    :cond_a9
    move v0, v1

    move v1, v5

    :goto_ab
    add-int/lit8 v0, v0, 0x1

    move v5, v1

    move v1, v0

    goto/16 :goto_21

    :cond_b1
    add-int/lit8 v6, v6, 0x1

    goto :goto_55

    :cond_b4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/b/o;->b(ILjava/lang/Object;)V

    move v0, v1

    move v1, v5

    goto :goto_ab

    :cond_c1
    if-eqz v5, :cond_d4

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    if-eqz v0, :cond_d4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_d4

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_d4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/p;

    iget-object v1, v0, Lit/sephiroth/android/library/widget/p;->g:Landroid/support/v4/b/o;

    if-eqz v1, :cond_df

    iget-object v0, v0, Lit/sephiroth/android/library/widget/p;->g:Landroid/support/v4/b/o;

    invoke-virtual {v0}, Landroid/support/v4/b/o;->d()V

    :cond_df
    if-lez v8, :cond_1b2

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ac:Z

    if-eqz v0, :cond_133

    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ac:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aF:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f4

    const/4 v0, 0x3

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    :cond_f3
    :goto_f3
    return-void

    :cond_f4
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aF:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12e

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aU:Z

    if-eqz v0, :cond_104

    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aU:Z

    const/4 v0, 0x3

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    goto :goto_f3

    :cond_104
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v1

    sub-int v1, v0, v1

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_129

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    :goto_11e
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    add-int/2addr v2, v3

    if-lt v2, v9, :cond_12b

    if-gt v0, v1, :cond_12b

    const/4 v0, 0x3

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    goto :goto_f3

    :cond_129
    move v0, v1

    goto :goto_11e

    :cond_12b
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->awakenScrollBars()Z

    :cond_12e
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ad:I

    packed-switch v0, :pswitch_data_1d8

    :cond_133
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1ae

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedItemPosition()I

    move-result v0

    if-lt v0, v8, :cond_141

    add-int/lit8 v0, v8, -0x1

    :cond_141
    if-gez v0, :cond_144

    const/4 v0, 0x0

    :cond_144
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IZ)I

    move-result v1

    if-ltz v1, :cond_1a2

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setNextSelectedPositionInt(I)V

    goto :goto_f3

    :pswitch_14f
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_168

    const/4 v0, 0x5

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    const/4 v0, 0x0

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Z:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v8, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Z:I

    goto :goto_f3

    :cond_168
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->n()I

    move-result v0

    if-ltz v0, :cond_133

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IZ)I

    move-result v1

    if-ne v1, v0, :cond_133

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Z:I

    iget-wide v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ab:J

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_18a

    const/4 v1, 0x5

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    :goto_185
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_f3

    :cond_18a
    const/4 v1, 0x2

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    goto :goto_185

    :pswitch_18e
    const/4 v0, 0x5

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    const/4 v0, 0x0

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Z:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v8, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Z:I

    goto/16 :goto_f3

    :cond_1a2
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IZ)I

    move-result v0

    if-ltz v0, :cond_1b2

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_f3

    :cond_1ae
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    if-gez v0, :cond_f3

    :cond_1b2
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->K:Z

    if-eqz v0, :cond_1d5

    const/4 v0, 0x3

    :goto_1b7
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    const/4 v0, -0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->al:I

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:J

    const/4 v0, -0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:I

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ak:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ac:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    const/4 v0, -0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->m()V

    goto/16 :goto_f3

    :cond_1d5
    const/4 v0, 0x1

    goto :goto_1b7

    nop

    :pswitch_data_1d8
    .packed-switch 0x0
        :pswitch_14f
        :pswitch_18e
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .registers 4

    const/4 v2, 0x1

    invoke-super {p0}, Lit/sephiroth/android/library/widget/AdapterView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:Lit/sephiroth/android/library/widget/c;

    if-nez v0, :cond_2f

    new-instance v0, Lit/sephiroth/android/library/widget/c;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/c;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:Lit/sephiroth/android/library/widget/c;

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:Lit/sephiroth/android/library/widget/c;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Z

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    :cond_2f
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:Z

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aH:Z

    if-eqz v0, :cond_9

    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v0

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Lit/sephiroth/android/library/widget/AbsHListView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    aget v3, v0, v1

    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v0

    const/4 v2, -0x1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_18
    if-ltz v1, :cond_2d

    aget v4, v0, v1

    if-ne v4, v3, :cond_2a

    :goto_1e
    if-ltz v1, :cond_8

    add-int/lit8 v2, v1, 0x1

    array-length v3, v0

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8

    :cond_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    :cond_2d
    move v1, v2

    goto :goto_1e
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lit/sephiroth/android/library/widget/AdapterView;->onDetachedFromWindow()V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/p;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/p;->a()V

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:Lit/sephiroth/android/library/widget/c;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:Lit/sephiroth/android/library/widget/c;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:Lit/sephiroth/android/library/widget/c;

    :cond_21
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2a
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/m;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/m;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/m;->a()V

    :cond_33
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aK:Ljava/lang/Runnable;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aK:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3c
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aD:Lit/sephiroth/android/library/widget/l;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aD:Lit/sephiroth/android/library/widget/l;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_45
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aE:Ljava/lang/Runnable;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aE:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aE:Ljava/lang/Runnable;

    :cond_50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:Z

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_29

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->al:I

    if-gez v0, :cond_29

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_29

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Z

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    :cond_26
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->y()Z

    :cond_29
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_32

    :cond_f
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_13
    return v0

    :pswitch_14
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalScrollFactor()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->b(II)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_13

    :pswitch_data_32
    .packed-switch 0x8
        :pswitch_14
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_1d

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1d
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2e

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_2e
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    const/4 v7, 0x4

    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/m;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/m;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/m;->a()V

    :cond_11
    iget-boolean v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:Z

    if-nez v3, :cond_16

    :cond_15
    :goto_15
    return v1

    :cond_16
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_b2

    :pswitch_1b
    goto :goto_15

    :pswitch_1c
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    const/4 v3, 0x6

    if-eq v0, v3, :cond_24

    const/4 v3, 0x5

    if-ne v0, v3, :cond_28

    :cond_24
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    move v1, v2

    goto :goto_15

    :cond_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->e(I)I

    move-result v5

    if-eq v0, v7, :cond_59

    if-ltz v5, :cond_59

    iget v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int v6, v5, v6

    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E:I

    iput v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->x()V

    :cond_59
    const/high16 v3, -0x8000

    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->at:Landroid/view/VelocityTracker;

    if-nez v3, :cond_70

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->at:Landroid/view/VelocityTracker;

    :goto_67
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->at:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    if-ne v0, v7, :cond_15

    move v1, v2

    goto :goto_15

    :cond_70
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->at:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_67

    :pswitch_76
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    packed-switch v0, :pswitch_data_c4

    goto :goto_15

    :pswitch_7c
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v4, :cond_8b

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    move v0, v1

    :cond_8b
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->u()V

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->at:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->g(I)Z

    move-result v0

    if-eqz v0, :cond_15

    move v1, v2

    goto/16 :goto_15

    :pswitch_a1
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->v()V

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(I)V

    goto/16 :goto_15

    :pswitch_ad
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_15

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_a1
        :pswitch_76
        :pswitch_a1
        :pswitch_1b
        :pswitch_1b
        :pswitch_ad
    .end packed-switch

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_7c
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v5, 0x0

    sparse-switch p1, :sswitch_data_48

    :cond_5
    invoke-super {p0, p1, p2}, Lit/sephiroth/android/library/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_9
    :goto_9
    return v0

    :sswitch_a
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->al:I

    if-ltz v1, :cond_5

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_5

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->al:I

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->al:I

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_43

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->al:I

    iget-wide v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/view/View;IJ)Z

    invoke-virtual {v1, v5}, Landroid/view/View;->setPressed(Z)V

    :cond_43
    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V

    goto :goto_9

    nop

    :sswitch_data_48
    .sparse-switch
        0x17 -> :sswitch_a
        0x42 -> :sswitch_a
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 14

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-super/range {p0 .. p5}, Lit/sephiroth/android/library/widget/AdapterView;->onLayout(ZIIII)V

    iput-boolean v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ae:Z

    if-eqz p1, :cond_73

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    move v0, v2

    :goto_e
    if-ge v0, v1, :cond_1a

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1a
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/p;

    iget v0, v4, Lit/sephiroth/android/library/widget/p;->e:I

    if-ne v0, v5, :cond_36

    iget-object v3, v4, Lit/sephiroth/android/library/widget/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v2

    :goto_27
    if-ge v1, v5, :cond_57

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_27

    :cond_36
    iget v5, v4, Lit/sephiroth/android/library/widget/p;->e:I

    move v3, v2

    :goto_39
    if-ge v3, v5, :cond_57

    iget-object v0, v4, Lit/sephiroth/android/library/widget/p;->d:[Ljava/util/ArrayList;

    aget-object v6, v0, v3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v1, v2

    :goto_44
    if-ge v1, v7, :cond_53

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_44

    :cond_53
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_39

    :cond_57
    iget-object v0, v4, Lit/sephiroth/android/library/widget/p;->g:Landroid/support/v4/b/o;

    if-eqz v0, :cond_73

    iget-object v0, v4, Lit/sephiroth/android/library/widget/p;->g:Landroid/support/v4/b/o;

    invoke-virtual {v0}, Landroid/support/v4/b/o;->c()I

    move-result v3

    move v1, v2

    :goto_62
    if-ge v1, v3, :cond_73

    iget-object v0, v4, Lit/sephiroth/android/library/widget/p;->g:Landroid/support/v4/b/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/o;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_62

    :cond_73
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->d()V

    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ae:Z

    sub-int v0, p4, p2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N:I

    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    const/4 v2, 0x1

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_13
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aF:I

    if-ne v0, v2, :cond_63

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v3

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v1

    sub-int v1, v0, v1

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_64

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    :goto_57
    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    add-int/2addr v3, v4

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ba:I

    if-lt v3, v4, :cond_66

    if-gt v0, v1, :cond_66

    move v0, v2

    :goto_61
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aU:Z

    :cond_63
    return-void

    :cond_64
    move v0, v1

    goto :goto_57

    :cond_66
    const/4 v0, 0x0

    goto :goto_61
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 8

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v0

    if-eq v0, p1, :cond_20

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollY()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/a/b;->a(I)V

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->t()V

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->awakenScrollBars()Z

    :cond_20
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 8

    const-wide/16 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    check-cast p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Z

    iget v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    int-to-long v0, v0

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ab:J

    iget-wide v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_62

    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ac:Z

    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget-wide v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aa:J

    iget v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Z:I

    iget v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ad:I

    :cond_2d
    :goto_2d
    iget-object v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/support/v4/b/o;

    if-eqz v0, :cond_35

    iget-object v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/support/v4/b/o;

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    :cond_35
    iget-object v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroid/support/v4/b/f;

    if-eqz v0, :cond_3d

    iget-object v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroid/support/v4/b/f;

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    :cond_3d
    iget v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5e

    iget-boolean v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Z

    if-eqz v0, :cond_5e

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5e

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    check-cast v0, Lit/sephiroth/android/library/a/a/b;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    :cond_5e
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->requestLayout()V

    return-void

    :cond_62
    iget-wide v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_2d

    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->setNextSelectedPositionInt(I)V

    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:I

    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ac:Z

    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget-wide v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aa:J

    iget v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Z:I

    iget v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ad:I

    goto :goto_2d
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 11

    const-wide/16 v8, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lit/sephiroth/android/library/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    invoke-direct {v3, v0}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget-wide v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J

    iput-wide v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget-wide v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    iput-wide v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->f:Ljava/lang/String;

    iput-object v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->f:Ljava/lang/String;

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Z

    iput-boolean v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Z

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:I

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/support/v4/b/o;

    iput-object v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/support/v4/b/o;

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroid/support/v4/b/f;

    iput-object v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroid/support/v4/b/f;

    move-object v0, v3

    :goto_4e
    return-object v0

    :cond_4f
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_bb

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    if-lez v0, :cond_bb

    move v0, v1

    :goto_5a
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedItemId()J

    move-result-wide v4

    iput-wide v4, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v6

    iput v6, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_bd

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:I

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedItemPosition()I

    move-result v0

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    iput-wide v8, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    :goto_78
    const/4 v0, 0x0

    iput-object v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->f:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v0, v4, :cond_e9

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_e9

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    if-eqz v0, :cond_e9

    :goto_8a
    iput-boolean v1, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Z

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    if-eqz v0, :cond_98

    :try_start_90
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    invoke-virtual {v0}, Landroid/support/v4/b/o;->a()Landroid/support/v4/b/o;

    move-result-object v0

    iput-object v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/support/v4/b/o;
    :try_end_98
    .catch Ljava/lang/NoSuchMethodError; {:try_start_90 .. :try_end_98} :catch_eb

    :cond_98
    :goto_98
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    if-eqz v0, :cond_f9

    new-instance v0, Landroid/support/v4/b/f;

    invoke-direct {v0}, Landroid/support/v4/b/f;-><init>()V

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    invoke-virtual {v1}, Landroid/support/v4/b/f;->b()I

    move-result v1

    :goto_a7
    if-ge v2, v1, :cond_f7

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    invoke-virtual {v4, v2}, Landroid/support/v4/b/f;->a(I)J

    move-result-wide v4

    iget-object v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    invoke-virtual {v6, v2}, Landroid/support/v4/b/f;->b(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Landroid/support/v4/b/f;->a(JLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

    :cond_bb
    move v0, v2

    goto :goto_5a

    :cond_bd
    if-eqz v0, :cond_e2

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    if-lez v0, :cond_e2

    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    if-lt v0, v4, :cond_d7

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    add-int/lit8 v0, v0, -0x1

    :cond_d7
    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    iput-wide v4, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    goto :goto_78

    :cond_e2
    iput v2, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    iput-wide v8, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    iput v2, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    goto :goto_78

    :cond_e9
    move v1, v2

    goto :goto_8a

    :catch_eb
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    new-instance v0, Landroid/support/v4/b/o;

    invoke-direct {v0}, Landroid/support/v4/b/o;-><init>()V

    iput-object v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/support/v4/b/o;

    goto :goto_98

    :cond_f7
    iput-object v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroid/support/v4/b/f;

    :cond_f9
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:I

    move-object v0, v3

    goto/16 :goto_4e
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Z

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->o()V

    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v11, 0x2

    const/4 v2, 0x1

    const/4 v10, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    move v1, v2

    :cond_18
    :goto_18
    return v1

    :cond_19
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/m;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/m;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/m;->a()V

    :cond_22
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:Z

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->u()V

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->at:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_3e0

    :cond_37
    :goto_37
    :pswitch_37
    move v1, v2

    goto :goto_18

    :pswitch_39
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    packed-switch v0, :pswitch_data_3f2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v4, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v5, v0

    invoke-direct {p0, v4, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->c(II)I

    move-result v3

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Z

    if-nez v0, :cond_3dc

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    if-eq v0, v6, :cond_111

    if-ltz v3, :cond_111

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_111

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aB:Ljava/lang/Runnable;

    if-nez v0, :cond_75

    new-instance v0, Lit/sephiroth/android/library/widget/f;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/f;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aB:Ljava/lang/Runnable;

    :cond_75
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aB:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v0, v6, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v3

    :goto_80
    if-ltz v0, :cond_90

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    :cond_90
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    iput v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    const/high16 v0, -0x8000

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    :goto_9a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_d8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_d8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    :cond_b3
    float-to-int v4, v0

    float-to-int v5, v3

    invoke-direct {p0, v4, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->c(II)I

    move-result v4

    if-eq v4, v10, :cond_b3

    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v5, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    iget v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int v7, v4, v7

    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_b3

    invoke-virtual {p0, v7, v4, v5, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ay:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-super {p0, p0}, Lit/sephiroth/android/library/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_d8

    move v1, v2

    :cond_d8
    if-eqz v1, :cond_37

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    if-nez v0, :cond_37

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aB:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_37

    :pswitch_e5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/g;->b()V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/m;

    if-eqz v0, :cond_f3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/m;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/m;->a()V

    :cond_f3
    const/4 v0, 0x5

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aT:I

    goto :goto_9a

    :cond_111
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    if-ne v0, v6, :cond_3dc

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->w()V

    const/4 v0, 0x3

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->e(I)I

    move-result v0

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    iget-object v6, v3, Lit/sephiroth/android/library/widget/g;->c:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v3, v3, Lit/sephiroth/android/library/widget/g;->b:Ljava/lang/Runnable;

    const-wide/16 v7, 0x28

    invoke-virtual {v6, v3, v7, v8}, Lit/sephiroth/android/library/widget/AbsHListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_80

    :pswitch_12e
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v10, :cond_13d

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    move v0, v1

    :cond_13d
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Z

    if-eqz v1, :cond_149

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->d()V

    :cond_149
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    packed-switch v1, :pswitch_data_3f8

    :pswitch_14e
    goto/16 :goto_37

    :pswitch_150
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->g(I)Z

    goto/16 :goto_37

    :pswitch_155
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->h(I)V

    goto/16 :goto_37

    :pswitch_15a
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    packed-switch v0, :pswitch_data_408

    :cond_15f
    :goto_15f
    :pswitch_15f
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/z;

    if-eqz v0, :cond_170

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/z;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/z;->b()V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/z;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/z;->b()V

    :cond_170
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_17e

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aA:Lit/sephiroth/android/library/widget/e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_17e
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->v()V

    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    goto/16 :goto_37

    :pswitch_185
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_23c

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_23c

    move v0, v2

    :goto_1ab
    if-eqz v4, :cond_257

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_257

    if-eqz v0, :cond_257

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    if-eqz v0, :cond_1bc

    invoke-virtual {v4, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_1bc
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aD:Lit/sephiroth/android/library/widget/l;

    if-nez v0, :cond_1c7

    new-instance v0, Lit/sephiroth/android/library/widget/l;

    invoke-direct {v0, p0, v1}, Lit/sephiroth/android/library/widget/l;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;B)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aD:Lit/sephiroth/android/library/widget/l;

    :cond_1c7
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aD:Lit/sephiroth/android/library/widget/l;

    iput v3, v5, Lit/sephiroth/android/library/widget/l;->a:I

    invoke-virtual {v5}, Lit/sephiroth/android/library/widget/l;->a()V

    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    if-eqz v0, :cond_1d8

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    if-ne v0, v2, :cond_248

    :cond_1d8
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHandler()Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_1e7

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    if-nez v0, :cond_23f

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aB:Ljava/lang/Runnable;

    :goto_1e4
    invoke-virtual {v6, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1e7
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Z

    if-nez v0, :cond_242

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_242

    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->d()V

    invoke-virtual {v4, v2}, Landroid/view/View;->setPressed(Z)V

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    invoke-virtual {p0, v0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->a(ILandroid/view/View;)V

    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_21f

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_21f

    instance-of v1, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v1, :cond_21f

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :cond_21f
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aE:Ljava/lang/Runnable;

    if-eqz v0, :cond_228

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aE:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_228
    new-instance v0, Lit/sephiroth/android/library/widget/a;

    invoke-direct {v0, p0, v4, v5}, Lit/sephiroth/android/library/widget/a;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Lit/sephiroth/android/library/widget/l;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aE:Ljava/lang/Runnable;

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aE:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {p0, v0, v3, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_239
    move v1, v2

    goto/16 :goto_18

    :cond_23c
    move v0, v1

    goto/16 :goto_1ab

    :cond_23f
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aA:Lit/sephiroth/android/library/widget/e;

    goto :goto_1e4

    :cond_242
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->s()V

    goto :goto_239

    :cond_248
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Z

    if-nez v0, :cond_257

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_257

    invoke-virtual {v5}, Lit/sephiroth/android/library/widget/l;->run()V

    :cond_257
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->s()V

    goto/16 :goto_15f

    :pswitch_25e
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2fe

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v6

    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    iget v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    if-nez v7, :cond_29e

    if-lt v3, v5, :cond_29e

    iget v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    add-int/2addr v7, v0

    iget v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    if-ge v7, v8, :cond_29e

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v6

    if-gt v4, v7, :cond_29e

    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(I)V

    goto/16 :goto_15f

    :cond_29e
    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->at:Landroid/view/VelocityTracker;

    const/16 v8, 0x3e8

    iget v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aM:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v7

    iget v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aN:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aL:I

    if-le v8, v9, :cond_2e5

    iget v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    if-nez v8, :cond_2c3

    iget v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:I

    sub-int/2addr v5, v8

    if-eq v3, v5, :cond_2e5

    :cond_2c3
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    add-int/2addr v0, v3

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:I

    if-ne v0, v3, :cond_2cf

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:I

    add-int/2addr v0, v6

    if-eq v4, v0, :cond_2e5

    :cond_2cf
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    if-nez v0, :cond_2da

    new-instance v0, Lit/sephiroth/android/library/widget/g;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/g;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    :cond_2da
    invoke-virtual {p0, v11}, Lit/sephiroth/android/library/widget/AbsHListView;->a(I)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    neg-int v3, v7

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/g;->a(I)V

    goto/16 :goto_15f

    :cond_2e5
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(I)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    if-eqz v0, :cond_2f3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/g;->b()V

    :cond_2f3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/m;

    if-eqz v0, :cond_15f

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/m;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/m;->a()V

    goto/16 :goto_15f

    :cond_2fe
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(I)V

    goto/16 :goto_15f

    :pswitch_305
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    if-nez v0, :cond_310

    new-instance v0, Lit/sephiroth/android/library/widget/g;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/g;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    :cond_310
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->at:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aM:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v11}, Lit/sephiroth/android/library/widget/AbsHListView;->a(I)V

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aL:I

    if-le v3, v4, :cond_334

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    neg-int v0, v0

    invoke-virtual {v3, v0}, Lit/sephiroth/android/library/widget/g;->b(I)V

    goto/16 :goto_15f

    :cond_334
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/g;->a()V

    goto/16 :goto_15f

    :pswitch_33b
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    packed-switch v0, :pswitch_data_418

    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_353

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_353
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->x()V

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_361

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aA:Lit/sephiroth/android/library/widget/e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_361
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->v()V

    :goto_364
    :pswitch_364
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/z;

    if-eqz v0, :cond_372

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/z;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/z;->b()V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/z;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/z;->b()V

    :cond_372
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    goto/16 :goto_37

    :pswitch_376
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    if-nez v0, :cond_381

    new-instance v0, Lit/sephiroth/android/library/widget/g;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/g;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    :cond_381
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/g;->a()V

    goto :goto_364

    :pswitch_387
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/view/MotionEvent;)V

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E:I

    invoke-direct {p0, v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->c(II)I

    move-result v1

    if-ltz v1, :cond_3a4

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    :cond_3a4
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    goto/16 :goto_37

    :pswitch_3a8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E:I

    invoke-direct {p0, v4, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->c(II)I

    move-result v0

    if-ltz v0, :cond_3d8

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    :cond_3d8
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    goto/16 :goto_37

    :cond_3dc
    move v0, v3

    goto/16 :goto_80

    nop

    :pswitch_data_3e0
    .packed-switch 0x0
        :pswitch_39
        :pswitch_15a
        :pswitch_12e
        :pswitch_33b
        :pswitch_37
        :pswitch_3a8
        :pswitch_387
    .end packed-switch

    :pswitch_data_3f2
    .packed-switch 0x6
        :pswitch_e5
    .end packed-switch

    :pswitch_data_3f8
    .packed-switch 0x0
        :pswitch_150
        :pswitch_150
        :pswitch_150
        :pswitch_155
        :pswitch_14e
        :pswitch_155
    .end packed-switch

    :pswitch_data_408
    .packed-switch 0x0
        :pswitch_185
        :pswitch_185
        :pswitch_185
        :pswitch_25e
        :pswitch_15f
        :pswitch_305
    .end packed-switch

    :pswitch_data_418
    .packed-switch 0x5
        :pswitch_376
        :pswitch_364
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .registers 4

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->h()V

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v0

    if-lez v0, :cond_14

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_14

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->d()V

    :cond_14
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->s()V

    :cond_17
    :goto_17
    return-void

    :cond_18
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_20

    const/4 v1, 0x6

    if-ne v0, v1, :cond_17

    :cond_20
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/g;->b()V

    :cond_29
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/m;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/m;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/m;->a()V

    :cond_32
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/a/b;->a(I)V

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->z()V

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    goto :goto_17
.end method

.method public onWindowFocusChanged(Z)V
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_42

    move v0, v1

    :goto_c
    if-nez p1, :cond_44

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setChildrenDrawingCacheEnabled(Z)V

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    if-eqz v3, :cond_39

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/g;->b()V

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/m;

    if-eqz v3, :cond_28

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:Lit/sephiroth/android/library/widget/m;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/m;->a()V

    :cond_28
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v3

    if-eqz v3, :cond_39

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v3, v1}, Lit/sephiroth/android/library/a/b;->a(I)V

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->z()V

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    :cond_39
    if-ne v0, v2, :cond_3f

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->al:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    :cond_3f
    :goto_3f
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->az:I

    return-void

    :cond_42
    move v0, v2

    goto :goto_c

    :cond_44
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->az:I

    if-eq v0, v3, :cond_3f

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->az:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3f

    if-ne v0, v2, :cond_53

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->y()Z

    goto :goto_3f

    :cond_53
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->h()V

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->d()V

    goto :goto_3f
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/16 v4, 0xc8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lit/sephiroth/android/library/widget/AdapterView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_b

    :goto_a
    return v0

    :cond_b
    sparse-switch p1, :sswitch_data_56

    move v0, v1

    goto :goto_a

    :sswitch_10
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_34

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2, v4, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V

    goto :goto_a

    :cond_34
    move v0, v1

    goto :goto_a

    :sswitch_36
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_53

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    if-lez v2, :cond_53

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    neg-int v2, v2

    invoke-virtual {p0, v2, v4, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V

    goto :goto_a

    :cond_53
    move v0, v1

    goto :goto_a

    nop

    :sswitch_data_56
    .sparse-switch
        0x1000 -> :sswitch_10
        0x2000 -> :sswitch_36
    .end sparse-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->v()V

    :cond_5
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .registers 2

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->as:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ae:Z

    if-nez v0, :cond_b

    invoke-super {p0}, Lit/sephiroth/android/library/widget/AdapterView;->requestLayout()V

    :cond_b
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .registers 5

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_19

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getLastVisiblePosition()I

    move-result v1

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aY:I

    if-ne v2, v0, :cond_15

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aZ:I

    if-ne v2, v1, :cond_15

    :goto_14
    return-void

    :cond_15
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aY:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aZ:I

    :cond_19
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->sendAccessibilityEvent(I)V

    goto :goto_14
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 3

    if-eqz p1, :cond_1d

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Z

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    if-nez v0, :cond_1d

    new-instance v0, Landroid/support/v4/b/f;

    invoke-direct {v0}, Landroid/support/v4/b/f;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    :cond_1d
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    invoke-virtual {v0}, Landroid/support/v4/b/o;->d()V

    :cond_26
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    invoke-virtual {v0}, Landroid/support/v4/b/f;->c()V

    :cond_2f
    return-void
.end method

.method public setCacheColorHint(I)V
    .registers 10

    const/4 v1, 0x0

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aG:I

    if-eq p1, v0, :cond_66

    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aG:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v2

    move v0, v1

    :goto_c
    if-ge v0, v2, :cond_18

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_18
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/p;

    iget v0, v4, Lit/sephiroth/android/library/widget/p;->e:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_35

    iget-object v3, v4, Lit/sephiroth/android/library/widget/p;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v1

    :goto_26
    if-ge v2, v5, :cond_56

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_26

    :cond_35
    iget v5, v4, Lit/sephiroth/android/library/widget/p;->e:I

    move v3, v1

    :goto_38
    if-ge v3, v5, :cond_56

    iget-object v0, v4, Lit/sephiroth/android/library/widget/p;->d:[Ljava/util/ArrayList;

    aget-object v6, v0, v3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v1

    :goto_43
    if-ge v2, v7, :cond_52

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_43

    :cond_52
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_38

    :cond_56
    iget-object v2, v4, Lit/sephiroth/android/library/widget/p;->c:[Landroid/view/View;

    array-length v3, v2

    move v0, v1

    :goto_5a
    if-ge v0, v3, :cond_66

    aget-object v1, v2, v0

    if-eqz v1, :cond_63

    invoke-virtual {v1, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    :cond_66
    return-void
.end method

.method public setChoiceMode(I)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/16 v1, 0xb

    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1a

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_17

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    :cond_1a
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-eqz v0, :cond_50

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    if-nez v0, :cond_29

    new-instance v0, Landroid/support/v4/b/o;

    invoke-direct {v0}, Landroid/support/v4/b/o;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    :cond_29
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    if-nez v0, :cond_40

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_40

    new-instance v0, Landroid/support/v4/b/f;

    invoke-direct {v0}, Landroid/support/v4/b/f;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    :cond_40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_50

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_50

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->a()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setLongClickable(Z)V

    :cond_50
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .registers 2

    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l:Z

    return-void
.end method

.method public setFriction(F)V
    .registers 4

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    if-nez v0, :cond_b

    new-instance v0, Lit/sephiroth/android/library/widget/g;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/g;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    :cond_b
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/g;->a(Lit/sephiroth/android/library/widget/g;)Lit/sephiroth/android/library/widget/ao;

    move-result-object v0

    iget-object v1, v0, Lit/sephiroth/android/library/widget/ao;->b:Lit/sephiroth/android/library/widget/ap;

    iput p1, v1, Lit/sephiroth/android/library/widget/ap;->d:F

    iget-object v0, v0, Lit/sephiroth/android/library/widget/ao;->c:Lit/sephiroth/android/library/widget/ap;

    iput p1, v0, Lit/sephiroth/android/library/widget/ap;->d:F

    return-void
.end method

.method public setItemChecked(IZ)V
    .registers 10

    const/16 v4, 0xb

    const/4 v3, 0x3

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-nez v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_3b

    if-eqz p2, :cond_3b

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-ne v0, v3, :cond_3b

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    if-nez v0, :cond_3b

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    check-cast v0, Lit/sephiroth/android/library/a/a/b;

    iget-object v0, v0, Lit/sephiroth/android/library/a/a/b;->a:Lit/sephiroth/android/library/a/a/a;

    if-eqz v0, :cond_2f

    move v0, v6

    :goto_25
    if-nez v0, :cond_31

    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    move v0, v1

    goto :goto_25

    :cond_31
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    check-cast v0, Lit/sephiroth/android/library/a/a/b;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    :cond_3b
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_48

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_c4

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-ne v0, v3, :cond_c4

    :cond_48
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/b/o;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/b/o;->b(ILjava/lang/Object;)V

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    if-eqz v1, :cond_7e

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_7e

    if-eqz p2, :cond_b1

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/b/f;->a(JLjava/lang/Object;)V

    :cond_7e
    :goto_7e
    if-eq v0, p2, :cond_88

    if-eqz p2, :cond_bd

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    :cond_88
    :goto_88
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    check-cast v0, Lit/sephiroth/android/library/a/a/b;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/ActionMode;

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lit/sephiroth/android/library/a/a/b;->a(Landroid/view/ActionMode;IJZ)V

    :cond_9f
    :goto_9f
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ae:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->as:Z

    if-nez v0, :cond_9

    iput-boolean v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Z

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->o()V

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->requestLayout()V

    goto/16 :goto_9

    :cond_b1
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/b/f;->a(J)V

    goto :goto_7e

    :cond_bd
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    goto :goto_88

    :cond_c4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    if-eqz v0, :cond_118

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_118

    move v2, v6

    :goto_d1
    if-nez p2, :cond_ed

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:I

    if-eqz v0, :cond_11a

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    if-eqz v0, :cond_11a

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroid/support/v4/b/o;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_eb
    if-eqz v0, :cond_f9

    :cond_ed
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    invoke-virtual {v0}, Landroid/support/v4/b/o;->d()V

    if-eqz v2, :cond_f9

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    invoke-virtual {v0}, Landroid/support/v4/b/f;->c()V

    :cond_f9
    if-eqz p2, :cond_11c

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/b/o;->b(ILjava/lang/Object;)V

    if-eqz v2, :cond_115

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/b/f;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/b/f;->a(JLjava/lang/Object;)V

    :cond_115
    iput v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    goto :goto_9f

    :cond_118
    move v2, v1

    goto :goto_d1

    :cond_11a
    move v0, v1

    goto :goto_eb

    :cond_11c
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    invoke-virtual {v0}, Landroid/support/v4/b/o;->c()I

    move-result v0

    if-eqz v0, :cond_132

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:Landroid/support/v4/b/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/o;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9f

    :cond_132
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:I

    goto/16 :goto_9f
.end method

.method public setMultiChoiceModeListener(Lit/sephiroth/android/library/a/a/a;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_18

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    if-nez v0, :cond_11

    new-instance v0, Lit/sephiroth/android/library/a/a/b;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/a/a/b;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    :cond_11
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    check-cast v0, Lit/sephiroth/android/library/a/a/b;

    iput-object p1, v0, Lit/sephiroth/android/library/a/a/b;->a:Lit/sephiroth/android/library/a/a/a;

    :goto_17
    return-void

    :cond_18
    const-string v0, "AbsListView"

    const-string v1, "setMultiChoiceModeListener not supported for this version of Android"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public setOnScrollListener(Lit/sephiroth/android/library/widget/k;)V
    .registers 2

    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/k;

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->b()V

    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .registers 3

    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aV:I

    iput p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aW:I

    return-void
.end method

.method public setOverScrollMode(I)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1e

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/z;

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lit/sephiroth/android/library/widget/z;

    invoke-direct {v1, v0}, Lit/sephiroth/android/library/widget/z;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/z;

    new-instance v1, Lit/sephiroth/android/library/widget/z;

    invoke-direct {v1, v0}, Lit/sephiroth/android/library/widget/z;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/z;

    :cond_1a
    :goto_1a
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->setOverScrollMode(I)V

    return-void

    :cond_1e
    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/z;

    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/z;

    goto :goto_1a
.end method

.method public setRecyclerListener(Lit/sephiroth/android/library/widget/q;)V
    .registers 3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Lit/sephiroth/android/library/widget/p;

    iput-object p1, v0, Lit/sephiroth/android/library/widget/p;->a:Lit/sephiroth/android/library/widget/q;

    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->w:Landroid/view/View;

    iput-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->x:Landroid/view/View;

    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->L:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->x()V

    :cond_9
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->L:Z

    return-void
.end method

.method public abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .registers 3

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->s()V

    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aw:Z

    return-void
.end method

.method public setStackFromRight(Z)V
    .registers 3

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->K:Z

    if-eq v0, p1, :cond_15

    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->K:Z

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_15

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->c()V

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->requestLayout()V

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    :cond_15
    return-void
.end method

.method public setTranscriptMode(I)V
    .registers 2

    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aF:I

    return-void
.end method

.method public setVelocityScale(F)V
    .registers 2

    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aN:F

    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_2b

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Landroid/widget/ListAdapter;

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ah:Lit/sephiroth/android/library/widget/w;

    if-eqz v4, :cond_17

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ah:Lit/sephiroth/android/library/widget/w;

    invoke-interface {v0}, Lit/sephiroth/android/library/widget/w;->a()Z

    move-result v0

    :cond_17
    if-nez v0, :cond_2b

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ay:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    :cond_2b
    return v0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_a

    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
