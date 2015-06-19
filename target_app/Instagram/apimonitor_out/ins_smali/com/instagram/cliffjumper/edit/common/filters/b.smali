.class public final Lcom/instagram/cliffjumper/edit/common/filters/b;
.super Ljava/lang/Object;
.source "BasicAdjustController.java"
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/instagram/cliffjumper/edit/common/ui/a;
.field private a:I
.field private b:I
.field private c:Landroid/view/View;
.field private d:Lcom/instagram/cliffjumper/edit/common/ui/g;
.field private e:Lcom/instagram/filterkit/filter/IgFilterGroup;
.field private f:Lcom/instagram/cliffjumper/edit/common/ui/b;
.field private g:Lcom/instagram/cliffjumper/edit/common/filters/a;
.field private h:Z
.field private i:Z
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic a(Lcom/instagram/cliffjumper/edit/common/filters/b;I)I
.registers 2
iput p1, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->b:I
return p1
.end method
.method private static a(Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/common/filters/a;)I
.registers 5
invoke-static {p0}, Lcom/instagram/cliffjumper/edit/common/filters/g;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;
move-result-object v0
sget-object v1, Lcom/instagram/cliffjumper/edit/common/filters/d;->a:[I
invoke-virtual {p1}, Lcom/instagram/cliffjumper/edit/common/filters/a;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_3a
const/4 v0, 0x0
:goto_10
return v0
:pswitch_11
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->a()I
move-result v0
goto :goto_10
:pswitch_16
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->b()I
move-result v0
goto :goto_10
:pswitch_1b
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->x_()I
move-result v0
goto :goto_10
:pswitch_20
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->e()I
move-result v0
goto :goto_10
:pswitch_25
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->f()I
move-result v0
goto :goto_10
:pswitch_2a
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->i()I
move-result v0
goto :goto_10
:pswitch_2f
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->h()I
move-result v0
goto :goto_10
:pswitch_34
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->g()I
move-result v0
goto :goto_10
nop
:pswitch_data_3a
.packed-switch 0x1
:pswitch_11
:pswitch_16
:pswitch_20
:pswitch_1b
:pswitch_2f
:pswitch_34
:pswitch_25
:pswitch_2a
.end packed-switch
.end method
.method private a(Landroid/content/Context;IF)Landroid/view/View;
.registers 6
new-instance v0, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;
invoke-direct {v0, p1}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, p3}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->setRootPosition(F)V
invoke-virtual {v0, p2}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->setValueRangeSize(I)V
iget v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->a:I
invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->setCurrentValue(I)V
new-instance v1, Lcom/instagram/cliffjumper/edit/common/filters/c;
invoke-direct {v1, p0}, Lcom/instagram/cliffjumper/edit/common/filters/c;-><init>(Lcom/instagram/cliffjumper/edit/common/filters/b;)V
invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->setOnSeekBarChangeListener(Lcom/instagram/cliffjumper/ui/a;)V
return-object v0
.end method
.method private a(I)V
.registers 5
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->e:Lcom/instagram/filterkit/filter/IgFilterGroup;
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/filters/g;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;
move-result-object v0
sget-object v1, Lcom/instagram/cliffjumper/edit/common/filters/d;->a:[I
iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->g:Lcom/instagram/cliffjumper/edit/common/filters/a;
invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/common/filters/a;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_34
:goto_13
return-void
:pswitch_14
invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->a(I)V
goto :goto_13
:pswitch_18
invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->b(I)V
goto :goto_13
:pswitch_1c
invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->c(I)V
goto :goto_13
:pswitch_20
invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->d(I)V
goto :goto_13
:pswitch_24
invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->e(I)V
goto :goto_13
:pswitch_28
invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->h(I)V
goto :goto_13
:pswitch_2c
invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->g(I)V
goto :goto_13
:pswitch_30
invoke-virtual {v0, p1}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->f(I)V
goto :goto_13
:pswitch_data_34
.packed-switch 0x1
:pswitch_14
:pswitch_18
:pswitch_20
:pswitch_1c
:pswitch_2c
:pswitch_30
:pswitch_24
:pswitch_28
.end packed-switch
.end method
.method static synthetic a(Lcom/instagram/cliffjumper/edit/common/filters/b;)Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->h:Z
return v0
.end method
.method static synthetic b(Lcom/instagram/cliffjumper/edit/common/filters/b;)I
.registers 2
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->b:I
return v0
.end method
.method static synthetic b(Lcom/instagram/cliffjumper/edit/common/filters/b;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/common/filters/b;->a(I)V
return-void
.end method
.method static synthetic c(Lcom/instagram/cliffjumper/edit/common/filters/b;)Lcom/instagram/cliffjumper/edit/common/ui/b;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->f:Lcom/instagram/cliffjumper/edit/common/ui/b;
return-object v0
.end method
.method static synthetic d(Lcom/instagram/cliffjumper/edit/common/filters/b;)Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->i:Z
return v0
.end method
.method static synthetic e(Lcom/instagram/cliffjumper/edit/common/filters/b;)Lcom/instagram/filterkit/filter/IgFilterGroup;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->e:Lcom/instagram/filterkit/filter/IgFilterGroup;
return-object v0
.end method
.method public final a(Landroid/content/Context;)Landroid/view/View;
.registers 8
const/4 v5, 0x0
const/4 v3, -0x1
new-instance v1, Landroid/widget/LinearLayout;
invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
const/16 v0, 0x11
invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V
sget-object v0, Lcom/instagram/cliffjumper/edit/common/filters/d;->a:[I
iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->g:Lcom/instagram/cliffjumper/edit/common/filters/a;
invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/common/filters/a;->ordinal()I
move-result v2
aget v0, v0, v2
packed-switch v0, :pswitch_data_42
const/4 v0, 0x0
:goto_1a
return-object v0
:pswitch_1b
const/16 v0, 0xc8
const/high16 v2, 0x3f00
invoke-direct {p0, p1, v0, v2}, Lcom/instagram/cliffjumper/edit/common/filters/b;->a(Landroid/content/Context;IF)Landroid/view/View;
move-result-object v0
:goto_23
new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v3
sget v4, Lcom/facebook/at;->seek_bar_margins:I
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v3
invoke-virtual {v2, v3, v5, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
move-object v0, v1
goto :goto_1a
:pswitch_3a
const/16 v0, 0x64
const/4 v2, 0x0
invoke-direct {p0, p1, v0, v2}, Lcom/instagram/cliffjumper/edit/common/filters/b;->a(Landroid/content/Context;IF)Landroid/view/View;
move-result-object v0
goto :goto_23
:pswitch_data_42
.packed-switch 0x1
:pswitch_1b
:pswitch_1b
:pswitch_1b
:pswitch_1b
:pswitch_1b
:pswitch_1b
:pswitch_3a
:pswitch_3a
.end packed-switch
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->d:Lcom/instagram/cliffjumper/edit/common/ui/g;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getTileInfo()Lcom/instagram/cliffjumper/edit/common/ui/c;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/c;->e()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(Z)V
.registers 6
const/4 v1, 0x0
const/4 v3, 0x0
if-eqz p1, :cond_8
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->b:I
iput v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->a:I
:cond_8
iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->d:Lcom/instagram/cliffjumper/edit/common/ui/g;
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->a:I
if-eqz v0, :cond_31
const/4 v0, 0x1
:goto_f
invoke-virtual {v2, v0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setActive(Z)V
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->a:I
invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/common/filters/b;->a(I)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->e:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/4 v2, 0x3
invoke-virtual {v0, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;
move-result-object v0
invoke-interface {v0, v1}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->c:Landroid/view/View;
invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iput-object v3, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->d:Lcom/instagram/cliffjumper/edit/common/ui/g;
iput-object v3, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->c:Landroid/view/View;
iput-object v3, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->g:Lcom/instagram/cliffjumper/edit/common/filters/a;
iput-object v3, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->e:Lcom/instagram/filterkit/filter/IgFilterGroup;
iput-object v3, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->f:Lcom/instagram/cliffjumper/edit/common/ui/b;
return-void
:cond_31
move v0, v1
goto :goto_f
.end method
.method public final a(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/common/ui/b;)Z
.registers 9
const/4 v2, 0x1
check-cast p1, Lcom/instagram/cliffjumper/edit/common/ui/g;
iput-object p1, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->d:Lcom/instagram/cliffjumper/edit/common/ui/g;
iput-object p2, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->c:Landroid/view/View;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->d:Lcom/instagram/cliffjumper/edit/common/ui/g;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getTileInfo()Lcom/instagram/cliffjumper/edit/common/ui/c;
move-result-object v0
check-cast v0, Lcom/instagram/cliffjumper/edit/common/filters/f;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/f;->a()Lcom/instagram/cliffjumper/edit/common/filters/a;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->g:Lcom/instagram/cliffjumper/edit/common/filters/a;
iput-object p4, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->e:Lcom/instagram/filterkit/filter/IgFilterGroup;
iput-object p5, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->f:Lcom/instagram/cliffjumper/edit/common/ui/b;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->e:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;
move-result-object v0
invoke-interface {v0, v2}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->e:Lcom/instagram/filterkit/filter/IgFilterGroup;
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->g:Lcom/instagram/cliffjumper/edit/common/filters/a;
invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/common/filters/b;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/common/filters/a;)I
move-result v0
iput v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->b:I
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->b:I
iput v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->a:I
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->c:Landroid/view/View;
invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->e:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/16 v1, 0xc
invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->b(I)Z
move-result v0
iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->i:Z
return v2
.end method
.method public final a(Lcom/instagram/cliffjumper/edit/common/ui/g;Lcom/instagram/filterkit/filter/IgFilterGroup;)Z
.registers 5
const/4 v1, 0x0
invoke-virtual {p1}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getTileInfo()Lcom/instagram/cliffjumper/edit/common/ui/c;
move-result-object v0
check-cast v0, Lcom/instagram/cliffjumper/edit/common/filters/f;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/f;->a()Lcom/instagram/cliffjumper/edit/common/filters/a;
move-result-object v0
invoke-static {p2, v0}, Lcom/instagram/cliffjumper/edit/common/filters/b;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/common/filters/a;)I
move-result v0
if-eqz v0, :cond_16
const/4 v0, 0x1
:goto_12
invoke-virtual {p1, v0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setActive(Z)V
return v1
:cond_16
move v0, v1
goto :goto_12
.end method
.method public final b()V
.registers 4
const/4 v2, 0x1
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->a:I
invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/common/filters/b;->a(I)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->e:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;
move-result-object v0
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V
iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->i:Z
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->e:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/16 v1, 0xb
invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->e:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/16 v1, 0xc
invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
:cond_23
return-void
.end method
.method public final c()V
.registers 4
const/4 v2, 0x0
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->b:I
invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/common/filters/b;->a(I)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->e:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;
move-result-object v0
const/4 v1, 0x1
invoke-interface {v0, v1}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V
iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->i:Z
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->e:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/16 v1, 0xb
invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->e:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/16 v1, 0xc
invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
:cond_23
return-void
.end method
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 6
const/4 v2, 0x0
const/4 v1, 0x1
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
if-nez v0, :cond_13
iput-boolean v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->h:Z
invoke-direct {p0, v2}, Lcom/instagram/cliffjumper/edit/common/filters/b;->a(I)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->f:Lcom/instagram/cliffjumper/edit/common/ui/b;
invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V
:cond_12
:goto_12
return v1
:cond_13
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
if-ne v0, v1, :cond_12
iput-boolean v2, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->h:Z
iget v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->b:I
invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/common/filters/b;->a(I)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/b;->f:Lcom/instagram/cliffjumper/edit/common/ui/b;
invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V
goto :goto_12
.end method