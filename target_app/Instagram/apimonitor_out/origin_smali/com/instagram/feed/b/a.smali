.class public final Lcom/instagram/feed/b/a;
.super Ljava/lang/Object;
.source "FeedAutoLoadMoreHelper.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final a:Lcom/instagram/feed/b/b;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/instagram/feed/b/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/feed/b/a;->b:I

    sget v0, Lcom/instagram/feed/b/c;->b:I

    iput v0, p0, Lcom/instagram/feed/b/a;->c:I

    iput-object p1, p0, Lcom/instagram/feed/b/a;->a:Lcom/instagram/feed/b/b;

    return-void
.end method

.method private a(I)V
    .registers 3

    iget v0, p0, Lcom/instagram/feed/b/a;->b:I

    if-le v0, p1, :cond_9

    sget v0, Lcom/instagram/feed/b/c;->a:I

    iput v0, p0, Lcom/instagram/feed/b/a;->c:I

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget v0, p0, Lcom/instagram/feed/b/a;->b:I

    if-ge v0, p1, :cond_8

    sget v0, Lcom/instagram/feed/b/c;->b:I

    iput v0, p0, Lcom/instagram/feed/b/a;->c:I

    goto :goto_8
.end method

.method private a(III)Z
    .registers 7

    add-int v0, p1, p2

    if-lez p3, :cond_17

    if-lez p2, :cond_17

    iget v1, p0, Lcom/instagram/feed/b/a;->c:I

    sget v2, Lcom/instagram/feed/b/c;->b:I

    if-ne v1, v2, :cond_17

    iget-object v1, p0, Lcom/instagram/feed/b/a;->a:Lcom/instagram/feed/b/b;

    invoke-interface {v1}, Lcom/instagram/feed/b/b;->b()I

    move-result v1

    add-int/2addr v0, v1

    if-lt v0, p3, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .registers 6

    invoke-direct {p0, p2}, Lcom/instagram/feed/b/a;->a(I)V

    invoke-direct {p0, p2, p3, p4}, Lcom/instagram/feed/b/a;->a(III)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/instagram/feed/b/a;->a:Lcom/instagram/feed/b/b;

    invoke-interface {v0}, Lcom/instagram/feed/b/b;->a()V

    :cond_e
    iput p2, p0, Lcom/instagram/feed/b/a;->b:I

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    return-void
.end method
