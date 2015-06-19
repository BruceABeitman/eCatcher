.class  Landroid/support/v7/app/l;
.super Landroid/support/v7/app/ActionBar;
.source "SourceFile"
.field final a:Landroid/os/Handler;
.field private b:Landroid/content/Context;
.field private c:Landroid/content/Context;
.field private d:Landroid/support/v7/app/ActionBarActivity;
.field private e:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;
.field private f:Landroid/support/v7/internal/widget/ActionBarContainer;
.field private g:Landroid/view/ViewGroup;
.field private h:Landroid/support/v7/internal/widget/ActionBarView;
.field private i:Landroid/support/v7/internal/widget/ActionBarContextView;
.field private j:Landroid/support/v7/internal/widget/ActionBarContainer;
.field private k:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
.field private l:Ljava/util/ArrayList;
.field private m:I
.field private n:Z
.field private o:Ljava/util/ArrayList;
.field private p:I
.field private q:Z
.field private r:I
.field private s:Z
.field private t:Z
.field private u:Z
.field private v:Z
.field private w:Z
.field private x:Landroid/support/v7/app/a;
.method public constructor <init>(Landroid/support/v7/app/ActionBarActivity;Landroid/support/v7/app/a;)V
.registers 8
const/4 v2, 0x0
const/4 v1, 0x1
invoke-direct {p0}, Landroid/support/v7/app/ActionBar;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v7/app/l;->l:Ljava/util/ArrayList;
const/4 v0, -0x1
iput v0, p0, Landroid/support/v7/app/l;->m:I
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v7/app/l;->o:Ljava/util/ArrayList;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Landroid/support/v7/app/l;->a:Landroid/os/Handler;
iput v2, p0, Landroid/support/v7/app/l;->r:I
iput-boolean v1, p0, Landroid/support/v7/app/l;->v:Z
iput-object p1, p0, Landroid/support/v7/app/l;->d:Landroid/support/v7/app/ActionBarActivity;
iput-object p1, p0, Landroid/support/v7/app/l;->b:Landroid/content/Context;
iput-object p2, p0, Landroid/support/v7/app/l;->x:Landroid/support/v7/app/a;
iget-object v3, p0, Landroid/support/v7/app/l;->d:Landroid/support/v7/app/ActionBarActivity;
sget v0, Landroid/support/v7/a/f;->d:I
invoke-virtual {v3, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;
iput-object v0, p0, Landroid/support/v7/app/l;->e:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;
iget-object v0, p0, Landroid/support/v7/app/l;->e:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;
if-eqz v0, :cond_3c
iget-object v0, p0, Landroid/support/v7/app/l;->e:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;
invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->a(Landroid/support/v7/app/ActionBar;)V
:cond_3c
sget v0, Landroid/support/v7/a/f;->a:I
invoke-virtual {v3, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/ActionBarView;
iput-object v0, p0, Landroid/support/v7/app/l;->h:Landroid/support/v7/internal/widget/ActionBarView;
sget v0, Landroid/support/v7/a/f;->h:I
invoke-virtual {v3, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/ActionBarContextView;
iput-object v0, p0, Landroid/support/v7/app/l;->i:Landroid/support/v7/internal/widget/ActionBarContextView;
sget v0, Landroid/support/v7/a/f;->c:I
invoke-virtual {v3, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;
iput-object v0, p0, Landroid/support/v7/app/l;->f:Landroid/support/v7/internal/widget/ActionBarContainer;
sget v0, Landroid/support/v7/a/f;->F:I
invoke-virtual {v3, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iput-object v0, p0, Landroid/support/v7/app/l;->g:Landroid/view/ViewGroup;
iget-object v0, p0, Landroid/support/v7/app/l;->g:Landroid/view/ViewGroup;
if-nez v0, :cond_6c
iget-object v0, p0, Landroid/support/v7/app/l;->f:Landroid/support/v7/internal/widget/ActionBarContainer;
iput-object v0, p0, Landroid/support/v7/app/l;->g:Landroid/view/ViewGroup;
:cond_6c
sget v0, Landroid/support/v7/a/f;->C:I
invoke-virtual {v3, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;
iput-object v0, p0, Landroid/support/v7/app/l;->j:Landroid/support/v7/internal/widget/ActionBarContainer;
iget-object v0, p0, Landroid/support/v7/app/l;->h:Landroid/support/v7/internal/widget/ActionBarView;
if-eqz v0, :cond_82
iget-object v0, p0, Landroid/support/v7/app/l;->i:Landroid/support/v7/internal/widget/ActionBarContextView;
if-eqz v0, :cond_82
iget-object v0, p0, Landroid/support/v7/app/l;->f:Landroid/support/v7/internal/widget/ActionBarContainer;
if-nez v0, :cond_a3
:cond_82
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " can only be used with a compatible window decor layout"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a3
iget-object v0, p0, Landroid/support/v7/app/l;->h:Landroid/support/v7/internal/widget/ActionBarView;
iget-object v3, p0, Landroid/support/v7/app/l;->i:Landroid/support/v7/internal/widget/ActionBarContextView;
invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/support/v7/internal/widget/ActionBarContextView;)V
iget-object v0, p0, Landroid/support/v7/app/l;->h:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->j()Z
move-result v0
if-eqz v0, :cond_e7
move v0, v1
:goto_b3
iput v0, p0, Landroid/support/v7/app/l;->p:I
iget-object v0, p0, Landroid/support/v7/app/l;->h:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->o()I
move-result v0
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_e9
move v0, v1
:goto_c0
if-eqz v0, :cond_c4
iput-boolean v1, p0, Landroid/support/v7/app/l;->n:Z
:cond_c4
iget-object v3, p0, Landroid/support/v7/app/l;->b:Landroid/content/Context;
invoke-static {v3}, Landroid/support/v7/internal/view/a;->a(Landroid/content/Context;)Landroid/support/v7/internal/view/a;
move-result-object v3
invoke-virtual {v3}, Landroid/support/v7/internal/view/a;->e()Z
move-result v4
if-nez v4, :cond_d2
if-eqz v0, :cond_d3
:cond_d2
move v2, v1
:cond_d3
invoke-virtual {p0, v2}, Landroid/support/v7/app/l;->c(Z)V
invoke-virtual {v3}, Landroid/support/v7/internal/view/a;->c()Z
move-result v0
invoke-direct {p0, v0}, Landroid/support/v7/app/l;->e(Z)V
iget-object v0, p0, Landroid/support/v7/app/l;->d:Landroid/support/v7/app/ActionBarActivity;
invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getTitle()Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/app/l;->a(Ljava/lang/CharSequence;)V
return-void
:cond_e7
move v0, v2
goto :goto_b3
:cond_e9
move v0, v2
goto :goto_c0
.end method
.method private a(II)V
.registers 7
iget-object v0, p0, Landroid/support/v7/app/l;->h:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->o()I
move-result v0
and-int/lit8 v1, p2, 0x4
if-eqz v1, :cond_d
const/4 v1, 0x1
iput-boolean v1, p0, Landroid/support/v7/app/l;->n:Z
:cond_d
iget-object v1, p0, Landroid/support/v7/app/l;->h:Landroid/support/v7/internal/widget/ActionBarView;
and-int v2, p1, p2
xor-int/lit8 v3, p2, -0x1
and-int/2addr v0, v3
or-int/2addr v0, v2
invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarView;->b(I)V
return-void
.end method
.method private e(Z)V
.registers 7
const/4 v3, 0x0
const/4 v1, 0x1
const/4 v2, 0x0
iput-boolean p1, p0, Landroid/support/v7/app/l;->q:Z
iget-boolean v0, p0, Landroid/support/v7/app/l;->q:Z
if-nez v0, :cond_36
iget-object v0, p0, Landroid/support/v7/app/l;->h:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
iget-object v0, p0, Landroid/support/v7/app/l;->f:Landroid/support/v7/internal/widget/ActionBarContainer;
iget-object v3, p0, Landroid/support/v7/app/l;->k:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
:goto_15
iget-object v0, p0, Landroid/support/v7/app/l;->h:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->n()I
move-result v0
const/4 v3, 0x2
if-ne v0, v3, :cond_43
move v0, v1
:goto_1f
iget-object v3, p0, Landroid/support/v7/app/l;->k:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
if-eqz v3, :cond_2a
if-eqz v0, :cond_45
iget-object v3, p0, Landroid/support/v7/app/l;->k:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {v3, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V
:goto_2a
:cond_2a
iget-object v3, p0, Landroid/support/v7/app/l;->h:Landroid/support/v7/internal/widget/ActionBarView;
iget-boolean v4, p0, Landroid/support/v7/app/l;->q:Z
if-nez v4, :cond_4d
if-eqz v0, :cond_4d
:goto_32
invoke-virtual {v3, v1}, Landroid/support/v7/internal/widget/ActionBarView;->d(Z)V
return-void
:cond_36
iget-object v0, p0, Landroid/support/v7/app/l;->f:Landroid/support/v7/internal/widget/ActionBarContainer;
invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
iget-object v0, p0, Landroid/support/v7/app/l;->h:Landroid/support/v7/internal/widget/ActionBarView;
iget-object v3, p0, Landroid/support/v7/app/l;->k:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
goto :goto_15
:cond_43
move v0, v2
goto :goto_1f
:cond_45
iget-object v3, p0, Landroid/support/v7/app/l;->k:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
const/16 v4, 0x8
invoke-virtual {v3, v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V
goto :goto_2a
:cond_4d
move v1, v2
goto :goto_32
.end method
.method private h()V
.registers 7
const/16 v5, 0x8
const/4 v0, 0x1
const/4 v1, 0x0
iget-boolean v2, p0, Landroid/support/v7/app/l;->s:Z
iget-boolean v3, p0, Landroid/support/v7/app/l;->t:Z
iget-boolean v4, p0, Landroid/support/v7/app/l;->u:Z
if-nez v4, :cond_61
if-nez v2, :cond_10
if-eqz v3, :cond_61
:cond_10
move v2, v1
:goto_11
if-eqz v2, :cond_65
iget-boolean v2, p0, Landroid/support/v7/app/l;->v:Z
if-nez v2, :cond_60
iput-boolean v0, p0, Landroid/support/v7/app/l;->v:Z
iget-object v2, p0, Landroid/support/v7/app/l;->g:Landroid/view/ViewGroup;
invoke-virtual {v2}, Landroid/view/ViewGroup;->clearAnimation()V
iget-object v2, p0, Landroid/support/v7/app/l;->g:Landroid/view/ViewGroup;
invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I
move-result v2
if-eqz v2, :cond_60
invoke-virtual {p0}, Landroid/support/v7/app/l;->g()Z
move-result v2
if-eqz v2, :cond_63
:goto_2c
if-eqz v0, :cond_3b
iget-object v2, p0, Landroid/support/v7/app/l;->b:Landroid/content/Context;
sget v3, Landroid/support/v7/a/b;->b:I
invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v2
iget-object v3, p0, Landroid/support/v7/app/l;->g:Landroid/view/ViewGroup;
invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V
:cond_3b
iget-object v2, p0, Landroid/support/v7/app/l;->g:Landroid/view/ViewGroup;
invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
iget-object v2, p0, Landroid/support/v7/app/l;->j:Landroid/support/v7/internal/widget/ActionBarContainer;
if-eqz v2, :cond_60
iget-object v2, p0, Landroid/support/v7/app/l;->j:Landroid/support/v7/internal/widget/ActionBarContainer;
invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I
move-result v2
if-eqz v2, :cond_60
if-eqz v0, :cond_5b
iget-object v0, p0, Landroid/support/v7/app/l;->b:Landroid/content/Context;
sget v2, Landroid/support/v7/a/b;->a:I
invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v0
iget-object v2, p0, Landroid/support/v7/app/l;->j:Landroid/support/v7/internal/widget/ActionBarContainer;
invoke-virtual {v2, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->startAnimation(Landroid/view/animation/Animation;)V
:cond_5b
iget-object v0, p0, Landroid/support/v7/app/l;->j:Landroid/support/v7/internal/widget/ActionBarContainer;
invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V
:cond_60
:goto_60
return-void
:cond_61
move v2, v0
goto :goto_11
:cond_63
move v0, v1
goto :goto_2c
:cond_65
iget-boolean v2, p0, Landroid/support/v7/app/l;->v:Z
if-eqz v2, :cond_60
iput-boolean v1, p0, Landroid/support/v7/app/l;->v:Z
iget-object v2, p0, Landroid/support/v7/app/l;->g:Landroid/view/ViewGroup;
invoke-virtual {v2}, Landroid/view/ViewGroup;->clearAnimation()V
iget-object v2, p0, Landroid/support/v7/app/l;->g:Landroid/view/ViewGroup;
invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I
move-result v2
if-eq v2, v5, :cond_60
invoke-virtual {p0}, Landroid/support/v7/app/l;->g()Z
move-result v2
if-eqz v2, :cond_b3
:goto_7e
if-eqz v0, :cond_8d
iget-object v1, p0, Landroid/support/v7/app/l;->b:Landroid/content/Context;
sget v2, Landroid/support/v7/a/b;->d:I
invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v1
iget-object v2, p0, Landroid/support/v7/app/l;->g:Landroid/view/ViewGroup;
invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V
:cond_8d
iget-object v1, p0, Landroid/support/v7/app/l;->g:Landroid/view/ViewGroup;
invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V
iget-object v1, p0, Landroid/support/v7/app/l;->j:Landroid/support/v7/internal/widget/ActionBarContainer;
if-eqz v1, :cond_60
iget-object v1, p0, Landroid/support/v7/app/l;->j:Landroid/support/v7/internal/widget/ActionBarContainer;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I
move-result v1
if-eq v1, v5, :cond_60
if-eqz v0, :cond_ad
iget-object v0, p0, Landroid/support/v7/app/l;->b:Landroid/content/Context;
sget v1, Landroid/support/v7/a/b;->c:I
invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/app/l;->j:Landroid/support/v7/internal/widget/ActionBarContainer;
invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->startAnimation(Landroid/view/animation/Animation;)V
:cond_ad
iget-object v0, p0, Landroid/support/v7/app/l;->j:Landroid/support/v7/internal/widget/ActionBarContainer;
invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V
goto :goto_60
:cond_b3
move v0, v1
goto :goto_7e
.end method
.method public final a()Landroid/view/View;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/l;->h:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->m()Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public final a(I)V
.registers 5
invoke-virtual {p0}, Landroid/support/v7/app/l;->c()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/app/l;->h:Landroid/support/v7/internal/widget/ActionBarView;
const/4 v2, 0x0
invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/app/l;->a(Landroid/view/View;)V
return-void
.end method
.method public final a(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/l;->h:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public final a(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/l;->h:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/view/View;)V
return-void
.end method
.method public final a(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/l;->h:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->a(Ljava/lang/CharSequence;)V
return-void
.end method
.method public final a(Z)V
.registers 4
const/4 v1, 0x4
if-eqz p1, :cond_8
move v0, v1
:goto_4
invoke-direct {p0, v0, v1}, Landroid/support/v7/app/l;->a(II)V
return-void
:cond_8
const/4 v0, 0x0
goto :goto_4
.end method
.method public final b()I
.registers 2
iget-object v0, p0, Landroid/support/v7/app/l;->h:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->o()I
move-result v0
return v0
.end method
.method public final b(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/l;->f:Landroid/support/v7/internal/widget/ActionBarContainer;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContainer;->a(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public final b(Z)V
.registers 4
const/16 v1, 0x10
if-eqz p1, :cond_9
move v0, v1
:goto_5
invoke-direct {p0, v0, v1}, Landroid/support/v7/app/l;->a(II)V
return-void
:cond_9
const/4 v0, 0x0
goto :goto_5
.end method
.method public final c()Landroid/content/Context;
.registers 5
iget-object v0, p0, Landroid/support/v7/app/l;->c:Landroid/content/Context;
if-nez v0, :cond_22
new-instance v0, Landroid/util/TypedValue;
invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V
iget-object v1, p0, Landroid/support/v7/app/l;->b:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
move-result-object v1
sget v2, Landroid/support/v7/a/c;->d:I
const/4 v3, 0x1
invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z
iget v0, v0, Landroid/util/TypedValue;->resourceId:I
if-eqz v0, :cond_25
new-instance v1, Landroid/view/ContextThemeWrapper;
iget-object v2, p0, Landroid/support/v7/app/l;->b:Landroid/content/Context;
invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V
iput-object v1, p0, Landroid/support/v7/app/l;->c:Landroid/content/Context;
:cond_22
:goto_22
iget-object v0, p0, Landroid/support/v7/app/l;->c:Landroid/content/Context;
return-object v0
:cond_25
iget-object v0, p0, Landroid/support/v7/app/l;->b:Landroid/content/Context;
iput-object v0, p0, Landroid/support/v7/app/l;->c:Landroid/content/Context;
goto :goto_22
.end method
.method public final c(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/l;->h:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->b(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public final c(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/l;->h:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->c(Z)V
return-void
.end method
.method public final d()V
.registers 2
iget-object v0, p0, Landroid/support/v7/app/l;->b:Landroid/content/Context;
invoke-static {v0}, Landroid/support/v7/internal/view/a;->a(Landroid/content/Context;)Landroid/support/v7/internal/view/a;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->c()Z
move-result v0
invoke-direct {p0, v0}, Landroid/support/v7/app/l;->e(Z)V
return-void
.end method
.method public final d(Z)V
.registers 3
iput-boolean p1, p0, Landroid/support/v7/app/l;->w:Z
if-nez p1, :cond_12
iget-object v0, p0, Landroid/support/v7/app/l;->g:Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V
iget-object v0, p0, Landroid/support/v7/app/l;->j:Landroid/support/v7/internal/widget/ActionBarContainer;
if-eqz v0, :cond_12
iget-object v0, p0, Landroid/support/v7/app/l;->j:Landroid/support/v7/internal/widget/ActionBarContainer;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->clearAnimation()V
:cond_12
return-void
.end method
.method final e()V
.registers 2
iget-boolean v0, p0, Landroid/support/v7/app/l;->u:Z
if-nez v0, :cond_a
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/app/l;->u:Z
invoke-direct {p0}, Landroid/support/v7/app/l;->h()V
:cond_a
return-void
.end method
.method final f()V
.registers 2
iget-boolean v0, p0, Landroid/support/v7/app/l;->u:Z
if-eqz v0, :cond_a
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v7/app/l;->u:Z
invoke-direct {p0}, Landroid/support/v7/app/l;->h()V
:cond_a
return-void
.end method
.method  g()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/app/l;->w:Z
return v0
.end method