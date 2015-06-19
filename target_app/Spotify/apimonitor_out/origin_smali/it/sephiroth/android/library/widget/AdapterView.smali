.class public abstract Lit/sephiroth/android/library/widget/AdapterView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# instance fields
.field protected V:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field protected W:I

.field protected Z:I

.field private a:I

.field protected aa:J

.field protected ab:J

.field protected ac:Z

.field ad:I

.field protected ae:Z

.field af:Lit/sephiroth/android/library/widget/q;

.field ag:Lit/sephiroth/android/library/widget/o;

.field ah:Lit/sephiroth/android/library/widget/p;

.field public ai:Z

.field protected aj:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field protected ak:J

.field protected al:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field protected am:J

.field protected an:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field protected ao:I

.field ap:Landroid/view/accessibility/AccessibilityManager;

.field protected aq:I

.field protected ar:J

.field protected as:Z

.field private b:Landroid/view/View;

.field private c:Z

.field private d:Z

.field private e:Lit/sephiroth/android/library/widget/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lit/sephiroth/android/library/widget/AdapterView",
            "<TT;>.it/sephiroth/android/library/widget/r;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->V:I

    iput-wide v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->aa:J

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ac:Z

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ae:Z

    iput v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->aj:I

    iput-wide v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->ak:J

    iput v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->al:I

    iput-wide v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->am:J

    iput v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->aq:I

    iput-wide v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->ar:J

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->as:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->V:I

    iput-wide v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->aa:J

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ac:Z

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ae:Z

    iput v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->aj:I

    iput-wide v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->ak:J

    iput v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->al:I

    iput-wide v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->am:J

    iput v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->aq:I

    iput-wide v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->ar:J

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->as:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2d

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_2d

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->setImportantForAccessibility(I)V

    :cond_2d
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ap:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/AdapterView;)Landroid/os/Parcelable;
    .registers 2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->af:Lit/sephiroth/android/library/widget/q;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->aj:I

    if-ltz v0, :cond_16

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->g()Landroid/view/View;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->af:Lit/sephiroth/android/library/widget/q;

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->q()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/Adapter;->getItemId(I)J

    goto :goto_4

    :cond_16
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->af:Lit/sephiroth/android/library/widget/q;

    goto :goto_4
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/AdapterView;Landroid/os/Parcelable;)V
    .registers 2

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ap:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->aj:I

    if-ltz v0, :cond_8

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->sendAccessibilityEvent(I)V

    goto :goto_8
.end method

.method static synthetic b(Lit/sephiroth/android/library/widget/AdapterView;)V
    .registers 1

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AdapterView;->a()V

    return-void
.end method

.method static synthetic c(Lit/sephiroth/android/library/widget/AdapterView;)V
    .registers 1

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AdapterView;->b()V

    return-void
.end method

.method private c()Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->q()Landroid/widget/Adapter;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1a

    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->V:I

    if-gtz v2, :cond_19

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->v()I

    move-result v2

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_1a

    :cond_19
    const/4 v0, 0x1

    :cond_1a
    return v0
.end method


# virtual methods
.method protected a(IZ)I
    .registers 3

    return p1
.end method

.method public final a(Landroid/view/View;)I
    .registers 6

    const/4 v1, -0x1

    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_a} :catch_f

    move-result v2

    if-nez v2, :cond_12

    move-object p1, v0

    goto :goto_1

    :catch_f
    move-exception v0

    move v0, v1

    :goto_11
    return v0

    :cond_12
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v2, :cond_2a

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->V:I

    add-int/2addr v0, v1

    goto :goto_11

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_2a
    move v0, v1

    goto :goto_11
.end method

.method public a(Landroid/view/View;IJ)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->ag:Lit/sephiroth/android/library/widget/o;

    if-eqz v2, :cond_11

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AdapterView;->playSoundEffect(I)V

    if-eqz p1, :cond_e

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_e
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->ag:Lit/sephiroth/android/library/widget/o;

    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method public addView(Landroid/view/View;)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->an:I

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->g()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public abstract f(I)V
.end method

.method public final g(I)J
    .registers 4

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->q()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_8

    if-gez p1, :cond_b

    :cond_8
    const-wide/high16 v0, -0x8000

    :goto_a
    return-wide v0

    :cond_b
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_a
.end method

.method public abstract g()Landroid/view/View;
.end method

.method protected final h(I)V
    .registers 4

    iput p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->al:I

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->g(I)J

    move-result-wide v0

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->am:J

    return-void
.end method

.method protected final i(I)V
    .registers 4

    iput p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->aj:I

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->g(I)J

    move-result-wide v0

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ak:J

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ac:Z

    if-eqz v0, :cond_18

    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ad:I

    if-nez v0, :cond_18

    if-ltz p1, :cond_18

    iput p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->Z:I

    iget-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ak:J

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->aa:J

    :cond_18
    return-void
