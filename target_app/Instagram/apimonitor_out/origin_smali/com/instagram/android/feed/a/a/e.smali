.class public final Lcom/instagram/android/feed/a/a/e;
.super Ljava/lang/Object;
.source "FeedMediaCacheWarmer.java"


# instance fields
.field private final a:Lcom/instagram/android/feed/a/a;

.field private final b:Lcom/instagram/common/e/b/h;

.field private final c:Landroid/content/Context;

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/instagram/android/feed/a/a;Lcom/instagram/common/e/b/h;Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/android/feed/a/a/e;->d:I

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/instagram/android/feed/a/a/e;->e:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/instagram/android/feed/a/a/e;->f:I

    iput-object p1, p0, Lcom/instagram/android/feed/a/a/e;->a:Lcom/instagram/android/feed/a/a;

    iput-object p2, p0, Lcom/instagram/android/feed/a/a/e;->b:Lcom/instagram/common/e/b/h;

    iput-object p3, p0, Lcom/instagram/android/feed/a/a/e;->c:Landroid/content/Context;

    return-void
.end method

.method private a(I)V
    .registers 4

    const v0, 0x7fffffff

    iput v0, p0, Lcom/instagram/android/feed/a/a/e;->f:I

    iget v0, p0, Lcom/instagram/android/feed/a/a/e;->e:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p1, 0x2

    :goto_f
    if-gt v0, v1, :cond_17

    invoke-direct {p0, v0}, Lcom/instagram/android/feed/a/a/e;->c(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_17
    iput v1, p0, Lcom/instagram/android/feed/a/a/e;->e:I

    return-void
.end method

.method private b(I)V
    .registers 4

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/instagram/android/feed/a/a/e;->e:I

    iget v0, p0, Lcom/instagram/android/feed/a/a/e;->f:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, p1, -0x2

    :goto_e
    if-lt v0, v1, :cond_16

    invoke-direct {p0, v0}, Lcom/instagram/android/feed/a/a/e;->c(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_16
    iput v1, p0, Lcom/instagram/android/feed/a/a/e;->f:I

    return-void
.end method

.method private c(I)V
    .registers 5

    if-ltz p1, :cond_23

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/e;->a:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_23

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/e;->a:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v0, p1}, Lcom/instagram/android/feed/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/instagram/feed/d/l;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/e;->b:Lcom/instagram/common/e/b/h;

    check-cast v0, Lcom/instagram/feed/d/l;

    check-cast v0, Lcom/instagram/feed/d/l;

    iget-object v2, p0, Lcom/instagram/android/feed/a/a/e;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/instagram/feed/d/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/common/e/b/h;->a(Ljava/lang/String;)V

    :cond_23
    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/AbsListView;)V
    .registers 5

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    iget v2, p0, Lcom/instagram/android/feed/a/a/e;->d:I

    if-le v0, v2, :cond_12

    invoke-direct {p0, v1}, Lcom/instagram/android/feed/a/a/e;->a(I)V

    :cond_f
    :goto_f
    iput v0, p0, Lcom/instagram/android/feed/a/a/e;->d:I

    return-void

    :cond_12
    iget v1, p0, Lcom/instagram/android/feed/a/a/e;->d:I

    if-ge v0, v1, :cond_f

    invoke-direct {p0, v0}, Lcom/instagram/android/feed/a/a/e;->b(I)V

    goto :goto_f
.end method
