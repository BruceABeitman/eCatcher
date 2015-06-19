.class public Lcom/instagram/android/feed/ui/StickyHeaderListView;
.super Landroid/widget/FrameLayout;
.source "StickyHeaderListView.java"
.implements Landroid/widget/AbsListView$OnScrollListener;
.field private static k:Ljava/lang/Boolean;
.field protected a:Z
.field protected b:Z
.field protected c:Landroid/widget/ListView;
.field protected d:Lcom/instagram/android/feed/ui/d;
.field protected e:Landroid/view/View;
.field protected f:Landroid/view/View;
.field protected g:Landroid/view/View;
.field protected h:I
.field protected i:Ljava/lang/Object;
.field protected j:I
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, -0x1
iput v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->h:I
const/4 v0, 0x0
iput v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->j:I
return-void
.end method
.method private a(Landroid/view/View;Z)V
.registers 6
if-eqz p2, :cond_13
iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->e:Landroid/view/View;
invoke-virtual {p1}, Landroid/view/View;->getBottom()I
move-result v1
iget-object v2, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->e:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I
move-result v2
sub-int/2addr v1, v2
invoke-static {v0, v1}, Lcom/instagram/android/feed/ui/f;->a(Landroid/view/View;I)V
:goto_12
return-void
:cond_13
iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->e:Landroid/view/View;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/instagram/android/feed/ui/f;->a(Landroid/view/View;I)V
goto :goto_12
.end method
.method private a()Z
.registers 3
sget-object v0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->k:Ljava/lang/Boolean;
if-nez v0, :cond_17
invoke-virtual {p0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/f;->b(Landroid/content/Context;)I
move-result v0
const/16 v1, 0x140
if-le v0, v1, :cond_1e
const/4 v0, 0x1
:goto_11
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
sput-object v0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->k:Ljava/lang/Boolean;
:cond_17
sget-object v0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->k:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0
:cond_1e
const/4 v0, 0x0
goto :goto_11
.end method
.method private a(I)Z
.registers 4
iget v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->h:I
if-ne p1, v0, :cond_16
iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->i:Ljava/lang/Object;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->i:Ljava/lang/Object;
iget-object v1, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->d:Lcom/instagram/android/feed/ui/d;
invoke-interface {v1, p1}, Lcom/instagram/android/feed/ui/d;->getItem(I)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_18
:cond_16
const/4 v0, 0x1
:goto_17
return v0
:cond_18
const/4 v0, 0x0
goto :goto_17
.end method
.method private b(I)Landroid/view/View;
.registers 6
const/high16 v3, 0x4000
const/4 v2, 0x0
iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->d:Lcom/instagram/android/feed/ui/d;
iget-object v1, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->f:Landroid/view/View;
invoke-interface {v0, p1, v1, p0}, Lcom/instagram/android/feed/ui/d;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->f:Landroid/view/View;
iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->f:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
if-lez v0, :cond_2d
invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
:goto_1b
iget-object v1, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->f:Landroid/view/View;
iget-object v2, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->c:Landroid/widget/ListView;
invoke-virtual {v2}, Landroid/widget/ListView;->getWidth()I
move-result v2
invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V
iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->f:Landroid/view/View;
return-object v0
:cond_2d
invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
goto :goto_1b
.end method
.method private b()V
.registers 4
iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->f:Landroid/view/View;
if-eqz v0, :cond_26
const/4 v0, 0x1
:goto_5
iget-object v1, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->c:Landroid/widget/ListView;
invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I
move-result v1
if-ge v0, v1, :cond_26
iget-object v1, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->c:Landroid/widget/ListView;
invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->f:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getId()I
move-result v2
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_23
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
:cond_23
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_26
return-void
.end method
.method private b(Landroid/view/View;Z)V
.registers 7
const/4 v1, 0x0
iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->e:Landroid/view/View;
iget-object v2, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->g:Landroid/view/View;
if-ne v0, v2, :cond_8
:goto_7
return-void
:cond_8
iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->e:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getId()I
move-result v0
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
if-eqz p2, :cond_1e
iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->e:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
move-object v0, v2
:goto_1a
:cond_1a
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto :goto_7
:cond_1e
invoke-virtual {p1}, Landroid/view/View;->getTop()I
move-result v0
if-nez v0, :cond_33
const/4 v0, 0x1
move v3, v0
:goto_26
if-eqz v3, :cond_35
move v0, v1
:goto_29
invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->e:Landroid/view/View;
if-eqz v3, :cond_1a
const/16 v1, 0x8
goto :goto_1a
:cond_33
move v3, v1
goto :goto_26
:cond_35
const/4 v0, 0x4
goto :goto_29
.end method
.method private c()V
.registers 7
const/4 v5, 0x1
const/4 v2, 0x0
invoke-virtual {p0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->getChildCount()I
move-result v3
move v1, v2
:goto_7
if-ge v1, v3, :cond_1a
invoke-virtual {p0, v1}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
instance-of v4, v0, Landroid/widget/ListView;
if-eqz v4, :cond_16
check-cast v0, Landroid/widget/ListView;
invoke-virtual {p0, v0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->setListView(Landroid/widget/ListView;)V
:cond_16
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_7
:cond_1a
new-instance v0, Landroid/view/View;
invoke-virtual {p0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->g:Landroid/view/View;
new-instance v0, Landroid/widget/FrameLayout$LayoutParams;
const/4 v1, -0x1
const/16 v3, 0x30
invoke-direct {v0, v1, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V
iget-object v1, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->g:Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->g:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V
iput-boolean v5, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->a:Z
return-void
.end method
.method public final a(IZ)V
.registers 9
const/4 v1, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->a()Z
move-result v0
if-nez v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->d:Lcom/instagram/android/feed/ui/d;
if-nez v0, :cond_1c
iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->c:Landroid/widget/ListView;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->c:Landroid/widget/ListView;
invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v0
check-cast v0, Lcom/instagram/android/feed/ui/d;
invoke-virtual {p0, v0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->setAdapter(Lcom/instagram/android/feed/ui/d;)V
:cond_1c
iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->d:Lcom/instagram/android/feed/ui/d;
if-eqz v0, :cond_8
iget-boolean v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->b:Z
if-eqz v0, :cond_8
iget v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->j:I
sub-int v3, p1, v0
iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->d:Lcom/instagram/android/feed/ui/d;
invoke-interface {v0, v3}, Lcom/instagram/android/feed/ui/d;->getItem(I)Ljava/lang/Object;
move-result-object v4
invoke-direct {p0, v3}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->a(I)Z
move-result v0
if-nez v0, :cond_36
if-eqz p2, :cond_81
:cond_36
iget-object v5, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->e:Landroid/view/View;
iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->d:Lcom/instagram/android/feed/ui/d;
invoke-interface {v0, v3}, Lcom/instagram/android/feed/ui/d;->b(I)Z
move-result v0
if-eqz v0, :cond_7a
iget v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->j:I
add-int/2addr v0, v3
invoke-direct {p0, v0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->b(I)Landroid/view/View;
move-result-object v0
:goto_47
iput-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->e:Landroid/view/View;
iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->e:Landroid/view/View;
if-eq v5, v0, :cond_7f
invoke-virtual {p0, v5}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->removeView(Landroid/view/View;)V
move v0, v1
:goto_51
iput v3, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->h:I
iput-object v4, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->i:Ljava/lang/Object;
:goto_55
iget-object v3, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->c:Landroid/widget/ListView;
invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;
move-result-object v3
if-eqz v3, :cond_6f
invoke-virtual {v3}, Landroid/view/View;->getBottom()I
move-result v4
iget-object v5, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->e:Landroid/view/View;
invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I
move-result v5
if-gt v4, v5, :cond_7d
:goto_69
invoke-direct {p0, v3, v1}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->a(Landroid/view/View;Z)V
invoke-direct {p0, v3, v1}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->b(Landroid/view/View;Z)V
:cond_6f
if-eqz v0, :cond_76
iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->e:Landroid/view/View;
invoke-virtual {p0, v0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->addView(Landroid/view/View;)V
:cond_76
invoke-direct {p0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->b()V
goto :goto_8
:cond_7a
iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->g:Landroid/view/View;
goto :goto_47
:cond_7d
move v1, v2
goto :goto_69
:cond_7f
move v0, v2
goto :goto_51
:cond_81
move v0, v2
goto :goto_55
.end method
.method protected onAttachedToWindow()V
.registers 2
invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V
iget-boolean v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->a:Z
if-nez v0, :cond_a
invoke-direct {p0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->c()V
:cond_a
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->b:Z
return-void
.end method
.method protected onFinishInflate()V
.registers 2
invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V
iget-boolean v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->a:Z
if-nez v0, :cond_a
invoke-direct {p0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->c()V
:cond_a
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->b:Z
return-void
.end method
.method public onScroll(Landroid/widget/AbsListView;III)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/feed/ui/StickyHeaderListView; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x0
invoke-virtual {p0, p2, v0}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->a(IZ)V
const-string v1, " - Lcom/instagram/android/feed/ui/StickyHeaderListView; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/feed/ui/StickyHeaderListView; onScrollStateChanged "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/instagram/android/feed/ui/StickyHeaderListView; onScrollStateChanged"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public setAdapter(Lcom/instagram/android/feed/ui/d;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->d:Lcom/instagram/android/feed/ui/d;
return-void
.end method
.method public setListView(Landroid/widget/ListView;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->c:Landroid/widget/ListView;
iget-object v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->c:Landroid/widget/ListView;
invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I
move-result v0
iput v0, p0, Lcom/instagram/android/feed/ui/StickyHeaderListView;->j:I
return-void
.end method