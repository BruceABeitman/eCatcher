.class public Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->b:Z

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->c:Z

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->d:Z

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->e:Z

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->f:Z

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->g:Z

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->b:Z

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->c:Z

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->d:Z

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->e:Z

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->f:Z

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->g:Z

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 6

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->a:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->e:Z

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->d:Z

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->requestLayout()V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .registers 4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->b:Z

    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->removeHeaderView(Landroid/view/View;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->c:Z

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->b:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->b:Z

    :cond_d
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->c:Z

    return-void
.end method

.method protected layoutChildren()V
    .registers 6

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->c:Z

    if-eqz v0, :cond_4b

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->getLastVisiblePosition()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, -0x1

    if-gt v0, v3, :cond_1f

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->e:Z

    if-eqz v0, :cond_4b

    :cond_1f
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    move v0, v1

    :goto_26
    if-ge v0, v3, :cond_34

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_34
    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->d:Z

    if-nez v0, :cond_46

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->g:Z

    if-nez v0, :cond_46

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->f:Z

    if-eqz v0, :cond_42

    if-gtz v2, :cond_46

    :cond_42
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->setSelectionFromTop(II)V

    :cond_46
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->c:Z

    :cond_4b
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->f:Z

    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->g:Z

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setSelection(I)V
    .registers 3

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->d:Z

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->d:Z

    invoke-super {p0}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    return-void
.end method

.method public setSelectionFromTop(II)V
    .registers 4

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->d:Z

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void
.end method

.method public smoothScrollBy(II)V
    .registers 4

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->d:Z

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->smoothScrollBy(II)V

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .registers 3

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->d:Z

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public smoothScrollToPosition(II)V
    .registers 4

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->d:Z

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->smoothScrollToPosition(II)V

    return-void
.end method
