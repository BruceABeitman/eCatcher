.class public final Landroid/support/v4/app/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/g;


# static fields
.field private static final a:Landroid/support/v4/app/b;


# instance fields
.field private final b:Landroid/app/Activity;

.field private final c:Landroid/support/v4/app/f;

.field private final d:Landroid/support/v4/widget/DrawerLayout;

.field private e:Z

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/support/v4/app/h;

.field private final i:I

.field private final j:I

.field private final k:I

.field private l:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_f

    new-instance v0, Landroid/support/v4/app/e;

    invoke-direct {v0, v2}, Landroid/support/v4/app/e;-><init>(B)V

    sput-object v0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    :goto_e
    return-void

    :cond_f
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1b

    new-instance v0, Landroid/support/v4/app/d;

    invoke-direct {v0, v2}, Landroid/support/v4/app/d;-><init>(B)V

    sput-object v0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    goto :goto_e

    :cond_1b
    new-instance v0, Landroid/support/v4/app/c;

    invoke-direct {v0, v2}, Landroid/support/v4/app/c;-><init>(B)V

    sput-object v0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    goto :goto_e
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;)V
    .registers 6

    const v1, 0x7f02017b

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/a;->e:Z

    iput-object p1, p0, Landroid/support/v4/app/a;->b:Landroid/app/Activity;

    instance-of v0, p1, Landroid/support/v4/app/g;

    if-eqz v0, :cond_40

    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/g;

    invoke-interface {v0}, Landroid/support/v4/app/g;->a()Landroid/support/v4/app/f;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/a;->c:Landroid/support/v4/app/f;

    :goto_19
    iput-object p2, p0, Landroid/support/v4/app/a;->d:Landroid/support/v4/widget/DrawerLayout;

    iput v1, p0, Landroid/support/v4/app/a;->i:I

    iput v2, p0, Landroid/support/v4/app/a;->j:I

    iput v2, p0, Landroid/support/v4/app/a;->k:I

    invoke-direct {p0}, Landroid/support/v4/app/a;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/a;->g:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/support/v4/app/h;

    iget-object v1, p0, Landroid/support/v4/app/a;->g:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, p0, v1, v2}, Landroid/support/v4/app/h;-><init>(Landroid/support/v4/app/a;Landroid/graphics/drawable/Drawable;B)V

    iput-object v0, p0, Landroid/support/v4/app/a;->h:Landroid/support/v4/app/h;

    iget-object v0, p0, Landroid/support/v4/app/a;->h:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->b()V

    return-void

    :cond_40
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/a;->c:Landroid/support/v4/app/f;

    goto :goto_19
.end method

.method static synthetic a(Landroid/support/v4/app/a;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/a;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private a(I)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/a;->c:Landroid/support/v4/app/f;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v4/app/a;->c:Landroid/support/v4/app/f;

    invoke-interface {v0, p1}, Landroid/support/v4/app/f;->a(I)V

    :goto_9
    return-void

    :cond_a
    sget-object v0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    iget-object v1, p0, Landroid/support/v4/app/a;->l:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/a;->b:Landroid/app/Activity;

    invoke-interface {v0, v1, v2, p1}, Landroid/support/v4/app/b;->a(Ljava/lang/Object;Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/a;->l:Ljava/lang/Object;

    goto :goto_9
.end method

.method private c()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/a;->c:Landroid/support/v4/app/f;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v4/app/a;->c:Landroid/support/v4/app/f;

    invoke-interface {v0}, Landroid/support/v4/app/f;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    iget-object v1, p0, Landroid/support/v4/app/a;->b:Landroid/app/Activity;

    invoke-interface {v0, v1}, Landroid/support/v4/app/b;->a(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a
.end method


# virtual methods
.method public final a()V
    .registers 6

    const v2, 0x800003

    iget-object v0, p0, Landroid/support/v4/app/a;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->d(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/support/v4/app/a;->h:Landroid/support/v4/app/h;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/support/v4/app/h;->a(F)V

    :goto_12
    iget-boolean v0, p0, Landroid/support/v4/app/a;->e:Z

    if-eqz v0, :cond_2b

    iget-object v1, p0, Landroid/support/v4/app/a;->h:Landroid/support/v4/app/h;

    iget-object v0, p0, Landroid/support/v4/app/a;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->d(I)Z

    move-result v0

    if-eqz v0, :cond_33

    iget v0, p0, Landroid/support/v4/app/a;->k:I

    :goto_22
    iget-object v2, p0, Landroid/support/v4/app/a;->c:Landroid/support/v4/app/f;

    if-eqz v2, :cond_36

    iget-object v2, p0, Landroid/support/v4/app/a;->c:Landroid/support/v4/app/f;

    invoke-interface {v2, v1, v0}, Landroid/support/v4/app/f;->a(Landroid/graphics/drawable/Drawable;I)V

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    iget-object v0, p0, Landroid/support/v4/app/a;->h:Landroid/support/v4/app/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/h;->a(F)V

    goto :goto_12

    :cond_33
    iget v0, p0, Landroid/support/v4/app/a;->j:I

    goto :goto_22

    :cond_36
    sget-object v2, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/b;

    iget-object v3, p0, Landroid/support/v4/app/a;->l:Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v4/app/a;->b:Landroid/app/Activity;

    invoke-interface {v2, v3, v4, v1, v0}, Landroid/support/v4/app/b;->a(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/a;->l:Ljava/lang/Object;

    goto :goto_2b
.end method

.method public final a(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/a;->h:Landroid/support/v4/app/h;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/support/v4/app/h;->a(F)V

    iget-boolean v0, p0, Landroid/support/v4/app/a;->e:Z

    if-eqz v0, :cond_10

    iget v0, p0, Landroid/support/v4/app/a;->k:I

    invoke-direct {p0, v0}, Landroid/support/v4/app/a;->a(I)V

    :cond_10
    return-void
.end method

.method public final a(Landroid/view/View;F)V
    .registers 7

    const/high16 v3, 0x4000

    const/high16 v2, 0x3f00

    iget-object v0, p0, Landroid/support/v4/app/a;->h:Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->a()F

    move-result v0

    cmpl-float v1, p2, v2

    if-lez v1, :cond_20

    const/4 v1, 0x0

    sub-float v2, p2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_1a
    iget-object v1, p0, Landroid/support/v4/app/a;->h:Landroid/support/v4/app/h;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/h;->a(F)V

    return-void

    :cond_20
    mul-float v1, p2, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1a
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .registers 4

    if-eqz p1, :cond_27

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_27

    iget-boolean v0, p0, Landroid/support/v4/app/a;->e:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/support/v4/app/a;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->c()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/support/v4/app/a;->d:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->c(I)V

    :goto_1f
    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    iget-object v0, p0, Landroid/support/v4/app/a;->d:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->b()V

    goto :goto_1f

    :cond_27
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public final b()V
    .registers 3

    invoke-direct {p0}, Landroid/support/v4/app/a;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/a;->f:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v4/app/a;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/a;->i:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/a;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v4/app/a;->a()V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/a;->h:Landroid/support/v4/app/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/h;->a(F)V

    iget-boolean v0, p0, Landroid/support/v4/app/a;->e:Z

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/support/v4/app/a;->j:I

    invoke-direct {p0, v0}, Landroid/support/v4/app/a;->a(I)V

    :cond_f
    return-void
.end method
