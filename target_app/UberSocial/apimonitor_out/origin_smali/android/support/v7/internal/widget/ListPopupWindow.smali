.class public Landroid/support/v7/internal/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = -0x1

.field public static final e:I = -0x2

.field public static final f:I = 0x0

.field public static final g:I = 0x1

.field public static final h:I = 0x2

.field private static final i:Ljava/lang/String; = "ListPopupWindow"

.field private static final j:Z = false

.field private static final k:I = 0xfa


# instance fields
.field private A:Landroid/graphics/drawable/Drawable;

.field private B:Landroid/widget/AdapterView$OnItemClickListener;

.field private C:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final D:Landroid/support/v7/internal/widget/ab;

.field private final E:Landroid/support/v7/internal/widget/aa;

.field private final F:Landroid/support/v7/internal/widget/z;

.field private final G:Landroid/support/v7/internal/widget/x;

.field private H:Ljava/lang/Runnable;

.field private I:Landroid/os/Handler;

.field private J:Landroid/graphics/Rect;

.field private K:Z

.field private L:I

.field a:I

.field private l:Landroid/content/Context;

.field private m:Landroid/widget/PopupWindow;

.field private n:Landroid/widget/ListAdapter;

.field private o:Landroid/support/v7/internal/widget/w;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Landroid/view/View;

.field private x:I

.field private y:Landroid/database/DataSetObserver;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    sget v1, Landroid/support/v7/a/d;->listPopupWindowStyle:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/internal/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Landroid/support/v7/a/d;->listPopupWindowStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const/4 v0, -0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->p:I

    iput v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->q:I

    iput-boolean v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->u:Z

    iput-boolean v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->v:Z

    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:I

    iput v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->x:I

    new-instance v0, Landroid/support/v7/internal/widget/ab;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/ab;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;Landroid/support/v7/internal/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->D:Landroid/support/v7/internal/widget/ab;

    new-instance v0, Landroid/support/v7/internal/widget/aa;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/aa;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;Landroid/support/v7/internal/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->E:Landroid/support/v7/internal/widget/aa;

    new-instance v0, Landroid/support/v7/internal/widget/z;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/z;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;Landroid/support/v7/internal/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->F:Landroid/support/v7/internal/widget/z;

    new-instance v0, Landroid/support/v7/internal/widget/x;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/x;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;Landroid/support/v7/internal/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->G:Landroid/support/v7/internal/widget/x;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->I:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->J:Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->l:Landroid/content/Context;

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/w;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/widget/PopupWindow;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/ab;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->D:Landroid/support/v7/internal/widget/ab;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->I:Landroid/os/Handler;

    return-object v0
.end method

.method private x()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->w:Landroid/view/View;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_15

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_15
    return-void
.end method

