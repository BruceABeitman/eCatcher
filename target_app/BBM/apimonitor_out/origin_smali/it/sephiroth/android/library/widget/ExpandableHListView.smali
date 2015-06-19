.class public Lit/sephiroth/android/library/widget/ExpandableHListView;
.super Lit/sephiroth/android/library/widget/HListView;
.source "ExpandableHListView.java"


# static fields
.field private static final aI:[I

.field private static final aJ:[I

.field private static final aK:[I

.field private static final aL:[I

.field private static final aM:[[I

.field private static final aN:[I


# instance fields
.field private aA:I

.field private aB:I

.field private aC:I

.field private aD:I

.field private aE:I

.field private aF:I

.field private aG:Landroid/graphics/drawable/Drawable;

.field private aH:Landroid/graphics/drawable/Drawable;

.field private aO:Landroid/graphics/drawable/Drawable;

.field private final aP:Landroid/graphics/Rect;

.field private final aQ:Landroid/graphics/Rect;

.field private aR:I

.field private aS:I

.field private aT:I

.field private aU:I

.field private aV:Lit/sephiroth/android/library/widget/ah;

.field private aW:Lit/sephiroth/android/library/widget/ai;

.field private aX:Lit/sephiroth/android/library/widget/ag;

.field private aY:Lit/sephiroth/android/library/widget/af;

.field private ay:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

.field private az:Landroid/widget/ExpandableListAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v3, [I

    sput-object v0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aI:[I

    new-array v0, v4, [I

    const v1, 0x10100a8

    aput v1, v0, v3

    sput-object v0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aJ:[I

    new-array v0, v4, [I

    const v1, 0x10100a9

    aput v1, v0, v3

    sput-object v0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aK:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_40

    sput-object v0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aL:[I

    const/4 v0, 0x4

    new-array v0, v0, [[I

    sget-object v1, Lit/sephiroth/android/library/widget/ExpandableHListView;->aI:[I

    aput-object v1, v0, v3

    sget-object v1, Lit/sephiroth/android/library/widget/ExpandableHListView;->aJ:[I

    aput-object v1, v0, v4

    sget-object v1, Lit/sephiroth/android/library/widget/ExpandableHListView;->aK:[I

    aput-object v1, v0, v2

    const/4 v1, 0x3

    sget-object v2, Lit/sephiroth/android/library/widget/ExpandableHListView;->aL:[I

    aput-object v2, v0, v1

    sput-object v0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aM:[[I

    new-array v0, v4, [I

    const v1, 0x10100a6

    aput v1, v0, v3

    sput-object v0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aN:[I

    return-void

    :array_40
    .array-data 0x4
        0xa8t 0x0t 0x1t 0x1t
        0xa9t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lit/sephiroth/android/library/widget/ExpandableHListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lit/sephiroth/android/library/b;->hlv_expandableListViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lit/sephiroth/android/library/widget/ExpandableHListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/HListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aP:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aQ:Landroid/graphics/Rect;

    sget-object v0, Lit/sephiroth/android/library/d;->ExpandableHListView:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->setChildIndicator(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aB:I

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aA:I

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aC:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aD:I

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aF:I

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aE:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aO:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Lit/sephiroth/android/library/widget/ad;)J
    .registers 5

    iget v0, p1, Lit/sephiroth/android/library/widget/ad;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->az:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lit/sephiroth/android/library/widget/ad;->a:I

    iget v2, p1, Lit/sephiroth/android/library/widget/ad;->b:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    :goto_f
    return-wide v0

    :cond_10
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->az:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lit/sephiroth/android/library/widget/ad;->a:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    goto :goto_f
.end method

.method private g(I)Z
    .registers 4

    iget v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->an:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_f

    if-lt p1, v0, :cond_11

    :cond_f
    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private h(I)J
    .registers 5

    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->g(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const-wide v0, 0xffffffffL

    :goto_b
    return-wide v0

    :cond_c
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->ay:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a(I)Lit/sephiroth/android/library/widget/ac;

    move-result-object v2

    iget-object v0, v2, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ad;->a()J

    move-result-wide v0

    invoke-virtual {v2}, Lit/sephiroth/android/library/widget/ac;->a()V

    goto :goto_b
.end method

.method private p()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aG:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aR:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aS:I

    :goto_15
    return-void

    :cond_16
    iput v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aR:I

    iput v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aS:I

    goto :goto_15
.end method

.method private q()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aH:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aH:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aT:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aH:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aU:I

    :goto_15
    return-void

    :cond_16
    iput v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aT:I

    iput v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aU:I

    goto :goto_15
.end method


# virtual methods
.method final a(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .registers 8

    iget v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->V:I

    add-int/2addr v0, p3

    if-ltz v0, :cond_37

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, v0, v1

    iget-object v2, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->ay:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {v2, v1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a(I)Lit/sephiroth/android/library/widget/ac;

    move-result-object v1

    iget-object v2, v1, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;

    iget v2, v2, Lit/sephiroth/android/library/widget/ad;->d:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_28

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/ac;->b()Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, v1, Lit/sephiroth/android/library/widget/ac;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    iget v2, v2, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I

    iget-object v3, v1, Lit/sephiroth/android/library/widget/ac;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    iget v3, v3, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->a:I

    if-eq v2, v3, :cond_34

    :cond_28
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aO:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/ac;->a()V

    :goto_33
    return-void

    :cond_34
    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/ac;->a()V

    :cond_37
    invoke-super {p0, p1, p2, v0}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_33
.end method

.method public final a(Landroid/view/View;IJ)Z
    .registers 13

    const/4 v1, 0x1

    const/4 v7, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Lit/sephiroth/android/library/widget/ExpandableHListView;->g(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;IJ)Z

    move-result v1

    :goto_d
    return v1

    :cond_e
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p2, v0

    iget-object v3, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->ay:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {v3, v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a(I)Lit/sephiroth/android/library/widget/ac;

    move-result-object v3

    iget-object v0, v3, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->a(Lit/sephiroth/android/library/widget/ad;)J

    iget-object v0, v3, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;

    iget v0, v0, Lit/sephiroth/android/library/widget/ad;->d:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_e3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aX:Lit/sephiroth/android/library/widget/ag;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aX:Lit/sephiroth/android/library/widget/ag;

    iget-object v4, v3, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;

    iget v4, v4, Lit/sephiroth/android/library/widget/ad;->a:I

    invoke-interface {v0}, Lit/sephiroth/android/library/widget/ag;->a()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/ac;->a()V

    goto :goto_d

    :cond_3a
    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/ac;->b()Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->ay:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a(Lit/sephiroth/android/library/widget/ac;)Z

    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/ExpandableHListView;->playSoundEffect(I)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aV:Lit/sephiroth/android/library/widget/ah;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aV:Lit/sephiroth/android/library/widget/ah;

    iget-object v0, v3, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;

    iget v0, v0, Lit/sephiroth/android/library/widget/ad;->a:I

    :cond_52
    :goto_52
    move v0, v1

    :goto_53
    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/ac;->a()V

    move v1, v0

    goto :goto_d

    :cond_58
    iget-object v4, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->ay:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    iget-object v0, v3, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;

    iget v0, v0, Lit/sephiroth/android/library/widget/ad;->a:I

    if-gez v0, :cond_68

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Need group"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_68
    iget v0, v4, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->c:I

    if-eqz v0, :cond_bd

    iget-object v0, v3, Lit/sephiroth/android/library/widget/ac;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    if-nez v0, :cond_bd

    iget-object v0, v4, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v5, v4, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->c:I

    if-lt v0, v5, :cond_97

    iget-object v0, v4, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    iget-object v5, v4, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iget v0, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    invoke-virtual {v4, v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b(I)Z

    iget v0, v3, Lit/sephiroth/android/library/widget/ac;->c:I

    if-le v0, v5, :cond_97

    iget v0, v3, Lit/sephiroth/android/library/widget/ac;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v3, Lit/sephiroth/android/library/widget/ac;->c:I

    :cond_97
    iget-object v0, v3, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;

    iget v0, v0, Lit/sephiroth/android/library/widget/ad;->a:I

    iget-object v5, v4, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;

    iget-object v6, v3, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;

    iget v6, v6, Lit/sephiroth/android/library/widget/ad;->a:I

    invoke-interface {v5, v6}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v5

    invoke-static {v7, v7, v0, v5, v6}, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->a(IIIJ)Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    move-result-object v0

    iget-object v5, v4, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Ljava/util/ArrayList;

    iget v6, v3, Lit/sephiroth/android/library/widget/ac;->c:I

    invoke-virtual {v5, v6, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v4, v2, v2}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a(ZZ)V

    invoke-virtual {v4}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->notifyDataSetChanged()V

    iget-object v4, v4, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;

    iget v0, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    invoke-interface {v4, v0}, Landroid/widget/ExpandableListAdapter;->onGroupExpanded(I)V

    :cond_bd
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/ExpandableHListView;->playSoundEffect(I)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aW:Lit/sephiroth/android/library/widget/ai;

    if-eqz v0, :cond_ca

    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aW:Lit/sephiroth/android/library/widget/ai;

    iget-object v0, v3, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;

    iget v0, v0, Lit/sephiroth/android/library/widget/ad;->a:I

    :cond_ca
    iget-object v0, v3, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;

    iget v0, v0, Lit/sephiroth/android/library/widget/ad;->a:I

    iget-object v2, v3, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;

    iget v2, v2, Lit/sephiroth/android/library/widget/ad;->c:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->az:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lit/sephiroth/android/library/widget/ExpandableHListView;->a(II)V

    goto/16 :goto_52

    :cond_e3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aY:Lit/sephiroth/android/library/widget/af;

    if-eqz v0, :cond_fa

    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/ExpandableHListView;->playSoundEffect(I)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aY:Lit/sephiroth/android/library/widget/af;

    iget-object v1, v3, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;

    iget v1, v1, Lit/sephiroth/android/library/widget/ad;->a:I

    iget-object v1, v3, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;

    iget v1, v1, Lit/sephiroth/android/library/widget/ad;->b:I

    invoke-interface {v0}, Lit/sephiroth/android/library/widget/af;->a()Z

    move-result v1

    goto/16 :goto_d

    :cond_fa
    move v0, v2

    goto/16 :goto_53
.end method

.method final b(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 11

    invoke-direct {p0, p2}, Lit/sephiroth/android/library/widget/ExpandableHListView;->g(I)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lit/sephiroth/android/library/widget/t;

    invoke-direct {v0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/t;-><init>(Landroid/view/View;IJ)V

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p2, v0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->ay:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a(I)Lit/sephiroth/android/library/widget/ac;

    move-result-object v0

    iget-object v1, v0, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;

    invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->a(Lit/sephiroth/android/library/widget/ad;)J

    move-result-wide v4

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/ad;->a()J

    move-result-wide v2

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ac;->a()V

    new-instance v0, Lit/sephiroth/android/library/widget/ae;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/ae;-><init>(Landroid/view/View;JJ)V

    goto :goto_b
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 16

    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aH:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_c

    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_c

    :cond_b
    return-void

    :cond_c
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getHeaderViewsCount()I

    move-result v0

    iget v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->an:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getRight()I

    move-result v7

    const/4 v2, -0x4

    iget-object v8, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aP:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getChildCount()I

    move-result v9

    const/4 v1, 0x0

    iget v3, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->V:I

    sub-int v0, v3, v0

    move v3, v1

    move v13, v0

    move v0, v2

    move v2, v13

    :goto_2e
    if-ge v3, v9, :cond_b

    if-ltz v2, :cond_d6

    if-gt v2, v6, :cond_b

    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    if-ltz v5, :cond_d6

    if-gt v4, v7, :cond_d6

    iget-object v10, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->ay:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {v10, v2}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a(I)Lit/sephiroth/android/library/widget/ac;

    move-result-object v10

    iget-object v11, v10, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;

    iget v11, v11, Lit/sephiroth/android/library/widget/ad;->d:I

    if-eq v11, v0, :cond_6d

    iget-object v0, v10, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;

    iget v0, v0, Lit/sephiroth/android/library/widget/ad;->d:I

    const/4 v11, 0x1

    if-ne v0, v11, :cond_dd

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v11, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aE:I

    add-int/2addr v0, v11

    iput v0, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aE:I

    add-int/2addr v0, v1

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    :goto_69
    iget-object v0, v10, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;

    iget v0, v0, Lit/sephiroth/android/library/widget/ad;->d:I

    :cond_6d
    iget v1, v8, Landroid/graphics/Rect;->top:I

    iget v11, v8, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v11, :cond_d3

    iget-object v1, v10, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;

    iget v1, v1, Lit/sephiroth/android/library/widget/ad;->d:I

    const/4 v11, 0x1

    if-ne v1, v11, :cond_f1

    iget v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aF:I

    add-int/2addr v1, v4

    iput v1, v8, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aF:I

    add-int/2addr v1, v5

    iput v1, v8, Landroid/graphics/Rect;->right:I

    :goto_84
    iget-object v1, v10, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;

    iget v1, v1, Lit/sephiroth/android/library/widget/ad;->d:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_102

    iget-object v4, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aG:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_11b

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_11b

    iget-object v1, v10, Lit/sephiroth/android/library/widget/ac;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    if-eqz v1, :cond_a3

    iget-object v1, v10, Lit/sephiroth/android/library/widget/ac;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    iget v1, v1, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I

    iget-object v5, v10, Lit/sephiroth/android/library/widget/ac;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    iget v5, v5, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->a:I

    if-ne v1, v5, :cond_fc

    :cond_a3
    const/4 v1, 0x1

    :goto_a4
    invoke-virtual {v10}, Lit/sephiroth/android/library/widget/ac;->b()Z

    move-result v5

    if-eqz v5, :cond_fe

    const/4 v5, 0x1

    :goto_ab
    if-eqz v1, :cond_100

    const/4 v1, 0x2

    :goto_ae
    or-int/2addr v1, v5

    sget-object v5, Lit/sephiroth/android/library/widget/ExpandableHListView;->aM:[[I

    aget-object v1, v5, v1

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-object v1, v4

    :goto_b7
    if-eqz v1, :cond_d3

    iget-object v4, v10, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;

    iget v4, v4, Lit/sephiroth/android/library/widget/ad;->d:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_120

    iget v4, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aD:I

    iget v5, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aT:I

    iget v11, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aU:I

    iget-object v12, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aQ:Landroid/graphics/Rect;

    invoke-static {v4, v5, v11, v8, v12}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_cb
    iget-object v4, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aQ:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_d3
    invoke-virtual {v10}, Lit/sephiroth/android/library/widget/ac;->a()V

    :cond_d6
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_2e

    :cond_dd
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v11, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aA:I

    add-int/2addr v0, v11

    iput v0, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aA:I

    add-int/2addr v0, v1

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_69

    :cond_f1
    iget v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aB:I

    add-int/2addr v1, v4

    iput v1, v8, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aB:I

    add-int/2addr v1, v5

    iput v1, v8, Landroid/graphics/Rect;->right:I

    goto :goto_84

    :cond_fc
    const/4 v1, 0x0

    goto :goto_a4

    :cond_fe
    const/4 v5, 0x0

    goto :goto_ab

    :cond_100
    const/4 v1, 0x0

    goto :goto_ae

    :cond_102
    iget-object v4, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aH:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_11b

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_11b

    iget-object v1, v10, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;

    iget v1, v1, Lit/sephiroth/android/library/widget/ad;->c:I

    iget-object v5, v10, Lit/sephiroth/android/library/widget/ac;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    iget v5, v5, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->b:I

    if-ne v1, v5, :cond_11d

    sget-object v1, Lit/sephiroth/android/library/widget/ExpandableHListView;->aN:[I

    :goto_118
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_11b
    move-object v1, v4

    goto :goto_b7

    :cond_11d
    sget-object v1, Lit/sephiroth/android/library/widget/ExpandableHListView;->aI:[I

    goto :goto_118

    :cond_120
    iget v4, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aC:I

    iget v5, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aR:I

    iget v11, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aS:I

    iget-object v12, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aQ:Landroid/graphics/Rect;

    invoke-static {v4, v5, v11, v8, v12}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_cb
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    invoke-super {p0}, Lit/sephiroth/android/library/widget/HListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .registers 2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->az:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getSelectedId()J
    .registers 12

    const/4 v0, -0x1

    const-wide/high16 v9, -0x8000

    const-wide v7, 0xffffffffL

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getSelectedPosition()J

    move-result-wide v3

    cmp-long v1, v3, v7

    if-nez v1, :cond_13

    const-wide/16 v0, -0x1

    :goto_12
    return-wide v0

    :cond_13
    cmp-long v1, v3, v7

    if-nez v1, :cond_26

    move v2, v0

    :goto_18
    cmp-long v1, v3, v7

    if-nez v1, :cond_32

    const/4 v1, 0x2

    :goto_1d
    if-nez v1, :cond_3c

    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->az:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, v2}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    goto :goto_12

    :cond_26
    const-wide v1, 0x7fffffff00000000L

    and-long/2addr v1, v3

    const/16 v5, 0x20

    shr-long/2addr v1, v5

    long-to-int v1, v1

    move v2, v1

    goto :goto_18

    :cond_32
    and-long v5, v3, v9

    cmp-long v1, v5, v9

    if-nez v1, :cond_3a

    const/4 v1, 0x1

    goto :goto_1d

    :cond_3a
    const/4 v1, 0x0

    goto :goto_1d

    :cond_3c
    iget-object v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->az:Landroid/widget/ExpandableListAdapter;

    cmp-long v5, v3, v7

    if-nez v5, :cond_47

    :cond_42
    :goto_42
    invoke-interface {v1, v2, v0}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    goto :goto_12

    :cond_47
    and-long v5, v3, v9

    cmp-long v5, v5, v9

    if-nez v5, :cond_42

    and-long/2addr v3, v7

    long-to-int v0, v3

    goto :goto_42
.end method

.method public getSelectedPosition()J
    .registers 3

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->h(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lit/sephiroth/android/library/widget/ExpandableHListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lit/sephiroth/android/library/widget/ExpandableHListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 7

    instance-of v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_7
    :goto_7
    return-void

    :cond_8
    check-cast p1, Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;

    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->ay:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v2, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->ay:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    iget-object v3, p1, Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;->a:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    iget-object v0, v2, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_7

    iget-object v0, v2, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_30
    if-ltz v1, :cond_40

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;

    iget v0, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;->c:I

    if-ge v0, v4, :cond_7

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_30

    :cond_40
    iput-object v3, v2, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Ljava/util/ArrayList;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a(ZZ)V

    goto :goto_7
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->p()V

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->q()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    invoke-super {p0}, Lit/sephiroth/android/library/widget/HListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v2, Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;

    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->ay:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->ay:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->b:Ljava/util/ArrayList;

    :goto_e
    invoke-direct {v2, v1, v0}, Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v2

    :cond_12
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .registers 3

    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->az:Landroid/widget/ExpandableListAdapter;

    if-eqz p1, :cond_11

    new-instance v0, Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-direct {v0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->ay:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    :goto_b
    iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->ay:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-super {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->ay:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    goto :goto_b
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aO:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aH:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->q()V

    return-void
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aG:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->p()V

    return-void
.end method

.method public setOnChildClickListener(Lit/sephiroth/android/library/widget/af;)V
    .registers 2

    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aY:Lit/sephiroth/android/library/widget/af;

    return-void
.end method

.method public setOnGroupClickListener(Lit/sephiroth/android/library/widget/ag;)V
    .registers 2

    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aX:Lit/sephiroth/android/library/widget/ag;

    return-void
.end method

.method public setOnGroupCollapseListener(Lit/sephiroth/android/library/widget/ah;)V
    .registers 2

    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aV:Lit/sephiroth/android/library/widget/ah;

    return-void
.end method

.method public setOnGroupExpandListener(Lit/sephiroth/android/library/widget/ai;)V
    .registers 2

    iput-object p1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->aW:Lit/sephiroth/android/library/widget/ai;

    return-void
.end method

.method public setOnItemClickListener(Lit/sephiroth/android/library/widget/v;)V
    .registers 2

    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/v;)V

    return-void
.end method

.method public setSelectedGroup(I)V
    .registers 5

    invoke-static {p1}, Lit/sephiroth/android/library/widget/ad;->a(I)Lit/sephiroth/android/library/widget/ad;

    move-result-object v0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/ExpandableHListView;->ay:Lit/sephiroth/android/library/widget/ExpandableHListConnector;

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/ExpandableHListConnector;->a(Lit/sephiroth/android/library/widget/ad;)Lit/sephiroth/android/library/widget/ac;

    move-result-object v1

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ad;->b()V

    iget-object v0, v1, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;

    iget v0, v0, Lit/sephiroth/android/library/widget/ad;->c:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/ExpandableHListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v0, v2

    invoke-super {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->setSelection(I)V

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/ac;->a()V

    return-void
.end method
