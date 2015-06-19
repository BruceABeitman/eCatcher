.class  Landroid/support/v7/app/q;
.super Landroid/support/v7/app/ActionBar;
.source "SourceFile"
.field private static final F:I = 0x0
.field private static final G:I = 0x1
.field private static final H:I = -0x1
.field private A:Landroid/support/v7/app/s;
.field private B:I
.field private C:Z
.field private D:Z
.field private E:Ljava/util/ArrayList;
.field private I:I
.field private J:Z
.field private K:I
.field private L:Z
.field private M:Z
.field private N:Z
.field private O:Z
.field private P:Z
.field private Q:Landroid/support/v7/app/a;
.field  i:Landroid/support/v7/app/r;
.field  j:Landroid/support/v7/b/a;
.field  k:Landroid/support/v7/b/b;
.field final l:Landroid/os/Handler;
.field  m:Ljava/lang/Runnable;
.field private n:Landroid/content/Context;
.field private o:Landroid/content/Context;
.field private p:Landroid/support/v7/app/ActionBarActivity;
.field private q:Landroid/app/Dialog;
.field private r:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;
.field private s:Landroid/support/v7/internal/widget/ActionBarContainer;
.field private t:Landroid/view/ViewGroup;
.field private u:Landroid/support/v7/internal/widget/ActionBarView;
.field private v:Landroid/support/v7/internal/widget/ActionBarContextView;
.field private w:Landroid/support/v7/internal/widget/ActionBarContainer;
.field private x:Landroid/view/View;
.field private y:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
.field private z:Ljava/util/ArrayList;
.method public constructor <init>(Landroid/support/v7/app/ActionBarActivity;Landroid/support/v7/app/a;)V
.registers 4
invoke-direct {p0}, Landroid/support/v7/app/ActionBar;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v7/app/q;->z:Ljava/util/ArrayList;
const/4 v0, -0x1
iput v0, p0, Landroid/support/v7/app/q;->B:I
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v7/app/q;->E:Ljava/util/ArrayList;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Landroid/support/v7/app/q;->l:Landroid/os/Handler;
const/4 v0, 0x0
iput v0, p0, Landroid/support/v7/app/q;->K:I
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/app/q;->O:Z
iput-object p1, p0, Landroid/support/v7/app/q;->p:Landroid/support/v7/app/ActionBarActivity;
iput-object p1, p0, Landroid/support/v7/app/q;->n:Landroid/content/Context;
iput-object p2, p0, Landroid/support/v7/app/q;->Q:Landroid/support/v7/app/a;
iget-object v0, p0, Landroid/support/v7/app/q;->p:Landroid/support/v7/app/ActionBarActivity;
invoke-direct {p0, v0}, Landroid/support/v7/app/q;->a(Landroid/support/v7/app/ActionBarActivity;)V
return-void
.end method
.method static synthetic a(Landroid/support/v7/app/q;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/q;->y:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
return-object v0
.end method
.method private a(Landroid/support/v7/app/ActionBarActivity;)V
.registers 7
const/4 v2, 0x0
const/4 v1, 0x1
sget v0, Landroid/support/v7/a/i;->action_bar_overlay_layout:I
invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;
iput-object v0, p0, Landroid/support/v7/app/q;->r:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;
iget-object v0, p0, Landroid/support/v7/app/q;->r:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;
if-eqz v0, :cond_15
iget-object v0, p0, Landroid/support/v7/app/q;->r:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;
invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setActionBar(Landroid/support/v7/app/ActionBar;)V
:cond_15
sget v0, Landroid/support/v7/a/i;->action_bar:I
invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/ActionBarView;
iput-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
sget v0, Landroid/support/v7/a/i;->action_context_bar:I
invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/ActionBarContextView;
iput-object v0, p0, Landroid/support/v7/app/q;->v:Landroid/support/v7/internal/widget/ActionBarContextView;
sget v0, Landroid/support/v7/a/i;->action_bar_container:I
invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;
iput-object v0, p0, Landroid/support/v7/app/q;->s:Landroid/support/v7/internal/widget/ActionBarContainer;
sget v0, Landroid/support/v7/a/i;->top_action_bar:I
invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iput-object v0, p0, Landroid/support/v7/app/q;->t:Landroid/view/ViewGroup;
iget-object v0, p0, Landroid/support/v7/app/q;->t:Landroid/view/ViewGroup;
if-nez v0, :cond_45
iget-object v0, p0, Landroid/support/v7/app/q;->s:Landroid/support/v7/internal/widget/ActionBarContainer;
iput-object v0, p0, Landroid/support/v7/app/q;->t:Landroid/view/ViewGroup;
:cond_45
sget v0, Landroid/support/v7/a/i;->split_action_bar:I
invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;
iput-object v0, p0, Landroid/support/v7/app/q;->w:Landroid/support/v7/internal/widget/ActionBarContainer;
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
if-eqz v0, :cond_5b
iget-object v0, p0, Landroid/support/v7/app/q;->v:Landroid/support/v7/internal/widget/ActionBarContextView;
if-eqz v0, :cond_5b
iget-object v0, p0, Landroid/support/v7/app/q;->s:Landroid/support/v7/internal/widget/ActionBarContainer;
if-nez v0, :cond_82
:cond_5b
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " can only be used "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "with a compatible window decor layout"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_82
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
iget-object v3, p0, Landroid/support/v7/app/q;->v:Landroid/support/v7/internal/widget/ActionBarContextView;
invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView;->setContextView(Landroid/support/v7/internal/widget/ActionBarContextView;)V
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->i()Z
move-result v0
if-eqz v0, :cond_c6
move v0, v1
:goto_92
iput v0, p0, Landroid/support/v7/app/q;->I:I
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getDisplayOptions()I
move-result v0
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_c8
move v0, v1
:goto_9f
if-eqz v0, :cond_a3
iput-boolean v1, p0, Landroid/support/v7/app/q;->C:Z
:cond_a3
iget-object v3, p0, Landroid/support/v7/app/q;->n:Landroid/content/Context;
invoke-static {v3}, Landroid/support/v7/internal/view/a;->a(Landroid/content/Context;)Landroid/support/v7/internal/view/a;
move-result-object v3
invoke-virtual {v3}, Landroid/support/v7/internal/view/a;->f()Z
move-result v4
if-nez v4, :cond_b1
if-eqz v0, :cond_b2
:cond_b1
move v2, v1
:cond_b2
invoke-virtual {p0, v2}, Landroid/support/v7/app/q;->f(Z)V
invoke-virtual {v3}, Landroid/support/v7/internal/view/a;->d()Z
move-result v0
invoke-direct {p0, v0}, Landroid/support/v7/app/q;->k(Z)V
iget-object v0, p0, Landroid/support/v7/app/q;->p:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getTitle()Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/app/q;->a(Ljava/lang/CharSequence;)V
return-void
:cond_c6
move v0, v2
goto :goto_92
:cond_c8
move v0, v2
goto :goto_9f
.end method
.method static synthetic a(ZZZ)Z
.registers 4
invoke-static {p0, p1, p2}, Landroid/support/v7/app/q;->b(ZZZ)Z
move-result v0
return v0
.end method
.method static synthetic b(Landroid/support/v7/app/q;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/q;->n:Landroid/content/Context;
return-object v0
.end method
.method private b(Landroid/support/v7/app/d;I)V
.registers 6
check-cast p1, Landroid/support/v7/app/s;
invoke-virtual {p1}, Landroid/support/v7/app/s;->h()Landroid/support/v7/app/e;
move-result-object v0
if-nez v0, :cond_10
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Action Bar Tab must have a Callback"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
invoke-virtual {p1, p2}, Landroid/support/v7/app/s;->e(I)V
iget-object v0, p0, Landroid/support/v7/app/q;->z:Ljava/util/ArrayList;
invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
iget-object v0, p0, Landroid/support/v7/app/q;->z:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v0, p2, 0x1
move v1, v0
:goto_21
if-ge v1, v2, :cond_32
iget-object v0, p0, Landroid/support/v7/app/q;->z:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/app/s;
invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->e(I)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_21
:cond_32
return-void
.end method
.method private static b(ZZZ)Z
.registers 4
const/4 v0, 0x1
if-eqz p2, :cond_4
:cond_3
:goto_3
return v0
:cond_4
if-nez p0, :cond_8
if-eqz p1, :cond_3
:cond_8
const/4 v0, 0x0
goto :goto_3
.end method
.method static synthetic c(Landroid/support/v7/app/q;)Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/app/q;->L:Z
return v0
.end method
.method static synthetic d(Landroid/support/v7/app/q;)Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/app/q;->M:Z
return v0
.end method
.method static synthetic e(Landroid/support/v7/app/q;)Landroid/support/v7/internal/widget/ActionBarContextView;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/q;->v:Landroid/support/v7/internal/widget/ActionBarContextView;
return-object v0
.end method
.method static synthetic f(Landroid/support/v7/app/q;)Landroid/support/v7/internal/widget/ActionBarView;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
return-object v0
.end method
.method private k(Z)V
.registers 7
const/4 v3, 0x0
const/4 v1, 0x1
const/4 v2, 0x0
iput-boolean p1, p0, Landroid/support/v7/app/q;->J:Z
iget-boolean v0, p0, Landroid/support/v7/app/q;->J:Z
if-nez v0, :cond_34
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView;->setEmbeddedTabView(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
iget-object v0, p0, Landroid/support/v7/app/q;->s:Landroid/support/v7/internal/widget/ActionBarContainer;
iget-object v3, p0, Landroid/support/v7/app/q;->y:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
:goto_15
invoke-virtual {p0}, Landroid/support/v7/app/q;->f()I
move-result v0
const/4 v3, 0x2
if-ne v0, v3, :cond_41
move v0, v1
:goto_1d
iget-object v3, p0, Landroid/support/v7/app/q;->y:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
if-eqz v3, :cond_28
if-eqz v0, :cond_43
iget-object v3, p0, Landroid/support/v7/app/q;->y:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {v3, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V
:cond_28
:goto_28
iget-object v3, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
iget-boolean v4, p0, Landroid/support/v7/app/q;->J:Z
if-nez v4, :cond_4b
if-eqz v0, :cond_4b
:goto_30
invoke-virtual {v3, v1}, Landroid/support/v7/internal/widget/ActionBarView;->setCollapsable(Z)V
return-void
:cond_34
iget-object v0, p0, Landroid/support/v7/app/q;->s:Landroid/support/v7/internal/widget/ActionBarContainer;
invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
iget-object v3, p0, Landroid/support/v7/app/q;->y:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView;->setEmbeddedTabView(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
goto :goto_15
:cond_41
move v0, v2
goto :goto_1d
:cond_43
iget-object v3, p0, Landroid/support/v7/app/q;->y:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
const/16 v4, 0x8
invoke-virtual {v3, v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V
goto :goto_28
:cond_4b
move v1, v2
goto :goto_30
.end method
.method private l(Z)V
.registers 5
iget-boolean v0, p0, Landroid/support/v7/app/q;->L:Z
iget-boolean v1, p0, Landroid/support/v7/app/q;->M:Z
iget-boolean v2, p0, Landroid/support/v7/app/q;->N:Z
invoke-static {v0, v1, v2}, Landroid/support/v7/app/q;->b(ZZZ)Z
move-result v0
if-eqz v0, :cond_17
iget-boolean v0, p0, Landroid/support/v7/app/q;->O:Z
if-nez v0, :cond_16
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/app/q;->O:Z
invoke-virtual {p0, p1}, Landroid/support/v7/app/q;->i(Z)V
:cond_16
:goto_16
return-void
:cond_17
iget-boolean v0, p0, Landroid/support/v7/app/q;->O:Z
if-eqz v0, :cond_16
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v7/app/q;->O:Z
invoke-virtual {p0, p1}, Landroid/support/v7/app/q;->j(Z)V
goto :goto_16
.end method
.method private u()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Landroid/support/v7/app/q;->y:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
if-eqz v0, :cond_6
:goto_5
return-void
:cond_6
new-instance v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;
iget-object v1, p0, Landroid/support/v7/app/q;->n:Landroid/content/Context;
invoke-direct {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V
iget-boolean v1, p0, Landroid/support/v7/app/q;->J:Z
if-eqz v1, :cond_1c
invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V
iget-object v1, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarView;->setEmbeddedTabView(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
:goto_19
iput-object v0, p0, Landroid/support/v7/app/q;->y:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
goto :goto_5
:cond_1c
invoke-virtual {p0}, Landroid/support/v7/app/q;->f()I
move-result v1
const/4 v2, 0x2
if-ne v1, v2, :cond_2c
invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V
:goto_26
iget-object v1, p0, Landroid/support/v7/app/q;->s:Landroid/support/v7/internal/widget/ActionBarContainer;
invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
goto :goto_19
:cond_2c
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V
goto :goto_26
.end method
.method private v()V
.registers 2
iget-object v0, p0, Landroid/support/v7/app/q;->A:Landroid/support/v7/app/s;
if-eqz v0, :cond_8
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v7/app/q;->c(Landroid/support/v7/app/d;)V
:cond_8
iget-object v0, p0, Landroid/support/v7/app/q;->z:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
iget-object v0, p0, Landroid/support/v7/app/q;->y:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
if-eqz v0, :cond_16
iget-object v0, p0, Landroid/support/v7/app/q;->y:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a()V
:cond_16
const/4 v0, -0x1
iput v0, p0, Landroid/support/v7/app/q;->B:I
return-void
.end method
.method public a()I
.registers 3
const/4 v0, -0x1
iget-object v1, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView;->getNavigationMode()I
move-result v1
packed-switch v1, :pswitch_data_1e
:cond_a
:goto_a
return v0
:pswitch_b
iget-object v1, p0, Landroid/support/v7/app/q;->A:Landroid/support/v7/app/s;
if-eqz v1, :cond_a
iget-object v0, p0, Landroid/support/v7/app/q;->A:Landroid/support/v7/app/s;
invoke-virtual {v0}, Landroid/support/v7/app/s;->a()I
move-result v0
goto :goto_a
:pswitch_16
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getDropdownSelectedPosition()I
move-result v0
goto :goto_a
nop
:pswitch_data_1e
.packed-switch 0x1
:pswitch_16
:pswitch_b
.end packed-switch
.end method
.method public a(Landroid/support/v7/b/b;)Landroid/support/v7/b/a;
.registers 5
const/4 v2, 0x1
iget-object v0, p0, Landroid/support/v7/app/q;->i:Landroid/support/v7/app/r;
if-eqz v0, :cond_a
iget-object v0, p0, Landroid/support/v7/app/q;->i:Landroid/support/v7/app/r;
invoke-virtual {v0}, Landroid/support/v7/app/r;->c()V
:cond_a
iget-object v0, p0, Landroid/support/v7/app/q;->v:Landroid/support/v7/internal/widget/ActionBarContextView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->h()V
new-instance v0, Landroid/support/v7/app/r;
invoke-direct {v0, p0, p1}, Landroid/support/v7/app/r;-><init>(Landroid/support/v7/app/q;Landroid/support/v7/b/b;)V
invoke-virtual {v0}, Landroid/support/v7/app/r;->e()Z
move-result v1
if-eqz v1, :cond_45
invoke-virtual {v0}, Landroid/support/v7/app/r;->d()V
iget-object v1, p0, Landroid/support/v7/app/q;->v:Landroid/support/v7/internal/widget/ActionBarContextView;
invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/support/v7/b/a;)V
invoke-virtual {p0, v2}, Landroid/support/v7/app/q;->g(Z)V
iget-object v1, p0, Landroid/support/v7/app/q;->w:Landroid/support/v7/internal/widget/ActionBarContainer;
if-eqz v1, :cond_3b
iget v1, p0, Landroid/support/v7/app/q;->I:I
if-ne v1, v2, :cond_3b
iget-object v1, p0, Landroid/support/v7/app/q;->w:Landroid/support/v7/internal/widget/ActionBarContainer;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I
move-result v1
if-eqz v1, :cond_3b
iget-object v1, p0, Landroid/support/v7/app/q;->w:Landroid/support/v7/internal/widget/ActionBarContainer;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V
:cond_3b
iget-object v1, p0, Landroid/support/v7/app/q;->v:Landroid/support/v7/internal/widget/ActionBarContextView;
const/16 v2, 0x20
invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V
iput-object v0, p0, Landroid/support/v7/app/q;->i:Landroid/support/v7/app/r;
:goto_44
return-object v0
:cond_45
const/4 v0, 0x0
goto :goto_44
.end method
.method public a(I)V
.registers 5
invoke-virtual {p0}, Landroid/support/v7/app/q;->p()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
const/4 v2, 0x0
invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/app/q;->a(Landroid/view/View;)V
return-void
.end method
.method public a(II)V
.registers 7
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getDisplayOptions()I
move-result v0
and-int/lit8 v1, p2, 0x4
if-eqz v1, :cond_d
const/4 v1, 0x1
iput-boolean v1, p0, Landroid/support/v7/app/q;->C:Z
:cond_d
iget-object v1, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
and-int v2, p1, p2
xor-int/lit8 v3, p2, -0x1
and-int/2addr v0, v3
or-int/2addr v0, v2
invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarView;->setDisplayOptions(I)V
return-void
.end method
.method public a(Landroid/content/res/Configuration;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/q;->n:Landroid/content/Context;
invoke-static {v0}, Landroid/support/v7/internal/view/a;->a(Landroid/content/Context;)Landroid/support/v7/internal/view/a;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->d()Z
move-result v0
invoke-direct {p0, v0}, Landroid/support/v7/app/q;->k(Z)V
return-void
.end method
.method public a(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public a(Landroid/support/v7/app/b;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/q;->E:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public a(Landroid/support/v7/app/d;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/q;->z:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
invoke-virtual {p0, p1, v0}, Landroid/support/v7/app/q;->a(Landroid/support/v7/app/d;Z)V
return-void
.end method
.method public a(Landroid/support/v7/app/d;I)V
.registers 4
iget-object v0, p0, Landroid/support/v7/app/q;->z:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/app/q;->a(Landroid/support/v7/app/d;IZ)V
return-void
.end method
.method public a(Landroid/support/v7/app/d;IZ)V
.registers 5
invoke-direct {p0}, Landroid/support/v7/app/q;->u()V
iget-object v0, p0, Landroid/support/v7/app/q;->y:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a(Landroid/support/v7/app/d;IZ)V
invoke-direct {p0, p1, p2}, Landroid/support/v7/app/q;->b(Landroid/support/v7/app/d;I)V
if-eqz p3, :cond_10
invoke-virtual {p0, p1}, Landroid/support/v7/app/q;->c(Landroid/support/v7/app/d;)V
:cond_10
return-void
.end method
.method public a(Landroid/support/v7/app/d;Z)V
.registers 4
invoke-direct {p0}, Landroid/support/v7/app/q;->u()V
iget-object v0, p0, Landroid/support/v7/app/q;->y:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {v0, p1, p2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a(Landroid/support/v7/app/d;Z)V
iget-object v0, p0, Landroid/support/v7/app/q;->z:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
invoke-direct {p0, p1, v0}, Landroid/support/v7/app/q;->b(Landroid/support/v7/app/d;I)V
if-eqz p2, :cond_16
invoke-virtual {p0, p1}, Landroid/support/v7/app/q;->c(Landroid/support/v7/app/d;)V
:cond_16
return-void
.end method
.method public a(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setCustomNavigationView(Landroid/view/View;)V
return-void
.end method
.method public a(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V
.registers 4
invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setCustomNavigationView(Landroid/view/View;)V
return-void
.end method
.method public a(Landroid/widget/SpinnerAdapter;Landroid/support/v7/app/c;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0, p2}, Landroid/support/v7/internal/widget/ActionBarView;->setCallback(Landroid/support/v7/app/c;)V
return-void
.end method
.method public a(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setTitle(Ljava/lang/CharSequence;)V
return-void
.end method
.method public a(Z)V
.registers 4
const/4 v1, 0x1
if-eqz p1, :cond_8
move v0, v1
:goto_4
invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/q;->a(II)V
return-void
:cond_8
const/4 v0, 0x0
goto :goto_4
.end method
.method public b()I
.registers 3
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView;->getNavigationMode()I
move-result v1
packed-switch v1, :pswitch_data_20
:cond_a
:goto_a
return v0
:pswitch_b
iget-object v0, p0, Landroid/support/v7/app/q;->z:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
goto :goto_a
:pswitch_12
iget-object v1, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView;->getDropdownAdapter()Landroid/widget/SpinnerAdapter;
move-result-object v1
if-eqz v1, :cond_a
invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I
move-result v0
goto :goto_a
nop
:pswitch_data_20
.packed-switch 0x1
:pswitch_12
:pswitch_b
.end packed-switch
.end method
.method public b(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setIcon(I)V
return-void
.end method
.method public b(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public b(Landroid/support/v7/app/b;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/q;->E:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method public b(Landroid/support/v7/app/d;)V
.registers 3
invoke-virtual {p1}, Landroid/support/v7/app/d;->a()I
move-result v0
invoke-virtual {p0, v0}, Landroid/support/v7/app/q;->i(I)V
return-void
.end method
.method public b(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V
return-void
.end method
.method public b(Z)V
.registers 4
const/4 v1, 0x2
if-eqz p1, :cond_8
move v0, v1
:goto_4
invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/q;->a(II)V
return-void
:cond_8
const/4 v0, 0x0
goto :goto_4
.end method
.method public c()Landroid/view/View;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getCustomNavigationView()Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public c(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setLogo(I)V
return-void
.end method
.method public c(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/q;->s:Landroid/support/v7/internal/widget/ActionBarContainer;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public c(Landroid/support/v7/app/d;)V
.registers 5
const/4 v0, -0x1
invoke-virtual {p0}, Landroid/support/v7/app/q;->f()I
move-result v1
const/4 v2, 0x2
if-eq v1, v2, :cond_11
if-eqz p1, :cond_e
invoke-virtual {p1}, Landroid/support/v7/app/d;->a()I
move-result v0
:cond_e
iput v0, p0, Landroid/support/v7/app/q;->B:I
:cond_10
:goto_10
return-void
:cond_11
iget-object v1, p0, Landroid/support/v7/app/q;->p:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;
move-result-object v1
iget-object v2, p0, Landroid/support/v7/app/q;->A:Landroid/support/v7/app/s;
if-ne v2, p1, :cond_45
iget-object v0, p0, Landroid/support/v7/app/q;->A:Landroid/support/v7/app/s;
if-eqz v0, :cond_3b
iget-object v0, p0, Landroid/support/v7/app/q;->A:Landroid/support/v7/app/s;
invoke-virtual {v0}, Landroid/support/v7/app/s;->h()Landroid/support/v7/app/e;
move-result-object v0
iget-object v2, p0, Landroid/support/v7/app/q;->A:Landroid/support/v7/app/s;
invoke-interface {v0, v2, v1}, Landroid/support/v7/app/e;->c(Landroid/support/v7/app/d;Landroid/support/v4/app/FragmentTransaction;)V
iget-object v0, p0, Landroid/support/v7/app/q;->y:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {p1}, Landroid/support/v7/app/d;->a()I
move-result v2
invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a(I)V
:goto_3b
:cond_3b
invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->isEmpty()Z
move-result v0
if-nez v0, :cond_10
invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I
goto :goto_10
:cond_45
iget-object v2, p0, Landroid/support/v7/app/q;->y:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
if-eqz p1, :cond_4d
invoke-virtual {p1}, Landroid/support/v7/app/d;->a()I
move-result v0
:cond_4d
invoke-virtual {v2, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V
iget-object v0, p0, Landroid/support/v7/app/q;->A:Landroid/support/v7/app/s;
if-eqz v0, :cond_5f
iget-object v0, p0, Landroid/support/v7/app/q;->A:Landroid/support/v7/app/s;
invoke-virtual {v0}, Landroid/support/v7/app/s;->h()Landroid/support/v7/app/e;
move-result-object v0
iget-object v2, p0, Landroid/support/v7/app/q;->A:Landroid/support/v7/app/s;
invoke-interface {v0, v2, v1}, Landroid/support/v7/app/e;->b(Landroid/support/v7/app/d;Landroid/support/v4/app/FragmentTransaction;)V
:cond_5f
check-cast p1, Landroid/support/v7/app/s;
iput-object p1, p0, Landroid/support/v7/app/q;->A:Landroid/support/v7/app/s;
iget-object v0, p0, Landroid/support/v7/app/q;->A:Landroid/support/v7/app/s;
if-eqz v0, :cond_3b
iget-object v0, p0, Landroid/support/v7/app/q;->A:Landroid/support/v7/app/s;
invoke-virtual {v0}, Landroid/support/v7/app/s;->h()Landroid/support/v7/app/e;
move-result-object v0
iget-object v2, p0, Landroid/support/v7/app/q;->A:Landroid/support/v7/app/s;
invoke-interface {v0, v2, v1}, Landroid/support/v7/app/e;->a(Landroid/support/v7/app/d;Landroid/support/v4/app/FragmentTransaction;)V
goto :goto_3b
.end method
.method public c(Z)V
.registers 4
const/4 v1, 0x4
if-eqz p1, :cond_8
move v0, v1
:goto_4
invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/q;->a(II)V
return-void
:cond_8
const/4 v0, 0x0
goto :goto_4
.end method
.method public d()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public d(I)V
.registers 4
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getNavigationMode()I
move-result v0
packed-switch v0, :pswitch_data_24
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "setSelectedNavigationIndex not valid for current navigation mode"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_11
iget-object v0, p0, Landroid/support/v7/app/q;->z:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/app/d;
invoke-virtual {p0, v0}, Landroid/support/v7/app/q;->c(Landroid/support/v7/app/d;)V
:goto_1c
return-void
:pswitch_1d
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setDropdownSelectedPosition(I)V
goto :goto_1c
nop
:pswitch_data_24
.packed-switch 0x1
:pswitch_1d
:pswitch_11
.end packed-switch
.end method
.method public d(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/q;->s:Landroid/support/v7/internal/widget/ActionBarContainer;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public d(Z)V
.registers 4
const/16 v1, 0x8
if-eqz p1, :cond_9
move v0, v1
:goto_5
invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/q;->a(II)V
return-void
:cond_9
const/4 v0, 0x0
goto :goto_5
.end method
.method public e()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public e(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/q;->n:Landroid/content/Context;
invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/app/q;->a(Ljava/lang/CharSequence;)V
return-void
.end method
.method public e(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/q;->s:Landroid/support/v7/internal/widget/ActionBarContainer;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public e(Z)V
.registers 4
const/16 v1, 0x10
if-eqz p1, :cond_9
move v0, v1
:goto_5
invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/q;->a(II)V
return-void
:cond_9
const/4 v0, 0x0
goto :goto_5
.end method
.method public f()I
.registers 2
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getNavigationMode()I
move-result v0
return v0
.end method
.method public f(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/q;->n:Landroid/content/Context;
invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/app/q;->b(Ljava/lang/CharSequence;)V
return-void
.end method
.method public f(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public f(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V
return-void
.end method
.method public g()I
.registers 2
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getDisplayOptions()I
move-result v0
return v0
.end method
.method public g(I)V
.registers 3
and-int/lit8 v0, p1, 0x4
if-eqz v0, :cond_7
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/app/q;->C:Z
:cond_7
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setDisplayOptions(I)V
return-void
.end method
.method  g(Z)V
.registers 6
const/16 v2, 0x8
const/4 v1, 0x0
if-eqz p1, :cond_34
invoke-virtual {p0}, Landroid/support/v7/app/q;->r()V
:goto_8
iget-object v3, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
if-eqz p1, :cond_38
const/4 v0, 0x4
:goto_d
invoke-virtual {v3, v0}, Landroid/support/v7/internal/widget/ActionBarView;->a(I)V
iget-object v3, p0, Landroid/support/v7/app/q;->v:Landroid/support/v7/internal/widget/ActionBarContextView;
if-eqz p1, :cond_3a
move v0, v1
:goto_15
invoke-virtual {v3, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(I)V
iget-object v0, p0, Landroid/support/v7/app/q;->y:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
if-eqz v0, :cond_33
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->j()Z
move-result v0
if-nez v0, :cond_33
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->m()Z
move-result v0
if-eqz v0, :cond_33
iget-object v0, p0, Landroid/support/v7/app/q;->y:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
if-eqz p1, :cond_3c
:goto_30
invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V
:cond_33
return-void
:cond_34
invoke-virtual {p0}, Landroid/support/v7/app/q;->s()V
goto :goto_8
:cond_38
move v0, v1
goto :goto_d
:cond_3a
move v0, v2
goto :goto_15
:cond_3c
move v2, v1
goto :goto_30
.end method
.method public h()Landroid/support/v7/app/d;
.registers 2
new-instance v0, Landroid/support/v7/app/s;
invoke-direct {v0, p0}, Landroid/support/v7/app/s;-><init>(Landroid/support/v7/app/q;)V
return-object v0
.end method
.method public h(I)V
.registers 6
const/4 v0, 0x0
const/4 v3, -0x1
iget-object v1, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView;->getNavigationMode()I
move-result v1
packed-switch v1, :pswitch_data_48
:goto_b
iget-object v1, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v1, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setNavigationMode(I)V
packed-switch p1, :pswitch_data_4e
:cond_13
:goto_13
iget-object v1, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
const/4 v2, 0x2
if-ne p1, v2, :cond_1d
iget-boolean v2, p0, Landroid/support/v7/app/q;->J:Z
if-nez v2, :cond_1d
const/4 v0, 0x1
:cond_1d
invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarView;->setCollapsable(Z)V
return-void
:pswitch_21
invoke-virtual {p0}, Landroid/support/v7/app/q;->a()I
move-result v1
iput v1, p0, Landroid/support/v7/app/q;->B:I
const/4 v1, 0x0
invoke-virtual {p0, v1}, Landroid/support/v7/app/q;->c(Landroid/support/v7/app/d;)V
iget-object v1, p0, Landroid/support/v7/app/q;->y:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V
goto :goto_b
:pswitch_33
invoke-direct {p0}, Landroid/support/v7/app/q;->u()V
iget-object v1, p0, Landroid/support/v7/app/q;->y:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V
iget v1, p0, Landroid/support/v7/app/q;->B:I
if-eq v1, v3, :cond_13
iget v1, p0, Landroid/support/v7/app/q;->B:I
invoke-virtual {p0, v1}, Landroid/support/v7/app/q;->d(I)V
iput v3, p0, Landroid/support/v7/app/q;->B:I
goto :goto_13
nop
:pswitch_data_4e
.packed-switch 0x2
:pswitch_33
.end packed-switch
:pswitch_data_48
.packed-switch 0x2
:pswitch_21
.end packed-switch
.end method
.method public h(Z)V
.registers 3
iput-boolean p1, p0, Landroid/support/v7/app/q;->P:Z
if-nez p1, :cond_12
iget-object v0, p0, Landroid/support/v7/app/q;->t:Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V
iget-object v0, p0, Landroid/support/v7/app/q;->w:Landroid/support/v7/internal/widget/ActionBarContainer;
if-eqz v0, :cond_12
iget-object v0, p0, Landroid/support/v7/app/q;->w:Landroid/support/v7/internal/widget/ActionBarContainer;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->clearAnimation()V
:cond_12
return-void
.end method
.method public i()V
.registers 1
invoke-direct {p0}, Landroid/support/v7/app/q;->v()V
return-void
.end method
.method public i(I)V
.registers 6
iget-object v0, p0, Landroid/support/v7/app/q;->y:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-object v0, p0, Landroid/support/v7/app/q;->A:Landroid/support/v7/app/s;
if-eqz v0, :cond_3b
iget-object v0, p0, Landroid/support/v7/app/q;->A:Landroid/support/v7/app/s;
invoke-virtual {v0}, Landroid/support/v7/app/s;->a()I
move-result v0
move v1, v0
:goto_10
iget-object v0, p0, Landroid/support/v7/app/q;->y:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->c(I)V
iget-object v0, p0, Landroid/support/v7/app/q;->z:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/app/s;
if-eqz v0, :cond_23
const/4 v2, -0x1
invoke-virtual {v0, v2}, Landroid/support/v7/app/s;->e(I)V
:cond_23
iget-object v0, p0, Landroid/support/v7/app/q;->z:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v3
move v2, p1
:goto_2a
if-ge v2, v3, :cond_3f
iget-object v0, p0, Landroid/support/v7/app/q;->z:Ljava/util/ArrayList;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/app/s;
invoke-virtual {v0, v2}, Landroid/support/v7/app/s;->e(I)V
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_2a
:cond_3b
iget v0, p0, Landroid/support/v7/app/q;->B:I
move v1, v0
goto :goto_10
:cond_3f
if-ne v1, p1, :cond_4
iget-object v0, p0, Landroid/support/v7/app/q;->z:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-eqz v0, :cond_4e
const/4 v0, 0x0
:goto_4a
invoke-virtual {p0, v0}, Landroid/support/v7/app/q;->c(Landroid/support/v7/app/d;)V
goto :goto_4
:cond_4e
iget-object v0, p0, Landroid/support/v7/app/q;->z:Ljava/util/ArrayList;
const/4 v1, 0x0
add-int/lit8 v2, p1, -0x1
invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I
move-result v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/app/s;
goto :goto_4a
.end method
.method public i(Z)V
.registers 6
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v7/app/q;->t:Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V
iget-object v0, p0, Landroid/support/v7/app/q;->t:Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I
move-result v0
if-nez v0, :cond_f
:cond_e
:goto_e
return-void
:cond_f
invoke-virtual {p0}, Landroid/support/v7/app/q;->t()Z
move-result v0
if-nez v0, :cond_17
if-eqz p1, :cond_4d
:cond_17
const/4 v0, 0x1
:goto_18
if-eqz v0, :cond_27
iget-object v2, p0, Landroid/support/v7/app/q;->n:Landroid/content/Context;
sget v3, Landroid/support/v7/a/c;->abc_slide_in_top:I
invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v2
iget-object v3, p0, Landroid/support/v7/app/q;->t:Landroid/view/ViewGroup;
invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V
:cond_27
iget-object v2, p0, Landroid/support/v7/app/q;->t:Landroid/view/ViewGroup;
invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
iget-object v2, p0, Landroid/support/v7/app/q;->w:Landroid/support/v7/internal/widget/ActionBarContainer;
if-eqz v2, :cond_e
iget-object v2, p0, Landroid/support/v7/app/q;->w:Landroid/support/v7/internal/widget/ActionBarContainer;
invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I
move-result v2
if-eqz v2, :cond_e
if-eqz v0, :cond_47
iget-object v0, p0, Landroid/support/v7/app/q;->n:Landroid/content/Context;
sget v2, Landroid/support/v7/a/c;->abc_slide_in_bottom:I
invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v0
iget-object v2, p0, Landroid/support/v7/app/q;->w:Landroid/support/v7/internal/widget/ActionBarContainer;
invoke-virtual {v2, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->startAnimation(Landroid/view/animation/Animation;)V
:cond_47
iget-object v0, p0, Landroid/support/v7/app/q;->w:Landroid/support/v7/internal/widget/ActionBarContainer;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V
goto :goto_e
:cond_4d
move v0, v1
goto :goto_18
.end method
.method public j()Landroid/support/v7/app/d;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/q;->A:Landroid/support/v7/app/s;
return-object v0
.end method
.method public j(I)Landroid/support/v7/app/d;
.registers 3
iget-object v0, p0, Landroid/support/v7/app/q;->z:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/app/d;
return-object v0
.end method
.method public j(Z)V
.registers 6
const/16 v3, 0x8
iget-object v0, p0, Landroid/support/v7/app/q;->t:Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V
iget-object v0, p0, Landroid/support/v7/app/q;->t:Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I
move-result v0
if-ne v0, v3, :cond_10
:cond_f
:goto_f
return-void
:cond_10
invoke-virtual {p0}, Landroid/support/v7/app/q;->t()Z
move-result v0
if-nez v0, :cond_18
if-eqz p1, :cond_4e
:cond_18
const/4 v0, 0x1
:goto_19
if-eqz v0, :cond_28
iget-object v1, p0, Landroid/support/v7/app/q;->n:Landroid/content/Context;
sget v2, Landroid/support/v7/a/c;->abc_slide_out_top:I
invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v1
iget-object v2, p0, Landroid/support/v7/app/q;->t:Landroid/view/ViewGroup;
invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V
:cond_28
iget-object v1, p0, Landroid/support/v7/app/q;->t:Landroid/view/ViewGroup;
invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V
iget-object v1, p0, Landroid/support/v7/app/q;->w:Landroid/support/v7/internal/widget/ActionBarContainer;
if-eqz v1, :cond_f
iget-object v1, p0, Landroid/support/v7/app/q;->w:Landroid/support/v7/internal/widget/ActionBarContainer;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I
move-result v1
if-eq v1, v3, :cond_f
if-eqz v0, :cond_48
iget-object v0, p0, Landroid/support/v7/app/q;->n:Landroid/content/Context;
sget v1, Landroid/support/v7/a/c;->abc_slide_out_bottom:I
invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/app/q;->w:Landroid/support/v7/internal/widget/ActionBarContainer;
invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->startAnimation(Landroid/view/animation/Animation;)V
:cond_48
iget-object v0, p0, Landroid/support/v7/app/q;->w:Landroid/support/v7/internal/widget/ActionBarContainer;
invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V
goto :goto_f
:cond_4e
const/4 v0, 0x0
goto :goto_19
.end method
.method public k()I
.registers 2
iget-object v0, p0, Landroid/support/v7/app/q;->z:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method public k(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/q;->u:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setHomeAsUpIndicator(I)V
return-void
.end method
.method public l()I
.registers 2
iget-object v0, p0, Landroid/support/v7/app/q;->s:Landroid/support/v7/internal/widget/ActionBarContainer;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I
move-result v0
return v0
.end method
.method public m()V
.registers 3
const/4 v1, 0x0
iget-boolean v0, p0, Landroid/support/v7/app/q;->L:Z
if-eqz v0, :cond_a
iput-boolean v1, p0, Landroid/support/v7/app/q;->L:Z
invoke-direct {p0, v1}, Landroid/support/v7/app/q;->l(Z)V
:cond_a
return-void
.end method
.method public n()V
.registers 2
iget-boolean v0, p0, Landroid/support/v7/app/q;->L:Z
if-nez v0, :cond_b
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/app/q;->L:Z
const/4 v0, 0x0
invoke-direct {p0, v0}, Landroid/support/v7/app/q;->l(Z)V
:cond_b
return-void
.end method
.method public o()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/app/q;->O:Z
return v0
.end method
.method public p()Landroid/content/Context;
.registers 5
iget-object v0, p0, Landroid/support/v7/app/q;->o:Landroid/content/Context;
if-nez v0, :cond_22
new-instance v0, Landroid/util/TypedValue;
invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V
iget-object v1, p0, Landroid/support/v7/app/q;->n:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
move-result-object v1
sget v2, Landroid/support/v7/a/d;->actionBarWidgetTheme:I
const/4 v3, 0x1
invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z
iget v0, v0, Landroid/util/TypedValue;->resourceId:I
if-eqz v0, :cond_25
new-instance v1, Landroid/view/ContextThemeWrapper;
iget-object v2, p0, Landroid/support/v7/app/q;->n:Landroid/content/Context;
invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V
iput-object v1, p0, Landroid/support/v7/app/q;->o:Landroid/content/Context;
:cond_22
:goto_22
iget-object v0, p0, Landroid/support/v7/app/q;->o:Landroid/content/Context;
return-object v0
:cond_25
iget-object v0, p0, Landroid/support/v7/app/q;->n:Landroid/content/Context;
iput-object v0, p0, Landroid/support/v7/app/q;->o:Landroid/content/Context;
goto :goto_22
.end method
.method public q()Z
.registers 3
iget-boolean v0, p0, Landroid/support/v7/app/q;->J:Z
if-nez v0, :cond_d
invoke-virtual {p0}, Landroid/support/v7/app/q;->f()I
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
.method  r()V
.registers 2
iget-boolean v0, p0, Landroid/support/v7/app/q;->N:Z
if-nez v0, :cond_b
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/app/q;->N:Z
const/4 v0, 0x0
invoke-direct {p0, v0}, Landroid/support/v7/app/q;->l(Z)V
:cond_b
return-void
.end method
.method  s()V
.registers 3
const/4 v1, 0x0
iget-boolean v0, p0, Landroid/support/v7/app/q;->N:Z
if-eqz v0, :cond_a
iput-boolean v1, p0, Landroid/support/v7/app/q;->N:Z
invoke-direct {p0, v1}, Landroid/support/v7/app/q;->l(Z)V
:cond_a
return-void
.end method
.method  t()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/app/q;->P:Z
return v0
.end method