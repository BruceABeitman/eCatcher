.class Lcom/millennialmedia/android/bu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:Lcom/millennialmedia/android/aq;

.field final synthetic d:Lcom/millennialmedia/android/MMAdView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/aq;)V
    .registers 4

    iput-object p1, p0, Lcom/millennialmedia/android/bu;->d:Lcom/millennialmedia/android/MMAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/millennialmedia/android/bu;->c:Lcom/millennialmedia/android/aq;

    iget v0, p2, Lcom/millennialmedia/android/aq;->d:I

    iput v0, p0, Lcom/millennialmedia/android/bu;->a:I

    iget v0, p2, Lcom/millennialmedia/android/aq;->e:I

    iput v0, p0, Lcom/millennialmedia/android/bu;->b:I

    return-void
.end method

.method private a(IIII)Lcom/millennialmedia/android/bv;
    .registers 7

    add-int v0, p1, p3

    add-int/2addr v0, p2

    if-le v0, p4, :cond_20

    sub-int v0, p4, p3

    add-int/2addr p2, v0

    if-gez p2, :cond_19

    const/4 p2, 0x0

    move p3, p4

    :cond_c
    :goto_c
    new-instance v0, Lcom/millennialmedia/android/bv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/android/bv;-><init>(Lcom/millennialmedia/android/bu;Lcom/millennialmedia/android/MMAdView$1;)V

    sub-int v1, p2, p1

    iput v1, v0, Lcom/millennialmedia/android/bv;->a:I

    iput p3, v0, Lcom/millennialmedia/android/bv;->b:I

    return-object v0

    :cond_19
    add-int v0, p2, p3

    if-le v0, p4, :cond_c

    sub-int p2, p4, p3

    goto :goto_c

    :cond_20
    if-gtz p2, :cond_c

    move p2, p1

    goto :goto_c
.end method

.method private b()V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/millennialmedia/android/bu;->d:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMAdView;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/millennialmedia/android/bu;->c:Lcom/millennialmedia/android/aq;

    iget v1, v1, Lcom/millennialmedia/android/aq;->d:I

    iget-object v2, p0, Lcom/millennialmedia/android/bu;->c:Lcom/millennialmedia/android/aq;

    iget v2, v2, Lcom/millennialmedia/android/aq;->a:I

    iget-object v3, p0, Lcom/millennialmedia/android/bu;->c:Lcom/millennialmedia/android/aq;

    iget v3, v3, Lcom/millennialmedia/android/aq;->g:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/millennialmedia/android/bu;->a(IIII)Lcom/millennialmedia/android/bv;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/bu;->c:Lcom/millennialmedia/android/aq;

    iget v2, v0, Lcom/millennialmedia/android/bv;->b:I

    iput v2, v1, Lcom/millennialmedia/android/aq;->a:I

    iget v0, v0, Lcom/millennialmedia/android/bv;->a:I

    iput v0, p0, Lcom/millennialmedia/android/bu;->a:I

    return-void
.end method

.method private c()V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/millennialmedia/android/bu;->d:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMAdView;->getLocationInWindow([I)V

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/millennialmedia/android/bu;->c:Lcom/millennialmedia/android/aq;

    iget v1, v1, Lcom/millennialmedia/android/aq;->e:I

    iget-object v2, p0, Lcom/millennialmedia/android/bu;->c:Lcom/millennialmedia/android/aq;

    iget v2, v2, Lcom/millennialmedia/android/aq;->b:I

    iget-object v3, p0, Lcom/millennialmedia/android/bu;->c:Lcom/millennialmedia/android/aq;

    iget v3, v3, Lcom/millennialmedia/android/aq;->h:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/millennialmedia/android/bu;->a(IIII)Lcom/millennialmedia/android/bv;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/bu;->c:Lcom/millennialmedia/android/aq;

    iget v2, v0, Lcom/millennialmedia/android/bv;->b:I

    iput v2, v1, Lcom/millennialmedia/android/aq;->b:I

    iget v0, v0, Lcom/millennialmedia/android/bv;->a:I

    iput v0, p0, Lcom/millennialmedia/android/bu;->b:I

    return-void
.end method


# virtual methods
.method a(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/bu;->c:Lcom/millennialmedia/android/aq;

    iget v0, v0, Lcom/millennialmedia/android/aq;->a:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/millennialmedia/android/bu;->c:Lcom/millennialmedia/android/aq;

    iget v0, v0, Lcom/millennialmedia/android/aq;->b:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-object p1
.end method

.method a()V
    .registers 1

    invoke-direct {p0}, Lcom/millennialmedia/android/bu;->b()V

    invoke-direct {p0}, Lcom/millennialmedia/android/bu;->c()V

    return-void
.end method
