.class public Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;
.super Landroid/widget/ListView;
.source "SourceFile"
.field private a:Landroid/view/View;
.field private b:Landroid/widget/AbsListView$LayoutParams;
.field private c:Z
.field private d:Landroid/database/DataSetObserver;
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const v0, 0x1010074
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 7
invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Landroid/widget/AbsListView$LayoutParams;
const/4 v1, -0x1
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->b:Landroid/widget/AbsListView$LayoutParams;
new-instance v0, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView$1;-><init>(Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->d:Landroid/database/DataSetObserver;
new-instance v0, Landroid/view/View;
invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->a:Landroid/view/View;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->a:Landroid/view/View;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->b:Landroid/widget/AbsListView$LayoutParams;
invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->c:Z
return v0
.end method
.method private b()Z
.registers 5
const/4 v0, 0x0
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v2
invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I
move-result v2
const/4 v3, 0x2
if-gt v2, v3, :cond_e
:goto_d
:cond_d
return v0
:cond_e
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->getFirstVisiblePosition()I
move-result v2
if-gt v2, v1, :cond_d
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->getLastVisiblePosition()I
move-result v2
if-gt v1, v2, :cond_d
move v0, v1
goto :goto_d
.end method
.method private c()Z
.registers 4
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v1
invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I
move-result v1
add-int/lit8 v1, v1, -0x2
if-gtz v1, :cond_e
:goto_d
:cond_d
return v0
:cond_e
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->getFirstVisiblePosition()I
move-result v2
if-gt v2, v1, :cond_d
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->getLastVisiblePosition()I
move-result v2
if-gt v1, v2, :cond_d
const/4 v0, 0x1
goto :goto_d
.end method
.method private d()Z
.registers 3
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v0
invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I
move-result v0
const/4 v1, 0x2
if-ne v0, v1, :cond_d
const/4 v0, 0x1
:goto_c
return v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method private e()Z
.registers 3
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->getLastVisiblePosition()I
move-result v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v1
invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I
move-result v1
add-int/lit8 v1, v1, -0x1
if-ne v0, v1, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method private f()I
.registers 4
invoke-super {p0}, Landroid/widget/ListView;->getChildCount()I
move-result v0
add-int/lit8 v1, v0, -0x1
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->getChildAt(I)Landroid/view/View;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->a:Landroid/view/View;
if-ne v1, v2, :cond_10
add-int/lit8 v0, v0, -0x1
:cond_10
return v0
.end method
.method private g()Landroid/view/View;
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->f()I
move-result v0
add-int/lit8 v0, v0, -0x1
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public final a()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->c:Z
return-void
.end method
.method protected layoutChildren()V
.registers 9
const/4 v1, 0x1
const/4 v2, 0x0
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->c:Z
if-eqz v0, :cond_17
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v0
if-eqz v0, :cond_17
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v0
invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I
move-result v0
const/4 v3, 0x2
if-ge v0, v3, :cond_1f
:cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->b:Landroid/widget/AbsListView$LayoutParams;
iput v2, v0, Landroid/widget/AbsListView$LayoutParams;->height:I
invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V
:goto_1e
:cond_1e
return-void
:cond_1f
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->getFirstVisiblePosition()I
move-result v0
if-lez v0, :cond_a8
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->d()Z
move-result v0
if-eqz v0, :cond_a8
move v0, v1
:goto_2c
iget-object v3, p0, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->b:Landroid/widget/AbsListView$LayoutParams;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->getHeight()I
move-result v4
iput v4, v3, Landroid/widget/AbsListView$LayoutParams;->height:I
invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->b()Z
move-result v3
if-nez v3, :cond_aa
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->c()Z
move-result v3
if-nez v3, :cond_49
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->e()Z
move-result v3
if-eqz v3, :cond_aa
:cond_49
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->d()Z
move-result v3
if-nez v3, :cond_aa
move v4, v1
:goto_50
if-eqz v4, :cond_58
invoke-virtual {p0, v1, v2}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->setSelectionFromTop(II)V
invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V
:cond_58
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->f()I
move-result v3
if-lez v3, :cond_f3
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->g()Landroid/view/View;
move-result-object v3
invoke-virtual {v3}, Landroid/view/View;->getBottom()I
move-result v3
:goto_66
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->b()Z
move-result v5
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->c()Z
move-result v6
if-eqz v5, :cond_72
if-nez v6, :cond_ac
:cond_72
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->d()Z
move-result v5
if-nez v5, :cond_ac
move v1, v2
:goto_79
iget-object v5, p0, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->b:Landroid/widget/AbsListView$LayoutParams;
iput v1, v5, Landroid/widget/AbsListView$LayoutParams;->height:I
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->e()Z
move-result v5
if-eqz v5, :cond_95
if-nez v0, :cond_95
if-nez v4, :cond_95
iget-object v5, p0, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->a:Landroid/view/View;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->getLeft()I
move-result v6
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->getRight()I
move-result v7
add-int/2addr v1, v3
invoke-virtual {v5, v6, v3, v7, v1}, Landroid/view/View;->layout(IIII)V
:cond_95
if-eqz v0, :cond_df
invoke-virtual {p0, v2}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getHeight()I
move-result v0
neg-int v0, v0
invoke-virtual {p0, v2, v0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->setSelectionFromTop(II)V
invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V
goto/16 :goto_1e
:cond_a8
move v0, v2
goto :goto_2c
:cond_aa
move v4, v2
goto :goto_50
:cond_ac
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->getHeight()I
move-result v5
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->getPaddingTop()I
move-result v6
sub-int/2addr v5, v6
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->getPaddingBottom()I
move-result v6
sub-int/2addr v5, v6
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->d()Z
move-result v6
if-eqz v6, :cond_c4
move v1, v2
:goto_c1
sub-int v1, v5, v1
goto :goto_79
:cond_c4
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->getFirstVisiblePosition()I
move-result v6
if-nez v6, :cond_dd
:goto_ca
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->g()Landroid/view/View;
move-result-object v6
invoke-virtual {v6}, Landroid/view/View;->getBottom()I
move-result v6
invoke-virtual {v1}, Landroid/view/View;->getTop()I
move-result v1
sub-int v1, v6, v1
goto :goto_c1
:cond_dd
move v1, v2
goto :goto_ca
:cond_df
if-eqz v4, :cond_1e
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v0
invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I
move-result v0
add-int/lit8 v0, v0, -0x2
invoke-virtual {p0, v0, v2}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->setSelectionFromTop(II)V
invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V
goto/16 :goto_1e
:cond_f3
move v3, v2
goto/16 :goto_66
.end method
.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
.registers 2
check-cast p1, Landroid/widget/ListAdapter;
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V
return-void
.end method
.method public setAdapter(Landroid/widget/ListAdapter;)V
.registers 5
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v0
if-nez v0, :cond_18
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->a:Landroid/view/View;
const/4 v1, 0x0
const/4 v2, 0x0
invoke-virtual {p0, v0, v1, v2}, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
:goto_d
if-eqz p1, :cond_14
iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->d:Landroid/database/DataSetObserver;
invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
:cond_14
invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
return-void
:cond_18
iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/HidingHeaderListView;->d:Landroid/database/DataSetObserver;
invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
goto :goto_d
.end method