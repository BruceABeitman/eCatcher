.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# static fields
.field private static final a:[I

.field private static final aj:Landroid/support/v4/view/bq;

.field private static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v4/view/bi;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Landroid/view/animation/Interpolator;


# instance fields
.field private A:Z

.field private B:I

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:I

.field private G:I

.field private H:I

.field private I:F

.field private J:F

.field private K:F

.field private L:F

.field private M:I

.field private N:Landroid/view/VelocityTracker;

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:Z

.field private T:Landroid/support/v4/widget/e;

.field private U:Landroid/support/v4/widget/e;

.field private V:Z

.field private W:Z

.field private Z:Z

.field private aa:I

.field private ab:Z

.field private ac:Landroid/support/v4/view/bm;

.field private ad:Landroid/support/v4/view/bm;

.field private ae:Landroid/support/v4/view/bl;

.field private af:Landroid/support/v4/view/bn;

.field private ag:Ljava/lang/reflect/Method;

.field private ah:I

.field private ai:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final ak:Ljava/lang/Runnable;

.field private al:I

.field private b:I

.field private c:I

.field private d:F

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/view/bi;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/support/v4/view/bi;

.field private final i:Landroid/graphics/Rect;

.field private j:Landroid/support/v4/view/ae;

.field private k:I

.field private l:I

.field private m:Landroid/os/Parcelable;

.field private n:Ljava/lang/ClassLoader;

.field private o:Landroid/widget/Scroller;

.field private p:Landroid/support/v4/view/bo;

.field private q:I

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:I

.field private t:I

.field private u:F

.field private v:F

.field private w:I

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/view/ViewPager;->a:[I

    new-instance v0, Landroid/support/v4/view/be;

    invoke-direct {v0}, Landroid/support/v4/view/be;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->e:Ljava/util/Comparator;

    new-instance v0, Landroid/support/v4/view/bf;

    invoke-direct {v0}, Landroid/support/v4/view/bf;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->f:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/support/v4/view/bq;

    invoke-direct {v0}, Landroid/support/v4/view/bq;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->aj:Landroid/support/v4/view/bq;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v4/view/bi;

    invoke-direct {v0}, Landroid/support/v4/view/bi;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/bi;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->i:Landroid/graphics/Rect;

    iput v2, p0, Landroid/support/v4/view/ViewPager;->l:I

    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/os/Parcelable;

    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->n:Ljava/lang/ClassLoader;

    const v0, -0x800001

    iput v0, p0, Landroid/support/v4/view/ViewPager;->u:F

    const v0, 0x7f7fffff

    iput v0, p0, Landroid/support/v4/view/ViewPager;->v:F

    iput v1, p0, Landroid/support/v4/view/ViewPager;->B:I

    iput v2, p0, Landroid/support/v4/view/ViewPager;->M:I

    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->V:Z

    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->W:Z

    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->ab:Z

    new-instance v0, Landroid/support/v4/view/bg;

    invoke-direct {v0, p0}, Landroid/support/v4/view/bg;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ak:Ljava/lang/Runnable;

    iput v3, p0, Landroid/support/v4/view/ViewPager;->al:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v4/view/bi;

    invoke-direct {v0}, Landroid/support/v4/view/bi;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/bi;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->i:Landroid/graphics/Rect;

    iput v2, p0, Landroid/support/v4/view/ViewPager;->l:I

    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/os/Parcelable;

    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->n:Ljava/lang/ClassLoader;

    const v0, -0x800001

    iput v0, p0, Landroid/support/v4/view/ViewPager;->u:F

    const v0, 0x7f7fffff

    iput v0, p0, Landroid/support/v4/view/ViewPager;->v:F

    iput v1, p0, Landroid/support/v4/view/ViewPager;->B:I

    iput v2, p0, Landroid/support/v4/view/ViewPager;->M:I

    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->V:Z

    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->W:Z

    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->ab:Z

    new-instance v0, Landroid/support/v4/view/bg;

    invoke-direct {v0, p0}, Landroid/support/v4/view/bg;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ak:Ljava/lang/Runnable;

    iput v3, p0, Landroid/support/v4/view/ViewPager;->al:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->d()V

    return-void
.end method

.method private static a(F)F
    .registers 5

    const/high16 v0, 0x3f00

    sub-float v0, p0, v0

    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private a(IFII)I
    .registers 8

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->Q:I

    if-le v0, v1, :cond_43

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->O:I

    if-le v0, v1, :cond_43

    if-lez p3, :cond_40

    :goto_12
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3f

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bi;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/bi;

    iget v0, v0, Landroid/support/v4/view/bi;->b:I

    iget v1, v1, Landroid/support/v4/view/bi;->b:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_3f
    return p1

    :cond_40
    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    :cond_43
    iget v0, p0, Landroid/support/v4/view/ViewPager;->k:I

    if-lt p1, v0, :cond_4f

    const v0, 0x3ecccccd

    :goto_4a
    int-to-float v1, p1

    add-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int p1, v0

    goto :goto_12

    :cond_4f
    const v0, 0x3f19999a

    goto :goto_4a
.end method

.method private a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_5e

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    :goto_8
    if-nez p2, :cond_f

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    move-object v0, v1

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2b
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_5c

    if-eq v0, p0, :cond_5c

    check-cast v0, Landroid/view/ViewGroup;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2b

    :cond_5c
    move-object v0, v1

    goto :goto_e

    :cond_5e
    move-object v1, p1

    goto :goto_8
.end method

.method private a(Landroid/view/View;)Landroid/support/v4/view/bi;
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bi;

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    iget-object v3, v0, Landroid/support/v4/view/bi;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/ae;->a(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :goto_1c
    return-object v0

    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_21
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private a(I)V
    .registers 21

    const/4 v3, 0x0

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/view/ViewPager;->k:I

    move/from16 v0, p1

    if-eq v4, v0, :cond_359

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->k:I

    move/from16 v0, p1

    if-ge v2, v0, :cond_30

    const/16 v2, 0x42

    :goto_14
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/view/ViewPager;->k:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v4/view/ViewPager;->b(I)Landroid/support/v4/view/bi;

    move-result-object v3

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/ViewPager;->k:I

    move-object v4, v3

    move v3, v2

    :goto_26
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    if-nez v2, :cond_33

    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->f()V

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    const/16 v2, 0x11

    goto :goto_14

    :cond_33
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager;->A:Z

    if-eqz v2, :cond_3d

    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->f()V

    goto :goto_2f

    :cond_3d
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    invoke-virtual {v2}, Landroid/support/v4/view/ae;->a()V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->B:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/view/ViewPager;->k:I

    sub-int/2addr v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/view/ViewPager;->k:I

    add-int/2addr v2, v6

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->b:I

    if-eq v2, v5, :cond_c6

    :try_start_6d
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_78
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6d .. :try_end_78} :catch_bc

    move-result-object v2

    :goto_79
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/view/ViewPager;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", found: 2 Pager id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Pager class: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Problematic adapter: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_bc
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_79

    :cond_c6
    const/4 v6, 0x0

    const/4 v2, 0x0

    move v5, v2

    :goto_c9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_356

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bi;

    iget v7, v2, Landroid/support/v4/view/bi;->b:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v4/view/ViewPager;->k:I

    if-lt v7, v9, :cond_187

    iget v7, v2, Landroid/support/v4/view/bi;->b:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v4/view/ViewPager;->k:I

    if-ne v7, v9, :cond_356

    :goto_ed
    if-nez v2, :cond_353

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->k:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Landroid/support/v4/view/ViewPager;->b(II)Landroid/support/v4/view/bi;

    move-result-object v2

    move-object v14, v2

    :goto_fa
    if-eqz v14, :cond_2b8

    const/4 v13, 0x0

    add-int/lit8 v12, v5, -0x1

    if-ltz v12, :cond_18c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bi;

    :goto_10b
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v15

    if-gtz v15, :cond_18f

    const/4 v6, 0x0

    :goto_112
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/support/v4/view/ViewPager;->C:Z

    if-eqz v7, :cond_19e

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v4/view/ViewPager;->k:I

    add-int/lit8 v9, v9, -0x1

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_123
    move-object/from16 v0, p0

    iget-boolean v9, v0, Landroid/support/v4/view/ViewPager;->C:Z

    if-eqz v9, :cond_1a0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v4/view/ViewPager;->k:I

    add-int/lit8 v11, v11, 0x1

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    :goto_134
    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v4/view/ViewPager;->k:I

    add-int/lit8 v11, v11, -0x1

    move/from16 v17, v11

    move v11, v13

    move/from16 v13, v17

    move/from16 v18, v12

    move v12, v5

    move/from16 v5, v18

    :goto_144
    if-ltz v13, :cond_1e0

    cmpl-float v16, v11, v6

    if-ltz v16, :cond_1a4

    if-ge v13, v8, :cond_1a4

    if-eqz v2, :cond_1e0

    iget v0, v2, Landroid/support/v4/view/bi;->b:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v13, v0, :cond_184

    iget-boolean v0, v2, Landroid/support/v4/view/bi;->c:Z

    move/from16 v16, v0

    if-nez v16, :cond_184

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    move-object/from16 v16, v0

    iget-object v2, v2, Landroid/support/v4/view/bi;->a:Ljava/lang/Object;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ae;->a(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v12, v12, -0x1

    if-ltz v5, :cond_1a2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bi;

    :cond_184
    :goto_184
    add-int/lit8 v13, v13, -0x1

    goto :goto_144

    :cond_187
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_c9

    :cond_18c
    const/4 v2, 0x0

    goto/16 :goto_10b

    :cond_18f
    const/high16 v6, 0x4000

    iget v7, v14, Landroid/support/v4/view/bi;->d:F

    sub-float/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    int-to-float v9, v15

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    goto/16 :goto_112

    :cond_19e
    move v7, v8

    goto :goto_123

    :cond_1a0
    move v9, v10

    goto :goto_134

    :cond_1a2
    const/4 v2, 0x0

    goto :goto_184

    :cond_1a4
    if-eqz v2, :cond_1c2

    iget v0, v2, Landroid/support/v4/view/bi;->b:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v13, v0, :cond_1c2

    iget v2, v2, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v11, v2

    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_1c0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bi;

    goto :goto_184

    :cond_1c0
    const/4 v2, 0x0

    goto :goto_184

    :cond_1c2
    if-lt v13, v7, :cond_184

    add-int/lit8 v2, v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Landroid/support/v4/view/ViewPager;->b(II)Landroid/support/v4/view/bi;

    move-result-object v2

    iget v2, v2, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v11, v2

    add-int/lit8 v12, v12, 0x1

    if-ltz v5, :cond_1de

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bi;

    goto :goto_184

    :cond_1de
    const/4 v2, 0x0

    goto :goto_184

    :cond_1e0
    iget v6, v14, Landroid/support/v4/view/bi;->d:F

    add-int/lit8 v8, v12, 0x1

    const/high16 v2, 0x4000

    cmpg-float v2, v6, v2

    if-gez v2, :cond_2b3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_253

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bi;

    move-object v7, v2

    :goto_1ff
    if-gtz v15, :cond_255

    const/4 v2, 0x0

    move v5, v2

    :goto_203
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->k:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v17, v7

    move v7, v8

    move v8, v2

    move-object/from16 v2, v17

    :goto_20f
    const/4 v11, 0x2

    if-ge v8, v11, :cond_2b3

    cmpl-float v11, v6, v5

    if-ltz v11, :cond_263

    if-le v8, v10, :cond_263

    if-eqz v2, :cond_2b3

    iget v11, v2, Landroid/support/v4/view/bi;->b:I

    if-ne v8, v11, :cond_34c

    iget-boolean v11, v2, Landroid/support/v4/view/bi;->c:Z

    if-nez v11, :cond_34c

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    iget-object v2, v2, Landroid/support/v4/view/bi;->a:Ljava/lang/Object;

    invoke-virtual {v11, v2}, Landroid/support/v4/view/ae;->a(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_261

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bi;

    :goto_246
    move/from16 v17, v6

    move-object v6, v2

    move/from16 v2, v17

    :goto_24b
    add-int/lit8 v8, v8, 0x1

    move/from16 v17, v2

    move-object v2, v6

    move/from16 v6, v17

    goto :goto_20f

    :cond_253
    const/4 v7, 0x0

    goto :goto_1ff

    :cond_255
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v5, v15

    div-float/2addr v2, v5

    const/high16 v5, 0x4000

    add-float/2addr v2, v5

    move v5, v2

    goto :goto_203

    :cond_261
    const/4 v2, 0x0

    goto :goto_246

    :cond_263
    if-eqz v2, :cond_28a

    iget v11, v2, Landroid/support/v4/view/bi;->b:I

    if-ne v8, v11, :cond_28a

    iget v2, v2, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v6, v2

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_288

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bi;

    :goto_282
    move/from16 v17, v6

    move-object v6, v2

    move/from16 v2, v17

    goto :goto_24b

    :cond_288
    const/4 v2, 0x0

    goto :goto_282

    :cond_28a
    if-gt v8, v9, :cond_34c

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7}, Landroid/support/v4/view/ViewPager;->b(II)Landroid/support/v4/view/bi;

    move-result-object v2

    add-int/lit8 v7, v7, 0x1

    iget v2, v2, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_2b1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bi;

    :goto_2ab
    move/from16 v17, v6

    move-object v6, v2

    move/from16 v2, v17

    goto :goto_24b

    :cond_2b1
    const/4 v2, 0x0

    goto :goto_2ab

    :cond_2b3
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12, v4}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/bi;ILandroid/support/v4/view/bi;)V

    :cond_2b8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/ViewPager;->k:I

    if-eqz v14, :cond_303

    iget-object v2, v14, Landroid/support/v4/view/bi;->a:Ljava/lang/Object;

    :goto_2c4
    invoke-virtual {v4, v2}, Landroid/support/v4/view/ae;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    invoke-virtual {v2}, Landroid/support/v4/view/ae;->b()V

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    const/4 v2, 0x0

    move v4, v2

    :goto_2d4
    if-ge v4, v5, :cond_305

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bj;

    iput v4, v2, Landroid/support/v4/view/bj;->f:I

    iget-boolean v7, v2, Landroid/support/v4/view/bj;->a:Z

    if-nez v7, :cond_2ff

    iget v7, v2, Landroid/support/v4/view/bj;->c:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_2ff

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/bi;

    move-result-object v6

    if-eqz v6, :cond_2ff

    iget v7, v6, Landroid/support/v4/view/bi;->d:F

    iput v7, v2, Landroid/support/v4/view/bj;->c:F

    iget v6, v6, Landroid/support/v4/view/bi;->b:I

    iput v6, v2, Landroid/support/v4/view/bj;->e:I

    :cond_2ff
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2d4

    :cond_303
    const/4 v2, 0x0

    goto :goto_2c4

    :cond_305
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->f()V

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_34a

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v4/view/ViewPager;->b(Landroid/view/View;)Landroid/support/v4/view/bi;

    move-result-object v2

    :goto_31a
    if-eqz v2, :cond_324

    iget v2, v2, Landroid/support/v4/view/bi;->b:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/view/ViewPager;->k:I

    if-eq v2, v4, :cond_2f

    :cond_324
    const/4 v2, 0x0

    :goto_325
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/bi;

    move-result-object v5

    if-eqz v5, :cond_347

    iget v5, v5, Landroid/support/v4/view/bi;->b:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v4/view/ViewPager;->k:I

    if-ne v5, v6, :cond_347

    invoke-virtual {v4, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-nez v4, :cond_2f

    :cond_347
    add-int/lit8 v2, v2, 0x1

    goto :goto_325

    :cond_34a
    const/4 v2, 0x0

    goto :goto_31a

    :cond_34c
    move/from16 v17, v6

    move-object v6, v2

    move/from16 v2, v17

    goto/16 :goto_24b

    :cond_353
    move-object v14, v2

    goto/16 :goto_fa

    :cond_356
    move-object v2, v6

    goto/16 :goto_ed

    :cond_359
    move-object v4, v3

    move v3, v2

    goto/16 :goto_26
.end method

.method private a(IF)V
    .registers 14

    const/4 v3, 0x0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->aa:I

    if-lez v0, :cond_71

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v7

    move v4, v3

    :goto_1a
    if-ge v4, v7, :cond_71

    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bj;

    iget-boolean v9, v0, Landroid/support/v4/view/bj;->a:Z

    if-eqz v9, :cond_ad

    iget v0, v0, Landroid/support/v4/view/bj;->b:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_b2

    :pswitch_31
    move v0, v1

    move v10, v2

    move v2, v1

    move v1, v10

    :goto_35
    add-int/2addr v0, v5

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v0, v9

    if-eqz v0, :cond_40

    invoke-virtual {v8, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_40
    :goto_40
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v10, v1

    move v1, v2

    move v2, v10

    goto :goto_1a

    :pswitch_47
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    move v10, v1

    move v1, v2

    move v2, v0

    move v0, v10

    goto :goto_35

    :pswitch_51
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v6, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_35

    :pswitch_61
    sub-int v0, v6, v2

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v0, v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v2, v9

    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_35

    :cond_71
    iput p1, p0, Landroid/support/v4/view/ViewPager;->c:I

    iput p2, p0, Landroid/support/v4/view/ViewPager;->d:F

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ac:Landroid/support/v4/view/bm;

    if-eqz v0, :cond_7b

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ac:Landroid/support/v4/view/bm;

    :cond_7b
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ad:Landroid/support/v4/view/bm;

    if-eqz v0, :cond_81

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ad:Landroid/support/v4/view/bm;

    :cond_81
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->af:Landroid/support/v4/view/bn;

    if-eqz v0, :cond_a9

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    move v1, v3

    :goto_8d
    if-ge v1, v2, :cond_a9

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bj;

    iget-boolean v0, v0, Landroid/support/v4/view/bj;->a:Z

    if-nez v0, :cond_a5

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->af:Landroid/support/v4/view/bn;

    :cond_a5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8d

    :cond_a9
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Z:Z

    return-void

    :cond_ad
    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_40

    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_51
        :pswitch_31
        :pswitch_47
        :pswitch_31
        :pswitch_61
    .end packed-switch
.end method

.method private a(II)V
    .registers 12

    const/4 v5, 0x0

    const/high16 v8, 0x3f80

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    :goto_c
    return-void

    :cond_d
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v2

    sub-int v3, p1, v1

    rsub-int/lit8 v4, v2, 0x0

    if-nez v3, :cond_27

    if-nez v4, :cond_27

    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->a(Z)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->b()V

    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    goto :goto_c

    :cond_27
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    int-to-float v7, v0

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    int-to-float v7, v5

    int-to-float v5, v5

    invoke-static {v6}, Landroid/support/v4/view/ViewPager;->a(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-lez v6, :cond_6d

    const/high16 v0, 0x447a

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_5e
    const/16 v5, 0x258

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-static {p0}, Landroid/support/v4/view/ak;->b(Landroid/view/View;)V

    goto :goto_c

    :cond_6d
    int-to-float v0, v0

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    iget v5, p0, Landroid/support/v4/view/ViewPager;->k:I

    mul-float/2addr v0, v8

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Landroid/support/v4/view/ViewPager;->q:I

    int-to-float v6, v6

    add-float/2addr v0, v6

    div-float v0, v5, v0

    add-float/2addr v0, v8

    const/high16 v5, 0x42c8

    mul-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_5e
.end method

.method private a(IIII)V
    .registers 11

    const/4 v2, 0x0

    if-lez p2, :cond_5d

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5d

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/2addr v1, p4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float v1, v3, v1

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v1, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_5c

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v3

    sub-int v5, v0, v3

    iget v0, p0, Landroid/support/v4/view/ViewPager;->k:I

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->b(I)Landroid/support/v4/view/bi;

    move-result-object v3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    iget v3, v3, Landroid/support/v4/view/bi;->e:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :cond_5c
    :goto_5c
    return-void

    :cond_5d
    iget v0, p0, Landroid/support/v4/view/ViewPager;->k:I

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->b(I)Landroid/support/v4/view/bi;

    move-result-object v0

    if-eqz v0, :cond_8c

    iget v0, v0, Landroid/support/v4/view/bi;->e:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->v:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_6d
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_5c

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->a(Z)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_5c

    :cond_8c
    const/4 v0, 0x0

    goto :goto_6d
.end method

.method private a(IZIZ)V
    .registers 10

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->b(I)Landroid/support/v4/view/bi;

    move-result-object v0

    if-eqz v0, :cond_55

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/support/v4/view/ViewPager;->u:F

    iget v0, v0, Landroid/support/v4/view/bi;->e:F

    iget v4, p0, Landroid/support/v4/view/ViewPager;->v:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :goto_1c
    if-eqz p2, :cond_38

    invoke-direct {p0, v0, p3}, Landroid/support/v4/view/ViewPager;->a(II)V

    if-eqz p4, :cond_2c

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ac:Landroid/support/v4/view/bm;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ac:Landroid/support/v4/view/bm;

    invoke-interface {v0, p1}, Landroid/support/v4/view/bm;->a(I)V

    :cond_2c
    if-eqz p4, :cond_37

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ad:Landroid/support/v4/view/bm;

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ad:Landroid/support/v4/view/bm;

    invoke-interface {v0, p1}, Landroid/support/v4/view/bm;->a(I)V

    :cond_37
    :goto_37
    return-void

    :cond_38
    if-eqz p4, :cond_43

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->ac:Landroid/support/v4/view/bm;

    if-eqz v2, :cond_43

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->ac:Landroid/support/v4/view/bm;

    invoke-interface {v2, p1}, Landroid/support/v4/view/bm;->a(I)V

    :cond_43
    if-eqz p4, :cond_4e

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->ad:Landroid/support/v4/view/bm;

    if-eqz v2, :cond_4e

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->ad:Landroid/support/v4/view/bm;

    invoke-interface {v2, p1}, Landroid/support/v4/view/bm;->a(I)V

    :cond_4e
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->a(Z)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_37

    :cond_55
    move v0, v1

    goto :goto_1c
.end method

.method private a(IZZ)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewPager;->a(IZZI)V

    return-void
.end method

.method private a(IZZI)V
    .registers 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    if-nez p3, :cond_1e

    iget v0, p0, Landroid/support/v4/view/ViewPager;->k:I

    if-ne v0, p1, :cond_1e

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    :goto_19
    return-void

    :cond_1a
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_19

    :cond_1e
    if-gez p1, :cond_45

    move p1, v1

    :cond_21
    :goto_21
    iget v0, p0, Landroid/support/v4/view/ViewPager;->B:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->k:I

    add-int/2addr v3, v0

    if-gt p1, v3, :cond_2e

    iget v3, p0, Landroid/support/v4/view/ViewPager;->k:I

    sub-int v0, v3, v0

    if-ge p1, v0, :cond_4e

    :cond_2e
    move v3, v1

    :goto_2f
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4e

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bi;

    iput-boolean v2, v0, Landroid/support/v4/view/bi;->c:Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2f

    :cond_45
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    const/4 v0, 0x2

    if-lt p1, v0, :cond_21

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    move p1, v2

    goto :goto_21

    :cond_4e
    iget v0, p0, Landroid/support/v4/view/ViewPager;->k:I

    if-eq v0, p1, :cond_72

    :goto_52
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->V:Z

    if-eqz v0, :cond_74

    iput p1, p0, Landroid/support/v4/view/ViewPager;->k:I

    if-eqz v2, :cond_63

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ac:Landroid/support/v4/view/bm;

    if-eqz v0, :cond_63

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ac:Landroid/support/v4/view/bm;

    invoke-interface {v0, p1}, Landroid/support/v4/view/bm;->a(I)V

    :cond_63
    if-eqz v2, :cond_6e

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ad:Landroid/support/v4/view/bm;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ad:Landroid/support/v4/view/bm;

    invoke-interface {v0, p1}, Landroid/support/v4/view/bm;->a(I)V

    :cond_6e
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    goto :goto_19

    :cond_72
    move v2, v1

    goto :goto_52

    :cond_74
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(I)V

    invoke-direct {p0, p1, p2, p4, v2}, Landroid/support/v4/view/ViewPager;->a(IZIZ)V

    goto :goto_19
.end method

.method static synthetic a(Landroid/support/v4/view/ViewPager;)V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    return-void
.end method

.method private a(Landroid/support/v4/view/bi;ILandroid/support/v4/view/bi;)V
    .registers 15

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/high16 v8, 0x3f80

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v0

    if-lez v0, :cond_53

    iget v1, p0, Landroid/support/v4/view/ViewPager;->q:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    move v6, v0

    :goto_13
    if-eqz p3, :cond_bb

    iget v0, p3, Landroid/support/v4/view/bi;->b:I

    iget v1, p1, Landroid/support/v4/view/bi;->b:I

    if-ge v0, v1, :cond_6f

    iget v1, p3, Landroid/support/v4/view/bi;->e:F

    iget v2, p3, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v1, v2

    add-float/2addr v1, v6

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v3, v4

    move v1, v0

    :goto_26
    iget v0, p1, Landroid/support/v4/view/bi;->b:I

    if-gt v1, v0, :cond_bb

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_bb

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bi;

    :goto_3a
    iget v5, v0, Landroid/support/v4/view/bi;->b:I

    if-le v1, v5, :cond_150

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_150

    add-int/lit8 v3, v3, 0x1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bi;

    goto :goto_3a

    :cond_53
    const/4 v0, 0x0

    move v6, v0

    goto :goto_13

    :goto_56
    iget v5, v0, Landroid/support/v4/view/bi;->b:I

    if-ge v2, v5, :cond_64

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    add-float v5, v8, v6

    add-float/2addr v5, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v5

    goto :goto_56

    :cond_64
    iput v1, v0, Landroid/support/v4/view/bi;->e:F

    iget v0, v0, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v0, v6

    add-float/2addr v1, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_26

    :cond_6f
    iget v1, p1, Landroid/support/v4/view/bi;->b:I

    if-le v0, v1, :cond_bb

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    iget v1, p3, Landroid/support/v4/view/bi;->e:F

    add-int/lit8 v0, v0, -0x1

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_82
    iget v0, p1, Landroid/support/v4/view/bi;->b:I

    if-lt v1, v0, :cond_bb

    if-ltz v3, :cond_bb

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bi;

    :goto_90
    iget v5, v0, Landroid/support/v4/view/bi;->b:I

    if-ge v1, v5, :cond_14b

    if-lez v3, :cond_14b

    add-int/lit8 v3, v3, -0x1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bi;

    goto :goto_90

    :goto_a1
    iget v5, v0, Landroid/support/v4/view/bi;->b:I

    if-le v2, v5, :cond_b0

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    add-float v5, v8, v6

    sub-float v5, v1, v5

    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v5

    goto :goto_a1

    :cond_b0
    iget v5, v0, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v5, v6

    sub-float/2addr v1, v5

    iput v1, v0, Landroid/support/v4/view/bi;->e:F

    add-int/lit8 v0, v2, -0x1

    move v2, v1

    move v1, v0

    goto :goto_82

    :cond_bb
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v1, p1, Landroid/support/v4/view/bi;->e:F

    iget v0, p1, Landroid/support/v4/view/bi;->b:I

    add-int/lit8 v2, v0, -0x1

    iget v0, p1, Landroid/support/v4/view/bi;->b:I

    if-nez v0, :cond_f4

    iget v0, p1, Landroid/support/v4/view/bi;->e:F

    :goto_cd
    iput v0, p0, Landroid/support/v4/view/ViewPager;->u:F

    iget v0, p1, Landroid/support/v4/view/bi;->b:I

    if-ne v0, v9, :cond_f8

    iget v0, p1, Landroid/support/v4/view/bi;->e:F

    iget v3, p1, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v0, v3

    sub-float/2addr v0, v8

    :goto_d9
    iput v0, p0, Landroid/support/v4/view/ViewPager;->v:F

    add-int/lit8 v0, p2, -0x1

    move v3, v0

    :goto_de
    if-ltz v3, :cond_10e

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bi;

    :goto_e8
    iget v7, v0, Landroid/support/v4/view/bi;->b:I

    if-le v2, v7, :cond_fc

    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    add-int/lit8 v2, v2, -0x1

    add-float v7, v8, v6

    sub-float/2addr v1, v7

    goto :goto_e8

    :cond_f4
    const v0, -0x800001

    goto :goto_cd

    :cond_f8
    const v0, 0x7f7fffff

    goto :goto_d9

    :cond_fc
    iget v7, v0, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v7, v6

    sub-float/2addr v1, v7

    iput v1, v0, Landroid/support/v4/view/bi;->e:F

    iget v0, v0, Landroid/support/v4/view/bi;->b:I

    if-nez v0, :cond_108

    iput v1, p0, Landroid/support/v4/view/ViewPager;->u:F

    :cond_108
    add-int/lit8 v0, v3, -0x1

    add-int/lit8 v2, v2, -0x1

    move v3, v0

    goto :goto_de

    :cond_10e
    iget v0, p1, Landroid/support/v4/view/bi;->e:F

    iget v1, p1, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v0, v1

    add-float v1, v0, v6

    iget v0, p1, Landroid/support/v4/view/bi;->b:I

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, p2, 0x1

    move v3, v0

    :goto_11c
    if-ge v3, v5, :cond_148

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bi;

    :goto_126
    iget v7, v0, Landroid/support/v4/view/bi;->b:I

    if-ge v2, v7, :cond_132

    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    add-int/lit8 v2, v2, 0x1

    add-float v7, v8, v6

    add-float/2addr v1, v7

    goto :goto_126

    :cond_132
    iget v7, v0, Landroid/support/v4/view/bi;->b:I

    if-ne v7, v9, :cond_13c

    iget v7, v0, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v7, v1

    sub-float/2addr v7, v8

    iput v7, p0, Landroid/support/v4/view/ViewPager;->v:F

    :cond_13c
    iput v1, v0, Landroid/support/v4/view/bi;->e:F

    iget v0, v0, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v0, v6

    add-float/2addr v1, v0

    add-int/lit8 v0, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_11c

    :cond_148
    iput-boolean v4, p0, Landroid/support/v4/view/ViewPager;->W:Z

    return-void

    :cond_14b
    move v10, v1

    move v1, v2

    move v2, v10

    goto/16 :goto_a1

    :cond_150
    move v10, v1

    move v1, v2

    move v2, v10

    goto/16 :goto_56
.end method

.method private a(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-static {p1}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iget v2, p0, Landroid/support/v4/view/ViewPager;->M:I

    if-ne v1, v2, :cond_24

    if-nez v0, :cond_25

    const/4 v0, 0x1

    :goto_f
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->I:F

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->M:I

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_24
    return-void

    :cond_25
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private a(Z)V
    .registers 9

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->al:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4c

    move v0, v4

    :goto_8
    if-eqz v0, :cond_2d

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v3

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v1, v5, :cond_2a

    if-eq v3, v6, :cond_2d

    :cond_2a
    invoke-virtual {p0, v5, v6}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    :cond_2d
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->A:Z

    move v1, v2

    move v3, v0

    :goto_31
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4e

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bi;

    iget-boolean v5, v0, Landroid/support/v4/view/bi;->c:Z

    if-eqz v5, :cond_48

    iput-boolean v2, v0, Landroid/support/v4/view/bi;->c:Z

    move v3, v4

    :cond_48
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_31

    :cond_4c
    move v0, v2

    goto :goto_8

    :cond_4e
    if-eqz v3, :cond_57

    if-eqz p1, :cond_58

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ak:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ak;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_57
    :goto_57
    return-void

    :cond_58
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ak:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_57
.end method

.method private a(FF)Z
    .registers 6

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->G:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_c

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1c

    :cond_c
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->G:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1e

    cmpg-float v0, p2, v2

    if-gez v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private a(Landroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3c

    :cond_e
    :goto_e
    return v0

    :sswitch_f
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->d(I)Z

    move-result v0

    goto :goto_e

    :sswitch_16
    const/16 v0, 0x42

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->d(I)Z

    move-result v0

    goto :goto_e

    :sswitch_1d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_e

    invoke-static {p1}, Landroid/support/v4/view/s;->b(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->d(I)Z

    move-result v0

    goto :goto_e

    :cond_2f
    invoke-static {p1}, Landroid/support/v4/view/s;->a(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->d(I)Z

    move-result v0

    goto :goto_e

    nop

    :sswitch_data_3c
    .sparse-switch
        0x15 -> :sswitch_f
        0x16 -> :sswitch_16
        0x3d -> :sswitch_1d
    .end sparse-switch
.end method

.method private a(Landroid/view/View;ZIII)Z
    .registers 16

    const/4 v2, 0x1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5a

    move-object v6, p1

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_17
    if-ltz v7, :cond_5a

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v0, v3, :cond_56

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v0, v3, :cond_56

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_56

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v0, v3, :cond_56

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_56

    :cond_55
    :goto_55
    return v2

    :cond_56
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_17

    :cond_5a
    if-eqz p2, :cond_63

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ak;->a(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_55

    :cond_63
    const/4 v2, 0x0

    goto :goto_55
.end method

.method static synthetic b(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/ae;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    return-object v0
.end method

.method private b(I)Landroid/support/v4/view/bi;
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1b

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bi;

    iget v2, v0, Landroid/support/v4/view/bi;->b:I

    if-ne v2, p1, :cond_17

    :goto_16
    return-object v0

    :cond_17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1b
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private b(II)Landroid/support/v4/view/bi;
    .registers 5

    new-instance v0, Landroid/support/v4/view/bi;

    invoke-direct {v0}, Landroid/support/v4/view/bi;-><init>()V

    iput p1, v0, Landroid/support/v4/view/bi;->b:I

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/ae;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/view/bi;->a:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/support/v4/view/bi;->d:F

    if-ltz p2, :cond_1f

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_25

    :cond_1f
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_24
    return-object v0

    :cond_25
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_24
.end method

.method private b(Landroid/view/View;)Landroid/support/v4/view/bi;
    .registers 4

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_12

    if-eqz v0, :cond_c

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    :cond_12
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/bi;

    move-result-object v0

    goto :goto_d
.end method

.method private b(Z)V
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_6
    if-ge v2, v3, :cond_19

    if-eqz p1, :cond_17

    const/4 v0, 0x2

    :goto_b
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Landroid/support/v4/view/ak;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_17
    move v0, v1

    goto :goto_b

    :cond_19
    return-void
.end method

.method private b(F)Z
    .registers 12

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->I:F

    sub-float/2addr v0, p1

    iput p1, p0, Landroid/support/v4/view/ViewPager;->I:F

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float v5, v1, v0

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v7

    int-to-float v0, v7

    iget v1, p0, Landroid/support/v4/view/ViewPager;->u:F

    mul-float v4, v0, v1

    int-to-float v0, v7

    iget v1, p0, Landroid/support/v4/view/ViewPager;->v:F

    mul-float v6, v0, v1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bi;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/bi;

    iget v8, v0, Landroid/support/v4/view/bi;->b:I

    if-eqz v8, :cond_8d

    iget v0, v0, Landroid/support/v4/view/bi;->e:F

    int-to-float v4, v7

    mul-float/2addr v0, v4

    move v4, v0

    move v0, v2

    :goto_3e
    iget v8, v1, Landroid/support/v4/view/bi;->b:I

    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    if-eq v8, v3, :cond_8b

    iget v1, v1, Landroid/support/v4/view/bi;->e:F

    int-to-float v3, v7

    mul-float/2addr v1, v3

    move v3, v2

    :goto_49
    cmpg-float v6, v5, v4

    if-gez v6, :cond_73

    if-eqz v0, :cond_5d

    sub-float v0, v4, v5

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->T:Landroid/support/v4/widget/e;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v2, v7

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/e;->a(F)Z

    move-result v2

    :cond_5d
    :goto_5d
    iget v0, p0, Landroid/support/v4/view/ViewPager;->I:F

    float-to-int v1, v4

    int-to-float v1, v1

    sub-float v1, v4, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->I:F

    float-to-int v0, v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    float-to-int v0, v4

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->c(I)Z

    return v2

    :cond_73
    cmpl-float v0, v5, v1

    if-lez v0, :cond_89

    if-eqz v3, :cond_87

    sub-float v0, v5, v1

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->U:Landroid/support/v4/widget/e;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v3, v7

    div-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/e;->a(F)Z

    move-result v2

    :cond_87
    move v4, v1

    goto :goto_5d

    :cond_89
    move v4, v5

    goto :goto_5d

    :cond_8b
    move v1, v6

    goto :goto_49

    :cond_8d
    move v0, v3

    goto :goto_3e
.end method

.method static synthetic c(Landroid/support/v4/view/ViewPager;)I
    .registers 2

    iget v0, p0, Landroid/support/v4/view/ViewPager;->k:I

    return v0
.end method

.method private c(I)Z
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1b

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Z:Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IF)V

    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->Z:Z

    if-nez v1, :cond_4a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->g()Landroid/support/v4/view/bi;

    move-result-object v1

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    iget v3, p0, Landroid/support/v4/view/ViewPager;->q:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->q:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    iget v4, v1, Landroid/support/v4/view/bi;->b:I

    int-to-float v5, p1

    int-to-float v2, v2

    div-float v2, v5, v2

    iget v5, v1, Landroid/support/v4/view/bi;->e:F

    sub-float/2addr v2, v5

    iget v1, v1, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v1, v3

    div-float v1, v2, v1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Z:Z

    invoke-direct {p0, v4, v1}, Landroid/support/v4/view/ViewPager;->a(IF)V

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Z:Z

    if-nez v0, :cond_49

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    const/4 v0, 0x1

    :cond_4a
    return v0
.end method

.method static synthetic c()[I
    .registers 1

    sget-object v0, Landroid/support/v4/view/ViewPager;->a:[I

    return-object v0
.end method

.method private d()V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Landroid/support/v4/view/ViewPager;->f:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v1}, Landroid/support/v4/view/az;->a(Landroid/view/ViewConfiguration;)I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->H:I

    const/high16 v3, 0x43c8

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->O:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->P:I

    new-instance v1, Landroid/support/v4/widget/e;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->T:Landroid/support/v4/widget/e;

    new-instance v1, Landroid/support/v4/widget/e;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->U:Landroid/support/v4/widget/e;

    const/high16 v0, 0x41c8

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->Q:I

    const/high16 v0, 0x4000

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->R:I

    const/high16 v0, 0x4180

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->F:I

    new-instance v0, Landroid/support/v4/view/bk;

    invoke-direct {v0, p0}, Landroid/support/v4/view/bk;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ak;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    invoke-static {p0}, Landroid/support/v4/view/ak;->c(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_6b

    invoke-static {p0}, Landroid/support/v4/view/ak;->d(Landroid/view/View;)V

    :cond_6b
    return-void
.end method

.method private d(I)Z
    .registers 11

    const/4 v1, 0x0

    const/16 v8, 0x42

    const/16 v7, 0x11

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v2

    if-ne v2, p0, :cond_3e

    move-object v0, v1

    :goto_e
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_bc

    if-eq v1, v0, :cond_bc

    if-ne p1, v7, :cond_a0

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->i:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->i:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_9b

    if-lt v2, v3, :cond_9b

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->i()Z

    move-result v0

    :goto_34
    if-eqz v0, :cond_3d

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->playSoundEffect(I)V

    :cond_3d
    return v0

    :cond_3e
    if-eqz v2, :cond_d4

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_44
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_d7

    if-ne v0, p0, :cond_7b

    move v0, v4

    :goto_4b
    if-nez v0, :cond_d4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_61
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_80

    const-string v2, " => "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_61

    :cond_7b
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_44

    :cond_80
    const-string v0, "ViewPager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto/16 :goto_e

    :cond_9b
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_34

    :cond_a0
    if-ne p1, v8, :cond_d1

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->i:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->i:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_b6

    if-le v2, v3, :cond_cb

    :cond_b6
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto/16 :goto_34

    :cond_bc
    if-eq p1, v7, :cond_c0

    if-ne p1, v4, :cond_c6

    :cond_c0
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->i()Z

    move-result v0

    goto/16 :goto_34

    :cond_c6
    if-eq p1, v8, :cond_cb

    const/4 v0, 0x2

    if-ne p1, v0, :cond_d1

    :cond_cb
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->j()Z

    move-result v0

    goto/16 :goto_34

    :cond_d1
    move v0, v3

    goto/16 :goto_34

    :cond_d4
    move-object v0, v2

    goto/16 :goto_e

    :cond_d7
    move v0, v3

    goto/16 :goto_4b
.end method

.method private e()V
    .registers 3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1f

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bj;

    iget-boolean v0, v0, Landroid/support/v4/view/bj;->a:Z

    if-nez v0, :cond_1b

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->removeViewAt(I)V

    add-int/lit8 v1, v1, -0x1

    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1f
    return-void
.end method

.method private f()V
    .registers 5

    iget v0, p0, Landroid/support/v4/view/ViewPager;->ah:I

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ai:Ljava/util/ArrayList;

    if-nez v0, :cond_22

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ai:Ljava/util/ArrayList;

    :goto_f
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v1, :cond_28

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->ai:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_22
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ai:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_f

    :cond_28
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ai:Ljava/util/ArrayList;

    sget-object v1, Landroid/support/v4/view/ViewPager;->aj:Landroid/support/v4/view/bq;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2f
    return-void
.end method

.method private g()Landroid/support/v4/view/bi;
    .registers 14

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v1

    if-lez v1, :cond_6c

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    int-to-float v4, v1

    div-float/2addr v0, v4

    move v9, v0

    :goto_10
    if-lez v1, :cond_6e

    iget v0, p0, Landroid/support/v4/view/ViewPager;->q:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    move v1, v0

    :goto_18
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v0, 0x0

    move v6, v2

    move v7, v2

    move v8, v5

    move v2, v3

    move v5, v4

    move-object v4, v0

    :goto_21
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6b

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bi;

    if-nez v5, :cond_7d

    iget v10, v0, Landroid/support/v4/view/bi;->b:I

    add-int/lit8 v11, v8, 0x1

    if-eq v10, v11, :cond_7d

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/support/v4/view/bi;

    add-float/2addr v6, v7

    add-float/2addr v6, v1

    iput v6, v0, Landroid/support/v4/view/bi;->e:F

    add-int/lit8 v6, v8, 0x1

    iput v6, v0, Landroid/support/v4/view/bi;->b:I

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    iget v6, v0, Landroid/support/v4/view/bi;->b:I

    const/high16 v6, 0x3f80

    iput v6, v0, Landroid/support/v4/view/bi;->d:F

    add-int/lit8 v2, v2, -0x1

    move-object v12, v0

    move v0, v2

    move-object v2, v12

    :goto_50
    iget v6, v2, Landroid/support/v4/view/bi;->e:F

    iget v7, v2, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v7, v6

    add-float/2addr v7, v1

    if-nez v5, :cond_5c

    cmpl-float v5, v9, v6

    if-ltz v5, :cond_6b

    :cond_5c
    cmpg-float v4, v9, v7

    if-ltz v4, :cond_6a

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_70

    :cond_6a
    move-object v4, v2

    :cond_6b
    return-object v4

    :cond_6c
    move v9, v2

    goto :goto_10

    :cond_6e
    move v1, v2

    goto :goto_18

    :cond_70
    iget v5, v2, Landroid/support/v4/view/bi;->b:I

    iget v4, v2, Landroid/support/v4/view/bi;->d:F

    add-int/lit8 v0, v0, 0x1

    move v7, v6

    move v8, v5

    move v5, v3

    move v6, v4

    move-object v4, v2

    move v2, v0

    goto :goto_21

    :cond_7d
    move-object v12, v0

    move v0, v2

    move-object v2, v12

    goto :goto_50
.end method

.method private getClientWidth()I
    .registers 3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private h()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->D:Z

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->E:Z

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/view/VelocityTracker;

    :cond_11
    return-void
.end method

.method private i()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/v4/view/ViewPager;->k:I

    if-lez v1, :cond_d

    iget v1, p0, Landroid/support/v4/view/ViewPager;->k:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private j()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    if-eqz v1, :cond_13

    iget v1, p0, Landroid/support/v4/view/ViewPager;->k:I

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    if-gtz v1, :cond_13

    iget v1, p0, Landroid/support/v4/view/ViewPager;->k:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->a(IZ)V

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private setScrollState(I)V
    .registers 3

    iget v0, p0, Landroid/support/v4/view/ViewPager;->al:I

    if-ne v0, p1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iput p1, p0, Landroid/support/v4/view/ViewPager;->al:I

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->af:Landroid/support/v4/view/bn;

    if-eqz v0, :cond_11

    if-eqz p1, :cond_1b

    const/4 v0, 0x1

    :goto_e
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->b(Z)V

    :cond_11
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ac:Landroid/support/v4/view/bm;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ac:Landroid/support/v4/view/bm;

    invoke-interface {v0, p1}, Landroid/support/v4/view/bm;->b(I)V

    goto :goto_4

    :cond_1b
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private setScrollingCacheEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->z:Z

    if-eq v0, p1, :cond_6

    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->z:Z

    :cond_6
    return-void
.end method


# virtual methods
.method final a()V
    .registers 8

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    iput v4, p0, Landroid/support/v4/view/ViewPager;->b:I

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->B:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_39

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v4, :cond_39

    move v1, v2

    :goto_1e
    iget v5, p0, Landroid/support/v4/view/ViewPager;->k:I

    move v4, v3

    :goto_21
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_3b

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bi;

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    iget-object v0, v0, Landroid/support/v4/view/bi;->a:Ljava/lang/Object;

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_21

    :cond_39
    move v1, v3

    goto :goto_1e

    :cond_3b
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    sget-object v4, Landroid/support/v4/view/ViewPager;->e:Ljava/util/Comparator;

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v1, :cond_66

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    move v1, v3

    :goto_49
    if-ge v1, v4, :cond_60

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bj;

    iget-boolean v6, v0, Landroid/support/v4/view/bj;->a:Z

    if-nez v6, :cond_5c

    const/4 v6, 0x0

    iput v6, v0, Landroid/support/v4/view/bj;->c:F

    :cond_5c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_49

    :cond_60
    invoke-direct {p0, v5, v3, v2}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    :cond_66
    return-void
.end method

.method public final a(IZ)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->A:Z

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDescendantFocusability()I

    move-result v2

    const/high16 v0, 0x6

    if-eq v2, v0, :cond_2f

    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2f

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2c

    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/bi;

    move-result-object v4

    if-eqz v4, :cond_2c

    iget v4, v4, Landroid/support/v4/view/bi;->b:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->k:I

    if-ne v4, v5, :cond_2c

    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_2f
    const/high16 v0, 0x4

    if-ne v2, v0, :cond_39

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_3f

    :cond_39
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_40

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_51

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_51
    if-eqz p1, :cond_3f

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_20

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/bi;

    move-result-object v2

    if-eqz v2, :cond_20

    iget v2, v2, Landroid/support/v4/view/bi;->b:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->k:I

    if-ne v2, v3, :cond_20

    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7

    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_a
    move-object v0, p3

    check-cast v0, Landroid/support/v4/view/bj;

    iget-boolean v1, v0, Landroid/support/v4/view/bj;->a:Z

    instance-of v2, p1, Landroid/support/v4/view/bh;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/support/v4/view/bj;->a:Z

    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->y:Z

    if-eqz v1, :cond_2d

    if-eqz v0, :cond_26

    iget-boolean v1, v0, Landroid/support/v4/view/bj;->a:Z

    if-eqz v1, :cond_26

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add pager decor view during layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/view/bj;->d:Z

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    :goto_2c
    return-void

    :cond_2d
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2c
.end method

.method final b()V
    .registers 2

    iget v0, p0, Landroid/support/v4/view/ViewPager;->k:I

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->a(I)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Landroid/support/v4/view/bj;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public computeScroll()V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_28

    if-eq v1, v3, :cond_3a

    :cond_28
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->c(I)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    :cond_3a
    invoke-static {p0}, Landroid/support/v4/view/ak;->b(Landroid/view/View;)V

    :goto_3d
    return-void

    :cond_3e
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->a(Z)V

    goto :goto_3d
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_e

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_13
    if-ge v1, v2, :cond_d

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_33

    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/bi;

    move-result-object v4

    if-eqz v4, :cond_33

    iget v4, v4, Landroid/support/v4/view/bi;->b:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->k:I

    if-ne v4, v5, :cond_33

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_33

    const/4 v0, 0x1

    goto :goto_d

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/support/v4/view/ak;->a(Landroid/view/View;)I

    move-result v1

    if-eqz v1, :cond_13

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9d

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    if-eqz v1, :cond_9d

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    :cond_13
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->T:Landroid/support/v4/widget/e;

    invoke-virtual {v1}, Landroid/support/v4/widget/e;->a()Z

    move-result v1

    if-nez v1, :cond_54

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    const/high16 v3, 0x4387

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v3, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Landroid/support/v4/view/ViewPager;->u:F

    int-to-float v5, v2

    mul-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->T:Landroid/support/v4/widget/e;

    invoke-virtual {v3, v0, v2}, Landroid/support/v4/widget/e;->a(II)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->T:Landroid/support/v4/widget/e;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/e;->a(Landroid/graphics/Canvas;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_54
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->U:Landroid/support/v4/widget/e;

    invoke-virtual {v1}, Landroid/support/v4/widget/e;->a()Z

    move-result v1

    if-nez v1, :cond_97

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42b4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/view/ViewPager;->v:F

    const/high16 v6, 0x3f80

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->U:Landroid/support/v4/widget/e;

    invoke-virtual {v4, v3, v2}, Landroid/support/v4/widget/e;->a(II)V

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->U:Landroid/support/v4/widget/e;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/e;->a(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_97
    :goto_97
    if-eqz v0, :cond_9c

    invoke-static {p0}, Landroid/support/v4/view/ak;->b(Landroid/view/View;)V

    :cond_9c
    return-void

    :cond_9d
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->T:Landroid/support/v4/widget/e;

    invoke-virtual {v1}, Landroid/support/v4/widget/e;->b()V

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->U:Landroid/support/v4/widget/e;

    invoke-virtual {v1}, Landroid/support/v4/widget/e;->b()V

    goto :goto_97
.end method

.method protected drawableStateChanged()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_14
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    new-instance v0, Landroid/support/v4/view/bj;

    invoke-direct {v0}, Landroid/support/v4/view/bj;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Landroid/support/v4/view/bj;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/view/bj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/support/v4/view/ae;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 5

    iget v0, p0, Landroid/support/v4/view/ViewPager;->ah:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    add-int/lit8 v0, p1, -0x1

    sub-int p2, v0, p2

    :cond_9
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ai:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bj;

    iget v0, v0, Landroid/support/v4/view/bj;->f:I

    return v0
.end method

.method public getCurrentItem()I
    .registers 2

    iget v0, p0, Landroid/support/v4/view/ViewPager;->k:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .registers 2

    iget v0, p0, Landroid/support/v4/view/ViewPager;->B:I

    return v0
.end method

.method public getOnlyCreatePagesImmediatelyOffscreen()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->C:Z

    return v0
.end method

.method public getPageMargin()I
    .registers 2

    iget v0, p0, Landroid/support/v4/view/ViewPager;->q:I

    return v0
.end method

.method public getScrollOffset()F
    .registers 2

    iget v0, p0, Landroid/support/v4/view/ViewPager;->d:F

    return v0
.end method

.method public getScrollPosition()I
    .registers 2

    iget v0, p0, Landroid/support/v4/view/ViewPager;->c:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->V:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ak:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 18

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->q:I

    if-lez v1, :cond_c4

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_c4

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_c4

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    if-eqz v1, :cond_c4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->q:I

    int-to-float v1, v1

    int-to-float v2, v7

    div-float v8, v1, v2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/bi;

    iget v4, v1, Landroid/support/v4/view/bi;->e:F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v3, v1, Landroid/support/v4/view/bi;->b:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/bi;

    iget v10, v2, Landroid/support/v4/view/bi;->b:I

    move v2, v5

    move v5, v3

    :goto_57
    if-ge v5, v10, :cond_c4

    :goto_59
    iget v3, v1, Landroid/support/v4/view/bi;->b:I

    if-le v5, v3, :cond_6c

    if-ge v2, v9, :cond_6c

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/bi;

    goto :goto_59

    :cond_6c
    iget v3, v1, Landroid/support/v4/view/bi;->b:I

    if-ne v5, v3, :cond_b6

    iget v3, v1, Landroid/support/v4/view/bi;->e:F

    iget v4, v1, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v3, v4

    int-to-float v4, v7

    mul-float/2addr v3, v4

    iget v4, v1, Landroid/support/v4/view/bi;->e:F

    iget v11, v1, Landroid/support/v4/view/bi;->d:F

    add-float/2addr v4, v11

    add-float/2addr v4, v8

    :goto_7d
    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v4/view/ViewPager;->q:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    int-to-float v12, v6

    cmpl-float v11, v11, v12

    if-lez v11, :cond_ab

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->r:Landroid/graphics/drawable/Drawable;

    float-to-int v12, v3

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/view/ViewPager;->s:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v4/view/ViewPager;->q:I

    int-to-float v14, v14

    add-float/2addr v14, v3

    const/high16 v15, 0x3f00

    add-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v4/view/ViewPager;->t:I

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->r:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_ab
    add-int v11, v6, v7

    int-to-float v11, v11

    cmpl-float v3, v3, v11

    if-gtz v3, :cond_c4

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_57

    :cond_b6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    const/high16 v3, 0x3f80

    add-float/2addr v3, v4

    int-to-float v11, v7

    mul-float/2addr v3, v11

    const/high16 v11, 0x3f80

    add-float/2addr v11, v8

    add-float/2addr v4, v11

    goto :goto_7d

    :cond_c4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15

    const/4 v3, -0x1

    const/4 v12, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    if-ne v0, v6, :cond_22

    :cond_f
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->D:Z

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->E:Z

    iput v3, p0, Landroid/support/v4/view/ViewPager;->M:I

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/view/VelocityTracker;

    :cond_21
    :goto_21
    return v2

    :cond_22
    if-eqz v0, :cond_2e

    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->D:Z

    if-eqz v1, :cond_2a

    move v2, v6

    goto :goto_21

    :cond_2a
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->E:Z

    if-nez v1, :cond_21

    :cond_2e
    sparse-switch v0, :sswitch_data_11e

    :cond_31
    :goto_31
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3b

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/view/VelocityTracker;

    :cond_3b
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->D:Z

    goto :goto_21

    :sswitch_43
    iget v0, p0, Landroid/support/v4/view/ViewPager;->M:I

    if-eq v0, v3, :cond_31

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v7

    iget v1, p0, Landroid/support/v4/view/ViewPager;->I:F

    sub-float v8, v7, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->d(Landroid/view/MotionEvent;I)F

    move-result v10

    iget v0, p0, Landroid/support/v4/view/ViewPager;->L:F

    sub-float v0, v10, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v0, v8, v12

    if-eqz v0, :cond_81

    iget v0, p0, Landroid/support/v4/view/ViewPager;->I:F

    invoke-direct {p0, v0, v8}, Landroid/support/v4/view/ViewPager;->a(FF)Z

    move-result v0

    if-nez v0, :cond_81

    float-to-int v3, v8

    float-to-int v4, v7

    float-to-int v5, v10

    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_81

    iput v7, p0, Landroid/support/v4/view/ViewPager;->I:F

    iput v10, p0, Landroid/support/v4/view/ViewPager;->J:F

    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->E:Z

    goto :goto_21

    :cond_81
    iget v0, p0, Landroid/support/v4/view/ViewPager;->H:I

    int-to-float v0, v0

    cmpl-float v0, v9, v0

    if-lez v0, :cond_bb

    const/high16 v0, 0x3f00

    mul-float/2addr v0, v9

    cmpl-float v0, v0, v11

    if-lez v0, :cond_bb

    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->D:Z

    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    cmpl-float v0, v8, v12

    if-lez v0, :cond_b4

    iget v0, p0, Landroid/support/v4/view/ViewPager;->K:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->H:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_9e
    iput v0, p0, Landroid/support/v4/view/ViewPager;->I:F

    iput v10, p0, Landroid/support/v4/view/ViewPager;->J:F

    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    :cond_a5
    :goto_a5
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->D:Z

    if-eqz v0, :cond_31

    invoke-direct {p0, v7}, Landroid/support/v4/view/ViewPager;->b(F)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {p0}, Landroid/support/v4/view/ak;->b(Landroid/view/View;)V

    goto/16 :goto_31

    :cond_b4
    iget v0, p0, Landroid/support/v4/view/ViewPager;->K:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->H:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_9e

    :cond_bb
    iget v0, p0, Landroid/support/v4/view/ViewPager;->H:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_a5

    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->E:Z

    goto :goto_a5

    :sswitch_c5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->K:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->I:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->L:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->J:F

    invoke-static {p1, v2}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->M:I

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->E:Z

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget v0, p0, Landroid/support/v4/view/ViewPager;->al:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_111

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->R:I

    if-le v0, v1, :cond_111

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->A:Z

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->b()V

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ab:Z

    if-eqz v0, :cond_31

    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->D:Z

    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    goto/16 :goto_31

    :cond_111
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->a(Z)V

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->D:Z

    goto/16 :goto_31

    :sswitch_118
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_31

    nop

    :sswitch_data_11e
    .sparse-switch
        0x0 -> :sswitch_c5
        0x2 -> :sswitch_43
        0x6 -> :sswitch_118
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 23

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v9

    sub-int v10, p4, p2

    sub-int v11, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v12

    const/4 v4, 0x0

    const/4 v1, 0x0

    move v8, v1

    :goto_1f
    if-ge v8, v9, :cond_be

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v7, 0x8

    if-eq v1, v7, :cond_141

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/bj;

    iget-boolean v7, v1, Landroid/support/v4/view/bj;->a:Z

    if-eqz v7, :cond_141

    iget v7, v1, Landroid/support/v4/view/bj;->b:I

    and-int/lit8 v7, v7, 0x7

    iget v1, v1, Landroid/support/v4/view/bj;->b:I

    and-int/lit8 v14, v1, 0x70

    packed-switch v7, :pswitch_data_148

    :pswitch_44
    move v7, v6

    :goto_45
    sparse-switch v14, :sswitch_data_156

    move v1, v2

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    :goto_4e
    add-int/2addr v7, v12

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v1

    invoke-virtual {v13, v7, v1, v14, v15}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v1, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v5

    move v5, v6

    :goto_62
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v6, v5

    move v5, v2

    move v2, v4

    move v4, v1

    goto :goto_1f

    :pswitch_6a
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v6

    move v7, v6

    move v6, v1

    goto :goto_45

    :pswitch_72
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v10, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v7, v1

    goto :goto_45

    :pswitch_80
    sub-int v1, v10, v5

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v1, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    move v7, v1

    goto :goto_45

    :sswitch_8e
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v2

    move/from16 v16, v2

    move v2, v3

    move v3, v1

    move/from16 v1, v16

    goto :goto_4e

    :sswitch_9a
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v11, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_4e

    :sswitch_ac
    sub-int v1, v11, v3

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v1, v14

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v3, v14

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_4e

    :cond_be
    sub-int v1, v10, v6

    sub-int v7, v1, v5

    const/4 v1, 0x0

    move v5, v1

    :goto_c4
    if-ge v5, v9, :cond_11b

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v10, 0x8

    if-eq v1, v10, :cond_117

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/bj;

    iget-boolean v10, v1, Landroid/support/v4/view/bj;->a:Z

    if-nez v10, :cond_117

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/bi;

    move-result-object v10

    if-eqz v10, :cond_117

    int-to-float v12, v7

    iget v10, v10, Landroid/support/v4/view/bi;->e:F

    mul-float/2addr v10, v12

    float-to-int v10, v10

    add-int/2addr v10, v6

    iget-boolean v12, v1, Landroid/support/v4/view/bj;->d:Z

    if-eqz v12, :cond_10a

    const/4 v12, 0x0

    iput-boolean v12, v1, Landroid/support/v4/view/bj;->d:Z

    int-to-float v12, v7

    iget v1, v1, Landroid/support/v4/view/bj;->c:F

    mul-float/2addr v1, v12

    float-to-int v1, v1

    const/high16 v12, 0x4000

    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    sub-int v12, v11, v2

    sub-int/2addr v12, v3

    const/high16 v13, 0x4000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v8, v1, v12}, Landroid/view/View;->measure(II)V

    :cond_10a
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v2

    invoke-virtual {v8, v10, v2, v1, v12}, Landroid/view/View;->layout(IIII)V

    :cond_117
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_c4

    :cond_11b
    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/view/ViewPager;->s:I

    sub-int v1, v11, v3

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/v4/view/ViewPager;->t:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v4/view/ViewPager;->aa:I

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager;->V:Z

    if-eqz v1, :cond_13b

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->k:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/view/ViewPager;->a(IZIZ)V

    :cond_13b
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->V:Z

    return-void

    :cond_141
    move v1, v4

    move v4, v2

    move v2, v5

    move v5, v6

    goto/16 :goto_62

    nop

    :pswitch_data_148
    .packed-switch 0x1
        :pswitch_72
        :pswitch_44
        :pswitch_6a
        :pswitch_44
        :pswitch_80
    .end packed-switch

    :sswitch_data_156
    .sparse-switch
        0x10 -> :sswitch_9a
        0x30 -> :sswitch_8e
        0x50 -> :sswitch_ac
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 16

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p2}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0xa

    iget v2, p0, Landroid/support/v4/view/ViewPager;->F:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->G:I

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v1

    sub-int v5, v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v9

    const/4 v0, 0x0

    move v8, v0

    :goto_3b
    if-ge v8, v9, :cond_bc

    invoke-virtual {p0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_a5

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bj;

    if-eqz v0, :cond_a5

    iget-boolean v1, v0, Landroid/support/v4/view/bj;->a:Z

    if-eqz v1, :cond_a5

    iget v1, v0, Landroid/support/v4/view/bj;->b:I

    and-int/lit8 v6, v1, 0x7

    iget v1, v0, Landroid/support/v4/view/bj;->b:I

    and-int/lit8 v4, v1, 0x70

    const/high16 v2, -0x8000

    const/high16 v1, -0x8000

    const/16 v7, 0x30

    if-eq v4, v7, :cond_69

    const/16 v7, 0x50

    if-ne v4, v7, :cond_a9

    :cond_69
    const/4 v4, 0x1

    move v7, v4

    :goto_6b
    const/4 v4, 0x3

    if-eq v6, v4, :cond_71

    const/4 v4, 0x5

    if-ne v6, v4, :cond_ac

    :cond_71
    const/4 v4, 0x1

    move v6, v4

    :goto_73
    if-eqz v7, :cond_af

    const/high16 v2, 0x4000

    :cond_77
    :goto_77
    iget v4, v0, Landroid/support/v4/view/bj;->width:I

    const/4 v11, -0x2

    if-eq v4, v11, :cond_10f

    const/high16 v4, 0x4000

    iget v2, v0, Landroid/support/v4/view/bj;->width:I

    const/4 v11, -0x1

    if-eq v2, v11, :cond_10c

    iget v2, v0, Landroid/support/v4/view/bj;->width:I

    :goto_85
    iget v11, v0, Landroid/support/v4/view/bj;->height:I

    const/4 v12, -0x2

    if-eq v11, v12, :cond_10a

    const/high16 v1, 0x4000

    iget v11, v0, Landroid/support/v4/view/bj;->height:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_10a

    iget v0, v0, Landroid/support/v4/view/bj;->height:I

    :goto_93
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v10, v2, v0}, Landroid/view/View;->measure(II)V

    if-eqz v7, :cond_b4

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v5, v0

    :cond_a5
    :goto_a5
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_3b

    :cond_a9
    const/4 v4, 0x0

    move v7, v4

    goto :goto_6b

    :cond_ac
    const/4 v4, 0x0

    move v6, v4

    goto :goto_73

    :cond_af
    if-eqz v6, :cond_77

    const/high16 v1, 0x4000

    goto :goto_77

    :cond_b4
    if-eqz v6, :cond_a5

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_a5

    :cond_bc
    const/high16 v0, 0x4000

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->w:I

    const/high16 v0, 0x4000

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->x:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->y:Z

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->y:Z

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_db
    if-ge v1, v2, :cond_109

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_105

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bj;

    if-eqz v0, :cond_f5

    iget-boolean v5, v0, Landroid/support/v4/view/bj;->a:Z

    if-nez v5, :cond_105

    :cond_f5
    int-to-float v5, v3

    iget v0, v0, Landroid/support/v4/view/bj;->c:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    const/high16 v5, 0x4000

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v5, p0, Landroid/support/v4/view/ViewPager;->x:I

    invoke-virtual {v4, v0, v5}, Landroid/view/View;->measure(II)V

    :cond_105
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_db

    :cond_109
    return-void

    :cond_10a
    move v0, v5

    goto :goto_93

    :cond_10c
    move v2, v3

    goto/16 :goto_85

    :cond_10f
    move v4, v2

    move v2, v3

    goto/16 :goto_85
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_2c

    move v3, v0

    move v4, v1

    :goto_d
    if-eq v4, v2, :cond_33

    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_31

    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/bi;

    move-result-object v6

    if-eqz v6, :cond_31

    iget v6, v6, Landroid/support/v4/view/bi;->b:I

    iget v7, p0, Landroid/support/v4/view/ViewPager;->k:I

    if-ne v6, v7, :cond_31

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_31

    :goto_2b
    return v0

    :cond_2c
    add-int/lit8 v2, v2, -0x1

    move v4, v2

    move v2, v3

    goto :goto_d

    :cond_31
    add-int/2addr v4, v3

    goto :goto_d

    :cond_33
    move v0, v1

    goto :goto_2b
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    instance-of v0, p1, Landroid/support/v4/view/ViewPager$SavedState;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_7
    return-void

    :cond_8
    check-cast p1, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    goto :goto_7

    :cond_23
    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->a:I

    iput v0, p0, Landroid/support/v4/view/ViewPager;->l:I

    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/os/Parcelable;

    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->n:Ljava/lang/ClassLoader;

    goto :goto_7
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Landroid/support/v4/view/ViewPager;->k:I

    iput v0, v1, Landroid/support/v4/view/ViewPager$SavedState;->a:I

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    const/4 v0, 0x0

    iput-object v0, v1, Landroid/support/v4/view/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    :cond_16
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .registers 7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_c

    iget v0, p0, Landroid/support/v4/view/ViewPager;->q:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->q:I

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IIII)V

    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->S:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_17

    move v0, v2

    goto :goto_8

    :cond_17
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/view/VelocityTracker;

    if-nez v0, :cond_27

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/view/VelocityTracker;

    :cond_27
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_166

    :cond_35
    :goto_35
    :pswitch_35
    if-eqz v2, :cond_3a

    invoke-static {p0}, Landroid/support/v4/view/ak;->b(Landroid/view/View;)V

    :cond_3a
    move v0, v1

    goto :goto_8

    :cond_3c
    move v0, v2

    goto :goto_8

    :pswitch_3e
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->A:Z

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->b()V

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ab:Z

    if-eqz v0, :cond_51

    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->D:Z

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    :cond_51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->K:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->I:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->L:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->J:F

    invoke-static {p1, v2}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->M:I

    goto :goto_35

    :pswitch_68
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->D:Z

    if-nez v0, :cond_b0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->M:I

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    iget v4, p0, Landroid/support/v4/view/ViewPager;->I:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->d(Landroid/view/MotionEvent;I)F

    move-result v5

    iget v0, p0, Landroid/support/v4/view/ViewPager;->J:F

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v6, p0, Landroid/support/v4/view/ViewPager;->H:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_b0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_b0

    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->D:Z

    iget v0, p0, Landroid/support/v4/view/ViewPager;->K:F

    sub-float v0, v3, v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_c6

    iget v0, p0, Landroid/support/v4/view/ViewPager;->K:F

    iget v3, p0, Landroid/support/v4/view/ViewPager;->H:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    :goto_a6
    iput v0, p0, Landroid/support/v4/view/ViewPager;->I:F

    iput v5, p0, Landroid/support/v4/view/ViewPager;->J:F

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    :cond_b0
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->D:Z

    if-eqz v0, :cond_35

    iget v0, p0, Landroid/support/v4/view/ViewPager;->M:I

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->b(F)Z

    move-result v0

    or-int/lit8 v2, v0, 0x0

    goto/16 :goto_35

    :cond_c6
    iget v0, p0, Landroid/support/v4/view/ViewPager;->K:F

    iget v3, p0, Landroid/support/v4/view/ViewPager;->H:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    goto :goto_a6

    :pswitch_cd
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->D:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v3, p0, Landroid/support/v4/view/ViewPager;->P:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v2, p0, Landroid/support/v4/view/ViewPager;->M:I

    invoke-static {v0, v2}, Landroid/support/v4/view/af;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->A:Z

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->g()Landroid/support/v4/view/bi;

    move-result-object v4

    iget v5, v4, Landroid/support/v4/view/bi;->b:I

    int-to-float v3, v3

    int-to-float v2, v2

    div-float v2, v3, v2

    iget v3, v4, Landroid/support/v4/view/bi;->e:F

    sub-float/2addr v2, v3

    iget v3, v4, Landroid/support/v4/view/bi;->d:F

    div-float/2addr v2, v3

    iget v3, p0, Landroid/support/v4/view/ViewPager;->M:I

    invoke-static {p1, v3}, Landroid/support/v4/view/z;->a(Landroid/view/MotionEvent;I)I

    move-result v3

    invoke-static {p1, v3}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    iget v4, p0, Landroid/support/v4/view/ViewPager;->K:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {p0, v5, v2, v0, v3}, Landroid/support/v4/view/ViewPager;->a(IFII)I

    move-result v2

    invoke-direct {p0, v2, v1, v1, v0}, Landroid/support/v4/view/ViewPager;->a(IZZI)V

    iput v6, p0, Landroid/support/v4/view/ViewPager;->M:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->h()V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->T:Landroid/support/v4/widget/e;

    invoke-virtual {v0}, Landroid/support/v4/widget/e;->c()Z

    move-result v0

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->U:Landroid/support/v4/widget/e;

    invoke-virtual {v2}, Landroid/support/v4/widget/e;->c()Z

    move-result v2

    or-int/2addr v2, v0

    goto/16 :goto_35

    :pswitch_125
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->D:Z

    if-eqz v0, :cond_35

    iget v0, p0, Landroid/support/v4/view/ViewPager;->k:I

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/support/v4/view/ViewPager;->a(IZIZ)V

    iput v6, p0, Landroid/support/v4/view/ViewPager;->M:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->h()V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->T:Landroid/support/v4/widget/e;

    invoke-virtual {v0}, Landroid/support/v4/widget/e;->c()Z

    move-result v0

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->U:Landroid/support/v4/widget/e;

    invoke-virtual {v2}, Landroid/support/v4/widget/e;->c()Z

    move-result v2

    or-int/2addr v2, v0

    goto/16 :goto_35

    :pswitch_142
    invoke-static {p1}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->I:F

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->M:I

    goto/16 :goto_35

    :pswitch_154
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/MotionEvent;)V

    iget v0, p0, Landroid/support/v4/view/ViewPager;->M:I

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->I:F

    goto/16 :goto_35

    nop

    :pswitch_data_166
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_cd
        :pswitch_68
        :pswitch_125
        :pswitch_35
        :pswitch_142
        :pswitch_154
    .end packed-switch
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->y:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    :goto_7
    return-void

    :cond_8
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_7
.end method

.method public setAdapter(Landroid/support/v4/view/ae;)V
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    if-eqz v0, :cond_43

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->p:Landroid/support/v4/view/bo;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ae;->b(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    invoke-virtual {v0}, Landroid/support/v4/view/ae;->a()V

    move v1, v2

    :goto_14
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_31

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/bi;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    iget v4, v0, Landroid/support/v4/view/bi;->b:I

    iget-object v0, v0, Landroid/support/v4/view/bi;->a:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ae;->a(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    :cond_31
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    invoke-virtual {v0}, Landroid/support/v4/view/ae;->b()V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->e()V

    iput v2, p0, Landroid/support/v4/view/ViewPager;->k:I

    invoke-virtual {p0, v2, v2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    :cond_43
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    iput v2, p0, Landroid/support/v4/view/ViewPager;->b:I

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    if-eqz v1, :cond_80

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->p:Landroid/support/v4/view/bo;

    if-nez v1, :cond_58

    new-instance v1, Landroid/support/v4/view/bo;

    invoke-direct {v1, p0, v2}, Landroid/support/v4/view/bo;-><init>(Landroid/support/v4/view/ViewPager;B)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->p:Landroid/support/v4/view/bo;

    :cond_58
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->p:Landroid/support/v4/view/bo;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ae;->a(Landroid/database/DataSetObserver;)V

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->A:Z

    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->V:Z

    iput-boolean v5, p0, Landroid/support/v4/view/ViewPager;->V:Z

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    const/4 v3, 0x2

    iput v3, p0, Landroid/support/v4/view/ViewPager;->b:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->l:I

    if-ltz v3, :cond_89

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/support/v4/view/ae;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/os/Parcelable;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->n:Ljava/lang/ClassLoader;

    iget v1, p0, Landroid/support/v4/view/ViewPager;->l:I

    invoke-direct {p0, v1, v2, v5}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->l:I

    iput-object v6, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/os/Parcelable;

    iput-object v6, p0, Landroid/support/v4/view/ViewPager;->n:Ljava/lang/ClassLoader;

    :cond_80
    :goto_80
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->ae:Landroid/support/v4/view/bl;

    if-eqz v1, :cond_88

    if-eq v0, p1, :cond_88

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ae:Landroid/support/v4/view/bl;

    :cond_88
    return-void

    :cond_89
    if-nez v1, :cond_8f

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->b()V

    goto :goto_80

    :cond_8f
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    goto :goto_80
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_2a

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ag:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1b

    :try_start_9
    const-class v0, Landroid/view/ViewGroup;

    const-string v1, "setChildrenDrawingOrderEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ag:Ljava/lang/reflect/Method;
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_1b} :catch_2b

    :cond_1b
    :goto_1b
    :try_start_1b
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ag:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2a} :catch_34

    :cond_2a
    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    const-string v1, "ViewPager"

    const-string v2, "Can\'t find setChildrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    :catch_34
    move-exception v0

    const-string v1, "ViewPager"

    const-string v2, "Error changing children drawing order"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a
.end method

.method public setCurrentItem(I)V
    .registers 4

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->A:Z

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->V:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_8
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    return-void

    :cond_c
    move v0, v1

    goto :goto_8
.end method

.method protected setIgnoreTouchSlop(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->ab:Z

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .registers 4

    if-gtz p1, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Requested offscreen page limit "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " too small; defaulting to 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    :cond_13
    iget v0, p0, Landroid/support/v4/view/ViewPager;->B:I

    if-eq p1, v0, :cond_1c

    iput p1, p0, Landroid/support/v4/view/ViewPager;->B:I

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->b()V

    :cond_1c
    return-void
.end method

.method setOnAdapterChangeListener(Landroid/support/v4/view/bl;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->ae:Landroid/support/v4/view/bl;

    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/bm;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->ac:Landroid/support/v4/view/bm;

    return-void
.end method

.method public setOnlyCreatePagesImmediatelyOffscreen(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->C:Z

    if-eq p1, v0, :cond_9

    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->C:Z

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->b()V

    :cond_9
    return-void
.end method

.method public setPageMargin(I)V
    .registers 4

    iget v0, p0, Landroid/support/v4/view/ViewPager;->q:I

    iput p1, p0, Landroid/support/v4/view/ViewPager;->q:I

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    invoke-direct {p0, v1, v1, p1, v0}, Landroid/support/v4/view/ViewPager;->a(IIII)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->r:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->refreshDrawableState()V

    :cond_7
    if-nez p1, :cond_11

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->r:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
