.class public Lcom/spotify/mobile/android/ui/view/StickyHeaderView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"
.field private a:Landroid/widget/ListView;
.field private b:Landroid/view/ViewGroup;
.field private c:Landroid/view/ViewGroup;
.field private d:Landroid/view/View;
.field private e:Landroid/widget/FrameLayout;
.field private f:Landroid/widget/FrameLayout$LayoutParams;
.field private g:I
.field private h:Z
.field private i:Z
.field private j:Z
.field private k:Landroid/widget/AbsListView$OnScrollListener;
.field private l:Ljava/lang/Runnable;
.field private m:Ljava/lang/Runnable;
.field private n:Landroid/widget/AbsListView$OnScrollListener;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
const/4 v0, -0x1
iput v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->g:I
new-instance v0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$2;-><init>(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->l:Ljava/lang/Runnable;
new-instance v0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$3;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$3;-><init>(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->m:Ljava/lang/Runnable;
new-instance v0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$4;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$4;-><init>(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->n:Landroid/widget/AbsListView$OnScrollListener;
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->a(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, -0x1
iput v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->g:I
new-instance v0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$2;-><init>(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->l:Ljava/lang/Runnable;
new-instance v0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$3;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$3;-><init>(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->m:Ljava/lang/Runnable;
new-instance v0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$4;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$4;-><init>(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->n:Landroid/widget/AbsListView$OnScrollListener;
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->a(Landroid/content/Context;)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;I)I
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->g:I
return p1
.end method
.method private a(Landroid/content/Context;)V
.registers 6
const/4 v3, 0x0
new-instance v0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$1;
invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView$1;-><init>(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->b:Landroid/view/ViewGroup;
new-instance v0, Landroid/widget/AbsListView$LayoutParams;
const/4 v1, -0x1
const/4 v2, -0x2
invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->b:Landroid/view/ViewGroup;
invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new-instance v0, Landroid/widget/FrameLayout;
invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->e:Landroid/widget/FrameLayout;
new-instance v0, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->f:Landroid/widget/FrameLayout$LayoutParams;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->e:Landroid/widget/FrameLayout;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->f:Landroid/widget/FrameLayout$LayoutParams;
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->b(Z)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->h:Z
return v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->g:I
return v0
.end method
.method private b(Z)V
.registers 4
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->j:Z
if-eq v0, p1, :cond_21
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->j:Z
if-eqz p1, :cond_22
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->b:Landroid/view/ViewGroup;
invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->b:Landroid/view/ViewGroup;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->e:Landroid/widget/FrameLayout;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->c:Landroid/view/ViewGroup;
invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
:goto_19
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->m:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->post(Ljava/lang/Runnable;)Z
:cond_21
return-void
:cond_22
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->b:Landroid/view/ViewGroup;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->e:Landroid/widget/FrameLayout;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->c:Landroid/view/ViewGroup;
invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->b:Landroid/view/ViewGroup;
invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
goto :goto_19
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)Landroid/view/ViewGroup;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->b:Landroid/view/ViewGroup;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)Landroid/widget/ListView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->a:Landroid/widget/ListView;
return-object v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)Landroid/widget/FrameLayout$LayoutParams;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->f:Landroid/widget/FrameLayout$LayoutParams;
return-object v0
.end method
.method static synthetic f(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->d:Landroid/view/View;
return-object v0
.end method
.method static synthetic g(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)Landroid/widget/FrameLayout;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->e:Landroid/widget/FrameLayout;
return-object v0
.end method
.method static synthetic h(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->i:Z
return v0
.end method
.method static synthetic i(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)Landroid/view/ViewGroup;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->c:Landroid/view/ViewGroup;
return-object v0
.end method
.method static synthetic j(Lcom/spotify/mobile/android/ui/view/StickyHeaderView;)Landroid/widget/AbsListView$OnScrollListener;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->k:Landroid/widget/AbsListView$OnScrollListener;
return-object v0
.end method
.method public final a(Landroid/widget/ListView;Landroid/view/ViewGroup;)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->a:Landroid/widget/ListView;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->c:Landroid/view/ViewGroup;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->b:Landroid/view/ViewGroup;
invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->h:Z
return-void
.end method
.method protected a(Z)V
.registers 2
return-void
.end method
.method public final c(Z)V
.registers 4
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->h:Z
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->i:Z
if-eq v0, p1, :cond_11
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->i:Z
if-nez p1, :cond_11
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->b(Z)V
:cond_11
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->a:Landroid/widget/ListView;
if-eqz p1, :cond_1b
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->n:Landroid/widget/AbsListView$OnScrollListener;
:goto_17
invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
goto :goto_4
:cond_1b
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->k:Landroid/widget/AbsListView$OnScrollListener;
goto :goto_17
.end method
.method public final d()Landroid/view/ViewGroup;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->b:Landroid/view/ViewGroup;
return-object v0
.end method
.method public final e()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->i:Z
return v0
.end method
.method protected onFinishInflate()V
.registers 2
invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V
const v0, 0x7f0a021b
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->d:Landroid/view/View;
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 7
invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->l:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->post(Ljava/lang/Runnable;)Z
return-void
.end method