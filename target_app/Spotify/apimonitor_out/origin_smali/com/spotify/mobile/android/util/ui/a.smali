.class public abstract Lcom/spotify/mobile/android/util/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(I)V
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 10

    const/4 v4, 0x0

    if-nez p3, :cond_4

    :goto_3
    return-void

    :cond_4
    add-int v0, p2, p3

    add-int/lit8 v1, v0, -0x1

    iget-boolean v0, p0, Lcom/spotify/mobile/android/util/ui/a;->e:Z

    if-nez v0, :cond_29

    iput p2, p0, Lcom/spotify/mobile/android/util/ui/a;->a:I

    iput v1, p0, Lcom/spotify/mobile/android/util/ui/a;->b:I

    invoke-virtual {p1, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/util/ui/a;->c:I

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/util/ui/a;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/util/ui/a;->e:Z

    :cond_29
    iget v0, p0, Lcom/spotify/mobile/android/util/ui/a;->a:I

    if-gt p2, v0, :cond_5d

    iget v0, p0, Lcom/spotify/mobile/android/util/ui/a;->a:I

    if-gt v0, v1, :cond_5d

    iget v0, p0, Lcom/spotify/mobile/android/util/ui/a;->a:I

    sub-int/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, p0, Lcom/spotify/mobile/android/util/ui/a;->c:I

    sub-int/2addr v0, v2

    :goto_3f
    iput p2, p0, Lcom/spotify/mobile/android/util/ui/a;->a:I

    iput v1, p0, Lcom/spotify/mobile/android/util/ui/a;->b:I

    invoke-virtual {p1, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/spotify/mobile/android/util/ui/a;->c:I

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/spotify/mobile/android/util/ui/a;->d:I

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/util/ui/a;->a(I)V

    goto :goto_3

    :cond_5d
    iget v0, p0, Lcom/spotify/mobile/android/util/ui/a;->b:I

    if-gt p2, v0, :cond_74

    iget v0, p0, Lcom/spotify/mobile/android/util/ui/a;->b:I

    if-gt v0, v1, :cond_74

    iget v0, p0, Lcom/spotify/mobile/android/util/ui/a;->b:I

    sub-int/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, p0, Lcom/spotify/mobile/android/util/ui/a;->d:I

    sub-int/2addr v0, v2

    goto :goto_3f

    :cond_74
    iget v0, p0, Lcom/spotify/mobile/android/util/ui/a;->a:I

    sub-int v0, p2, v0

    iget v2, p0, Lcom/spotify/mobile/android/util/ui/a;->d:I

    iget v3, p0, Lcom/spotify/mobile/android/util/ui/a;->c:I

    sub-int/2addr v2, v3

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/spotify/mobile/android/util/ui/a;->b:I

    iget v3, p0, Lcom/spotify/mobile/android/util/ui/a;->a:I

    sub-int/2addr v2, v3

    div-int/2addr v0, v2

    invoke-virtual {p1, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v0, v2, v0

    iget v2, p0, Lcom/spotify/mobile/android/util/ui/a;->c:I

    sub-int/2addr v0, v2

    goto :goto_3f
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    return-void
.end method
