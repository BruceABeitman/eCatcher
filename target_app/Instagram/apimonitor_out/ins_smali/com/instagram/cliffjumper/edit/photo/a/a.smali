.class public Lcom/instagram/cliffjumper/edit/photo/a/a;
.super Lcom/instagram/base/a/b;
.source "PhotoFilterFragment.java"
.implements Lcom/instagram/common/p/a;
.field private static final a:Ljava/lang/Class;
.field private static final b:Ljava/text/DecimalFormat;
.field private aA:Lcom/instagram/cliffjumper/ui/b;
.field private aa:Landroid/view/View;
.field private ab:Landroid/view/View;
.field private ac:Landroid/view/View;
.field private ad:Landroid/widget/FrameLayout;
.field private ae:Landroid/widget/ImageView;
.field private af:Landroid/widget/ImageView;
.field private ag:Landroid/widget/ImageView;
.field private ah:Landroid/widget/ImageView;
.field private ai:Landroid/widget/ViewSwitcher;
.field private aj:Landroid/widget/ViewSwitcher;
.field private ak:Landroid/widget/TextView;
.field private al:Landroid/widget/ViewSwitcher;
.field private am:Landroid/view/ViewGroup;
.field private an:Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;
.field private ao:Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;
.field private ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
.field private aq:I
.field private ar:I
.field private as:Lcom/instagram/cliffjumper/edit/common/ui/a;
.field private at:Z
.field private au:Lcom/instagram/creation/photo/gallery/c;
.field private av:Lcom/instagram/filterkit/c/c;
.field private aw:Z
.field private ax:Lcom/instagram/cliffjumper/edit/photo/lux/a;
.field private ay:Landroid/app/Dialog;
.field private az:Z
.field private final c:Lcom/instagram/cliffjumper/edit/photo/a/x;
.field private final d:Lcom/instagram/cliffjumper/edit/common/ui/b;
.field private final e:Landroid/os/Handler;
.field private f:J
.field private final g:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
.field private final h:Lcom/instagram/cliffjumper/edit/photo/a/aa;
.field private i:Lcom/instagram/ui/dialog/f;
.method static constructor <clinit>()V
.registers 2
const-class v0, Lcom/instagram/cliffjumper/edit/photo/a/a;
sput-object v0, Lcom/instagram/cliffjumper/edit/photo/a/a;->a:Ljava/lang/Class;
new-instance v0, Ljava/text/DecimalFormat;
const-string v1, "0.0\u00b0"
invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/instagram/cliffjumper/edit/photo/a/a;->b:Ljava/text/DecimalFormat;
return-void
.end method
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V
new-instance v0, Lcom/instagram/cliffjumper/edit/photo/a/x;
invoke-direct {v0, p0, v1}, Lcom/instagram/cliffjumper/edit/photo/a/x;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;B)V
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->c:Lcom/instagram/cliffjumper/edit/photo/a/x;
new-instance v0, Lcom/instagram/cliffjumper/edit/photo/a/b;
invoke-direct {v0, p0}, Lcom/instagram/cliffjumper/edit/photo/a/b;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->d:Lcom/instagram/cliffjumper/edit/common/ui/b;
new-instance v0, Lcom/instagram/cliffjumper/edit/photo/a/m;
invoke-direct {v0, p0}, Lcom/instagram/cliffjumper/edit/photo/a/m;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->e:Landroid/os/Handler;
const/4 v0, 0x0
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/e;->a(Lcom/instagram/cliffjumper/edit/common/ui/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/c;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->a()Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->g:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
new-instance v0, Lcom/instagram/cliffjumper/edit/photo/a/aa;
invoke-direct {v0, p0, v1}, Lcom/instagram/cliffjumper/edit/photo/a/aa;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;B)V
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->h:Lcom/instagram/cliffjumper/edit/photo/a/aa;
iput v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aq:I
sget v0, Lcom/instagram/cliffjumper/edit/photo/a/u;->a:I
iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ar:I
iput-boolean v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->at:Z
new-instance v0, Lcom/instagram/cliffjumper/edit/photo/lux/a;
invoke-direct {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/a;-><init>()V
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ax:Lcom/instagram/cliffjumper/edit/photo/lux/a;
return-void
.end method
.method static synthetic U()Ljava/lang/Class;
.registers 1
sget-object v0, Lcom/instagram/cliffjumper/edit/photo/a/a;->a:Ljava/lang/Class;
return-object v0
.end method
.method private V()Landroid/view/View;
.registers 5
const/4 v3, 0x0
const/4 v2, -0x1
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_27
new-instance v0, Landroid/view/TextureView;
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->n()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/av;->filter_view:I
invoke-virtual {v0, v1}, Landroid/view/TextureView;->setId(I)V
new-instance v1, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/ac;
invoke-direct {v1, p0, v3}, Lcom/instagram/cliffjumper/edit/photo/a/ac;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;B)V
invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
:goto_26
return-object v0
:cond_27
new-instance v0, Landroid/view/SurfaceView;
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->n()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/av;->filter_view:I
invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setId(I)V
new-instance v1, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;
move-result-object v1
new-instance v2, Lcom/instagram/cliffjumper/edit/photo/a/ab;
invoke-direct {v2, p0, v3}, Lcom/instagram/cliffjumper/edit/photo/a/ab;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;B)V
invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V
goto :goto_26
.end method
.method private W()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aA:Lcom/instagram/cliffjumper/ui/b;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aA:Lcom/instagram/cliffjumper/ui/b;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/ui/b;->isShowing()Z
move-result v0
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aA:Lcom/instagram/cliffjumper/ui/b;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/ui/b;->dismiss()V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->an:Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;
invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aA:Lcom/instagram/cliffjumper/ui/b;
:cond_19
return-void
.end method
.method private X()Landroid/view/View;
.registers 4
sget v0, Lcom/facebook/au;->toolbar_straighten:I
invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(I)Landroid/widget/ImageView;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ag:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ag:Landroid/widget/ImageView;
new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/h;
invoke-direct {v1, p0}, Lcom/instagram/cliffjumper/edit/photo/a/h;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ag:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/4 v2, 0x5
invoke-virtual {v0, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;
move-result-object v0
check-cast v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->h()F
move-result v0
const/4 v2, 0x0
cmpl-float v0, v0, v2
if-eqz v0, :cond_2d
const/4 v0, 0x1
:goto_27
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ag:Landroid/widget/ImageView;
return-object v0
:cond_2d
const/4 v0, 0x0
goto :goto_27
.end method
.method private Y()Landroid/view/View;
.registers 3
sget v0, Lcom/facebook/au;->edit_glyph_dof:I
invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(I)Landroid/widget/ImageView;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ah:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ah:Landroid/widget/ImageView;
new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/i;
invoke-direct {v1, p0}, Lcom/instagram/cliffjumper/edit/photo/a/i;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ah:Landroid/widget/ImageView;
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->f()Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->a(Landroid/widget/ImageView;Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ah:Landroid/widget/ImageView;
return-object v0
.end method
.method private Z()Landroid/view/View;
.registers 4
sget v0, Lcom/facebook/au;->tool_border:I
invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(I)Landroid/widget/ImageView;
move-result-object v0
new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/j;
invoke-direct {v1, p0}, Lcom/instagram/cliffjumper/edit/photo/a/j;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/16 v2, 0x14
invoke-virtual {v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->b(I)Z
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V
return-object v0
.end method
.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/a/a;I)I
.registers 2
iput p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ar:I
return p1
.end method
.method private a(I)Landroid/widget/ImageView;
.registers 7
new-instance v0, Landroid/widget/ImageView;
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->n()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
const/4 v2, 0x0
const/4 v3, -0x1
const/high16 v4, 0x3f80
invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
const/16 v2, 0x11
iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return-object v0
.end method
.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/a/a;Lcom/instagram/filterkit/c/c;)Lcom/instagram/filterkit/c/c;
.registers 2
iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->av:Lcom/instagram/filterkit/c/c;
return-object p1
.end method
.method private a(Landroid/view/View;I)V
.registers 7
const/4 v2, 0x0
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aA:Lcom/instagram/cliffjumper/ui/b;
if-nez v0, :cond_17
new-instance v0, Lcom/instagram/cliffjumper/ui/b;
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->n()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/cliffjumper/ui/b;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aA:Lcom/instagram/cliffjumper/ui/b;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aA:Lcom/instagram/cliffjumper/ui/b;
sget v1, Lcom/facebook/ba;->NuxBubbleTransitionStyle:I
invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/ui/b;->setAnimationStyle(I)V
:cond_17
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aA:Lcom/instagram/cliffjumper/ui/b;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/ui/b;->isShowing()Z
move-result v0
if-eqz v0, :cond_20
:goto_1f
return-void
:cond_20
new-instance v0, Lcom/instagram/cliffjumper/edit/photo/a/f;
invoke-direct {v0, p0}, Lcom/instagram/cliffjumper/edit/photo/a/f;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->an:Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;
invoke-virtual {v1, v0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aA:Lcom/instagram/cliffjumper/ui/b;
const/16 v1, 0x53
invoke-virtual {v0, p1, v1, v2, v2}, Lcom/instagram/cliffjumper/ui/b;->showAtLocation(Landroid/view/View;III)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aA:Lcom/instagram/cliffjumper/ui/b;
invoke-virtual {v0, p1, p2}, Lcom/instagram/cliffjumper/ui/b;->a(Landroid/view/View;I)V
invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/k/b/a;->G()V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->e:Landroid/os/Handler;
new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/g;
invoke-direct {v1, p0}, Lcom/instagram/cliffjumper/edit/photo/a/g;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
const-wide/16 v2, 0xdac
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
goto :goto_1f
.end method
.method private a(Lcom/instagram/cliffjumper/edit/common/ui/a;)V
.registers 5
const/4 v1, 0x1
iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->as:Lcom/instagram/cliffjumper/edit/common/ui/a;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ai:Landroid/widget/ViewSwitcher;
invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aj:Landroid/widget/ViewSwitcher;
invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ak:Landroid/widget/TextView;
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->as:Lcom/instagram/cliffjumper/edit/common/ui/a;
invoke-interface {v1}, Lcom/instagram/cliffjumper/edit/common/ui/a;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->am:Landroid/view/ViewGroup;
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->as:Lcom/instagram/cliffjumper/edit/common/ui/a;
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->n()Landroid/content/Context;
move-result-object v2
invoke-interface {v1, v2}, Lcom/instagram/cliffjumper/edit/common/ui/a;->a(Landroid/content/Context;)Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->W()V
invoke-static {}, Lcom/instagram/cliffjumper/util/a/b;->a()Z
move-result v0
if-nez v0, :cond_33
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->ae()V
:cond_33
return-void
.end method
.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->ae()V
return-void
.end method
.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/a/a;Landroid/view/View;I)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Landroid/view/View;I)V
return-void
.end method
.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/a/a;Lcom/instagram/cliffjumper/edit/common/ui/a;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Lcom/instagram/cliffjumper/edit/common/ui/a;)V
return-void
.end method
.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/a/a;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Ljava/lang/String;)V
return-void
.end method
.method private a(Ljava/lang/String;)V
.registers 4
new-instance v0, Lcom/instagram/ui/dialog/f;
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/f;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->i:Lcom/instagram/ui/dialog/f;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->i:Lcom/instagram/ui/dialog/f;
invoke-virtual {v0, p1}, Lcom/instagram/ui/dialog/f;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->i:Lcom/instagram/ui/dialog/f;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/f;->setCancelable(Z)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->i:Lcom/instagram/ui/dialog/f;
invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->show()V
return-void
.end method
.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/a/a;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->at:Z
return p1
.end method
.method private aa()V
.registers 6
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ae:Landroid/widget/ImageView;
iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ar:I
sget v4, Lcom/instagram/cliffjumper/edit/photo/a/u;->a:I
if-ne v0, v4, :cond_26
move v0, v1
:goto_b
invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setSelected(Z)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->af:Landroid/widget/ImageView;
iget v3, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ar:I
sget v4, Lcom/instagram/cliffjumper/edit/photo/a/u;->b:I
if-ne v3, v4, :cond_28
:goto_16
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->al:Landroid/widget/ViewSwitcher;
iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ar:I
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->W()V
return-void
:cond_26
move v0, v2
goto :goto_b
:cond_28
move v1, v2
goto :goto_16
.end method
.method private ab()V
.registers 3
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ab:Landroid/view/View;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ab:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v0
if-nez v0, :cond_13
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ab:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_13
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->e:Landroid/os/Handler;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->c()V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aa:Landroid/view/View;
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aa:Landroid/view/View;
new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/k;
invoke-direct {v1, p0}, Lcom/instagram/cliffjumper/edit/photo/a/k;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_2a
return-void
.end method
.method private ac()Z
.registers 8
const/4 v2, 0x1
const/4 v1, 0x0
invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;
move-result-object v0
iget-boolean v0, v0, Lcom/instagram/cliffjumper/util/a/d;->e:Z
if-nez v0, :cond_c
move v0, v1
:goto_b
return v0
:cond_c
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/i;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->l()Z
move-result v3
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/4 v4, 0x4
invoke-virtual {v0, v4}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;
move-result-object v0
check-cast v0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->j()Z
move-result v4
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/4 v5, 0x3
invoke-virtual {v0, v5}, Lcom/instagram/filterkit/filter/IgFilterGroup;->b(I)Z
move-result v5
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->f()Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;
move-result-object v0
sget-object v6, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;
if-eq v0, v6, :cond_43
move v0, v2
:goto_39
if-nez v3, :cond_41
if-nez v4, :cond_41
if-nez v5, :cond_41
if-eqz v0, :cond_45
:cond_41
move v0, v2
goto :goto_b
:cond_43
move v0, v1
goto :goto_39
:cond_45
move v0, v1
goto :goto_b
.end method
.method private ad()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aw:Z
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->ae()V
return-void
.end method
.method private ae()V
.registers 2
iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aw:Z
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->av:Lcom/instagram/filterkit/c/c;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->av:Lcom/instagram/filterkit/c/c;
invoke-interface {v0}, Lcom/instagram/filterkit/c/c;->c()Z
move-result v0
if-nez v0, :cond_15
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->av:Lcom/instagram/filterkit/c/c;
invoke-interface {v0}, Lcom/instagram/filterkit/c/c;->a()V
:cond_15
return-void
.end method
.method private af()Lcom/instagram/creation/photo/gallery/c;
.registers 3
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->au:Lcom/instagram/creation/photo/gallery/c;
if-nez v0, :cond_24
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;
move-result-object v0
const-string v1, "mediaFilePath"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/k;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
invoke-static {v1, v0}, Lcom/instagram/creation/photo/gallery/ImageManager;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/instagram/creation/photo/gallery/d;
move-result-object v1
invoke-interface {v1, v0}, Lcom/instagram/creation/photo/gallery/d;->a(Landroid/net/Uri;)Lcom/instagram/creation/photo/gallery/c;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->au:Lcom/instagram/creation/photo/gallery/c;
:cond_24
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->au:Lcom/instagram/creation/photo/gallery/c;
return-object v0
.end method
.method private ag()I
.registers 2
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->af()Lcom/instagram/creation/photo/gallery/c;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/creation/photo/gallery/c;->a()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/creation/photo/gallery/ImageManager;->a(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method static synthetic b(Lcom/instagram/cliffjumper/edit/photo/a/a;)J
.registers 3
iget-wide v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->f:J
return-wide v0
.end method
.method static synthetic b(Lcom/instagram/cliffjumper/edit/photo/a/a;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->c(Z)V
return-void
.end method
.method static synthetic c(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->ab()V
return-void
.end method
.method private c(Z)V
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->as:Lcom/instagram/cliffjumper/edit/common/ui/a;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->as:Lcom/instagram/cliffjumper/edit/common/ui/a;
invoke-interface {v0, p1}, Lcom/instagram/cliffjumper/edit/common/ui/a;->a(Z)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->as:Lcom/instagram/cliffjumper/edit/common/ui/a;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ai:Landroid/widget/ViewSwitcher;
invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aj:Landroid/widget/ViewSwitcher;
invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->am:Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ac:Landroid/view/View;
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->h:Lcom/instagram/cliffjumper/edit/photo/a/aa;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->ae()V
:cond_26
return-void
.end method
.method static synthetic d(Lcom/instagram/cliffjumper/edit/photo/a/a;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->az:Z
return v0
.end method
.method static synthetic e(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->aa()V
return-void
.end method
.method static synthetic f(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
return-object v0
.end method
.method static synthetic g(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->W()V
return-void
.end method
.method static synthetic h(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ac:Landroid/view/View;
return-object v0
.end method
.method static synthetic i(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/widget/FrameLayout;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ad:Landroid/widget/FrameLayout;
return-object v0
.end method
.method static synthetic j(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/common/ui/b;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->d:Lcom/instagram/cliffjumper/edit/common/ui/b;
return-object v0
.end method
.method static synthetic k(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/photo/a/aa;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->h:Lcom/instagram/cliffjumper/edit/photo/a/aa;
return-object v0
.end method
.method static synthetic l(Lcom/instagram/cliffjumper/edit/photo/a/a;)Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->at:Z
return v0
.end method
.method static synthetic m(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ag:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic n(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ah:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic o(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/c/c;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->av:Lcom/instagram/filterkit/c/c;
return-object v0
.end method
.method static synthetic p(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/photo/a/x;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->c:Lcom/instagram/cliffjumper/edit/photo/a/x;
return-object v0
.end method
.method static synthetic q(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->ad()V
return-void
.end method
.method static synthetic r(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/creation/photo/gallery/c;
.registers 2
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->af()Lcom/instagram/creation/photo/gallery/c;
move-result-object v0
return-object v0
.end method
.method static synthetic s(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/photo/lux/a;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ax:Lcom/instagram/cliffjumper/edit/photo/lux/a;
return-object v0
.end method
.method static synthetic t(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->e:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic u(Lcom/instagram/cliffjumper/edit/photo/a/a;)I
.registers 2
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->ag()I
move-result v0
return v0
.end method
.method static synthetic v(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ab:Landroid/view/View;
return-object v0
.end method
.method static synthetic w(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->g:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
return-object v0
.end method
.method public final E()V
.registers 5
const/4 v3, 0x1
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->av:Lcom/instagram/filterkit/c/c;
if-nez v0, :cond_c
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->e:Landroid/os/Handler;
const-wide/16 v1, 0x5dc
invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
:cond_c
invoke-super {p0}, Lcom/instagram/base/a/b;->E()V
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;
move-result-object v0
const/16 v1, 0x400
invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V
iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aw:Z
if-nez v0, :cond_31
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->e:Landroid/os/Handler;
new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/l;
invoke-direct {v1, p0}, Lcom/instagram/cliffjumper/edit/photo/a/l;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_31
return-void
.end method
.method public final F()V
.registers 1
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->W()V
invoke-super {p0}, Lcom/instagram/base/a/b;->F()V
return-void
.end method
.method public final G()V
.registers 1
invoke-super {p0}, Lcom/instagram/base/a/b;->G()V
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->c()V
return-void
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 7
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->o()Landroid/content/res/Resources;
move-result-object v0
invoke-static {v0}, Lcom/instagram/creation/base/ui/a;->b(Landroid/content/res/Resources;)Z
move-result v0
if-eqz v0, :cond_2a
sget v0, Lcom/facebook/aw;->fragment_filter:I
:goto_d
invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-static {v0}, Lcom/instagram/creation/base/ui/a;->a(Landroid/view/View;)V
sget v1, Lcom/facebook/av;->creation_image_container:I
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/FrameLayout;
iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ad:Landroid/widget/FrameLayout;
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ad:Landroid/widget/FrameLayout;
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->V()Landroid/view/View;
move-result-object v2
invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V
return-object v0
:cond_2a
sget v0, Lcom/facebook/aw;->fragment_filter_small:I
goto :goto_d
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 10
const/4 v7, 0x1
const/high16 v6, 0x3f80
const/4 v5, 0x0
const/4 v4, 0x0
const/4 v3, 0x0
invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->f:J
if-eqz p1, :cond_59
const-string v0, "selectedFilter"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/instagram/filterkit/filter/IgFilterGroup;
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
const-string v0, "rotation"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aq:I
invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/a/u;->a()[I
move-result-object v0
const-string v1, "editMode"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
aget v0, v0, v1
iput v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ar:I
:goto_31
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->af()Lcom/instagram/creation/photo/gallery/c;
move-result-object v0
if-nez v0, :cond_109
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->s()Z
move-result v0
if-eqz v0, :cond_58
const-string v0, "failed_to_load_gallery_image"
const-string v1, "failed_to_load_gallery_image"
invoke-static {v0, v1}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->l()Landroid/support/v4/app/k;
move-result-object v0
sget v1, Lcom/facebook/az;->unable_to_load_image:I
invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->onBackPressed()V
:cond_58
:goto_58
return-void
:cond_59
new-instance v0, Lcom/instagram/filterkit/filter/IgFilterGroup;
invoke-direct {v0}, Lcom/instagram/filterkit/filter/IgFilterGroup;-><init>()V
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;
move-result-object v0
iget-boolean v0, v0, Lcom/instagram/cliffjumper/util/a/d;->d:Z
if-eqz v0, :cond_b2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/4 v1, 0x3
new-instance v2, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;
invoke-direct {v2}, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;-><init>()V
invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(ILcom/instagram/filterkit/filter/IgFilter;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/4 v1, 0x3
invoke-virtual {v0, v1, v3}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/16 v1, 0xf
new-instance v2, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;
invoke-direct {v2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;-><init>()V
invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(ILcom/instagram/filterkit/filter/IgFilter;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/16 v1, 0xf
invoke-virtual {v0, v1, v3}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/16 v1, 0xb
new-instance v2, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;
invoke-direct {v2, v6, v5}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;-><init>(FF)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(ILcom/instagram/filterkit/filter/IgFilter;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/16 v1, 0xb
invoke-virtual {v0, v1, v3}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/16 v1, 0xc
new-instance v2, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;
invoke-direct {v2, v5, v6}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;-><init>(FF)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(ILcom/instagram/filterkit/filter/IgFilter;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/16 v1, 0xc
invoke-virtual {v0, v1, v3}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
:cond_b2
invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;
move-result-object v0
iget-boolean v0, v0, Lcom/instagram/cliffjumper/util/a/d;->e:Z
if-eqz v0, :cond_db
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
new-instance v1, Lcom/instagram/cliffjumper/edit/photo/resize/IdentityFilter;
invoke-direct {v1}, Lcom/instagram/cliffjumper/edit/photo/resize/IdentityFilter;-><init>()V
invoke-virtual {v0, v7, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(ILcom/instagram/filterkit/filter/IgFilter;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/4 v1, 0x4
new-instance v2, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;
invoke-direct {v2}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;-><init>()V
invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(ILcom/instagram/filterkit/filter/IgFilter;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/4 v1, 0x4
invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;
move-result-object v2
iget-boolean v2, v2, Lcom/instagram/cliffjumper/util/a/d;->e:Z
invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
:cond_db
new-instance v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
const/4 v1, -0x1
invoke-direct {v0, v1, v4, v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;-><init>(ILjava/lang/String;Ljava/util/List;)V
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;
move-result-object v1
const-string v2, "cameraRotation"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_101
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;
move-result-object v1
const-string v2, "mirrorMedia"
invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->b(Z)V
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->ag()I
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a(I)V
:cond_101
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/4 v2, 0x5
invoke-virtual {v1, v2, v0}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(ILcom/instagram/filterkit/filter/IgFilter;)V
goto/16 :goto_31
:cond_109
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;
move-result-object v0
const-string v1, "cameraRotation"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_12d
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->g:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->ag()I
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a(I)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->g:Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;
move-result-object v1
const-string v2, "mirrorMedia"
invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->b(Z)V
:cond_12d
new-instance v0, Lcom/instagram/ui/dialog/b;
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->n()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/az;->discard_dialog_text:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->dialog_option_discard:I
new-instance v2, Lcom/instagram/cliffjumper/edit/photo/a/n;
invoke-direct {v2, p0}, Lcom/instagram/cliffjumper/edit/photo/a/n;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->dialog_option_keep:I
invoke-virtual {v0, v1, v4}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->discard_dialog_title:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ay:Landroid/app/Dialog;
goto/16 :goto_58
.end method
.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 13
const/16 v9, 0x8
const/4 v8, 0x5
const/4 v7, 0x3
const/4 v1, 0x0
const/4 v6, 0x1
invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->o()Landroid/content/res/Resources;
move-result-object v0
invoke-static {v0}, Lcom/instagram/creation/base/ui/a;->b(Landroid/content/res/Resources;)Z
move-result v2
sget v0, Lcom/facebook/av;->loading_cover_for_surface_view:I
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ab:Landroid/view/View;
sget v0, Lcom/facebook/av;->filter_view:I
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ac:Landroid/view/View;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ac:Landroid/view/View;
iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->h:Lcom/instagram/cliffjumper/edit/photo/a/aa;
invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
sget v0, Lcom/facebook/av;->button_next:I
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aa:Landroid/view/View;
sget v0, Lcom/facebook/av;->button_back:I
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v3, Lcom/instagram/cliffjumper/edit/photo/a/o;
invoke-direct {v3, p0}, Lcom/instagram/cliffjumper/edit/photo/a/o;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
if-eqz v2, :cond_4e
new-instance v3, Lcom/instagram/a/c;
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->o()Landroid/content/res/Resources;
move-result-object v4
sget-object v5, Lcom/instagram/a/d;->a:Lcom/instagram/a/d;
invoke-direct {v3, v4, v5, v8}, Lcom/instagram/a/c;-><init>(Landroid/content/res/Resources;Lcom/instagram/a/d;I)V
invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_4e
sget v0, Lcom/facebook/av;->creation_main_actions:I
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ViewSwitcher;
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aj:Landroid/widget/ViewSwitcher;
sget v0, Lcom/facebook/av;->action_bar_adjust_switcher:I
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ViewSwitcher;
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ai:Landroid/widget/ViewSwitcher;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ai:Landroid/widget/ViewSwitcher;
sget v3, Lcom/facebook/av;->adjust_title:I
invoke-virtual {v0, v3}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ak:Landroid/widget/TextView;
sget v0, Lcom/facebook/av;->filter_tool_switcher:I
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ViewSwitcher;
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->al:Landroid/widget/ViewSwitcher;
sget v0, Lcom/facebook/av;->adjust_container:I
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->am:Landroid/view/ViewGroup;
sget v0, Lcom/facebook/av;->button_mode_filter:I
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ae:Landroid/widget/ImageView;
invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;
move-result-object v0
iget-boolean v0, v0, Lcom/instagram/cliffjumper/util/a/d;->e:Z
if-eqz v0, :cond_ce
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ae:Landroid/widget/ImageView;
new-instance v3, Lcom/instagram/cliffjumper/edit/photo/a/p;
invoke-direct {v3, p0}, Lcom/instagram/cliffjumper/edit/photo/a/p;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:goto_9e
sget-object v0, Lcom/instagram/o/a;->l:Lcom/instagram/o/a;
invoke-virtual {v0}, Lcom/instagram/o/a;->c()V
sget v0, Lcom/facebook/av;->filter_picker:I
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->an:Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->an:Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;
new-instance v3, Lcom/instagram/cliffjumper/edit/photo/a/q;
invoke-direct {v3, p0}, Lcom/instagram/cliffjumper/edit/photo/a/q;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
invoke-virtual {v0, v3}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->setFilterListener(Lcom/instagram/cliffjumper/edit/common/ui/f;)V
invoke-static {}, Lcom/instagram/cliffjumper/edit/common/effectfilter/e;->a()[Lcom/instagram/cliffjumper/edit/common/effectfilter/c;
move-result-object v3
move v0, v1
:goto_bc
const/16 v4, 0x14
if-ge v0, v4, :cond_d4
aget-object v4, v3, v0
invoke-virtual {v4}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->a()Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
move-result-object v4
iget-object v5, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ax:Lcom/instagram/cliffjumper/edit/photo/lux/a;
invoke-virtual {v4, v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a(Lcom/instagram/cliffjumper/edit/photo/lux/a;)V
add-int/lit8 v0, v0, 0x1
goto :goto_bc
:cond_ce
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ae:Landroid/widget/ImageView;
invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_9e
:cond_d4
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->an:Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;
invoke-virtual {v0, v3}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->setEffects([Lcom/instagram/cliffjumper/edit/common/ui/c;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
invoke-virtual {v0, v8}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;
move-result-object v0
check-cast v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
if-eqz v0, :cond_f1
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->m()I
move-result v0
const/4 v3, -0x1
if-ne v0, v3, :cond_f1
if-nez p2, :cond_f1
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->an:Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->a()V
:cond_f1
invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;
move-result-object v0
iget-boolean v0, v0, Lcom/instagram/cliffjumper/util/a/d;->d:Z
if-eqz v0, :cond_214
sget v0, Lcom/facebook/av;->button_mode_lux:I
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/r;
invoke-direct {v1, p0, v0}, Lcom/instagram/cliffjumper/edit/photo/a/r;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;Landroid/widget/ImageView;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;
move-result-object v1
iget-boolean v1, v1, Lcom/instagram/cliffjumper/util/a/d;->e:Z
if-nez v1, :cond_12f
sget v1, Lcom/facebook/au;->edit_glyph_lux:I
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
invoke-virtual {v1, v7}, Lcom/instagram/filterkit/filter/IgFilterGroup;->b(I)Z
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
invoke-virtual {v0, v7}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;
move-result-object v0
check-cast v0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;
const/16 v1, 0x64
invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->a(I)V
:goto_12f
:cond_12f
sget v0, Lcom/facebook/av;->button_mode_tools:I
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->af:Landroid/widget/ImageView;
invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;
move-result-object v0
iget-boolean v0, v0, Lcom/instagram/cliffjumper/util/a/d;->e:Z
if-eqz v0, :cond_233
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->af:Landroid/widget/ImageView;
new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/t;
invoke-direct {v1, p0}, Lcom/instagram/cliffjumper/edit/photo/a/t;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
sget v0, Lcom/facebook/av;->tool_picker:I
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ao:Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ao:Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;
new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/c;
invoke-direct {v1, p0}, Lcom/instagram/cliffjumper/edit/photo/a/c;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->setFilterListener(Lcom/instagram/cliffjumper/edit/common/ui/f;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ao:Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->n()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;
move-result-object v3
const-string v4, "straighteningAngle"
const/4 v5, 0x0
invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F
move-result v3
invoke-static {v1, v3}, Lcom/instagram/cliffjumper/edit/photo/a/ad;->a(Landroid/content/res/Resources;F)[Lcom/instagram/cliffjumper/edit/common/ui/c;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->setEffects([Lcom/instagram/cliffjumper/edit/common/ui/c;)V
:goto_17b
invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;
move-result-object v0
iget-boolean v0, v0, Lcom/instagram/cliffjumper/util/a/d;->e:Z
if-nez v0, :cond_1b2
sget v0, Lcom/facebook/av;->creation_secondary_actions:I
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
if-eqz v2, :cond_23a
invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I
move-result v1
:goto_191
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->X()Landroid/view/View;
move-result-object v2
add-int/lit8 v3, v1, 0x1
invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->Z()Landroid/view/View;
move-result-object v1
add-int/lit8 v2, v3, 0x1
invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;
move-result-object v1
iget-boolean v1, v1, Lcom/instagram/cliffjumper/util/a/d;->d:Z
if-eqz v1, :cond_1b2
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->Y()Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
:cond_1b2
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->aa()V
sget v0, Lcom/facebook/av;->button_accept_adjust:I
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/d;
invoke-direct {v1, p0}, Lcom/instagram/cliffjumper/edit/photo/a/d;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
sget v0, Lcom/facebook/av;->button_cancel_adjust:I
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/e;
invoke-direct {v1, p0}, Lcom/instagram/cliffjumper/edit/photo/a/e;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;
move-result-object v0
iget-boolean v0, v0, Lcom/instagram/cliffjumper/util/a/d;->e:Z
if-eqz v0, :cond_1f3
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
invoke-virtual {v0, v6, v6}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
invoke-virtual {v0, v6}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;
move-result-object v0
invoke-interface {v0, v6}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;
move-result-object v0
check-cast v0, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;
invoke-virtual {v0, v6}, Lcom/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;->b_(Z)V
:cond_1f3
invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;
move-result-object v0
iget-boolean v0, v0, Lcom/instagram/cliffjumper/util/a/d;->d:Z
if-eqz v0, :cond_213
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/16 v1, 0xc
invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;
move-result-object v0
invoke-interface {v0, v6}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
invoke-virtual {v0, v7}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;
move-result-object v0
check-cast v0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ax:Lcom/instagram/cliffjumper/edit/photo/lux/a;
invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;->a(Lcom/instagram/cliffjumper/edit/photo/lux/a;)V
:cond_213
return-void
:cond_214
sget v0, Lcom/facebook/av;->button_mode_enh:I
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/s;
invoke-direct {v1, p0, v0}, Lcom/instagram/cliffjumper/edit/photo/a/s;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;Landroid/widget/ImageView;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
sget v1, Lcom/facebook/au;->edit_glyph_lux:I
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
iget-boolean v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->at:Z
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V
goto/16 :goto_12f
:cond_233
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->af:Landroid/widget/ImageView;
invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V
goto/16 :goto_17b
:cond_23a
invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I
move-result v1
add-int/lit8 v1, v1, -0x2
goto/16 :goto_191
.end method
.method public final b()Z
.registers 4
const/4 v1, 0x1
const/4 v0, 0x0
iget-boolean v2, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->az:Z
if-eqz v2, :cond_7
:goto_6
:cond_6
return v0
:cond_7
iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->as:Lcom/instagram/cliffjumper/edit/common/ui/a;
if-eqz v2, :cond_10
invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->c(Z)V
move v0, v1
goto :goto_6
:cond_10
invoke-direct {p0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->ac()Z
move-result v2
if-eqz v2, :cond_6
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ay:Landroid/app/Dialog;
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
move v0, v1
goto :goto_6
.end method
.method public final c()V
.registers 2
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->i:Lcom/instagram/ui/dialog/f;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->i:Lcom/instagram/ui/dialog/f;
invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->isShowing()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->i:Lcom/instagram/ui/dialog/f;
invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->dismiss()V
:cond_11
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->i:Lcom/instagram/ui/dialog/f;
return-void
.end method
.method public final d()Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
.registers 3
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
const/4 v1, 0x5
invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;
move-result-object v0
check-cast v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
return-object v0
.end method
.method public final e(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/instagram/base/a/b;->e(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->as:Lcom/instagram/cliffjumper/edit/common/ui/a;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->as:Lcom/instagram/cliffjumper/edit/common/ui/a;
invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/a;->b()V
:cond_c
const-string v0, "selectedFilter"
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ap:Lcom/instagram/filterkit/filter/IgFilterGroup;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->as:Lcom/instagram/cliffjumper/edit/common/ui/a;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->as:Lcom/instagram/cliffjumper/edit/common/ui/a;
invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/a;->c()V
:cond_1c
const-string v0, "rotation"
iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aq:I
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v0, "editMode"
iget v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ar:I
add-int/lit8 v1, v1, -0x1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-void
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "sample_app_render"
return-object v0
.end method
.method public final l_()V
.registers 3
const/4 v1, 0x0
invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->e:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->af:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->an:Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;
invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;->setFilterListener(Lcom/instagram/cliffjumper/edit/common/ui/f;)V
iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->an:Lcom/instagram/cliffjumper/edit/common/ui/EffectPicker;
iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ac:Landroid/view/View;
iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ad:Landroid/widget/FrameLayout;
iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ab:Landroid/view/View;
iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->aj:Landroid/widget/ViewSwitcher;
iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ai:Landroid/widget/ViewSwitcher;
iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->al:Landroid/widget/ViewSwitcher;
iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->am:Landroid/view/ViewGroup;
iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->ae:Landroid/widget/ImageView;
iput-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/a;->af:Landroid/widget/ImageView;
return-void
.end method