.class public Lcom/bbm/ui/w;
.super Lcom/bbm/ui/activities/ajz;
.source "ChannelActionBar.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Landroid/app/ActionBar;

.field c:Lcom/bbm/ui/ObservingImageView;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/ImageView;

.field h:Landroid/widget/ImageView;

.field i:Landroid/widget/Space;

.field final j:Landroid/app/Activity;

.field final k:Lcom/bbm/j/k;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/app/ActionBar;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lcom/bbm/ui/activities/ajz;-><init>()V

    new-instance v0, Lcom/bbm/ui/x;

    invoke-direct {v0, p0}, Lcom/bbm/ui/x;-><init>(Lcom/bbm/ui/w;)V

    iput-object v0, p0, Lcom/bbm/ui/w;->k:Lcom/bbm/j/k;

    iput-object p2, p0, Lcom/bbm/ui/w;->b:Landroid/app/ActionBar;

    iput-object p3, p0, Lcom/bbm/ui/w;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/bbm/ui/w;->j:Landroid/app/Activity;

    iget-object v0, p0, Lcom/bbm/ui/w;->b:Landroid/app/ActionBar;

    const v1, 0x7f030107

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    iget-object v0, p0, Lcom/bbm/ui/w;->b:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v0, p0, Lcom/bbm/ui/w;->b:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a051d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    iput-object v0, p0, Lcom/bbm/ui/w;->c:Lcom/bbm/ui/ObservingImageView;

    iget-object v0, p0, Lcom/bbm/ui/w;->c:Lcom/bbm/ui/ObservingImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setLimitedLengthAnimation(Z)V

    iget-object v0, p0, Lcom/bbm/ui/w;->b:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0520

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/w;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/w;->b:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0523

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/w;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/w;->b:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0365

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/w;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bbm/ui/w;->b:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0521

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/w;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bbm/ui/w;->b:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0522

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/w;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bbm/ui/w;->b:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a051f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p0, Lcom/bbm/ui/w;->i:Landroid/widget/Space;

    iget-object v0, p0, Lcom/bbm/ui/w;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/bbm/ui/y;

    invoke-direct {v1, p0}, Lcom/bbm/ui/y;-><init>(Lcom/bbm/ui/w;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/w;->k:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    return-void
.end method

.method public a(Lcom/bbm/d/ec;)V
    .registers 6

    new-instance v0, Lcom/bbm/util/b/a;

    iget-object v1, p0, Lcom/bbm/ui/w;->j:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bbm/ui/w;->j:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/bbm/util/b/a;-><init>(Landroid/app/Activity;I)V

    iget-object v1, p1, Lcom/bbm/d/ec;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/ui/w;->c:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0, v1, v2}, Lcom/bbm/util/b/a;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/bbm/d/ec;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/w;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b(Lcom/bbm/ui/activities/ajy;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/w;->k:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/bbm/d/ec;)V
    .registers 7

    const v3, 0x7f0b003c

    iget-object v0, p0, Lcom/bbm/ui/w;->j:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-boolean v2, p2, Lcom/bbm/d/ec;->b:Z

    if-eqz v2, :cond_28

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v2

    const v2, 0x7f0b00de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v2

    const v2, 0x7f0b01aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v2

    :cond_28
    iget-boolean v2, p2, Lcom/bbm/d/ec;->u:Z

    if-eqz v2, :cond_31

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    :cond_31
    iget-object v1, p0, Lcom/bbm/ui/w;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v0, p0, Lcom/bbm/ui/w;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