.method private y()I
    .registers 11

    const/high16 v9, 0x4000

    const/high16 v8, -0x8000

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    if-nez v0, :cond_103

    iget-object v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->l:Landroid/content/Context;

    new-instance v0, Landroid/support/v7/internal/widget/ListPopupWindow$1;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/ListPopupWindow$1;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->H:Ljava/lang/Runnable;

    new-instance v4, Landroid/support/v7/internal/widget/w;

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->K:Z

    if-nez v0, :cond_f2

    move v0, v1

    :goto_1b
    invoke-direct {v4, v5, v0}, Landroid/support/v7/internal/widget/w;-><init>(Landroid/content/Context;Z)V

    iput-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->A:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/w;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_2b
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->n:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/w;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->B:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/w;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/w;->setFocusable(Z)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/w;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    new-instance v4, Landroid/support/v7/internal/widget/ListPopupWindow$2;

    invoke-direct {v4, p0}, Landroid/support/v7/internal/widget/ListPopupWindow$2;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/w;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->F:Landroid/support/v7/internal/widget/z;

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/w;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->C:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->C:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/w;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_5f
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    iget-object v6, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->w:Landroid/view/View;

    if-eqz v6, :cond_17e

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f80

    invoke-direct {v5, v3, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget v7, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->x:I

    packed-switch v7, :pswitch_data_182

    const-string v0, "ListPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid hint position "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->x:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_93
    iget v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->q:I

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v6, v0, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v5

    :goto_ac
    iget-object v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    move v6, v0

    :goto_b2
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_121

    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->J:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->J:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->J:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v4

    iget-boolean v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->t:Z

    if-nez v4, :cond_178

    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->J:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    iput v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->s:I

    move v7, v0

    :goto_d4
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_128

    :goto_dd
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->g()Landroid/view/View;

    move-result-object v0

    iget v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->s:I

    invoke-virtual {p0, v0, v4, v1}, Landroid/support/v7/internal/widget/ListPopupWindow;->a(Landroid/view/View;IZ)I

    move-result v4

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->u:Z

    if-nez v0, :cond_ef

    iget v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->p:I

    if-ne v0, v3, :cond_12a

    :cond_ef
    add-int v0, v4, v7

    :goto_f1
    return v0

    :cond_f2
    move v0, v2

    goto/16 :goto_1b

    :pswitch_f5
    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_93

    :pswitch_fc
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_93

    :cond_103
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->w:Landroid/view/View;

    if-eqz v4, :cond_17b

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v4

    move v6, v0

    goto :goto_b2

    :cond_121
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->J:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    move v7, v2

    goto :goto_d4

    :cond_128
    move v1, v2

    goto :goto_dd

    :cond_12a
    iget v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->q:I

    packed-switch v0, :pswitch_data_18a

    iget v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->q:I

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_135
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    sub-int/2addr v4, v6

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/internal/widget/w;->a(IIIII)I

    move-result v0

    if-lez v0, :cond_140

    add-int/2addr v6, v7

    :cond_140
    add-int/2addr v0, v6

    goto :goto_f1

    :pswitch_142
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->J:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->J:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v5

    sub-int/2addr v0, v1

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_135

    :pswitch_15d
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->J:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->J:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v5

    sub-int/2addr v0, v1

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_135

    :cond_178
    move v7, v0

    goto/16 :goto_d4

    :cond_17b
    move v6, v2

    goto/16 :goto_b2

    :cond_17e
    move-object v4, v0

    move v0, v2

    goto/16 :goto_ac

    :pswitch_data_182
    .packed-switch 0x0
        :pswitch_fc
        :pswitch_f5
    .end packed-switch

    :pswitch_data_18a
    .packed-switch -0x2
        :pswitch_142
        :pswitch_15d
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/view/View;IZ)I
    .registers 10

    const/4 v5, 0x1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v0, 0x2

    new-array v2, v0, [I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    if-eqz p3, :cond_21

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_21
    aget v3, v2, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v0, v3

    sub-int/2addr v0, p2

    aget v2, v2, v5

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v1

    add-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->J:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->J:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->J:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    :cond_52
    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->x:I

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->A:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/view/View;

    return-void
.end method

.method public a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->B:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public a(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->C:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->y:Landroid/database/DataSetObserver;

    if-nez v0, :cond_23

    new-instance v0, Landroid/support/v7/internal/widget/y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/y;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;Landroid/support/v7/internal/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->y:Landroid/database/DataSetObserver;

    :cond_c
    :goto_c
    iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->n:Landroid/widget/ListAdapter;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->n:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->y:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_17
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->n:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/w;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_22
    return-void

    :cond_23
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->n:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->n:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->y:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_c
.end method

.method public a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->K:Z

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .registers 12

    const/16 v8, 0x14

    const/16 v7, 0x13

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->q()Z

    move-result v0

    if-eqz v0, :cond_93

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_93

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/w;->getSelectedItemPosition()I

    move-result v0

    if-gez v0, :cond_20

    const/16 v0, 0x42

    if-eq p1, v0, :cond_93

    const/16 v0, 0x17

    if-eq p1, v0, :cond_93

    :cond_20
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/w;->getSelectedItemPosition()I

    move-result v5

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v0

    if-nez v0, :cond_5f

    move v0, v1

    :goto_2f
    iget-object v6, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->n:Landroid/widget/ListAdapter;

    const v4, 0x7fffffff

    const/high16 v3, -0x8000

    if-eqz v6, :cond_47

    invoke-interface {v6}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    if-eqz v3, :cond_61

    move v4, v2

    :goto_3f
    if-eqz v3, :cond_68

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :cond_47
    :goto_47
    if-eqz v0, :cond_4d

    if-ne p1, v7, :cond_4d

    if-le v5, v4, :cond_53

    :cond_4d
    if-nez v0, :cond_75

    if-ne p1, v8, :cond_75

    if-lt v5, v3, :cond_75

    :cond_53
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->p()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->m()V

    :goto_5e
    :sswitch_5e
    return v1

    :cond_5f
    move v0, v2

    goto :goto_2f

    :cond_61
    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    invoke-static {v4, v2, v1}, Landroid/support/v7/internal/widget/w;->a(Landroid/support/v7/internal/widget/w;IZ)I

    move-result v4

    goto :goto_3f

    :cond_68
    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v3, v6, v2}, Landroid/support/v7/internal/widget/w;->a(Landroid/support/v7/internal/widget/w;IZ)I

    move-result v3

    goto :goto_47

    :cond_75
    iget-object v6, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    invoke-static {v6, v2}, Landroid/support/v7/internal/widget/w;->a(Landroid/support/v7/internal/widget/w;Z)Z

    iget-object v6, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    invoke-virtual {v6, p1, p2}, Landroid/support/v7/internal/widget/w;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_95

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/w;->requestFocusFromTouch()Z

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->m()V

    sparse-switch p1, :sswitch_data_a4

    :cond_93
    move v1, v2

    goto :goto_5e

    :cond_95
    if-eqz v0, :cond_9c

    if-ne p1, v8, :cond_9c

    if-ne v5, v3, :cond_93

    goto :goto_5e

    :cond_9c
    if-nez v0, :cond_93

    if-ne p1, v7, :cond_93

    if-ne v5, v4, :cond_93

    goto :goto_5e

    nop

    :sswitch_data_a4
    .sparse-switch
        0x13 -> :sswitch_5e
        0x14 -> :sswitch_5e
        0x17 -> :sswitch_5e
        0x42 -> :sswitch_5e
    .end sparse-switch
.end method

.method public b(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->q()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->x()V

    :cond_9
    iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->w:Landroid/view/View;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->m()V

    :cond_10
    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->v:Z

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->K:Z

    return v0
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->q()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/w;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_1e

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/internal/widget/w;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_19

    sparse-switch p1, :sswitch_data_20

    :cond_19
    :goto_19
    return v0

    :sswitch_1a
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->n()V

    goto :goto_19

    :cond_1e
    const/4 v0, 0x0

    goto :goto_19

    :sswitch_data_20
    .sparse-switch
        0x17 -> :sswitch_1a
        0x42 -> :sswitch_1a
    .end sparse-switch
.end method

.method public b_()I
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->x:I

    return v0
.end method

.method public c(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->u:Z

    return-void
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->u:Z

    return v0
.end method

.method public d()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method public d(I)V
    .registers 2

    iput p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->r:I

    return-void
.end method

.method public e()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public e(I)V
    .registers 3

    iput p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->s:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->t:Z

    return-void
.end method

.method public f()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public f(I)V
    .registers 2

    iput p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->q:I

    return-void
.end method

.method public g()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/view/View;

    return-object v0
.end method

.method public g(I)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->J:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->J:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->J:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->q:I

    :goto_19
    return-void

    :cond_1a
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ListPopupWindow;->f(I)V

    goto :goto_19
.end method

.method public h()I
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->r:I

    return v0
.end method

.method public h(I)V
    .registers 2

    iput p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->p:I

    return-void
.end method

.method public i()I
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->t:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->s:I

    goto :goto_5
.end method

.method public i(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method public j()I
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->q:I

    return v0
.end method

.method public j(I)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->q()Z

    move-result v1

    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1b

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/w;->a(Landroid/support/v7/internal/widget/w;Z)Z

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/w;->setSelection(I)V

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/w;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/internal/widget/w;->setItemChecked(IZ)V

    :cond_1b
    return-void
.end method

.method public k()I
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->p:I

    return v0
.end method

.method public k(I)Z
    .registers 8

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->q()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->B:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_24

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/w;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/w;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/w;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->B:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public l()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->I:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method l(I)V
    .registers 2

    iput p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:I

    return-void
.end method

.method public m()V
    .registers 9

    const/4 v3, 0x1

    const/4 v7, -0x2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->y()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->r()Z

    move-result v2

    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_6e

    iget v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->q:I

    if-ne v4, v0, :cond_46

    move v4, v0

    :goto_19
    iget v6, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->p:I

    if-ne v6, v0, :cond_67

    if-eqz v2, :cond_56

    :goto_1f
    if-eqz v2, :cond_5a

    iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    iget v6, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->q:I

    if-ne v6, v0, :cond_58

    :goto_27
    invoke-virtual {v2, v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    :cond_2a
    :goto_2a
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    iget-boolean v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->v:Z

    if-nez v2, :cond_35

    iget-boolean v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->u:Z

    if-nez v2, :cond_35

    move v1, v3

    :cond_35
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->g()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->r:I

    iget v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->s:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    :cond_45
    :goto_45
    return-void

    :cond_46
    iget v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->q:I

    if-ne v4, v7, :cond_53

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->g()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_19

    :cond_53
    iget v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->q:I

    goto :goto_19

    :cond_56
    move v5, v0

    goto :goto_1f

    :cond_58
    move v0, v1

    goto :goto_27

    :cond_5a
    iget-object v6, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    iget v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->q:I

    if-ne v2, v0, :cond_65

    move v2, v0

    :goto_61
    invoke-virtual {v6, v2, v0}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    goto :goto_2a

    :cond_65
    move v2, v1

    goto :goto_61

    :cond_67
    iget v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->p:I

    if-eq v0, v7, :cond_2a

    iget v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->p:I

    goto :goto_2a

    :cond_6e
    iget v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->q:I

    if-ne v2, v0, :cond_be

    move v2, v0

    :goto_73
    iget v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->p:I

    if-ne v4, v0, :cond_da

    move v4, v0

    :goto_78
    iget-object v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v2, v4}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    iget-boolean v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->v:Z

    if-nez v4, :cond_ee

    iget-boolean v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->u:Z

    if-nez v4, :cond_ee

    :goto_87
    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->E:Landroid/support/v7/internal/widget/aa;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->g()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->r:I

    iget v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->s:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/w;->setSelection(I)V

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->K:Z

    if-eqz v0, :cond_af

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/w;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_b2

    :cond_af
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->p()V

    :cond_b2
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->K:Z

    if-nez v0, :cond_45

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->I:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->G:Landroid/support/v7/internal/widget/x;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_45

    :cond_be
    iget v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->q:I

    if-ne v2, v7, :cond_d1

    iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->g()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    move v2, v1

    goto :goto_73

    :cond_d1
    iget-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    iget v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->q:I

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    move v2, v1

    goto :goto_73

    :cond_da
    iget v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->p:I

    if-ne v4, v7, :cond_e5

    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v4, v1

    goto :goto_78

    :cond_e5
    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    iget v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->p:I

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v4, v1

    goto :goto_78

    :cond_ee
    move v3, v1

    goto :goto_87
.end method

.method public n()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-direct {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->x()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->I:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->D:Landroid/support/v7/internal/widget/ab;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public p()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/w;->a(Landroid/support/v7/internal/widget/w;Z)Z

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/w;->requestLayout()V

    :cond_b
    return-void
.end method

.method public q()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public r()Z
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public s()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->q()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/w;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method public t()I
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->q()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/w;->getSelectedItemPosition()I

    move-result v0

    goto :goto_7
.end method

.method public u()J
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->q()Z

    move-result v0

    if-nez v0, :cond_9

    const-wide/high16 v0, -0x8000

    :goto_8
    return-wide v0

    :cond_9
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/w;->getSelectedItemId()J

    move-result-wide v0

    goto :goto_8
.end method

.method public v()Landroid/view/View;
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->q()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/w;->getSelectedView()Landroid/view/View;

    move-result-object v0

    goto :goto_7
.end method

.method public w()Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/support/v7/internal/widget/w;

    return-object v0
.end method
