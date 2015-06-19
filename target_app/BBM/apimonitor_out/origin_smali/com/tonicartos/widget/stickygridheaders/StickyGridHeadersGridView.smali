.class public Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
.super Landroid/widget/GridView;
.source "StickyGridHeadersGridView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field static final a:Ljava/lang/String;

.field private static final k:Ljava/lang/String;


# instance fields
.field private A:Landroid/widget/AdapterView$OnItemClickListener;

.field private B:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private C:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private D:Lcom/tonicartos/widget/stickygridheaders/k;

.field private E:Landroid/widget/AbsListView$OnScrollListener;

.field private F:I

.field private G:Landroid/view/View;

.field private H:Ljava/lang/Runnable;

.field private I:I

.field private J:I

.field public b:Lcom/tonicartos/widget/stickygridheaders/g;

.field public c:Lcom/tonicartos/widget/stickygridheaders/h;

.field d:Lcom/tonicartos/widget/stickygridheaders/i;

.field e:Lcom/tonicartos/widget/stickygridheaders/j;

.field protected f:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

.field protected g:Z

.field protected h:I

.field protected i:I

.field j:Z

.field private l:Z

.field private final m:Landroid/graphics/Rect;

.field private n:Z

.field private o:Z

.field private p:I

.field private q:J

.field private r:Landroid/database/DataSetObserver;

.field private s:I

.field private t:Z

.field private u:I

.field private v:Z

.field private w:F

.field private x:I

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error supporting platform "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->k:Ljava/lang/String;

    const-class v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->l:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->q:J

    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/d;

    invoke-direct {v0, p0}, Lcom/tonicartos/widget/stickygridheaders/d;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V

    iput-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->r:Landroid/database/DataSetObserver;

    iput-boolean v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->v:Z

    iput v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->z:I

    iput v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->F:I

    iput-boolean v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->j:Z

    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setVerticalFadingEdgeEnabled(Z)V

    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->y:Z

    if-nez v0, :cond_2e

    const/4 v0, -0x1

    iput v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->x:I

    :cond_2e
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->I:I

    return-void
.end method

.method static synthetic a(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;I)J
    .registers 4

    const/4 v0, -0x2

    if-ne p1, v0, :cond_6

    iget-wide v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->q:J

    :goto_5
    return-wide v0

    :cond_6
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->b(I)J

    move-result-wide v0

    goto :goto_5
.end method