.end method

.method o()V
    .registers 9

    const-wide/high16 v6, -0x8000

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v4, p0, Lit/sephiroth/android/library/widget/AdapterView;->an:I

    if-lez v4, :cond_53

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ac:Z

    if-eqz v0, :cond_51

    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->ac:Z

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->y()I

    move-result v0

    if-ltz v0, :cond_51

    invoke-virtual {p0, v0, v2}, Lit/sephiroth/android/library/widget/AdapterView;->a(IZ)I

    move-result v3

    if-ne v3, v0, :cond_51

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->i(I)V

    move v3, v2

    :goto_1f
    if-nez v3, :cond_4d

    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->aj:I

    if-lt v0, v4, :cond_27

    add-int/lit8 v0, v4, -0x1

    :cond_27
    if-gez v0, :cond_2a

    move v0, v1

    :cond_2a
    invoke-virtual {p0, v0, v2}, Lit/sephiroth/android/library/widget/AdapterView;->a(IZ)I

    move-result v4

    if-gez v4, :cond_4f

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/widget/AdapterView;->a(IZ)I

    move-result v0

    :goto_34
    if-ltz v0, :cond_4d

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->i(I)V

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->x()V

    move v0, v2

    :goto_3d
    if-nez v0, :cond_4c

    iput v5, p0, Lit/sephiroth/android/library/widget/AdapterView;->al:I

    iput-wide v6, p0, Lit/sephiroth/android/library/widget/AdapterView;->am:J

    iput v5, p0, Lit/sephiroth/android/library/widget/AdapterView;->aj:I

    iput-wide v6, p0, Lit/sephiroth/android/library/widget/AdapterView;->ak:J

    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->ac:Z

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->x()V

    :cond_4c
    return-void

    :cond_4d
    move v0, v3

    goto :goto_3d

    :cond_4f
    move v0, v4

    goto :goto_34

    :cond_51
    move v3, v1

    goto :goto_1f

    :cond_53
    move v0, v1

    goto :goto_3d
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->e:Lit/sephiroth/android/library/widget/r;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lit/sephiroth/android/library/widget/AdapterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AdapterView;->c()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->g()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    :cond_20
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->aj:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->V:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->v()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->an:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lit/sephiroth/android/library/widget/AdapterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AdapterView;->c()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->g()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    :cond_20
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getWidth()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public abstract q()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final r()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->aj:I

    return v0
.end method

.method public removeAllViews()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s()J
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ak:J

    return-wide v0
.end method

.method public setFocusable(Z)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->q()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1d

    :cond_e
    move v0, v2

    :goto_f
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->c:Z

    if-nez p1, :cond_15

    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->d:Z

    :cond_15
    if-eqz p1, :cond_1f

    if-nez v0, :cond_1f

    :goto_19
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    return-void

    :cond_1d
    move v0, v1

    goto :goto_f

    :cond_1f
    move v2, v1

    goto :goto_19
.end method

.method public setFocusableInTouchMode(Z)V
    .registers 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->q()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1d

    :cond_e
    move v0, v2

    :goto_f
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->d:Z

    if-eqz p1, :cond_15

    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->c:Z

    :cond_15
    if-eqz p1, :cond_1f

    if-nez v0, :cond_1f

    :goto_19
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    return-void

    :cond_1d
    move v0, v1

    goto :goto_f

    :cond_1f
    move v2, v1

    goto :goto_19
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final t()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->an:I

    return v0
.end method

.method public final u()I
    .registers 2

    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->V:I

    return v0
.end method

.method public final v()I
    .registers 3

    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->V:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected final w()V
    .registers 7

    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->q()Landroid/widget/Adapter;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_5b

    :cond_10
    move v0, v2

    :goto_11
    if-nez v0, :cond_5d

    move v3, v2

    :goto_14
    if-eqz v3, :cond_5f

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->d:Z

    if-eqz v0, :cond_5f

    move v0, v2

    :goto_1b
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    if-eqz v3, :cond_61

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->c:Z

    if-eqz v0, :cond_61

    move v0, v2

    :goto_25
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:Landroid/view/View;

    if-eqz v0, :cond_5a

    if-eqz v4, :cond_34

    invoke-interface {v4}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_63

    :cond_34
    :goto_34
    if-eqz v2, :cond_69

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:Landroid/view/View;

    if-eqz v0, :cond_65

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/AdapterView;->setVisibility(I)V

    :goto_42
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ai:Z

    if-eqz v0, :cond_5a

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lit/sephiroth/android/library/widget/AdapterView;->onLayout(ZIIII)V

    :cond_5a
    :goto_5a
    return-void

    :cond_5b
    move v0, v1

    goto :goto_11

    :cond_5d
    move v3, v1

    goto :goto_14

    :cond_5f
    move v0, v1

    goto :goto_1b

    :cond_61
    move v0, v1

    goto :goto_25

    :cond_63
    move v2, v1

    goto :goto_34

    :cond_65
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AdapterView;->setVisibility(I)V

    goto :goto_42

    :cond_69
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:Landroid/view/View;

    if-eqz v0, :cond_72

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_72
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AdapterView;->setVisibility(I)V

    goto :goto_5a
