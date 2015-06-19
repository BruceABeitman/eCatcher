.class public Landroid/support/v4/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"


# static fields
.field private static final h:[I


# instance fields
.field final a:Landroid/support/v4/widget/al;

.field final b:Landroid/support/v4/widget/al;

.field c:I

.field d:Z

.field e:Landroid/support/v4/widget/e;

.field f:Ljava/lang/CharSequence;

.field g:Ljava/lang/CharSequence;

.field private i:I

.field private j:I

.field private k:F

.field private l:Landroid/graphics/Paint;

.field private final m:Landroid/support/v4/widget/h;

.field private final n:Landroid/support/v4/widget/h;

.field private o:Z

.field private p:Z

.field private q:I

.field private r:I

.field private s:Z

.field private t:F

.field private u:F

.field private v:Landroid/graphics/drawable/Drawable;

.field private w:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/DrawerLayout;->h:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    const/high16 v4, 0x3f80

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x6700

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->j:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/graphics/Paint;

    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->p:Z

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4280

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/DrawerLayout;->i:I

    const/high16 v1, 0x43c8

    mul-float/2addr v0, v1

    new-instance v1, Landroid/support/v4/widget/h;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Landroid/support/v4/widget/h;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->m:Landroid/support/v4/widget/h;

    new-instance v1, Landroid/support/v4/widget/h;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Landroid/support/v4/widget/h;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->n:Landroid/support/v4/widget/h;

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->m:Landroid/support/v4/widget/h;

    invoke-static {p0, v4, v1}, Landroid/support/v4/widget/al;->a(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ao;)Landroid/support/v4/widget/al;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/al;

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/al;

    iput v3, v1, Landroid/support/v4/widget/al;->j:I

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/al;

    iput v0, v1, Landroid/support/v4/widget/al;->h:F

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->m:Landroid/support/v4/widget/h;

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/al;

    iput-object v2, v1, Landroid/support/v4/widget/h;->b:Landroid/support/v4/widget/al;

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->n:Landroid/support/v4/widget/h;

    invoke-static {p0, v4, v1}, Landroid/support/v4/widget/al;->a(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ao;)Landroid/support/v4/widget/al;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->b:Landroid/support/v4/widget/al;

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->b:Landroid/support/v4/widget/al;

    const/4 v2, 0x2

    iput v2, v1, Landroid/support/v4/widget/al;->j:I

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->b:Landroid/support/v4/widget/al;

    iput v0, v1, Landroid/support/v4/widget/al;->h:F

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->n:Landroid/support/v4/widget/h;

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->b:Landroid/support/v4/widget/al;

    iput-object v1, v0, Landroid/support/v4/widget/h;->b:Landroid/support/v4/widget/al;

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    new-instance v0, Landroid/support/v4/widget/d;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/d;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/as;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    invoke-static {p0}, Landroid/support/v4/view/bg;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/DrawerLayout;)Landroid/view/View;
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->c()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)V
    .registers 11

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v4

    move v2, v3

    move v1, v3

    :goto_7
    if-ge v2, v4, :cond_4c

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/f;

    invoke-static {v5}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_38

    if-eqz p1, :cond_1f

    iget-boolean v6, v0, Landroid/support/v4/widget/f;->c:Z

    if-eqz v6, :cond_38

    :cond_1f
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {p0, v5, v7}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_3c

    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/al;

    neg-int v6, v6

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v7, v5, v6, v8}, Landroid/support/v4/widget/al;->a(Landroid/view/View;II)Z

    move-result v5

    or-int/2addr v1, v5

    :goto_36
    iput-boolean v3, v0, Landroid/support/v4/widget/f;->c:Z

    :cond_38
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_3c
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->b:Landroid/support/v4/widget/al;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6, v5, v7, v8}, Landroid/support/v4/widget/al;->a(Landroid/view/View;II)Z

    move-result v5

    or-int/2addr v1, v5

    goto :goto_36

    :cond_4c
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->m:Landroid/support/v4/widget/h;

    invoke-virtual {v0}, Landroid/support/v4/widget/h;->a()V

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->n:Landroid/support/v4/widget/h;

    invoke-virtual {v0}, Landroid/support/v4/widget/h;->a()V

    if-eqz v1, :cond_5b

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    :cond_5b
    return-void
