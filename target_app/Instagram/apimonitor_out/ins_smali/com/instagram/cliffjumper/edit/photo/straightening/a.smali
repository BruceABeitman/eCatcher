.class public final Lcom/instagram/cliffjumper/edit/photo/straightening/a;
.super Ljava/lang/Object;
.source "StraighteningController.java"
.implements Lcom/instagram/cliffjumper/a/b;
.implements Lcom/instagram/cliffjumper/edit/common/ui/a;
.field private final a:Ljava/lang/String;
.field private b:Landroid/view/View;
.field private c:Landroid/view/View;
.field private d:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;
.field private e:Landroid/view/View;
.field private f:Landroid/view/View;
.field private g:Landroid/view/View;
.field private h:Lcom/instagram/filterkit/filter/IgFilterGroup;
.field private i:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
.field private j:Lcom/instagram/cliffjumper/edit/common/ui/b;
.field private k:Lcom/instagram/cliffjumper/a/a;
.field private l:I
.field private m:I
.field private n:F
.field private o:F
.field private p:F
.field private q:Lcom/instagram/cliffjumper/edit/photo/straightening/d;
.field private r:Z
.method public constructor <init>(Landroid/content/res/Resources;F)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/instagram/cliffjumper/edit/photo/straightening/d;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/d;
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->q:Lcom/instagram/cliffjumper/edit/photo/straightening/d;
sget v0, Lcom/facebook/az;->straighten:I
invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->a:Ljava/lang/String;
iput p2, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->p:F
return-void
.end method
.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/straightening/a;F)F
.registers 2
iput p1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->n:F
return p1
.end method
.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/straightening/a;I)I
.registers 2
iput p1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->l:I
return p1
.end method
.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->i:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
return-object v0
.end method
.method private a(F)V
.registers 5
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->i:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->h()F
move-result v0
float-to-double v1, p1
invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D
move-result-wide v1
double-to-float v1, v1
add-float/2addr v0, v1
const/high16 v1, -0x3e10
invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F
move-result v0
const/high16 v1, 0x41f0
invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F
move-result v0
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->d:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a(FZ)V
return-void
.end method
.method static synthetic b(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)Lcom/instagram/cliffjumper/edit/common/ui/b;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->j:Lcom/instagram/cliffjumper/edit/common/ui/b;
return-object v0
.end method
.method static synthetic c(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->r:Z
return v0
.end method
.method static synthetic d(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;
return-object v0
.end method
.method public final a(Landroid/content/Context;)Landroid/view/View;
.registers 6
const/4 v3, 0x0
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Lcom/facebook/aw;->straightener_ruler:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
sget v1, Lcom/facebook/av;->photo_straighten_slider:I
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;
iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->d:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;
iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->o:F
const/4 v2, 0x0
cmpl-float v1, v1, v2
if-eqz v1, :cond_31
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->d:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;
iget v2, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->o:F
invoke-virtual {v1, v2, v3}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a(FZ)V
:goto_26
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->d:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;
new-instance v2, Lcom/instagram/cliffjumper/edit/photo/straightening/c;
invoke-direct {v2, p0}, Lcom/instagram/cliffjumper/edit/photo/straightening/c;-><init>(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)V
invoke-virtual {v1, v2}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->setOnSlideListener(Lcom/instagram/cliffjumper/edit/common/ui/sliderview/a;)V
return-object v0
:cond_31
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->d:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;
iget v2, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->p:F
const/4 v3, 0x1
invoke-virtual {v1, v2, v3}, Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;->a(FZ)V
goto :goto_26
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->a:Ljava/lang/String;
return-object v0
.end method
.method public final a(FF)V
.registers 8
const/16 v2, 0x8
const/4 v1, 0x0
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->q:Lcom/instagram/cliffjumper/edit/photo/straightening/d;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/straightening/d;->a()Lcom/instagram/cliffjumper/edit/photo/straightening/d;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->q:Lcom/instagram/cliffjumper/edit/photo/straightening/d;
iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->f:Landroid/view/View;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->q:Lcom/instagram/cliffjumper/edit/photo/straightening/d;
sget-object v4, Lcom/instagram/cliffjumper/edit/photo/straightening/d;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/d;
if-ne v0, v4, :cond_23
move v0, v1
:goto_14
invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->g:Landroid/view/View;
iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->q:Lcom/instagram/cliffjumper/edit/photo/straightening/d;
sget-object v4, Lcom/instagram/cliffjumper/edit/photo/straightening/d;->b:Lcom/instagram/cliffjumper/edit/photo/straightening/d;
if-ne v3, v4, :cond_25
:goto_1f
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
:cond_23
move v0, v2
goto :goto_14
:cond_25
move v1, v2
goto :goto_1f
.end method
.method public final a(FFFF)V
.registers 9
float-to-double v0, p4
const-wide/16 v2, 0x0
cmpl-double v0, v0, v2
if-eqz v0, :cond_e
neg-float v0, p4
const/high16 v1, 0x4000
div-float/2addr v0, v1
invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->a(F)V
:cond_e
return-void
.end method
.method public final a(Z)V
.registers 8
const/4 v5, 0x4
const/4 v2, 0x0
const/16 v4, 0x8
const/4 v3, 0x0
if-nez p1, :cond_15
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->i:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->m:I
invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->b(I)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->i:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->o:F
invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a(F)V
:cond_15
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->i:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->h()F
move-result v0
const/4 v1, 0x0
cmpl-float v0, v0, v1
if-eqz v0, :cond_6e
const/4 v0, 0x1
move v1, v0
:goto_22
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->b:Landroid/view/View;
instance-of v0, v0, Lcom/instagram/cliffjumper/edit/common/ui/g;
if-eqz v0, :cond_70
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->b:Landroid/view/View;
check-cast v0, Lcom/instagram/cliffjumper/edit/common/ui/g;
invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setActive(Z)V
:goto_2f
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->e:Landroid/view/View;
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->f:Landroid/view/View;
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->g:Landroid/view/View;
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;
invoke-virtual {v0, v5}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;
move-result-object v0
if-eqz v0, :cond_4f
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;
invoke-virtual {v0, v5}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;
move-result-object v0
invoke-interface {v0, v2}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V
:cond_4f
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->k:Lcom/instagram/cliffjumper/a/a;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/a/a;->a()V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->c:Landroid/view/View;
invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iput-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->b:Landroid/view/View;
iput-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->e:Landroid/view/View;
iput-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->f:Landroid/view/View;
iput-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->g:Landroid/view/View;
iput-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;
iput-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->i:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
iput-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->c:Landroid/view/View;
iput-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->j:Lcom/instagram/cliffjumper/edit/common/ui/b;
iput-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->d:Lcom/instagram/cliffjumper/edit/common/ui/sliderview/SliderView;
iput-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->k:Lcom/instagram/cliffjumper/a/a;
return-void
:cond_6e
move v1, v2
goto :goto_22
:cond_70
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->b:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V
goto :goto_2f
.end method
.method public final a(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/common/ui/b;)Z
.registers 10
const/4 v1, 0x4
const/4 v3, 0x1
const/4 v2, 0x0
iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->b:Landroid/view/View;
iput-object p2, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->c:Landroid/view/View;
iput-object p4, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/4 v0, 0x5
invoke-virtual {p4, v0}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;
move-result-object v0
check-cast v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->i:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
iput-object p5, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->j:Lcom/instagram/cliffjumper/edit/common/ui/b;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->i:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->g()I
move-result v0
iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->l:I
iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->l:I
iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->m:I
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->i:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->h()F
move-result v0
iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->n:F
iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->n:F
iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->o:F
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;
invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;
move-result-object v0
if-eqz v0, :cond_3d
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;
invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;
move-result-object v0
invoke-interface {v0, v3}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V
:cond_3d
new-instance v0, Lcom/instagram/cliffjumper/a/a;
invoke-direct {v0}, Lcom/instagram/cliffjumper/a/a;-><init>()V
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->k:Lcom/instagram/cliffjumper/a/a;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->k:Lcom/instagram/cliffjumper/a/a;
invoke-virtual {v0, p0}, Lcom/instagram/cliffjumper/a/a;->a(Lcom/instagram/cliffjumper/a/b;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->c:Landroid/view/View;
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->k:Lcom/instagram/cliffjumper/a/a;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
sget v0, Lcom/facebook/av;->photo_edit_rotate_button:I
invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->e:Landroid/view/View;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->e:Landroid/view/View;
new-instance v1, Lcom/instagram/cliffjumper/edit/photo/straightening/b;
invoke-direct {v1, p0}, Lcom/instagram/cliffjumper/edit/photo/straightening/b;-><init>(Lcom/instagram/cliffjumper/edit/photo/straightening/a;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->e:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
sget v0, Lcom/facebook/av;->straighten_grid_overlay_3:I
invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->f:Landroid/view/View;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->f:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
sget v0, Lcom/facebook/av;->straighten_grid_overlay_6:I
invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->g:Landroid/view/View;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->g:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/16 v1, 0xc
invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->b(I)Z
move-result v0
iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->r:Z
return v3
.end method
.method public final a(Lcom/instagram/cliffjumper/edit/common/ui/g;Lcom/instagram/filterkit/filter/IgFilterGroup;)Z
.registers 6
const/4 v1, 0x0
invoke-static {p2}, Lcom/instagram/cliffjumper/edit/common/effectfilter/i;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->h()F
move-result v0
const/4 v2, 0x0
cmpl-float v0, v0, v2
if-eqz v0, :cond_13
const/4 v0, 0x1
:goto_f
invoke-virtual {p1, v0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setActive(Z)V
return v1
:cond_13
move v0, v1
goto :goto_f
.end method
.method public final b()V
.registers 5
const/4 v3, 0x4
const/4 v2, 0x1
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->i:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->m:I
invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->b(I)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->i:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->o:F
invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a(F)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;
invoke-virtual {v0, v3}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;
move-result-object v0
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;
invoke-virtual {v0, v3}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;
move-result-object v0
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V
:cond_22
iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->r:Z
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/16 v1, 0xb
invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/16 v1, 0xc
invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
:cond_34
return-void
.end method
.method public final b(FFFF)V
.registers 9
const/high16 v2, 0x4000
const/high16 v3, 0x3f80
const/4 v1, 0x0
cmpl-float v0, p3, v1
if-nez v0, :cond_d
cmpl-float v0, p4, v1
if-eqz v0, :cond_32
:cond_d
invoke-static {p3}, Ljava/lang/Math;->abs(F)F
move-result v0
invoke-static {p4}, Ljava/lang/Math;->abs(F)F
move-result v1
cmpl-float v0, v0, v1
if-lez v0, :cond_33
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->c:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getHeight()I
move-result v0
int-to-float v0, v0
div-float/2addr v0, v2
div-float v1, p3, v0
float-to-double v1, v1
invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D
move-result-wide v1
double-to-float v1, v1
sub-float v2, v0, p2
mul-float/2addr v1, v2
div-float v0, v1, v0
div-float/2addr v0, v3
:goto_2f
invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->a(F)V
:cond_32
return-void
:cond_33
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->c:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getWidth()I
move-result v0
int-to-float v0, v0
div-float/2addr v0, v2
neg-float v1, p4
div-float/2addr v1, v0
float-to-double v1, v1
invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D
move-result-wide v1
double-to-float v1, v1
sub-float v2, v0, p1
mul-float/2addr v1, v2
div-float v0, v1, v0
div-float/2addr v0, v3
goto :goto_2f
.end method
.method public final c()V
.registers 5
const/4 v3, 0x4
const/4 v2, 0x0
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->i:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->l:I
invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->b(I)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->i:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->n:F
invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a(F)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;
invoke-virtual {v0, v3}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;
move-result-object v0
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;
invoke-virtual {v0, v3}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;
move-result-object v0
const/4 v1, 0x1
invoke-interface {v0, v1}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V
:cond_22
iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->r:Z
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/16 v1, 0xb
invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/16 v1, 0xc
invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
:cond_34
return-void
.end method
.method public final d()V
.registers 5
const/16 v3, 0xc
const/4 v2, 0x0
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;
invoke-virtual {v0, v3}, Lcom/instagram/filterkit/filter/IgFilterGroup;->b(I)Z
move-result v0
iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->r:Z
iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->r:Z
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/16 v1, 0xb
invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;
invoke-virtual {v0, v3, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->j:Lcom/instagram/cliffjumper/edit/common/ui/b;
invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V
:cond_20
return-void
.end method
.method public final e()V
.registers 4
const/4 v2, 0x1
iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->r:Z
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/16 v1, 0xb
invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/16 v1, 0xc
invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/straightening/a;->j:Lcom/instagram/cliffjumper/edit/common/ui/b;
invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V
:cond_18
return-void
.end method