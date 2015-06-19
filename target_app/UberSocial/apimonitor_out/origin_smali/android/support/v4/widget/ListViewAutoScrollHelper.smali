.class public Landroid/support/v4/widget/ListViewAutoScrollHelper;
.super Landroid/support/v4/widget/AutoScrollHelper;
.source "SourceFile"


# instance fields
.field private final mTarget:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v4/widget/AutoScrollHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroid/support/v4/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public canTargetScrollHorizontally(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public canTargetScrollVertically(I)Z
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    add-int v5, v4, v3

    if-lez p1, :cond_2a

    if-lt v5, v2, :cond_28

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    if-le v2, v1, :cond_9

    :cond_28
    const/4 v0, 0x1

    goto :goto_9

    :cond_2a
    if-gez p1, :cond_9

    if-gtz v4, :cond_28

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-ltz v1, :cond_28

    goto :goto_9
.end method

.method public scrollTargetBy(II)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_9
.end method