.end method

.method protected final x()V
    .registers 5

    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->al:I

    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->aq:I

    if-ne v0, v1, :cond_e

    iget-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->am:J

    iget-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->ar:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3b

    :cond_e
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->af:Lit/sephiroth/android/library/widget/q;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ap:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_1a
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ae:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->as:Z

    if-eqz v0, :cond_3c

    :cond_22
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->e:Lit/sephiroth/android/library/widget/r;

    if-nez v0, :cond_2e

    new-instance v0, Lit/sephiroth/android/library/widget/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lit/sephiroth/android/library/widget/r;-><init>(Lit/sephiroth/android/library/widget/AdapterView;B)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->e:Lit/sephiroth/android/library/widget/r;

    :cond_2e
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->e:Lit/sephiroth/android/library/widget/r;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    :cond_33
    :goto_33
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->al:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->aq:I

    iget-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->am:J

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ar:J

    :cond_3b
    return-void

    :cond_3c
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AdapterView;->a()V

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AdapterView;->b()V

    goto :goto_33
.end method

.method final y()I
    .registers 16

    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v1, 0x0

    iget v9, p0, Lit/sephiroth/android/library/widget/AdapterView;->an:I

    if-nez v9, :cond_9

    move v5, v6

    :goto_8
    return v5

    :cond_9
    iget-wide v10, p0, Lit/sephiroth/android/library/widget/AdapterView;->aa:J

    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->Z:I

    const-wide/high16 v3, -0x8000

    cmp-long v3, v10, v3

    if-nez v3, :cond_15

    move v5, v6

    goto :goto_8

    :cond_15
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v3, v9, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v7, 0x64

    add-long v12, v3, v7

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->q()Landroid/widget/Adapter;

    move-result-object v14

    if-nez v14, :cond_69

    move v5, v6

    goto :goto_8

    :cond_2f
    add-int/lit8 v7, v9, -0x1

    if-ne v3, v7, :cond_57

    move v8, v2

    :goto_34
    if-nez v4, :cond_59

    move v7, v2

    :goto_37
    if-eqz v8, :cond_3b

    if-nez v7, :cond_67

    :cond_3b
    if-nez v7, :cond_41

    if-eqz v0, :cond_5b

    if-nez v8, :cond_5b

    :cond_41
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v5, v0

    move v0, v1

    :cond_46
    :goto_46
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    cmp-long v7, v7, v12

    if-gtz v7, :cond_67

    invoke-interface {v14, v5}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v7

    cmp-long v7, v7, v10

    if-nez v7, :cond_2f

    goto :goto_8

    :cond_57
    move v8, v1

    goto :goto_34

    :cond_59
    move v7, v1

    goto :goto_37

    :cond_5b
    if-nez v8, :cond_61

    if-nez v0, :cond_46

    if-nez v7, :cond_46

    :cond_61
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    move v5, v0

    move v0, v2

    goto :goto_46

    :cond_67
    move v5, v6

    goto :goto_8

    :cond_69
    move v3, v0

    move v4, v0

    move v5, v0

    move v0, v1

    goto :goto_46
.end method

.method public final z()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2e

    iput-boolean v4, p0, Lit/sephiroth/android/library/widget/AdapterView;->ac:Z

    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    int-to-long v0, v0

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->ab:J

    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->al:I

    if-ltz v0, :cond_2f

    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->al:I

    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->V:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-wide v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->ak:J

    iput-wide v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->aa:J

    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->aj:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->Z:I

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->W:I

    :cond_2c
    iput v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->ad:I

    :cond_2e
    :goto_2e
    return-void

    :cond_2f
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->q()Landroid/widget/Adapter;

    move-result-object v1

    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->V:I

    if-ltz v2, :cond_5a

    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->V:I

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_5a

    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->V:I

    invoke-interface {v1, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    iput-wide v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->aa:J

    :goto_4b
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->V:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->Z:I

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->W:I

    :cond_57
    iput v4, p0, Lit/sephiroth/android/library/widget/AdapterView;->ad:I

    goto :goto_2e

    :cond_5a
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->aa:J

    goto :goto_4b
.end method
