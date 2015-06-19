.class public final Lcom/instagram/cliffjumper/edit/common/effectfilter/f;
.super Ljava/lang/Object;
.source "FilterStrengthController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/instagram/cliffjumper/edit/common/ui/a;


# instance fields
.field private a:Lcom/instagram/cliffjumper/edit/common/ui/g;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Landroid/view/View;

.field private h:Lcom/instagram/filterkit/filter/IgFilterGroup;

.field private i:Lcom/instagram/cliffjumper/edit/common/ui/b;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;I)I
    .registers 2

    iput p1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->b:I

    return p1
.end method

.method static synthetic a(Landroid/widget/ImageView;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->b(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->j:Z

    return v0
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)I
    .registers 2

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->b:I

    return v0
.end method

.method private static b(Landroid/widget/ImageView;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method static synthetic c(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Lcom/instagram/filterkit/filter/IgFilterGroup;
    .registers 2

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Lcom/instagram/cliffjumper/edit/common/ui/b;
    .registers 2

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->i:Lcom/instagram/cliffjumper/edit/common/ui/b;

    return-object v0
.end method

.method static synthetic e(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->f:Z

    return v0
.end method

.method static synthetic f(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->d:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .registers 6

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->filter_strength_adjuster:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lcom/facebook/av;->filter_strength_seek:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;

    iget v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->c:I

    invoke-virtual {v1, v2}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->setCurrentValue(I)V

    new-instance v2, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;

    invoke-direct {v2, p0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/g;-><init>(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;)V

    invoke-virtual {v1, v2}, Lcom/instagram/cliffjumper/ui/IgEditSeekBar;->setOnSeekBarChangeListener(Lcom/instagram/cliffjumper/ui/a;)V

    sget v1, Lcom/facebook/av;->button_toggle_border:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v2}, Lcom/instagram/cliffjumper/edit/common/effectfilter/i;->b(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;

    move-result-object v2

    if-nez v2, :cond_39

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_38
    return-object v0

    :cond_39
    iget-boolean v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->e:Z

    invoke-static {v1, v2}, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->b(Landroid/widget/ImageView;Z)V

    new-instance v2, Lcom/instagram/cliffjumper/edit/common/effectfilter/h;

    invoke-direct {v2, p0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/h;-><init>(Lcom/instagram/cliffjumper/edit/common/effectfilter/f;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_38
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->a:Lcom/instagram/cliffjumper/edit/common/ui/g;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getTileInfo()Lcom/instagram/cliffjumper/edit/common/ui/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/c;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_c

    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->d:Z

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->e:Z

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->b:I

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->c:I

    :cond_c
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0x14

    iget-boolean v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/i;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v0

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->c:I

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->c(I)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object v3, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->g:Landroid/view/View;

    iput-object v3, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    iput-object v3, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->i:Lcom/instagram/cliffjumper/edit/common/ui/b;

    iput-boolean v4, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->j:Z

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/common/ui/b;)Z
    .registers 13

    const/16 v6, 0x14

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    check-cast v0, Lcom/instagram/cliffjumper/edit/common/ui/g;

    const/4 v1, 0x5

    invoke-virtual {p4, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v1

    check-cast v1, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getTileInfo()Lcom/instagram/cliffjumper/edit/common/ui/c;

    move-result-object v2

    check-cast v2, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;

    invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->a()Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v2

    iget-object v5, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->a:Lcom/instagram/cliffjumper/edit/common/ui/g;

    if-ne v5, p1, :cond_69

    invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->m()I

    move-result v5

    if-eqz v5, :cond_69

    invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/instagram/cliffjumper/util/a/d;->e:Z

    if-eqz v0, :cond_67

    iput-object p2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->g:Landroid/view/View;

    iput-object p4, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    iput-object p5, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->i:Lcom/instagram/cliffjumper/edit/common/ui/b;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/i;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->k()I

    move-result v0

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->b:I

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->b:I

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->c:I

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-virtual {v0, v6}, Lcom/instagram/filterkit/filter/IgFilterGroup;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->d:Z

    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->d:Z

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->e:Z

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->f:Z

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->g:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move v0, v3

    :goto_66
    return v0

    :cond_67
    move v0, v4

    goto :goto_66

    :cond_69
    iget-object v5, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->a:Lcom/instagram/cliffjumper/edit/common/ui/g;

    if-eqz v5, :cond_72

    iget-object v5, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->a:Lcom/instagram/cliffjumper/edit/common/ui/g;

    invoke-virtual {v5, v4}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setChecked(Z)V

    :cond_72
    invoke-virtual {v0, v3}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setChecked(Z)V

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->refreshDrawableState()V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->a:Lcom/instagram/cliffjumper/edit/common/ui/g;

    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a(I)V

    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->b(I)V

    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->h()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a(F)V

    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->j()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->b(Z)V

    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->i()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->a_(Z)V

    invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->m()I

    move-result v3

    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->m()I

    move-result v5

    if-ne v3, v5, :cond_ca

    invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->k()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->c(I)V

    :cond_ae
    :goto_ae
    invoke-virtual {p4, v6}, Lcom/instagram/filterkit/filter/IgFilterGroup;->b(I)Z

    move-result v1

    invoke-static {p4, v2}, Lcom/instagram/cliffjumper/edit/common/effectfilter/i;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;)V

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getTileInfo()Lcom/instagram/cliffjumper/edit/common/ui/c;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->b()Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/i;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;)V

    invoke-virtual {p4, v6, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    invoke-interface {p5}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    move v0, v4

    goto :goto_66

    :cond_ca
    invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->k()I

    move-result v1

    if-nez v1, :cond_ae

    const/16 v1, 0x64

    invoke-virtual {v2, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->c(I)V

    goto :goto_ae
.end method

.method public final a(Lcom/instagram/cliffjumper/edit/common/ui/g;Lcom/instagram/filterkit/filter/IgFilterGroup;)Z
    .registers 5

    invoke-static {p2}, Lcom/instagram/cliffjumper/edit/common/effectfilter/i;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->m()I

    move-result v1

    invoke-virtual {p1}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getTileInfo()Lcom/instagram/cliffjumper/edit/common/ui/c;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/c;->a()Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->m()I

    move-result v0

    if-ne v1, v0, :cond_1d

    const/4 v0, 0x1

    :goto_19
    invoke-virtual {p1, v0}, Lcom/instagram/cliffjumper/edit/common/ui/g;->setChecked(Z)V

    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public final b()V
    .registers 5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0x14

    iget-boolean v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/i;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v0

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->c:I

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->c(I)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V

    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->f:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    :cond_32
    return-void
.end method

.method public final c()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0x14

    iget-boolean v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/i;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v0

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->b:I

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->c(I)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/instagram/filterkit/filter/IgFilter;->a(Z)V

    iget-boolean v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->f:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    :cond_32
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    const/16 v3, 0x14

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_20

    iput-boolean v2, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->j:Z

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/i;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->c(I)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-virtual {v0, v3, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->i:Lcom/instagram/cliffjumper/edit/common/ui/b;

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    :cond_1f
    :goto_1f
    return v2

    :cond_20
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1f

    iput-boolean v1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->j:Z

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/i;->a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v0

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->b:I

    invoke-virtual {v0, v1}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->c(I)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->h:Lcom/instagram/filterkit/filter/IgFilterGroup;

    iget-boolean v1, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->d:Z

    invoke-virtual {v0, v3, v1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/effectfilter/f;->i:Lcom/instagram/cliffjumper/edit/common/ui/b;

    invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V

    goto :goto_1f
.end method