.end method

.method static b(Landroid/view/View;)F
    .registers 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/f;

    iget v0, v0, Landroid/support/v4/widget/f;->b:F

    return v0
.end method

.method static synthetic b()[I
    .registers 1

    sget-object v0, Landroid/support/v4/widget/DrawerLayout;->h:[I

    return-object v0
.end method

.method private c()Landroid/view/View;
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v4

    move v3, v2

    :goto_6
    if-ge v3, v4, :cond_4b

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-static {v1}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_33

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "View "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/f;

    iget v0, v0, Landroid/support/v4/widget/f;->b:F

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_45

    const/4 v0, 0x1

    :goto_41
    if-eqz v0, :cond_47

    move-object v0, v1

    :goto_44
    return-object v0

    :cond_45
    move v0, v2

    goto :goto_41

    :cond_47
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    :cond_4b
    const/4 v0, 0x0

    goto :goto_44
.end method

.method static d(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/f;

    iget v0, v0, Landroid/support/v4/widget/f;->a:I

    invoke-static {p0}, Landroid/support/v4/view/as;->g(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/view/s;->a(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static f(Landroid/view/View;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/f;

    iget v0, v0, Landroid/support/v4/widget/f;->a:I

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private g(Landroid/view/View;)V
    .registers 5

    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_21

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a sliding drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->p:Z

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/f;

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/support/v4/widget/f;->b:F

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/widget/f;->d:Z

    :goto_32
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    return-void

    :cond_36
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/al;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/al;->a(Landroid/view/View;II)Z

    goto :goto_32

    :cond_48
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->b:Landroid/support/v4/widget/al;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/al;->a(Landroid/view/View;II)Z

    goto :goto_32
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .registers 4

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->q:I

    :goto_9
    return v0

    :cond_a
    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->r:I

    goto :goto_9

    :cond_10
    const/4 v0, 0x0

    goto :goto_9
.end method

.method final a()Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_6
    if-ge v2, v3, :cond_1c

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/f;

    iget-boolean v0, v0, Landroid/support/v4/widget/f;->d:Z

    if-eqz v0, :cond_18

    move-object v0, v1

    :goto_17
    return-object v0

    :cond_18
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_1c
    const/4 v0, 0x0

    goto :goto_17
.end method

.method final a(I)Landroid/view/View;
    .registers 7

    invoke-static {p0}, Landroid/support/v4/view/as;->g(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/s;->a(II)I

    move-result v0

    and-int/lit8 v2, v0, 0x7

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    if-ge v1, v3, :cond_23

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    if-ne v4, v2, :cond_1f

    :goto_1e
    return-object v0

    :cond_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_23
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method final a(Landroid/view/View;F)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/f;

    iget v1, v0, Landroid/support/v4/widget/f;->b:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iput p2, v0, Landroid/support/v4/widget/f;->b:F

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->e:Landroid/support/v4/widget/e;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->e:Landroid/support/v4/widget/e;

    goto :goto_c
.end method

.method final a(Landroid/view/View;I)Z
    .registers 4

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;)I

    move-result v0

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method final c(Landroid/view/View;)I
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/f;

    iget v0, v0, Landroid/support/v4/widget/f;->a:I

    invoke-static {p0}, Landroid/support/v4/view/as;->g(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/view/s;->a(II)I

    move-result v0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Landroid/support/v4/widget/f;

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

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_8
    if-ge v1, v3, :cond_1e

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/f;

    iget v0, v0, Landroid/support/v4/widget/f;->b:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_1e
    iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->k:F

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/al;

    invoke-virtual {v0}, Landroid/support/v4/widget/al;->c()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->b:Landroid/support/v4/widget/al;

    invoke-virtual {v1}, Landroid/support/v4/widget/al;->c()Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_32

    invoke-static {p0}, Landroid/support/v4/view/as;->c(Landroid/view/View;)V

    :cond_32
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 15

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v4

    invoke-static {p2}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v5

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    if-eqz v5, :cond_6b

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v7

    const/4 v0, 0x0

    move v3, v0

    :goto_19
    if-ge v3, v7, :cond_63

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eq v8, p2, :cond_61

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_61

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v9, -0x1

    if-ne v0, v9, :cond_57

    const/4 v0, 0x1

    :goto_35
    if-eqz v0, :cond_61

    invoke-static {v8}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lt v0, v4, :cond_61

    const/4 v0, 0x3

    invoke-virtual {p0, v8, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v0

    if-le v0, v1, :cond_135

    :goto_50
    move v1, v0

    move v0, v2

    :cond_52
    :goto_52
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_19

    :cond_57
    const/4 v0, 0x0

    goto :goto_35

    :cond_59
    const/4 v0, 0x0

    goto :goto_35

    :cond_5b
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt v0, v2, :cond_52

    :cond_61
    move v0, v2

    goto :goto_52

    :cond_63
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_6b
    move v0, v2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->k:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a5

    if-eqz v5, :cond_a5

    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->j:I

    const/high16 v3, -0x100

    and-int/2addr v2, v3

    ushr-int/lit8 v2, v2, 0x18

    int-to-float v2, v2

    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->k:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x18

    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->j:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v1

    const/4 v2, 0x0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->l:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_a4
    :goto_a4
    return v7

    :cond_a5
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->v:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_ea

    const/4 v0, 0x3

    invoke-virtual {p0, p2, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_ea

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/al;

    iget v2, v2, Landroid/support/v4/widget/al;->i:I

    const/4 v3, 0x0

    int-to-float v4, v1

    int-to-float v2, v2

    div-float v2, v4, v2

    const/high16 v4, 0x3f80

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v3, v1, v4, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->v:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_a4

    :cond_ea
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a4

    const/4 v0, 0x5

    invoke-virtual {p0, p2, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_a4

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->b:Landroid/support/v4/widget/al;

    iget v3, v3, Landroid/support/v4/widget/al;->i:I

    const/4 v4, 0x0

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f80

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->w:Landroid/graphics/drawable/Drawable;

    sub-int v0, v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v3, v0, v4, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->w:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_a4

    :cond_135
    move v0, v1

    goto/16 :goto_50
.end method

.method public final e(Landroid/view/View;)V
    .registers 5

    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_21

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a sliding drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->p:Z

    if-eqz v0, :cond_35

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/f;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v4/widget/f;->b:F

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/f;->d:Z

    :goto_31
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    return-void

    :cond_35
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/al;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/al;->a(Landroid/view/View;II)Z

    goto :goto_31

    :cond_4b
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->b:Landroid/support/v4/widget/al;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/al;->a(Landroid/view/View;II)Z

    goto :goto_31
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    new-instance v0, Landroid/support/v4/widget/f;

    invoke-direct {v0}, Landroid/support/v4/widget/f;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Landroid/support/v4/widget/f;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    instance-of v0, p1, Landroid/support/v4/widget/f;

    if-eqz v0, :cond_c

    new-instance v0, Landroid/support/v4/widget/f;

    check-cast p1, Landroid/support/v4/widget/f;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/f;-><init>(Landroid/support/v4/widget/f;)V

    :goto_b
    return-object v0

    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_18

    new-instance v0, Landroid/support/v4/widget/f;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/f;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_b

    :cond_18
    new-instance v0, Landroid/support/v4/widget/f;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/f;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->p:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->p:Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/support/v4/view/ab;->a(Landroid/view/MotionEvent;)I

    move-result v0

    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/al;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/al;->a(Landroid/view/MotionEvent;)Z

    move-result v3

    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->b:Landroid/support/v4/widget/al;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/al;->a(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int/2addr v4, v3

    packed-switch v0, :pswitch_data_c2

    :cond_16
    :goto_16
    move v0, v2

    :goto_17
    if-nez v4, :cond_37

    if-nez v0, :cond_37

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v4

    move v3, v2

    :goto_20
    if-ge v3, v4, :cond_bd

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/f;

    iget-boolean v0, v0, Landroid/support/v4/widget/f;->c:Z

    if-eqz v0, :cond_b8

    move v0, v1

    :goto_31
    if-nez v0, :cond_37

    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->d:Z

    if-eqz v0, :cond_38

    :cond_37
    move v2, v1

    :cond_38
    return v2

    :pswitch_39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->t:F

    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->u:F

    iget v5, p0, Landroid/support/v4/widget/DrawerLayout;->k:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_c0

    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/al;

    float-to-int v0, v0

    float-to-int v3, v3

    invoke-virtual {v5, v0, v3}, Landroid/support/v4/widget/al;->b(II)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_c0

    move v0, v1

    :goto_5b
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->s:Z

    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->d:Z

    goto :goto_17

    :pswitch_60
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/al;

    iget-object v0, v5, Landroid/support/v4/widget/al;->c:[F

    array-length v6, v0

    move v0, v2

    :goto_66
    if-ge v0, v6, :cond_ad

    iget v3, v5, Landroid/support/v4/widget/al;->g:I

    shl-int v7, v1, v0

    and-int/2addr v3, v7

    if-eqz v3, :cond_a4

    move v3, v1

    :goto_70
    if-eqz v3, :cond_a8

    iget-object v3, v5, Landroid/support/v4/widget/al;->e:[F

    aget v3, v3, v0

    iget-object v7, v5, Landroid/support/v4/widget/al;->c:[F

    aget v7, v7, v0

    sub-float/2addr v3, v7

    iget-object v7, v5, Landroid/support/v4/widget/al;->f:[F

    aget v7, v7, v0

    iget-object v8, v5, Landroid/support/v4/widget/al;->d:[F

    aget v8, v8, v0

    sub-float/2addr v7, v8

    mul-float/2addr v3, v3

    mul-float/2addr v7, v7

    add-float/2addr v3, v7

    iget v7, v5, Landroid/support/v4/widget/al;->b:I

    iget v8, v5, Landroid/support/v4/widget/al;->b:I

    mul-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v3, v3, v7

    if-lez v3, :cond_a6

    move v3, v1

    :goto_92
    if-eqz v3, :cond_aa

    move v0, v1

    :goto_95
    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->m:Landroid/support/v4/widget/h;

    invoke-virtual {v0}, Landroid/support/v4/widget/h;->a()V

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->n:Landroid/support/v4/widget/h;

    invoke-virtual {v0}, Landroid/support/v4/widget/h;->a()V

    move v0, v2

    goto/16 :goto_17

    :cond_a4
    move v3, v2

    goto :goto_70

    :cond_a6
    move v3, v2

    goto :goto_92

    :cond_a8
    move v3, v2

    goto :goto_92

    :cond_aa
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    :cond_ad
    move v0, v2

    goto :goto_95

    :pswitch_af
    invoke-direct {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->s:Z

    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->d:Z

    goto/16 :goto_16

    :cond_b8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_20

    :cond_bd
    move v0, v2

    goto/16 :goto_31

    :cond_c0
    move v0, v2

    goto :goto_5b

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_39
        :pswitch_af
        :pswitch_60
        :pswitch_af
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_13

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->c()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_11

    move v1, v0

    :goto_b
    if-eqz v1, :cond_13

    invoke-static {p2}, Landroid/support/v4/view/w;->c(Landroid/view/KeyEvent;)V

    :goto_10
    return v0

    :cond_11
    const/4 v1, 0x0

    goto :goto_b

    :cond_13
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_10
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_17

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->c()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v2

    if-nez v2, :cond_13

    invoke-direct {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    :cond_13
    if-eqz v1, :cond_16

    const/4 v0, 0x1

    :cond_16
    :goto_16
    return v0

    :cond_17
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_16
.end method

.method protected onLayout(ZIIII)V
    .registers 20

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->o:Z

    sub-int v6, p4, p2

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v7

    const/4 v0, 0x0

    move v5, v0

    :goto_b
    if-ge v5, v7, :cond_cb

    invoke-virtual {p0, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3a

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/f;

    invoke-static {v8}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget v1, v0, Landroid/support/v4/widget/f;->leftMargin:I

    iget v2, v0, Landroid/support/v4/widget/f;->topMargin:I

    iget v3, v0, Landroid/support/v4/widget/f;->leftMargin:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v0, v0, Landroid/support/v4/widget/f;->topMargin:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {v8, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    :cond_3a
    :goto_3a
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_b

    :cond_3e
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    const/4 v1, 0x3

    invoke-virtual {p0, v8, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_87

    neg-int v1, v9

    int-to-float v2, v9

    iget v3, v0, Landroid/support/v4/widget/f;->b:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v2, v1

    add-int v1, v9, v2

    int-to-float v1, v1

    int-to-float v3, v9

    div-float/2addr v1, v3

    :goto_59
    iget v3, v0, Landroid/support/v4/widget/f;->b:F

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_94

    const/4 v3, 0x1

    :goto_60
    iget v4, v0, Landroid/support/v4/widget/f;->a:I

    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_d2

    iget v4, v0, Landroid/support/v4/widget/f;->topMargin:I

    add-int/2addr v9, v2

    iget v11, v0, Landroid/support/v4/widget/f;->topMargin:I

    add-int/2addr v10, v11

    invoke-virtual {v8, v2, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    :goto_70
    if-eqz v3, :cond_75

    invoke-virtual {p0, v8, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;F)V

    :cond_75
    iget v0, v0, Landroid/support/v4/widget/f;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c9

    const/4 v0, 0x0

    :goto_7d
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_3a

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3a

    :cond_87
    int-to-float v1, v9

    iget v2, v0, Landroid/support/v4/widget/f;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v2, v6, v1

    sub-int v1, v6, v2

    int-to-float v1, v1

    int-to-float v3, v9

    div-float/2addr v1, v3

    goto :goto_59

    :cond_94
    const/4 v3, 0x0

    goto :goto_60

    :sswitch_96
    sub-int v4, p5, p3

    iget v10, v0, Landroid/support/v4/widget/f;->bottomMargin:I

    sub-int v10, v4, v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v10, v11

    add-int/2addr v9, v2

    iget v11, v0, Landroid/support/v4/widget/f;->bottomMargin:I

    sub-int/2addr v4, v11

    invoke-virtual {v8, v2, v10, v9, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_70

    :sswitch_a9
    sub-int v11, p5, p3

    sub-int v4, v11, v10

    div-int/lit8 v4, v4, 0x2

    iget v12, v0, Landroid/support/v4/widget/f;->topMargin:I

    if-ge v4, v12, :cond_bb

    iget v4, v0, Landroid/support/v4/widget/f;->topMargin:I

    :cond_b5
    :goto_b5
    add-int/2addr v9, v2

    add-int/2addr v10, v4

    invoke-virtual {v8, v2, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_70

    :cond_bb
    add-int v12, v4, v10

    iget v13, v0, Landroid/support/v4/widget/f;->bottomMargin:I

    sub-int v13, v11, v13

    if-le v12, v13, :cond_b5

    iget v4, v0, Landroid/support/v4/widget/f;->bottomMargin:I

    sub-int v4, v11, v4

    sub-int/2addr v4, v10

    goto :goto_b5

    :cond_c9
    const/4 v0, 0x4

    goto :goto_7d

    :cond_cb
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->o:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->p:Z

    return-void

    :sswitch_data_d2
    .sparse-switch
        0x10 -> :sswitch_a9
        0x50 -> :sswitch_96
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 13

    const/16 v1, 0x12c

    const/high16 v6, -0x8000

    const/high16 v9, 0x4000

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-ne v3, v9, :cond_1a

    if-eq v4, v9, :cond_f4

    :cond_1a
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_6a

    if-eq v3, v6, :cond_25

    if-nez v3, :cond_25

    move v2, v1

    :cond_25
    if-eq v4, v6, :cond_f4

    if-nez v4, :cond_f4

    :goto_29
    invoke-virtual {p0, v2, v1}, Landroid/support/v4/widget/DrawerLayout;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v4

    const/4 v0, 0x0

    move v3, v0

    :goto_32
    if-ge v3, v4, :cond_f3

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v6, 0x8

    if-eq v0, v6, :cond_66

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/f;

    invoke-static {v5}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_72

    iget v6, v0, Landroid/support/v4/widget/f;->leftMargin:I

    sub-int v6, v2, v6

    iget v7, v0, Landroid/support/v4/widget/f;->rightMargin:I

    sub-int/2addr v6, v7

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v7, v0, Landroid/support/v4/widget/f;->topMargin:I

    sub-int v7, v1, v7

    iget v0, v0, Landroid/support/v4/widget/f;->bottomMargin:I

    sub-int v0, v7, v0

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v5, v6, v0}, Landroid/view/View;->measure(II)V

    :cond_66
    :goto_66
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_32

    :cond_6a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_72
    invoke-static {v5}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_ce

    invoke-virtual {p0, v5}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;)I

    move-result v6

    and-int/lit8 v6, v6, 0x7

    and-int/lit8 v7, v6, 0x0

    if-eqz v7, :cond_b1

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Child drawer has absolute gravity "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit8 v0, v6, 0x3

    const/4 v3, 0x3

    if-ne v0, v3, :cond_a4

    const-string v0, "LEFT"

    :goto_92
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " but this DrawerLayout already has a drawer view along that edge"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a4
    and-int/lit8 v0, v6, 0x5

    const/4 v3, 0x5

    if-ne v0, v3, :cond_ac

    const-string v0, "RIGHT"

    goto :goto_92

    :cond_ac
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_92

    :cond_b1
    iget v6, p0, Landroid/support/v4/widget/DrawerLayout;->i:I

    iget v7, v0, Landroid/support/v4/widget/f;->leftMargin:I

    add-int/2addr v6, v7

    iget v7, v0, Landroid/support/v4/widget/f;->rightMargin:I

    add-int/2addr v6, v7

    iget v7, v0, Landroid/support/v4/widget/f;->width:I

    invoke-static {p1, v6, v7}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v6

    iget v7, v0, Landroid/support/v4/widget/f;->topMargin:I

    iget v8, v0, Landroid/support/v4/widget/f;->bottomMargin:I

    add-int/2addr v7, v8

    iget v0, v0, Landroid/support/v4/widget/f;->height:I

    invoke-static {p2, v7, v0}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {v5, v6, v0}, Landroid/view/View;->measure(II)V

    goto :goto_66

    :cond_ce
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Child "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f3
    return-void

    :cond_f4
    move v1, v0

    goto/16 :goto_29
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    check-cast p1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    invoke-virtual {p1}, Landroid/support/v4/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->a:I

    if-eqz v0, :cond_18

    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->a:I

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-direct {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)V

    :cond_18
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->b:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->c:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 6

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v2, Landroid/support/v4/widget/DrawerLayout$SavedState;

    invoke-direct {v2, v0}, Landroid/support/v4/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_f
    if-ge v1, v3, :cond_29

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/f;

    iget-boolean v4, v0, Landroid/support/v4/widget/f;->d:Z

    if-eqz v4, :cond_32

    iget v0, v0, Landroid/support/v4/widget/f;->a:I

    iput v0, v2, Landroid/support/v4/widget/DrawerLayout$SavedState;->a:I

    :cond_29
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->q:I

    iput v0, v2, Landroid/support/v4/widget/DrawerLayout$SavedState;->b:I

    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->r:I

    iput v0, v2, Landroid/support/v4/widget/DrawerLayout$SavedState;->c:I

    return-object v2

    :cond_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/al;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/al;->b(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->b:Landroid/support/v4/widget/al;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/al;->b(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_74

    :goto_15
    :pswitch_15
    return v1

    :pswitch_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->t:F

    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->u:F

    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->s:Z

    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->d:Z

    goto :goto_15

    :pswitch_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/al;

    float-to-int v5, v0

    float-to-int v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/al;->b(II)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_71

    invoke-static {v4}, Landroid/support/v4/widget/DrawerLayout;->f(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_71

    iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->t:F

    sub-float/2addr v0, v4

    iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->u:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/al;

    iget v4, v4, Landroid/support/v4/widget/al;->b:I

    mul-float/2addr v0, v0

    mul-float/2addr v3, v3

    add-float/2addr v0, v3

    mul-int v3, v4, v4

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_71

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_71

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_67

    move v0, v1

    :goto_61
    invoke-direct {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->s:Z

    goto :goto_15

    :cond_67
    move v0, v2

    goto :goto_61

    :pswitch_69
    invoke-direct {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->s:Z

    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->d:Z

    goto :goto_15

    :cond_71
    move v0, v1

    goto :goto_61

    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_16
        :pswitch_27
        :pswitch_15
        :pswitch_69
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean p1, p0, Landroid/support/v4/widget/DrawerLayout;->s:Z

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Z)V

    :cond_b
    return-void
.end method

.method public requestLayout()V
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->o:Z

    if-nez v0, :cond_7

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_7
    return-void
.end method

.method public setDrawerListener(Landroid/support/v4/widget/e;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->e:Landroid/support/v4/widget/e;

    return-void
.end method

.method public setDrawerLockMode(I)V
    .registers 3

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    return-void
.end method

.method public setDrawerLockMode(II)V
    .registers 6

    const/4 v2, 0x3

    invoke-static {p0}, Landroid/support/v4/view/as;->g(Landroid/view/View;)I

    move-result v0

    invoke-static {p2, v0}, Landroid/support/v4/view/s;->a(II)I

    move-result v1

    if-ne v1, v2, :cond_1a

    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->q:I

    :cond_d
    :goto_d
    if-eqz p1, :cond_16

    if-ne v1, v2, :cond_20

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/al;

    :goto_13
    invoke-virtual {v0}, Landroid/support/v4/widget/al;->a()V

    :cond_16
    packed-switch p1, :pswitch_data_38

    :cond_19
    :goto_19
    return-void

    :cond_1a
    const/4 v0, 0x5

    if-ne v1, v0, :cond_d

    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->r:I

    goto :goto_d

    :cond_20
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->b:Landroid/support/v4/widget/al;

    goto :goto_13

    :pswitch_23
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-direct {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;)V

    goto :goto_19

    :pswitch_2d
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->e(Landroid/view/View;)V

    goto :goto_19

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_23
    .end packed-switch
.end method

.method public setDrawerLockMode(ILandroid/view/View;)V
    .registers 6

    invoke-static {p2}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_21

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a drawer with appropriate layout_gravity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/f;

    iget v0, v0, Landroid/support/v4/widget/f;->a:I

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    return-void
.end method

.method public setDrawerShadow(II)V
    .registers 4

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
    .registers 6

    invoke-static {p0}, Landroid/support/v4/view/as;->g(Landroid/view/View;)I

    move-result v0

    invoke-static {p2, v0}, Landroid/support/v4/view/s;->a(II)I

    move-result v0

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_12

    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    :cond_12
    and-int/lit8 v0, v0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1c

    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    :cond_1c
    return-void
.end method

.method public setDrawerTitle(ILjava/lang/CharSequence;)V
    .registers 5

    invoke-static {p0}, Landroid/support/v4/view/as;->g(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/s;->a(II)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    iput-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->f:Ljava/lang/CharSequence;

    :cond_d
    :goto_d
    return-void

    :cond_e
    const/4 v1, 0x5

    if-ne v0, v1, :cond_d

    iput-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->g:Ljava/lang/CharSequence;

    goto :goto_d
.end method

.method public setScrimColor(I)V
    .registers 2

    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->j:I

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    return-void
.end method
