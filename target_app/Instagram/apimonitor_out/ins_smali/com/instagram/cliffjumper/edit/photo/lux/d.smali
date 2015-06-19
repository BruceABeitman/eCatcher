.class public final Lcom/instagram/cliffjumper/edit/photo/lux/d;
.super Ljava/lang/Object;
.source "LuxAdjustmentController.java"
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/instagram/cliffjumper/edit/common/ui/a;
.field private a:I
.field private b:I
.field private c:Z
.field private d:Z
.field private e:Landroid/view/View;
.field private f:Lcom/instagram/filterkit/filter/IgFilterGroup;
.field private g:Lcom/instagram/cliffjumper/edit/common/ui/b;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/lux/d;)I
.registers 2
iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->b:I
return v0
.end method
.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/lux/d;I)I
.registers 2
iput p1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->b:I
return p1
.end method
.method private a(I)V
.registers 5
const/4 v2, 0x3
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;
invoke-virtual {v0, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;
move-result-object v0
check-cast v0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;
invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->a(I)V
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;
if-lez p1, :cond_15
const/4 v0, 0x1
:goto_11
invoke-virtual {v1, v2, v0}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
return-void
:cond_15
const/4 v0, 0x0
goto :goto_11
.end method
.method private b(Landroid/content/Context;)Landroid/view/View;
.registers 5
new-instance v1, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;
invoke-direct {v1, p1}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;-><init>(Landroid/content/Context;)V
const/4 v0, 0x0
invoke-virtual {v1, v0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->setRootPosition(F)V
const/16 v0, 0x64
invoke-virtual {v1, v0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->setValueRangeSize(I)V
iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->a:I
const/4 v2, -0x1
if-ne v0, v2, :cond_21
const/16 v0, 0x32
:goto_15
invoke-virtual {v1, v0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->setCurrentValue(I)V
new-instance v0, Lcom/instagram/cliffjumper/edit/photo/lux/e;
invoke-direct {v0, p0}, Lcom/instagram/cliffjumper/edit/photo/lux/e;-><init>(Lcom/instagram/cliffjumper/edit/photo/lux/d;)V
invoke-virtual {v1, v0}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->setOnSeekBarChangeListener(Lcom/instagram/cliffjumper/ui/a;)V
return-object v1
:cond_21
iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->a:I
goto :goto_15
.end method
.method static synthetic b(Lcom/instagram/cliffjumper/edit/photo/lux/d;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->a(I)V
return-void
.end method
.method static synthetic b(Lcom/instagram/cliffjumper/edit/photo/lux/d;)Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->d:Z
return v0
.end method
.method static synthetic c(Lcom/instagram/cliffjumper/edit/photo/lux/d;)Lcom/instagram/cliffjumper/edit/common/ui/b;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;
return-object v0
.end method
.method static synthetic d(Lcom/instagram/cliffjumper/edit/photo/lux/d;)Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->c:Z
return v0
.end method
.method static synthetic e(Lcom/instagram/cliffjumper/edit/photo/lux/d;)Lcom/instagram/filterkit/filter/IgFilterGroup;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;
return-object v0
.end method
.method public final a(Landroid/content/Context;)Landroid/view/View;
.registers 8
const/4 v5, 0x0
const/4 v3, -0x1
new-instance v0, Landroid/widget/LinearLayout;
invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
const/16 v1, 0x11
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V
invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->b(Landroid/content/Context;)Landroid/view/View;
move-result-object v1
new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v3
sget v4, Lcom/facebook/at;->seek_bar_margins:I
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v3
invoke-virtual {v2, v3, v5, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return-object v0
.end method
.method public final a()Ljava/lang/String;
.registers 2
const-string v0, "Lux"
return-object v0
.end method
.method public final a(Z)V
.registers 4
const/4 v1, 0x0
if-eqz p1, :cond_7
iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->b:I
iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->a:I
:cond_7
iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->a:I
invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->a(I)V
iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->e:Landroid/view/View;
iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;
iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;
return-void
.end method
.method public final a(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/common/ui/b;)Z
.registers 8
iput-object p2, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->e:Landroid/view/View;
iput-object p4, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;
iput-object p5, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;
const/4 v0, 0x3
invoke-virtual {p4, v0}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;
move-result-object v0
check-cast v0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->e()I
move-result v0
iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->a:I
iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->a:I
iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->b:I
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->e:Landroid/view/View;
invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/16 v1, 0xc
invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->b(I)Z
move-result v0
iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->c:Z
const/4 v0, 0x1
return v0
.end method
.method public final a(Lcom/instagram/cliffjumper/edit/common/ui/g;Lcom/instagram/filterkit/filter/IgFilterGroup;)Z
.registers 4
const/4 v0, 0x0
return v0
.end method
.method public final b()V
.registers 4
const/4 v2, 0x1
iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->a:I
invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->a(I)V
iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->c:Z
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/16 v1, 0xb
invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/16 v1, 0xc
invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
:cond_18
return-void
.end method
.method public final c()V
.registers 4
const/4 v2, 0x0
iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->b:I
invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->a(I)V
iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->c:Z
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/16 v1, 0xb
invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/16 v1, 0xc
invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
:cond_18
return-void
.end method
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 6
const/4 v2, 0x0
const/4 v1, 0x1
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
if-nez v0, :cond_13
iput-boolean v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->d:Z
invoke-direct {p0, v2}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->a(I)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;
invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V
:cond_12
:goto_12
return v1
:cond_13
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
if-ne v0, v1, :cond_12
iput-boolean v2, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->d:Z
iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->b:I
invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/lux/d;->a(I)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/d;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;
invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V
goto :goto_12
.end method