.method private a(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;
    .registers 25

    const/4 v2, -0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_6

    :goto_5
    return-object p1

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    new-array v8, v10, [I

    const/4 v9, 0x0

    :goto_1d
    if-ge v9, v10, :cond_2a

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    aput v11, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    :cond_2a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    new-array v9, v11, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v10, 0x0

    :goto_31
    if-ge v10, v11, :cond_44

    new-instance v12, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v12}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v12, v9, v10

    aget-object v12, v9, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v12}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_31

    :cond_44
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    const/16 v17, 0x0

    :goto_6a
    move/from16 v0, v17

    if-ge v0, v7, :cond_8a

    aget-object v19, v9, v17

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-int/lit8 v17, v17, 0x1

    goto :goto_6a

    :cond_8a
    invoke-static/range {v2 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object p1

    goto/16 :goto_5
.end method

.method static synthetic a(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V
    .registers 1

    invoke-direct {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->d()V

    return-void
.end method

.method static synthetic b(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)Ljava/lang/Runnable;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->H:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->k:Ljava/lang/String;

    return-object v0
.end method

.method private b(I)V
    .registers 15

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getCount()I

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->l:Z

    if-nez v0, :cond_12

    :cond_11
    :goto_11
    return-void

    :cond_12
    invoke-virtual {p0, v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->z:I

    sub-int v0, p1, v0

    if-gez v0, :cond_1f

    move v0, p1

    :cond_1f
    iget v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->z:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_2b

    move v1, p1

    :cond_2b
    iget v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->J:I

    if-eqz v2, :cond_bd

    iget v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->J:I

    if-gez v2, :cond_a5

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->b(I)J

    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->z:I

    invoke-virtual {p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gtz v0, :cond_9d

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->b(I)J

    move-result-wide v2

    move-wide v11, v2

    move v2, v1

    move-wide v0, v11

    :goto_4d
    iget-wide v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->q:J

    cmp-long v3, v3, v0

    if-eqz v3, :cond_63

    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    iget-object v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-virtual {v3, v2, v4, p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->c(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->c()V

    iput-wide v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->q:J

    :cond_63
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildCount()I

    move-result v6

    if-eqz v6, :cond_11

    const/4 v3, 0x0

    const v1, 0x1869f

    move v4, v5

    :goto_6e
    if-ge v4, v6, :cond_ca

    invoke-super {p0, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->n:Z

    if-eqz v0, :cond_c5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v7

    sub-int/2addr v0, v7

    :goto_81
    if-ltz v0, :cond_131

    iget-object v7, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {p0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPositionForView(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getItemId(I)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_131

    if-ge v0, v1, :cond_131

    move-object v1, v2

    :goto_96
    iget v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->z:I

    add-int/2addr v2, v4

    move v4, v2

    move-object v3, v1

    move v1, v0

    goto :goto_6e

    :cond_9d
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->b(I)J

    move-result-wide v0

    move v2, p1

    goto :goto_4d

    :cond_a5
    invoke-virtual {p0, v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lez v1, :cond_bd

    iget v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->J:I

    if-ge v1, v2, :cond_bd

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v1, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->b(I)J

    move-result-wide v1

    move-wide v11, v1

    move v2, v0

    move-wide v0, v11

    goto :goto_4d

    :cond_bd
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->b(I)J

    move-result-wide v0

    move v2, p1

    goto :goto_4d

    :cond_c5
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_81

    :cond_ca
    invoke-direct {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeaderHeight()I

    move-result v0

    if-eqz v3, :cond_120

    if-nez p1, :cond_e4

    invoke-super {p0, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lez v1, :cond_e4

    iget-boolean v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->n:Z

    if-nez v1, :cond_e4

    iput v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    goto/16 :goto_11

    :cond_e4
    iget-boolean v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->n:Z

    if-eqz v1, :cond_10b

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    iget v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v2

    if-ge v1, v2, :cond_108

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    :goto_104
    iput v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    goto/16 :goto_11

    :cond_108
    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    goto :goto_104

    :cond_10b
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    iget v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    if-gez v1, :cond_11d

    :goto_119
    iput v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    goto/16 :goto_11

    :cond_11d
    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    goto :goto_119

    :cond_120
    iput v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->n:Z

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    goto/16 :goto_11

    :cond_131
    move v0, v1

    move-object v1, v3

    goto/16 :goto_96
.end method

.method static synthetic c(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)I
    .registers 2

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private c()V
    .registers 7

    const/high16 v3, 0x4000

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->t:Z

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_14
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_63

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_63

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_26
    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->t:Z

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_7

    :cond_50
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_14

    :cond_63
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_26

    :cond_68
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_7
.end method

.method private c(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->b(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a(Landroid/view/View;)V

    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    return-void
.end method

.method static synthetic d(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)I
    .registers 2

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private d()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->c(Landroid/view/View;)V

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->q:J

    return-void
.end method

.method private getHeaderHeight()I
    .registers 2

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .registers 4

    const/4 v1, 0x0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    :goto_6
    return-object v0

    :cond_7
    if-gez p1, :cond_b

    move-object v0, v1

    goto :goto_6

    :cond_b
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_16

    goto :goto_6

    :catch_16
    move-exception v0

    move-object v0, v1

    goto :goto_6
.end method

.method public final a()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    iget-object v1, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d:Lcom/tonicartos/widget/stickygridheaders/a;

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->c:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/a;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v1, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->e:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->removeAllViewsInLayout()V

    iput-object v3, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->e:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v1, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->f:Landroid/view/View;

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    iput-object v3, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->f:Landroid/view/View;

    :cond_1c
    iget-object v1, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->g:Landroid/view/View;

    if-eqz v1, :cond_27

    iget-object v1, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    iput-object v3, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->g:Landroid/view/View;

    :cond_27
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->r:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-direct {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->d()V

    invoke-super {p0, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p0, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method final a(Landroid/view/View;)V
    .registers 8

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    const-class v0, Landroid/view/View;

    const-string v1, "mAttachInfo"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v1, Landroid/view/View;

    const-string v2, "dispatchAttachedToWindow"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-string v5, "android.view.View$AttachInfo"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_42} :catch_43
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_42} :catch_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_42} :catch_51
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_42} :catch_58
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_42} :catch_5f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_42} :catch_66

    goto :goto_2

    :catch_43
    move-exception v0

    new-instance v1, Lcom/tonicartos/widget/stickygridheaders/l;

    invoke-direct {v1, p0, v0}, Lcom/tonicartos/widget/stickygridheaders/l;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v1

    :catch_4a
    move-exception v0

    new-instance v1, Lcom/tonicartos/widget/stickygridheaders/l;

    invoke-direct {v1, p0, v0}, Lcom/tonicartos/widget/stickygridheaders/l;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v1

    :catch_51
    move-exception v0

    new-instance v1, Lcom/tonicartos/widget/stickygridheaders/l;

    invoke-direct {v1, p0, v0}, Lcom/tonicartos/widget/stickygridheaders/l;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v1

    :catch_58
    move-exception v0

    new-instance v1, Lcom/tonicartos/widget/stickygridheaders/l;

    invoke-direct {v1, p0, v0}, Lcom/tonicartos/widget/stickygridheaders/l;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v1

    :catch_5f
    move-exception v0

    new-instance v1, Lcom/tonicartos/widget/stickygridheaders/l;

    invoke-direct {v1, p0, v0}, Lcom/tonicartos/widget/stickygridheaders/l;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v1

    :catch_66
    move-exception v0

    new-instance v1, Lcom/tonicartos/widget/stickygridheaders/l;

    invoke-direct {v1, p0, v0}, Lcom/tonicartos/widget/stickygridheaders/l;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v1
.end method

.method final b(Landroid/view/View;)V
    .registers 5

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    const-class v0, Landroid/view/View;

    const-string v1, "dispatchDetachedFromWindow"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_18} :catch_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_18} :catch_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_18} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_18} :catch_2e

    goto :goto_2

    :catch_19
    move-exception v0

    new-instance v1, Lcom/tonicartos/widget/stickygridheaders/l;

    invoke-direct {v1, p0, v0}, Lcom/tonicartos/widget/stickygridheaders/l;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v1

    :catch_20
    move-exception v0

    new-instance v1, Lcom/tonicartos/widget/stickygridheaders/l;

    invoke-direct {v1, p0, v0}, Lcom/tonicartos/widget/stickygridheaders/l;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v1

    :catch_27
    move-exception v0

    new-instance v1, Lcom/tonicartos/widget/stickygridheaders/l;

    invoke-direct {v1, p0, v0}, Lcom/tonicartos/widget/stickygridheaders/l;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v1

    :catch_2e
    move-exception v0

    new-instance v1, Lcom/tonicartos/widget/stickygridheaders/l;

    invoke-direct {v1, p0, v0}, Lcom/tonicartos/widget/stickygridheaders/l;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_d

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->b(I)V

    :cond_d
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    if-eqz v0, :cond_7f

    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->l:Z

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7f

    const/4 v0, 0x1

    move v3, v0

    :goto_1f
    invoke-direct {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeaderHeight()I

    move-result v7

    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    sub-int v5, v0, v7

    if-eqz v3, :cond_54

    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->v:Z

    if-eqz v0, :cond_54

    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->t:Z

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :goto_3e
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    iget v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    :cond_54
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchDraw(Landroid/graphics/Canvas;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v0

    :goto_61
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLastVisiblePosition()I

    move-result v2

    if-gt v0, v2, :cond_98

    invoke-virtual {p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getItemIdAtPosition(I)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v2, v8, v10

    if-nez v2, :cond_78

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_78
    iget v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->z:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->z:I

    add-int/2addr v1, v2

    goto :goto_61

    :cond_7f
    const/4 v0, 0x0

    move v3, v0

    goto :goto_1f

    :cond_82
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_3e

    :cond_98
    const/4 v0, 0x0

    move v4, v0

    :goto_9a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_1b7

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :try_start_ae
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b4} :catch_2e4

    if-eqz v0, :cond_b8

    if-nez v2, :cond_c4

    :cond_b8
    const-string v0, "Header or frame is null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_c0
    :goto_c0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_9a

    :cond_c4
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_c0

    instance-of v1, v2, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;

    if-eqz v1, :cond_e9

    move-object v1, v2

    check-cast v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;

    invoke-virtual {v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getHeaderId()I

    move-result v1

    int-to-long v8, v1

    iget-wide v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->q:J

    cmp-long v1, v8, v10

    if-nez v1, :cond_161

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    if-gez v1, :cond_161

    iget-boolean v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->l:Z

    if-eqz v1, :cond_161

    const/4 v1, 0x1

    :goto_e7
    if-nez v1, :cond_c0

    :cond_e9
    iget-boolean v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->t:Z

    if-eqz v1, :cond_163

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v1

    const/high16 v8, 0x4000

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_f7
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v0, v9, v10}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0, v1, v8}, Landroid/view/View;->measure(II)V

    iget-boolean v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->t:Z

    if-eqz v1, :cond_178

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLeft()I

    move-result v1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRight()I

    move-result v9

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    :goto_123
    iget-boolean v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->t:Z

    if-eqz v1, :cond_193

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    const/4 v8, 0x0

    iput v8, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v8

    iput v8, v1, Landroid/graphics/Rect;->right:I

    :goto_134
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v8

    iput v8, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    iput v8, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-boolean v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->t:Z

    if-eqz v1, :cond_1a9

    const/4 v1, 0x0

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_159
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_c0

    :cond_161
    const/4 v1, 0x0

    goto :goto_e7

    :cond_163
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v1, v8

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v1, v8

    const/high16 v8, 0x4000

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_f7

    :cond_178
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v1, v8

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRight()I

    move-result v9

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_123

    :cond_193
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v8

    iput v8, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v1, Landroid/graphics/Rect;->right:I

    goto :goto_134

    :cond_1a9
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_159

    :cond_1b7
    if-eqz v3, :cond_272

    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->v:Z

    if-eqz v0, :cond_272

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1c0
    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->t:Z

    if-eqz v0, :cond_275

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v0

    :goto_1c8
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eq v1, v0, :cond_212

    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->t:Z

    if-eqz v0, :cond_285

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_1de
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->t:Z

    if-eqz v0, :cond_29b

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLeft()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_212
    :goto_212
    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->t:Z

    if-eqz v0, :cond_2bb

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :goto_223
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    add-int v1, v5, v7

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->n:Z

    if-eqz v0, :cond_2d2

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :goto_235
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->t:Z

    if-eqz v0, :cond_2d9

    const/4 v0, 0x0

    int-to-float v1, v5

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_246
    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    if-eq v0, v7, :cond_262

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    mul-int/lit16 v0, v0, 0xff

    div-int v5, v0, v7

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    :cond_262
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    if-eq v0, v7, :cond_26e

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_26e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_271
    return-void

    :cond_272
    if-nez v3, :cond_1c0

    goto :goto_271

    :cond_275
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto/16 :goto_1c8

    :cond_285
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto/16 :goto_1de

    :cond_29b
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_212

    :cond_2bb
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_223

    :cond_2d2
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->m:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto/16 :goto_235

    :cond_2d9
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v5

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_246

    :catch_2e4
    move-exception v0

    goto :goto_271
.end method

.method public getStickiedHeader()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    return-object v0
.end method

.method public getStickyHeaderIsTranscluent()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->v:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->A:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->B:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->C:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 9

    const/4 v0, 0x1

    iget v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->x:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_48

    iget v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->p:I

    if-lez v1, :cond_33

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->p:I

    div-int v1, v2, v1

    if-lez v1, :cond_34

    :goto_23
    if-eq v1, v0, :cond_4d

    iget v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->p:I

    mul-int/2addr v3, v1

    add-int/lit8 v4, v1, -0x1

    iget v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->u:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    if-le v3, v2, :cond_4d

    add-int/lit8 v1, v1, -0x1

    goto :goto_23

    :cond_33
    const/4 v0, 0x2

    :cond_34
    :goto_34
    iput v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->z:I

    :goto_36
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    iget v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->z:I

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->a(I)V

    :cond_41
    invoke-direct {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->c()V

    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    return-void

    :cond_48
    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->x:I

    iput v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->z:I

    goto :goto_36

    :cond_4d
    move v0, v1

    goto :goto_34
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->C:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    check-cast p1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;

    invoke-virtual {p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/GridView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v0, p1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;->a:Z

    iput-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->l:Z

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroid/widget/GridView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;

    invoke-direct {v1, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->l:Z

    iput-boolean v0, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;->a:Z

    return-object v1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 7

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->E:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->E:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_12

    invoke-direct {p0, p2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->b(I)V

    :cond_12
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->E:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->E:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_9
    iput p2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->F:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    const/4 v3, -0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    iget-boolean v7, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->j:Z

    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->j:Z

    if-eqz v0, :cond_4f

    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    invoke-virtual {p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a(I)Landroid/view/View;

    move-result-object v1

    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    if-ne v0, v3, :cond_59

    move-object v0, v1

    :goto_19
    if-eq v6, v5, :cond_1e

    const/4 v8, 0x3

    if-ne v6, v8, :cond_20

    :cond_1e
    iput-boolean v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->j:Z

    :cond_20
    if-eqz v1, :cond_4f

    iget v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    invoke-direct {p0, p1, v8}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    new-instance v8, Lcom/tonicartos/widget/stickygridheaders/e;

    invoke-direct {v8, p0, v0}, Lcom/tonicartos/widget/stickygridheaders/e;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Landroid/view/View;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v1, v8, v9, v10}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v9

    invoke-virtual {p0, v2, v1, v8, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->invalidate(IIII)V

    :cond_4f
    and-int/lit16 v0, v6, 0xff

    packed-switch v0, :pswitch_data_1c2

    :cond_54
    :goto_54
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_58
    return v0

    :cond_59
    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    invoke-virtual {p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_19

    :pswitch_60
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->c:Lcom/tonicartos/widget/stickygridheaders/h;

    if-nez v0, :cond_6b

    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/h;

    invoke-direct {v0, p0}, Lcom/tonicartos/widget/stickygridheaders/h;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V

    iput-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->c:Lcom/tonicartos/widget/stickygridheaders/h;

    :cond_6b
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->c:Lcom/tonicartos/widget/stickygridheaders/h;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p0, v0, v6, v7}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v1, v0

    iput v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->w:F

    int-to-float v6, v0

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->G:Landroid/view/View;

    if-eqz v0, :cond_d3

    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->s:I

    int-to-float v0, v0

    cmpg-float v0, v6, v0

    if-gtz v0, :cond_d3

    move v1, v3

    :cond_8a
    :goto_8a
    iput v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    if-eq v0, v4, :cond_54

    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->F:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_54

    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    invoke-virtual {p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_cf

    iget v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    invoke-direct {p0, p1, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_ae

    iput-boolean v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->j:Z

    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    :cond_ae
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    if-eq v1, v3, :cond_bb

    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    invoke-virtual {p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :cond_bb
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->invalidate(IIII)V

    :cond_cf
    iput v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->i:I

    move v0, v5

    goto :goto_58

    :cond_d3
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v0

    move v1, v2

    :goto_d8
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLastVisiblePosition()I

    move-result v7

    if-gt v0, v7, :cond_105

    invoke-virtual {p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getItemIdAtPosition(I)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_fe

    invoke-virtual {p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v8, v8

    cmpg-float v8, v6, v8

    if-gtz v8, :cond_fe

    int-to-float v7, v7

    cmpl-float v7, v6, v7

    if-gez v7, :cond_8a

    :cond_fe
    iget v7, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->z:I

    add-int/2addr v0, v7

    iget v7, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->z:I

    add-int/2addr v1, v7

    goto :goto_d8

    :cond_105
    move v1, v4

    goto :goto_8a

    :pswitch_107
    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    if-eq v0, v4, :cond_54

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->w:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->I:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_54

    iput v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->i:I

    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    invoke-virtual {p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12d

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_12d
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_138

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->b:Lcom/tonicartos/widget/stickygridheaders/g;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_138
    iput v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    goto/16 :goto_54

    :pswitch_13c
    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->i:I

    if-ne v0, v3, :cond_145

    iput v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->i:I

    move v0, v5

    goto/16 :goto_58

    :cond_145
    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->i:I

    if-eq v0, v4, :cond_54

    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    if-eq v0, v4, :cond_54

    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    invoke-virtual {p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a(I)Landroid/view/View;

    move-result-object v1

    if-nez v7, :cond_1af

    if-eqz v1, :cond_1af

    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->i:I

    if-eqz v0, :cond_15e

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_15e
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->D:Lcom/tonicartos/widget/stickygridheaders/k;

    if-nez v0, :cond_169

    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/k;

    invoke-direct {v0, p0, v2}, Lcom/tonicartos/widget/stickygridheaders/k;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;B)V

    iput-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->D:Lcom/tonicartos/widget/stickygridheaders/k;

    :cond_169
    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->D:Lcom/tonicartos/widget/stickygridheaders/k;

    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    iput v0, v2, Lcom/tonicartos/widget/stickygridheaders/k;->a:I

    invoke-virtual {v2}, Lcom/tonicartos/widget/stickygridheaders/k;->a()V

    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->i:I

    if-eqz v0, :cond_17a

    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->i:I

    if-ne v0, v5, :cond_1ba

    :cond_17a
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_189

    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->i:I

    if-nez v0, :cond_1b4

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->c:Lcom/tonicartos/widget/stickygridheaders/h;

    :goto_186
    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_189
    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->g:Z

    if-nez v0, :cond_1b7

    iput v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->i:I

    invoke-virtual {v1, v5}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0, v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setPressed(Z)V

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->H:Ljava/lang/Runnable;

    if-eqz v0, :cond_19e

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->H:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_19e
    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/f;

    invoke-direct {v0, p0, v1, v2}, Lcom/tonicartos/widget/stickygridheaders/f;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Landroid/view/View;Lcom/tonicartos/widget/stickygridheaders/k;)V

    iput-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->H:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->H:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1af
    :goto_1af
    iput v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->i:I

    move v0, v5

    goto/16 :goto_58

    :cond_1b4
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->b:Lcom/tonicartos/widget/stickygridheaders/g;

    goto :goto_186

    :cond_1b7
    iput v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->i:I

    goto :goto_1af

    :cond_1ba
    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->g:Z

    if-nez v0, :cond_1af

    invoke-virtual {v2}, Lcom/tonicartos/widget/stickygridheaders/k;->run()V

    goto :goto_1af

    :pswitch_data_1c2
    .packed-switch 0x0
        :pswitch_60
        :pswitch_13c
        :pswitch_107
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->r:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->r:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_f
    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->o:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->n:Z

    :cond_16
    instance-of v0, p1, Lcom/tonicartos/widget/stickygridheaders/a;

    if-eqz v0, :cond_37

    check-cast p1, Lcom/tonicartos/widget/stickygridheaders/a;

    :goto_1c
    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;-><init>(Landroid/content/Context;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Lcom/tonicartos/widget/stickygridheaders/a;)V

    iput-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->r:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-direct {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->d()V

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-super {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_37
    instance-of v0, p1, Lcom/tonicartos/widget/stickygridheaders/q;

    if-eqz v0, :cond_44

    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/r;

    check-cast p1, Lcom/tonicartos/widget/stickygridheaders/q;

    invoke-direct {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/r;-><init>(Lcom/tonicartos/widget/stickygridheaders/q;)V

    move-object p1, v0

    goto :goto_1c

    :cond_44
    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/o;

    invoke-direct {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/o;-><init>(Landroid/widget/ListAdapter;)V

    move-object p1, v0

    goto :goto_1c
.end method

.method public setAreHeadersSticky(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->l:Z

    if-eq p1, v0, :cond_9

    iput-boolean p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->l:Z

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setClipToPadding(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/GridView;->setClipToPadding(Z)V

    iput-boolean p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->n:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->o:Z

    return-void
.end method

.method public setColumnWidth(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/GridView;->setColumnWidth(I)V

    iput p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->p:I

    return-void
.end method

.method public setHeadersIgnorePadding(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->t:Z

    return-void
.end method

.method public setHorizontalSpacing(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    iput p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->u:I

    return-void
.end method

.method public setNumColumns(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->y:Z

    iput p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->x:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_14

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->a(I)V

    :cond_14
    return-void
.end method

.method public setOnHeaderClickListener(Lcom/tonicartos/widget/stickygridheaders/i;)V
    .registers 2

    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->d:Lcom/tonicartos/widget/stickygridheaders/i;

    return-void
.end method

.method public setOnHeaderLongClickListener(Lcom/tonicartos/widget/stickygridheaders/j;)V
    .registers 3

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setLongClickable(Z)V

    :cond_a
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->e:Lcom/tonicartos/widget/stickygridheaders/j;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3

    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->A:Landroid/widget/AdapterView$OnItemClickListener;

    if-nez p1, :cond_9

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :goto_8
    return-void

    :cond_9
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_8
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 3

    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->B:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-nez p1, :cond_9

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    :goto_8
    return-void

    :cond_9
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_8
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 3

    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->C:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-nez p1, :cond_9

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :goto_8
    return-void

    :cond_9
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_8
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 2

    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->E:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setStickyHeaderIsTranscluent(Z)V
    .registers 3

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->v:Z

    return-void

    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setVerticalSpacing(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    iput p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->J:I

    return-void
.end method
