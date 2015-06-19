.class public final Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;
.super Ljava/lang/Object;
.source "TiltShiftController.java"

# interfaces
.implements Lcom/instagram/cliffjumper/a/b;
.implements Lcom/instagram/cliffjumper/edit/common/ui/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

.field private c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Lcom/instagram/filterkit/filter/IgFilterGroup;

.field private g:Lcom/instagram/cliffjumper/edit/common/ui/b;

.field private h:Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;

.field private i:Lcom/instagram/cliffjumper/a/a;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget v0, Lcom/facebook/az;->tiltshift:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;
    .registers 2

    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;)Lcom/instagram/filterkit/filter/IgFilterGroup;
    .registers 2

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    return-object v0
.end method

.method public static a(Landroid/widget/ImageView;Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V
    .registers 3

    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne p1, v0, :cond_a

    sget v0, Lcom/facebook/au;->edit_glyph_dof:I

    :goto_6
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_a
    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne p1, v0, :cond_11

    sget v0, Lcom/facebook/au;->edit_glyph_dof_linear:I

    goto :goto_6

    :cond_11
    sget v0, Lcom/facebook/au;->edit_glyph_dof_radial:I

    goto :goto_6
.end method

.method static synthetic b(Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;
    .registers 2

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    return-object v0
.end method

.method private b(FF)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float v1, p2, v1

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->b(FF)V

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->b(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->b(FF)V

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->c(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->b(FF)V

    return-void
.end method

.method static synthetic c(Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;)Lcom/instagram/cliffjumper/edit/common/ui/b;
    .registers 2

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;
    .registers 2

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->h:Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .registers 13

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    new-instance v2, Landroid/widget/RadioGroup;

    invoke-direct {v2, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->setOrientation(I)V

    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/c;

    invoke-direct {v0, p0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/c;-><init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;)V

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-array v3, v10, [Lcom/instagram/cliffjumper/edit/photo/tiltshift/d;

    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/d;

    sget-object v4, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget v5, Lcom/facebook/az;->tilt_mode_off:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/d;-><init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;Ljava/lang/String;)V

    aput-object v0, v3, v1

    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/d;

    sget-object v4, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget v5, Lcom/facebook/az;->tilt_mode_radial:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/d;-><init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;Ljava/lang/String;)V

    aput-object v0, v3, v9

    const/4 v0, 0x2

    new-instance v4, Lcom/instagram/cliffjumper/edit/photo/tiltshift/d;

    sget-object v5, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget v6, Lcom/facebook/az;->tilt_mode_linear:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/d;-><init>(Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;Ljava/lang/String;)V

    aput-object v4, v3, v0

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x3f80

    invoke-direct {v4, v1, v7, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/facebook/at;->effect_tile_padding:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    move v0, v1

    :goto_65
    if-ge v0, v10, :cond_8f

    new-instance v6, Lcom/instagram/cliffjumper/edit/common/ui/g;

    aget-object v7, v3, v0

    sget v8, Lcom/instagram/cliffjumper/edit/common/ui/k;->a:I

    invoke-direct {v6, p1, v7, v8}, Lcom/instagram/cliffjumper/edit/common/ui/g;-><init>(Landroid/content/Context;Lcom/instagram/cliffjumper/edit/common/ui/c;I)V

    invoke-virtual {v6}, Lcom/instagram/cliffjumper/edit/common/ui/g;->a()V

    invoke-virtual {v6, v1}, Lcom/instagram/cliffjumper/edit/common/ui/g;->a(Z)V

    invoke-virtual {v6}, Lcom/instagram/cliffjumper/edit/common/ui/g;->b()V

    invoke-virtual {v6, v5, v1, v5, v1}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setPadding(IIII)V

    invoke-virtual {v2, v6, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    aget-object v8, v3, v0

    invoke-virtual {v8}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/d;->a()Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    move-result-object v8

    if-ne v7, v8, :cond_8c

    invoke-virtual {v6, v9}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setChecked(Z)V

    :cond_8c
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    :cond_8f
    return-object v2
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(FF)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p2

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->a(FF)V

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->b(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->a(FF)V

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->c(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->a(FF)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->h:Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->c(Lcom/instagram/cliffjumper/edit/common/ui/b;)V

    goto :goto_6
.end method

.method public final a(FFFF)V
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    cmpl-float v0, p1, v2

    if-nez v0, :cond_10

    cmpl-float v0, p2, v2

    if-eqz v0, :cond_13

    :cond_10
    invoke-direct {p0, p1, p2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->b(FF)V

    :cond_13
    cmpl-float v0, p3, v2

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->b(F)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->b(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->b(F)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->c(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->b(F)V

    :cond_32
    cmpl-float v0, p4, v2

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_57

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->a(F)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->b(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->a(F)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->c(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftFogFilter;->a(F)V

    :cond_57
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    goto :goto_7
.end method

.method public final a(Z)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_33

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    :cond_9
    :goto_9
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->d:Landroid/view/View;

    instance-of v0, v0, Lcom/instagram/cliffjumper/edit/common/ui/g;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->d:Landroid/view/View;

    check-cast v0, Lcom/instagram/cliffjumper/edit/common/ui/g;

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v4, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-eq v3, v4, :cond_53

    :goto_19
    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setActive(Z)V

    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->i:Lcom/instagram/cliffjumper/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/a/a;->a()V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object v5, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->d:Landroid/view/View;

    iput-object v5, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->e:Landroid/view/View;

    iput-object v5, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    iput-object v5, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    iput-object v5, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->h:Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;

    iput-object v5, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->i:Lcom/instagram/cliffjumper/a/a;

    return-void

    :cond_33
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-eq v0, v3, :cond_9

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    invoke-static {v0, v3}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v4, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-eq v0, v4, :cond_51

    move v0, v1

    :goto_4d
    invoke-static {v3, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;Z)V

    goto :goto_9

    :cond_51
    move v0, v2

    goto :goto_4d

    :cond_53
    move v1, v2

    goto :goto_19

    :cond_55
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->d:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->a(Landroid/widget/ImageView;Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V

    goto :goto_1c
.end method

.method public final a(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/common/ui/b;)Z
    .registers 8

    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->d:Landroid/view/View;

    iput-object p2, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->e:Landroid/view/View;

    iput-object p4, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    iput-object p5, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;

    invoke-direct {v0, p4}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;-><init>(Lcom/instagram/filterkit/filter/IgFilterGroup;)V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->h:Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;

    new-instance v0, Lcom/instagram/cliffjumper/a/a;

    invoke-direct {v0}, Lcom/instagram/cliffjumper/a/a;-><init>()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->i:Lcom/instagram/cliffjumper/a/a;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->i:Lcom/instagram/cliffjumper/a/a;

    invoke-virtual {v0, p0}, Lcom/instagram/cliffjumper/a/a;->a(Lcom/instagram/cliffjumper/a/b;)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->i:Lcom/instagram/cliffjumper/a/a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->f()Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-eq v0, v1, :cond_39

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->h:Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;

    invoke-virtual {v0, p5}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->c(Lcom/instagram/cliffjumper/edit/common/ui/b;)V

    :cond_39
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/instagram/cliffjumper/edit/common/ui/g;Lcom/instagram/filterkit/filter/IgFilterGroup;)Z
    .registers 6

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/TiltShiftBlurFilter;->f()Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    move-result-object v0

    sget-object v2, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-eq v0, v2, :cond_12

    const/4 v0, 0x1

    :goto_e
    invoke-virtual {p1, v0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setActive(Z)V

    return v1

    :cond_12
    move v0, v1

    goto :goto_e
.end method

.method public final b()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->b:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v2, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-eq v0, v2, :cond_14

    const/4 v0, 0x1

    :goto_10
    invoke-static {v1, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;Z)V

    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public final b(FFFF)V
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    cmpl-float v0, p3, v2

    if-nez v0, :cond_10

    cmpl-float v0, p4, v2

    if-eqz v0, :cond_13

    :cond_10
    invoke-direct {p0, p3, p4}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->b(FF)V

    :cond_13
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    goto :goto_7
.end method

.method public final c()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;)V

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v2, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-eq v0, v2, :cond_14

    const/4 v0, 0x1

    :goto_10
    invoke-static {v1, v0}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/m;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;Z)V

    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public final d()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->h:Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->a(Lcom/instagram/cliffjumper/edit/common/ui/b;)V

    goto :goto_7
.end method

.method public final e()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->c:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;->a:Lcom/instagram/cliffjumper/edit/photo/tiltshift/l;

    if-ne v0, v1, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->f:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->h:Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/tiltshift/b;->g:Lcom/instagram/cliffjumper/edit/common/ui/b;

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/tiltshift/e;->b(Lcom/instagram/cliffjumper/edit/common/ui/b;)V

    goto :goto_7
.end method
