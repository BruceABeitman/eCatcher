.class public Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
.super Landroid/support/v7/internal/view/menu/i;
.source "SourceFile"
.implements Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;
.field private static final i:Ljava/lang/String; = "ActionMenuPresenter"
.field final a:Landroid/support/v7/internal/view/menu/g;
.field  b:I
.field private j:Landroid/view/View;
.field private k:Z
.field private l:Z
.field private m:I
.field private n:I
.field private o:I
.field private p:Z
.field private q:Z
.field private r:Z
.field private s:Z
.field private t:I
.field private final u:Landroid/util/SparseBooleanArray;
.field private v:Landroid/view/View;
.field private w:Landroid/support/v7/internal/view/menu/f;
.field private x:Landroid/support/v7/internal/view/menu/c;
.field private y:Landroid/support/v7/internal/view/menu/d;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
sget v0, Landroid/support/v7/a/k;->abc_action_menu_layout:I
sget v1, Landroid/support/v7/a/k;->abc_action_menu_item_layout:I
invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/internal/view/menu/i;-><init>(Landroid/content/Context;II)V
new-instance v0, Landroid/util/SparseBooleanArray;
invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V
iput-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->u:Landroid/util/SparseBooleanArray;
new-instance v0, Landroid/support/v7/internal/view/menu/g;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/view/menu/g;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/ActionMenuPresenter$1;)V
iput-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a:Landroid/support/v7/internal/view/menu/g;
return-void
.end method
.method static synthetic a(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/c;)Landroid/support/v7/internal/view/menu/c;
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->x:Landroid/support/v7/internal/view/menu/c;
return-object p1
.end method
.method static synthetic a(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/d;)Landroid/support/v7/internal/view/menu/d;
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->y:Landroid/support/v7/internal/view/menu/d;
return-object p1
.end method
.method static synthetic a(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/f;)Landroid/support/v7/internal/view/menu/f;
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->w:Landroid/support/v7/internal/view/menu/f;
return-object p1
.end method
.method private a(Landroid/view/MenuItem;)Landroid/view/View;
.registers 8
const/4 v3, 0x0
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->h:Landroid/support/v7/internal/view/menu/ad;
check-cast v0, Landroid/view/ViewGroup;
if-nez v0, :cond_9
move-object v2, v3
:goto_8
:cond_8
return-object v2
:cond_9
invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I
move-result v5
const/4 v1, 0x0
move v4, v1
:goto_f
if-ge v4, v5, :cond_26
invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v2
instance-of v1, v2, Landroid/support/v7/internal/view/menu/ae;
if-eqz v1, :cond_22
move-object v1, v2
check-cast v1, Landroid/support/v7/internal/view/menu/ae;
invoke-interface {v1}, Landroid/support/v7/internal/view/menu/ae;->getItemData()Landroid/support/v7/internal/view/menu/r;
move-result-object v1
if-eq v1, p1, :cond_8
:cond_22
add-int/lit8 v1, v4, 0x1
move v4, v1
goto :goto_f
:cond_26
move-object v2, v3
goto :goto_8
.end method
.method public a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/ad;
.registers 4
invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/ad;
move-result-object v1
move-object v0, v1
check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setPresenter(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;)V
return-object v1
.end method
.method public a(Landroid/support/v7/internal/view/menu/r;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 7
invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/r;->getActionView()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_c
invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/r;->n()Z
move-result v1
if-eqz v1, :cond_15
:cond_c
instance-of v0, p2, Landroid/support/v7/internal/view/menu/ActionMenuItemView;
if-nez v0, :cond_11
const/4 p2, 0x0
:cond_11
invoke-super {p0, p1, p2, p3}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/r;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
:cond_15
invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/r;->isActionViewExpanded()Z
move-result v1
if-eqz v1, :cond_34
const/16 v1, 0x8
:goto_1d
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
check-cast p3, Landroid/support/v7/internal/view/menu/ActionMenuView;
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
invoke-virtual {p3, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
move-result v2
if-nez v2, :cond_33
invoke-virtual {p3, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_33
return-object v0
:cond_34
const/4 v1, 0x0
goto :goto_1d
.end method
.method public a(I)V
.registers 3
iput p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->o:I
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->p:Z
return-void
.end method
.method public a(IZ)V
.registers 4
iput p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->m:I
iput-boolean p2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->q:Z
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->r:Z
return-void
.end method
.method public a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;)V
.registers 9
const/4 v5, 0x0
const/4 v4, 0x0
invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;)V
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-static {p1}, Landroid/support/v7/internal/view/a;->a(Landroid/content/Context;)Landroid/support/v7/internal/view/a;
move-result-object v0
iget-boolean v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->l:Z
if-nez v2, :cond_17
invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->b()Z
move-result v2
iput-boolean v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->k:Z
:cond_17
iget-boolean v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->r:Z
if-nez v2, :cond_21
invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->c()I
move-result v2
iput v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->m:I
:cond_21
iget-boolean v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->p:Z
if-nez v2, :cond_2b
invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->a()I
move-result v0
iput v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->o:I
:cond_2b
iget v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->m:I
iget-boolean v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->k:Z
if-eqz v2, :cond_5f
iget-object v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;
if-nez v2, :cond_47
new-instance v2, Landroid/support/v7/internal/view/menu/e;
iget-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->c:Landroid/content/Context;
invoke-direct {v2, p0, v3}, Landroid/support/v7/internal/view/menu/e;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V
iput-object v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;
invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
iget-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;
invoke-virtual {v3, v2, v2}, Landroid/view/View;->measure(II)V
:cond_47
iget-object v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I
move-result v2
sub-int/2addr v0, v2
:goto_4e
iput v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->n:I
const/high16 v0, 0x4260
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v1, v1, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v0, v1
float-to-int v0, v0
iput v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->t:I
iput-object v5, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->v:Landroid/view/View;
return-void
:cond_5f
iput-object v5, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;
goto :goto_4e
.end method
.method public a(Landroid/content/res/Configuration;)V
.registers 4
iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->p:Z
if-nez v0, :cond_12
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->d:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Landroid/support/v7/a/j;->abc_max_action_buttons:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I
move-result v0
iput v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->o:I
:cond_12
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e:Landroid/support/v7/internal/view/menu/n;
if-eqz v0, :cond_1c
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e:Landroid/support/v7/internal/view/menu/n;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->c(Z)V
:cond_1c
return-void
.end method
.method public a(Landroid/os/Parcelable;)V
.registers 4
check-cast p1, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$SavedState;
iget v0, p1, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$SavedState;->a:I
if-lez v0, :cond_19
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e:Landroid/support/v7/internal/view/menu/n;
iget v1, p1, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$SavedState;->a:I
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->findItem(I)Landroid/view/MenuItem;
move-result-object v0
if-eqz v0, :cond_19
invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/ah;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/support/v7/internal/view/menu/ah;)Z
:cond_19
return-void
.end method
.method public a(Landroid/support/v7/internal/view/menu/n;Z)V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->c()Z
invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/n;Z)V
return-void
.end method
.method public a(Landroid/support/v7/internal/view/menu/r;Landroid/support/v7/internal/view/menu/ae;)V
.registers 4
const/4 v0, 0x0
invoke-interface {p2, p1, v0}, Landroid/support/v7/internal/view/menu/ae;->a(Landroid/support/v7/internal/view/menu/r;I)V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->h:Landroid/support/v7/internal/view/menu/ad;
check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView;
check-cast p2, Landroid/support/v7/internal/view/menu/ActionMenuItemView;
invoke-virtual {p2, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setItemInvoker(Landroid/support/v7/internal/view/menu/p;)V
return-void
.end method
.method public a(Z)V
.registers 3
iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->k:Z
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->l:Z
return-void
.end method
.method public a()Z
.registers 7
const/4 v5, 0x1
iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->k:Z
if-eqz v0, :cond_38
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e()Z
move-result v0
if-nez v0, :cond_38
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e:Landroid/support/v7/internal/view/menu/n;
if-eqz v0, :cond_38
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->h:Landroid/support/v7/internal/view/menu/ad;
if-eqz v0, :cond_38
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->y:Landroid/support/v7/internal/view/menu/d;
if-nez v0, :cond_38
new-instance v0, Landroid/support/v7/internal/view/menu/f;
iget-object v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->d:Landroid/content/Context;
iget-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e:Landroid/support/v7/internal/view/menu/n;
iget-object v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;
move-object v1, p0
invoke-direct/range {v0 .. v5}, Landroid/support/v7/internal/view/menu/f;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;Landroid/view/View;Z)V
new-instance v1, Landroid/support/v7/internal/view/menu/d;
invoke-direct {v1, p0, v0}, Landroid/support/v7/internal/view/menu/d;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/f;)V
iput-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->y:Landroid/support/v7/internal/view/menu/d;
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->h:Landroid/support/v7/internal/view/menu/ad;
check-cast v0, Landroid/view/View;
iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->y:Landroid/support/v7/internal/view/menu/d;
invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
const/4 v0, 0x0
invoke-super {p0, v0}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/ah;)Z
:goto_37
return v5
:cond_38
const/4 v5, 0x0
goto :goto_37
.end method
.method public a(ILandroid/support/v7/internal/view/menu/r;)Z
.registers 4
invoke-virtual {p2}, Landroid/support/v7/internal/view/menu/r;->j()Z
move-result v0
return v0
.end method
.method public a(Landroid/support/v7/internal/view/menu/ah;)Z
.registers 6
const/4 v1, 0x0
invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/ah;->hasVisibleItems()Z
move-result v0
if-nez v0, :cond_9
move v0, v1
:goto_8
return v0
:cond_9
move-object v0, p1
:goto_a
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ah;->t()Landroid/view/Menu;
move-result-object v2
iget-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e:Landroid/support/v7/internal/view/menu/n;
if-eq v2, v3, :cond_19
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ah;->t()Landroid/view/Menu;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/ah;
goto :goto_a
:cond_19
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ah;->getItem()Landroid/view/MenuItem;
move-result-object v0
invoke-direct {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/view/MenuItem;)Landroid/view/View;
move-result-object v0
if-nez v0, :cond_2b
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;
if-nez v0, :cond_29
move v0, v1
goto :goto_8
:cond_29
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;
:cond_2b
invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/ah;->getItem()Landroid/view/MenuItem;
move-result-object v0
invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I
move-result v0
iput v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b:I
new-instance v0, Landroid/support/v7/internal/view/menu/c;
invoke-direct {v0, p0, p1}, Landroid/support/v7/internal/view/menu/c;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/ah;)V
iput-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->x:Landroid/support/v7/internal/view/menu/c;
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->x:Landroid/support/v7/internal/view/menu/c;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/c;->a(Landroid/os/IBinder;)V
invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/ah;)Z
const/4 v0, 0x1
goto :goto_8
.end method
.method public a(Landroid/view/ViewGroup;I)Z
.registers 5
invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;
if-ne v0, v1, :cond_a
const/4 v0, 0x0
:goto_9
return v0
:cond_a
invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/view/ViewGroup;I)Z
move-result v0
goto :goto_9
.end method
.method public b(Z)V
.registers 2
iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->s:Z
return-void
.end method
.method public b()Z
.registers 4
const/4 v1, 0x1
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->y:Landroid/support/v7/internal/view/menu/d;
if-eqz v0, :cond_17
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->h:Landroid/support/v7/internal/view/menu/ad;
if-eqz v0, :cond_17
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->h:Landroid/support/v7/internal/view/menu/ad;
check-cast v0, Landroid/view/View;
iget-object v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->y:Landroid/support/v7/internal/view/menu/d;
invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->y:Landroid/support/v7/internal/view/menu/d;
move v0, v1
:goto_16
return v0
:cond_17
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->w:Landroid/support/v7/internal/view/menu/f;
if-eqz v0, :cond_20
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/z;->c()V
move v0, v1
goto :goto_16
:cond_20
const/4 v0, 0x0
goto :goto_16
.end method
.method public c(Z)V
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/i;->c(Z)V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->h:Landroid/support/v7/internal/view/menu/ad;
if-nez v0, :cond_a
:goto_9
return-void
:cond_a
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e:Landroid/support/v7/internal/view/menu/n;
if-eqz v0, :cond_2e
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e:Landroid/support/v7/internal/view/menu/n;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->l()Ljava/util/ArrayList;
move-result-object v4
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v5
move v3, v2
:goto_19
if-ge v3, v5, :cond_2e
invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/r;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->getSupportActionProvider()Landroid/support/v4/view/ActionProvider;
move-result-object v0
if-eqz v0, :cond_2a
invoke-virtual {v0, p0}, Landroid/support/v4/view/ActionProvider;->setSubUiVisibilityListener(Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;)V
:cond_2a
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_19
:cond_2e
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e:Landroid/support/v7/internal/view/menu/n;
if-eqz v0, :cond_8c
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e:Landroid/support/v7/internal/view/menu/n;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->m()Ljava/util/ArrayList;
move-result-object v0
:goto_38
iget-boolean v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->k:Z
if-eqz v3, :cond_52
if-eqz v0, :cond_52
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v3
if-ne v3, v1, :cond_90
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/view/menu/r;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->isActionViewExpanded()Z
move-result v0
if-nez v0, :cond_8e
move v0, v1
:goto_51
move v2, v0
:cond_52
:goto_52
if-eqz v2, :cond_96
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;
if-nez v0, :cond_61
new-instance v0, Landroid/support/v7/internal/view/menu/e;
iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->c:Landroid/content/Context;
invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/view/menu/e;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V
iput-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;
:cond_61
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->h:Landroid/support/v7/internal/view/menu/ad;
if-eq v0, v1, :cond_81
if-eqz v0, :cond_74
iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_74
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->h:Landroid/support/v7/internal/view/menu/ad;
check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView;
iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->d()Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:cond_81
:goto_81
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->h:Landroid/support/v7/internal/view/menu/ad;
check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView;
iget-boolean v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->k:Z
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setOverflowReserved(Z)V
goto/16 :goto_9
:cond_8c
const/4 v0, 0x0
goto :goto_38
:cond_8e
move v0, v2
goto :goto_51
:cond_90
if-lez v3, :cond_94
:goto_92
move v2, v1
goto :goto_52
:cond_94
move v1, v2
goto :goto_92
:cond_96
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;
if-eqz v0, :cond_81
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->h:Landroid/support/v7/internal/view/menu/ad;
if-ne v0, v1, :cond_81
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->h:Landroid/support/v7/internal/view/menu/ad;
check-cast v0, Landroid/view/ViewGroup;
iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
goto :goto_81
.end method
.method public c()Z
.registers 3
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b()Z
move-result v0
invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->d()Z
move-result v1
or-int/2addr v0, v1
return v0
.end method
.method public d()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->x:Landroid/support/v7/internal/view/menu/c;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->x:Landroid/support/v7/internal/view/menu/c;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/c;->a()V
const/4 v0, 0x1
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public e()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->w:Landroid/support/v7/internal/view/menu/f;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->w:Landroid/support/v7/internal/view/menu/f;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/f;->d()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public f()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->k:Z
return v0
.end method
.method public g()Z
.registers 22
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e:Landroid/support/v7/internal/view/menu/n;
invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/n;->j()Ljava/util/ArrayList;
move-result-object v13
invoke-virtual {v13}, Ljava/util/ArrayList;->size()I
move-result v14
move-object/from16 v0, p0
iget v7, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->o:I
move-object/from16 v0, p0
iget v9, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->n:I
const/4 v2, 0x0
const/4 v3, 0x0
invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v15
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->h:Landroid/support/v7/internal/view/menu/ad;
check-cast v2, Landroid/view/ViewGroup;
const/4 v6, 0x0
const/4 v5, 0x0
const/4 v8, 0x0
const/4 v4, 0x0
const/4 v3, 0x0
move v10, v3
:goto_26
if-ge v10, v14, :cond_53
invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/support/v7/internal/view/menu/r;
invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/r;->l()Z
move-result v11
if-eqz v11, :cond_48
add-int/lit8 v6, v6, 0x1
:goto_36
move-object/from16 v0, p0
iget-boolean v11, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->s:Z
if-eqz v11, :cond_1b6
invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/r;->isActionViewExpanded()Z
move-result v3
if-eqz v3, :cond_1b6
const/4 v3, 0x0
:goto_43
add-int/lit8 v7, v10, 0x1
move v10, v7
move v7, v3
goto :goto_26
:cond_48
invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/r;->k()Z
move-result v11
if-eqz v11, :cond_51
add-int/lit8 v5, v5, 0x1
goto :goto_36
:cond_51
const/4 v4, 0x1
goto :goto_36
:cond_53
move-object/from16 v0, p0
iget-boolean v3, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->k:Z
if-eqz v3, :cond_61
if-nez v4, :cond_5f
add-int v3, v6, v5
if-le v3, v7, :cond_61
:cond_5f
add-int/lit8 v7, v7, -0x1
:cond_61
sub-int v10, v7, v6
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->u:Landroid/util/SparseBooleanArray;
move-object/from16 v16, v0
invoke-virtual/range {v16 .. v16}, Landroid/util/SparseBooleanArray;->clear()V
const/4 v4, 0x0
const/4 v3, 0x0
move-object/from16 v0, p0
iget-boolean v5, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->q:Z
if-eqz v5, :cond_1b3
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->t:I
div-int v3, v9, v3
move-object/from16 v0, p0
iget v4, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->t:I
rem-int v4, v9, v4
move-object/from16 v0, p0
iget v5, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->t:I
div-int/2addr v4, v3
add-int/2addr v4, v5
move v5, v4
:goto_87
const/4 v4, 0x0
move v12, v4
move v7, v8
move v4, v3
:goto_8b
if-ge v12, v14, :cond_19e
invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/support/v7/internal/view/menu/r;
invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/r;->l()Z
move-result v6
if-eqz v6, :cond_de
move-object/from16 v0, p0
iget-object v6, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->v:Landroid/view/View;
move-object/from16 v0, p0
invoke-virtual {v0, v3, v6, v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/support/v7/internal/view/menu/r;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v6
move-object/from16 v0, p0
iget-object v8, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->v:Landroid/view/View;
if-nez v8, :cond_ad
move-object/from16 v0, p0
iput-object v6, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->v:Landroid/view/View;
:cond_ad
move-object/from16 v0, p0
iget-boolean v8, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->q:Z
if-eqz v8, :cond_da
const/4 v8, 0x0
invoke-static {v6, v5, v4, v15, v8}, Landroid/support/v7/internal/view/menu/ActionMenuView;->a(Landroid/view/View;IIII)I
move-result v8
sub-int/2addr v4, v8
:goto_b9
invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I
move-result v6
sub-int v8, v9, v6
if-nez v7, :cond_1b0
:goto_c1
invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/r;->getGroupId()I
move-result v7
if-eqz v7, :cond_cd
const/4 v9, 0x1
move-object/from16 v0, v16
invoke-virtual {v0, v7, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V
:cond_cd
const/4 v7, 0x1
invoke-virtual {v3, v7}, Landroid/support/v7/internal/view/menu/r;->d(Z)V
move v3, v8
move v7, v10
:goto_d3
add-int/lit8 v8, v12, 0x1
move v12, v8
move v9, v3
move v10, v7
move v7, v6
goto :goto_8b
:cond_da
invoke-virtual {v6, v15, v15}, Landroid/view/View;->measure(II)V
goto :goto_b9
:cond_de
invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/r;->k()Z
move-result v6
if-eqz v6, :cond_1ab
invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/r;->getGroupId()I
move-result v17
invoke-virtual/range {v16 .. v17}, Landroid/util/SparseBooleanArray;->get(I)Z
move-result v18
if-gtz v10, :cond_f0
if-eqz v18, :cond_153
:cond_f0
if-lez v9, :cond_153
move-object/from16 v0, p0
iget-boolean v6, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->q:Z
if-eqz v6, :cond_fa
if-lez v4, :cond_153
:cond_fa
const/4 v6, 0x1
:goto_fb
if-eqz v6, :cond_1a7
move-object/from16 v0, p0
iget-object v8, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->v:Landroid/view/View;
move-object/from16 v0, p0
invoke-virtual {v0, v3, v8, v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/support/v7/internal/view/menu/r;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v11
move-object/from16 v0, p0
iget-object v8, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->v:Landroid/view/View;
if-nez v8, :cond_111
move-object/from16 v0, p0
iput-object v11, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->v:Landroid/view/View;
:cond_111
move-object/from16 v0, p0
iget-boolean v8, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->q:Z
if-eqz v8, :cond_155
const/4 v8, 0x0
invoke-static {v11, v5, v4, v15, v8}, Landroid/support/v7/internal/view/menu/ActionMenuView;->a(Landroid/view/View;IIII)I
move-result v19
sub-int v8, v4, v19
if-nez v19, :cond_1a4
const/4 v4, 0x0
:goto_121
move v6, v8
:goto_122
invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I
move-result v8
sub-int/2addr v9, v8
if-nez v7, :cond_12a
move v7, v8
:cond_12a
move-object/from16 v0, p0
iget-boolean v8, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->q:Z
if-eqz v8, :cond_160
if-ltz v9, :cond_15e
const/4 v8, 0x1
:goto_133
and-int/2addr v4, v8
move v11, v4
move v8, v7
move v7, v6
:goto_137
if-eqz v11, :cond_16c
if-eqz v17, :cond_16c
const/4 v4, 0x1
move-object/from16 v0, v16
move/from16 v1, v17
invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V
move v4, v10
:goto_144
if-eqz v11, :cond_148
add-int/lit8 v4, v4, -0x1
:cond_148
invoke-virtual {v3, v11}, Landroid/support/v7/internal/view/menu/r;->d(Z)V
move v6, v8
move v3, v9
move/from16 v20, v7
move v7, v4
move/from16 v4, v20
goto :goto_d3
:cond_153
const/4 v6, 0x0
goto :goto_fb
:cond_155
invoke-virtual {v11, v15, v15}, Landroid/view/View;->measure(II)V
move/from16 v20, v6
move v6, v4
move/from16 v4, v20
goto :goto_122
:cond_15e
const/4 v8, 0x0
goto :goto_133
:cond_160
add-int v8, v9, v7
if-lez v8, :cond_16a
const/4 v8, 0x1
:goto_165
and-int/2addr v4, v8
move v11, v4
move v8, v7
move v7, v6
goto :goto_137
:cond_16a
const/4 v8, 0x0
goto :goto_165
:cond_16c
if-eqz v18, :cond_1a2
const/4 v4, 0x0
move-object/from16 v0, v16
move/from16 v1, v17
invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V
const/4 v4, 0x0
move v6, v10
move v10, v4
:goto_179
if-ge v10, v12, :cond_1a0
invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Landroid/support/v7/internal/view/menu/r;
invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/r;->getGroupId()I
move-result v18
move/from16 v0, v18
move/from16 v1, v17
if-ne v0, v1, :cond_19a
invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/r;->j()Z
move-result v18
if-eqz v18, :cond_193
add-int/lit8 v6, v6, 0x1
:cond_193
const/16 v18, 0x0
move/from16 v0, v18
invoke-virtual {v4, v0}, Landroid/support/v7/internal/view/menu/r;->d(Z)V
:cond_19a
add-int/lit8 v4, v10, 0x1
move v10, v4
goto :goto_179
:cond_19e
const/4 v2, 0x1
return v2
:cond_1a0
move v4, v6
goto :goto_144
:cond_1a2
move v4, v10
goto :goto_144
:cond_1a4
move v4, v6
goto/16 :goto_121
:cond_1a7
move v11, v6
move v8, v7
move v7, v4
goto :goto_137
:cond_1ab
move v6, v7
move v3, v9
move v7, v10
goto/16 :goto_d3
:cond_1b0
move v6, v7
goto/16 :goto_c1
:cond_1b3
move v5, v4
goto/16 :goto_87
:cond_1b6
move v3, v7
goto/16 :goto_43
.end method
.method public h()Landroid/os/Parcelable;
.registers 3
new-instance v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$SavedState;
invoke-direct {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$SavedState;-><init>()V
iget v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b:I
iput v1, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$SavedState;->a:I
return-object v0
.end method
.method public onSubUiVisibilityChanged(Z)V
.registers 4
if-eqz p1, :cond_7
const/4 v0, 0x0
invoke-super {p0, v0}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/ah;)Z
:goto_6
return-void
:cond_7
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e:Landroid/support/v7/internal/view/menu/n;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->b(Z)V
goto :goto_6
.end method