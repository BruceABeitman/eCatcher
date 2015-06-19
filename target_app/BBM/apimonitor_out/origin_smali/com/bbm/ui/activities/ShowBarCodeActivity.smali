.class public Lcom/bbm/ui/activities/ShowBarCodeActivity;
.super Lcom/bbm/ui/activities/ajy;
.source "ShowBarCodeActivity.java"


# instance fields
.field protected final a:Lcom/bbm/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/a",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bbm/d/a;

.field private c:Lcom/bbm/ui/HeaderButtonActionBar;

.field private d:Lcom/bbm/ui/FooterActionBar;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/ImageView;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Ljava/lang/String;

.field private final n:Lcom/bbm/util/cr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/util/cr",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lcom/bbm/util/cr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/util/cr",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lcom/bbm/util/cr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/util/cr",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lcom/bbm/j/u;

.field private final r:Lcom/bbm/j/k;

.field private final s:Lcom/bbm/ui/cj;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/bbm/ui/activities/ajy;-><init>()V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->b:Lcom/bbm/d/a;

    new-instance v0, Lcom/bbm/util/cr;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->n:Lcom/bbm/util/cr;

    new-instance v0, Lcom/bbm/util/cr;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->o:Lcom/bbm/util/cr;

    new-instance v0, Lcom/bbm/util/cr;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->p:Lcom/bbm/util/cr;

    new-instance v0, Lcom/bbm/ui/activities/ahd;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ahd;-><init>(Lcom/bbm/ui/activities/ShowBarCodeActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->a:Lcom/bbm/j/a;

    new-instance v0, Lcom/bbm/ui/activities/ahe;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ahe;-><init>(Lcom/bbm/ui/activities/ShowBarCodeActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->q:Lcom/bbm/j/u;

    new-instance v0, Lcom/bbm/ui/activities/ahf;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ahf;-><init>(Lcom/bbm/ui/activities/ShowBarCodeActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->r:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/activities/ahg;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ahg;-><init>(Lcom/bbm/ui/activities/ShowBarCodeActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->s:Lcom/bbm/ui/cj;

    new-instance v0, Lcom/bbm/ui/fv;

    invoke-direct {v0}, Lcom/bbm/ui/fv;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->a(Lcom/bbm/ui/activities/aka;)V

    new-instance v0, Lcom/bbm/ui/voice/o;

    invoke-direct {v0}, Lcom/bbm/ui/voice/o;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->a(Lcom/bbm/ui/activities/aka;)V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 7

    const-string v1, ""

    const/4 v0, 0x0

    move v2, v0

    move-object v3, v1

    :goto_5
    const/4 v0, 0x4

    if-ge v2, v0, :cond_4d

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v4, 0x406e

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x4030

    add-double/2addr v0, v4

    double-to-int v1, v0

    if-nez v1, :cond_2d

    const-string v0, "0"

    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v3, v1

    goto :goto_5

    :cond_2d
    const-string v0, ""

    :goto_2f
    if-lez v1, :cond_17

    rem-int/lit8 v4, v1, 0x10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0123456789ABCDEF"

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    div-int/lit8 v1, v1, 0x10

    goto :goto_2f

    :cond_4d
    return-object v3
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ShowBarCodeActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/activities/ShowBarCodeActivity;)Lcom/bbm/d/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->b:Lcom/bbm/d/a;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/activities/ShowBarCodeActivity;)Lcom/bbm/util/cr;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->n:Lcom/bbm/util/cr;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/activities/ShowBarCodeActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->l:Z

    return v0
.end method

.method static synthetic e(Lcom/bbm/ui/activities/ShowBarCodeActivity;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->n:Lcom/bbm/util/cr;

    iget-object v1, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->b:Lcom/bbm/d/a;

    invoke-virtual {v1}, Lcom/bbm/d/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->n:Lcom/bbm/util/cr;

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic f(Lcom/bbm/ui/activities/ShowBarCodeActivity;)V
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->a:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v1, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->a:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->b:Lcom/bbm/d/a;

    iget-object v2, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v0

    iget-object v2, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->n:Lcom/bbm/util/cr;

    invoke-static {v0}, Lcom/bbm/d/b/a;->a(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->d:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->b:Lcom/bbm/d/a;

    invoke-virtual {v0}, Lcom/bbm/d/a;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->n:Lcom/bbm/util/cr;

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_75

    move v0, v1

    :goto_4b
    invoke-virtual {v2, v1, v0}, Lcom/bbm/ui/FooterActionBar;->setActionHidden(IZ)V

    iget-object v1, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->n:Lcom/bbm/util/cr;

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->n:Lcom/bbm/util/cr;

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_22

    :cond_75
    const/4 v0, 0x0

    goto :goto_4b
.end method

.method static synthetic g(Lcom/bbm/ui/activities/ShowBarCodeActivity;)Lcom/bbm/util/cr;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->p:Lcom/bbm/util/cr;

    return-object v0
.end method

.method static synthetic h(Lcom/bbm/ui/activities/ShowBarCodeActivity;)Lcom/bbm/util/cr;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->o:Lcom/bbm/util/cr;

    return-object v0
.end method

.method static synthetic i(Lcom/bbm/ui/activities/ShowBarCodeActivity;)Lcom/bbm/j/u;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->q:Lcom/bbm/j/u;

    return-object v0
.end method

.method static synthetic j(Lcom/bbm/ui/activities/ShowBarCodeActivity;)V
    .registers 11

    const/4 v4, 0x0

    :try_start_1
    new-instance v0, Lcom/google/zxing/g/b;

    invoke-direct {v0}, Lcom/google/zxing/g/b;-><init>()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->o:Lcom/bbm/util/cr;

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/google/zxing/a;->l:Lcom/google/zxing/a;

    const/16 v2, 0xc8

    const/16 v3, 0xc8

    invoke-static {v0, v1, v2, v3}, Lcom/google/zxing/g/b;->a(Ljava/lang/String;Lcom/google/zxing/a;II)Lcom/google/zxing/b/b;

    move-result-object v6

    iget v3, v6, Lcom/google/zxing/b/b;->a:I

    iget v7, v6, Lcom/google/zxing/b/b;->b:I

    mul-int v0, v3, v7

    new-array v1, v0, [I

    move v5, v4

    :goto_21
    if-ge v5, v7, :cond_3e

    mul-int v8, v5, v3

    move v2, v4

    :goto_26
    if-ge v2, v3, :cond_3a

    add-int v9, v8, v2

    invoke-virtual {v6, v2, v5}, Lcom/google/zxing/b/b;->a(II)Z

    move-result v0

    if-eqz v0, :cond_38

    const/high16 v0, -0x100

    :goto_32
    aput v0, v1, v9

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_26

    :cond_38
    const/4 v0, -0x1

    goto :goto_32

    :cond_3a
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_21

    :cond_3e
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    iget-object v1, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->b:Lcom/bbm/d/a;

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->p:Lcom/bbm/util/cr;

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/bbm/d/af;->a:Lcom/bbm/d/af;

    invoke-static {v0, v2}, Lcom/bbm/d/z;->a(Ljava/lang/String;Lcom/bbm/d/af;)Lcom/bbm/d/ae;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
    :try_end_63
    .catch Lcom/google/zxing/q; {:try_start_1 .. :try_end_63} :catch_64

    :goto_63
    return-void

    :catch_64
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_63
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    const v7, 0x7f0a00db

    const/4 v5, -0x1

    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03005f

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->setContentView(I)V

    new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;

    const v3, 0x7f0e05cb

    invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0e0244

    invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v3, v4}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->c:Lcom/bbm/ui/HeaderButtonActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->c:Lcom/bbm/ui/HeaderButtonActionBar;

    new-instance v3, Lcom/bbm/ui/activities/ahi;

    invoke-direct {v3, p0}, Lcom/bbm/ui/activities/ahi;-><init>(Lcom/bbm/ui/activities/ShowBarCodeActivity;)V

    invoke-virtual {v0, v3}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v3, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->c:Lcom/bbm/ui/HeaderButtonActionBar;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->d:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->d:Lcom/bbm/ui/FooterActionBar;

    new-instance v3, Lcom/bbm/ui/ActionBarItem;

    const v4, 0x7f0202b4

    const v5, 0x7f0e05cd

    invoke-direct {v3, p0, v4, v5}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v3, v2}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->d:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/FooterActionBar;->setBackActionAndOverflowEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->d:Lcom/bbm/ui/FooterActionBar;

    iget-object v3, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->s:Lcom/bbm/ui/cj;

    invoke-virtual {v0, v3}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->d:Lcom/bbm/ui/FooterActionBar;

    new-instance v3, Lcom/bbm/ui/ActionBarItem;

    const v4, 0x7f0202bf

    const v5, 0x7f0e05e0

    invoke-direct {v3, p0, v4, v5}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v3, v1}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    const v0, 0x7f0a02ff

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->i:Landroid/widget/Button;

    const v0, 0x7f0a0300

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f0a0136

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->j:Landroid/widget/ImageView;

    const v0, 0x7f0a00da

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->e:Landroid/widget/ImageView;

    invoke-static {}, Lcom/bbm/util/fb;->h()Z

    move-result v0

    if-nez v0, :cond_121

    invoke-virtual {p0, v7}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f0a00dc

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->f:Landroid/widget/TextView;

    :goto_bf
    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->h:Landroid/widget/TextView;

    const v3, 0x7f0e05da

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v0, "from_capture"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_135

    const-string v0, "from_capture"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->l:Z

    :cond_db
    :goto_db
    iget-boolean v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->l:Z

    if-nez v0, :cond_17d

    const-string v0, "channel_uri"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_142

    const-string v0, "channel_uri"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->d:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v1, v1}, Lcom/bbm/ui/FooterActionBar;->setActionHidden(IZ)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10c

    if-eqz p1, :cond_10c

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10c

    const-string v0, "channel_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->m:Ljava/lang/String;

    :cond_10c
    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_140

    move v0, v1

    :goto_115
    const-string v4, "Channel uri can not be null or blank"

    invoke-static {p0, v0, v4}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;ZLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11e

    move v1, v2

    :cond_11e
    if-nez v1, :cond_17d

    :cond_120
    :goto_120
    return-void

    :cond_121
    const v0, 0x7f0a00dc

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->f:Landroid/widget/TextView;

    goto :goto_bf

    :cond_135
    if-eqz p1, :cond_db

    const-string v0, "from_capture"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->l:Z

    goto :goto_db

    :cond_140
    move v0, v2

    goto :goto_115

    :cond_142
    const-string v0, "user_uri"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d0

    const-string v0, "user_uri"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16a

    if-eqz p1, :cond_16a

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16a

    const-string v0, "user_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->k:Ljava/lang/String;

    :cond_16a
    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1ce

    move v0, v1

    :goto_173
    const-string v4, "User uri can not be null or blank"

    invoke-static {p0, v0, v4}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;ZLjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d0

    :goto_17b
    if-eqz v1, :cond_120

    :cond_17d
    iget-boolean v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->l:Z

    if-eqz v0, :cond_1c1

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->c:Lcom/bbm/ui/HeaderButtonActionBar;

    const v1, 0x7f0e051b

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->c:Lcom/bbm/ui/HeaderButtonActionBar;

    const v1, 0x7f0e0173

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->d:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v6}, Lcom/bbm/ui/FooterActionBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->i:Landroid/widget/Button;

    new-instance v1, Lcom/bbm/ui/activities/ahh;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ahh;-><init>(Lcom/bbm/ui/activities/ShowBarCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1c1
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x1

    if-ne v0, v1, :cond_120

    invoke-virtual {p0, v2, v2}, Lcom/bbm/ui/activities/ShowBarCodeActivity;->overridePendingTransition(II)V

    goto/16 :goto_120

    :cond_1ce
    move v0, v2

    goto :goto_173

    :cond_1d0
    move v1, v2

    goto :goto_17b
.end method

.method protected onPause()V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->r:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/bbm/g/an;->a(Z)Lcom/bbm/g/cg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    :try_start_11
    iget-object v1, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->b:Lcom/bbm/d/a;

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->p:Lcom/bbm/util/cr;

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/bbm/d/af;->b:Lcom/bbm/d/af;

    invoke-static {v0, v2}, Lcom/bbm/d/z;->a(Ljava/lang/String;Lcom/bbm/d/af;)Lcom/bbm/d/ae;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
    :try_end_24
    .catch Lcom/bbm/j/z; {:try_start_11 .. :try_end_24} :catch_28

    :goto_24
    invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onPause()V

    return-void

    :catch_28
    move-exception v0

    goto :goto_24
.end method

.method protected onPostResume()V
    .registers 3

    const-string v0, "onPostResume"

    const-class v1, Lcom/bbm/ui/activities/ShowBarCodeActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v0, Lcom/bbm/ui/activities/ahj;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ahj;-><init>(Lcom/bbm/ui/activities/ShowBarCodeActivity;)V

    invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V

    invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onPostResume()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onResume()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->r:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "user_uri"

    iget-object v1, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "channel_uri"

    iget-object v1, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "from_capture"

    iget-boolean v1, p0, Lcom/bbm/ui/activities/ShowBarCodeActivity;->l:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
