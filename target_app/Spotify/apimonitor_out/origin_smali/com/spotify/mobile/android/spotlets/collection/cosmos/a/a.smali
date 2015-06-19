.class public final Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final a:I

.field private final b:Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/b;

.field private c:Landroid/widget/AbsListView$OnScrollListener;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->a:I

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->b:Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/b;

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->a()V

    return-void
.end method

.method private a()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->d:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->e:I

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .registers 10

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_a
    if-nez p4, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    div-int/lit8 v0, p3, 0x2

    add-int/2addr v0, p2

    add-int v1, p2, p3

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->d:I

    if-lt v1, v2, :cond_1a

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->e:I

    if-le p2, v2, :cond_1d

    :cond_1a
    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->a()V

    :cond_1d
    iget v2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->d:I

    if-ltz v2, :cond_51

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->d:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->a:I

    div-int/lit8 v3, v3, 0x4

    if-ge v2, v3, :cond_51

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->d:I

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->a:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->a:I

    div-int/lit8 v1, v1, 0x2

    sub-int v2, p4, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lez v1, :cond_47

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->b:Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/b;

    invoke-interface {v2, v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/b;->a(II)V

    :cond_47
    iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->d:I

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->a:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->d:I

    goto :goto_c

    :cond_51
    iget v2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->e:I

    sub-int v1, v2, v1

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->a:I

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_80

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->e:I

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->a:I

    div-int/lit8 v1, v1, 0x2

    sub-int v2, p4, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lez v1, :cond_6e

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->b:Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/b;

    invoke-interface {v2, v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/b;->a(II)V

    :cond_6e
    iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->e:I

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->a:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->e:I

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->e:I

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->e:I

    goto :goto_c

    :cond_80
    iget v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->e:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_c

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->a:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->a:I

    sub-int v3, p4, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lez v2, :cond_a0

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->b:Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/b;

    invoke-interface {v3, v1, v2}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/b;->a(II)V

    :cond_a0
    iget v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->a:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    iput v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->d:I

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->a:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->e:I

    goto/16 :goto_c
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/a;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_9
    return-void
.end method
