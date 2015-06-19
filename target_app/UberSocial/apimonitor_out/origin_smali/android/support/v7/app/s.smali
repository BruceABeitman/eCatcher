.class public Landroid/support/v7/app/s;
.super Landroid/support/v7/app/d;
.source "SourceFile"


# instance fields
.field final synthetic b:Landroid/support/v7/app/q;

.field private c:Landroid/support/v7/app/e;

.field private d:Ljava/lang/Object;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Ljava/lang/CharSequence;

.field private g:Ljava/lang/CharSequence;

.field private h:I

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/q;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/app/s;->b:Landroid/support/v7/app/q;

    invoke-direct {p0}, Landroid/support/v7/app/d;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/s;->h:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Landroid/support/v7/app/s;->h:I

    return v0
.end method

.method public a(I)Landroid/support/v7/app/d;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/s;->b:Landroid/support/v7/app/q;

    invoke-static {v0}, Landroid/support/v7/app/q;->b(Landroid/support/v7/app/q;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/s;->a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/d;
    .registers 4

    iput-object p1, p0, Landroid/support/v7/app/s;->e:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Landroid/support/v7/app/s;->h:I

    if-ltz v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/app/s;->b:Landroid/support/v7/app/q;

    invoke-static {v0}, Landroid/support/v7/app/q;->a(Landroid/support/v7/app/q;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/app/s;->h:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b(I)V

    :cond_11
    return-object p0
.end method

.method public a(Landroid/support/v7/app/e;)Landroid/support/v7/app/d;
    .registers 2

    iput-object p1, p0, Landroid/support/v7/app/s;->c:Landroid/support/v7/app/e;

    return-object p0
.end method

.method public a(Landroid/view/View;)Landroid/support/v7/app/d;
    .registers 4

    iput-object p1, p0, Landroid/support/v7/app/s;->i:Landroid/view/View;

    iget v0, p0, Landroid/support/v7/app/s;->h:I

    if-ltz v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/app/s;->b:Landroid/support/v7/app/q;

    invoke-static {v0}, Landroid/support/v7/app/q;->a(Landroid/support/v7/app/q;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/app/s;->h:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b(I)V

    :cond_11
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v7/app/d;
    .registers 4

    iput-object p1, p0, Landroid/support/v7/app/s;->f:Ljava/lang/CharSequence;

    iget v0, p0, Landroid/support/v7/app/s;->h:I

    if-ltz v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/app/s;->b:Landroid/support/v7/app/q;

    invoke-static {v0}, Landroid/support/v7/app/q;->a(Landroid/support/v7/app/q;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/app/s;->h:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b(I)V

    :cond_11
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Landroid/support/v7/app/d;
    .registers 2

    iput-object p1, p0, Landroid/support/v7/app/s;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/s;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public b(I)Landroid/support/v7/app/d;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/s;->b:Landroid/support/v7/app/q;

    invoke-static {v0}, Landroid/support/v7/app/q;->b(Landroid/support/v7/app/q;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/s;->a(Ljava/lang/CharSequence;)Landroid/support/v7/app/d;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/support/v7/app/d;
    .registers 4

    iput-object p1, p0, Landroid/support/v7/app/s;->g:Ljava/lang/CharSequence;

    iget v0, p0, Landroid/support/v7/app/s;->h:I

    if-ltz v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/app/s;->b:Landroid/support/v7/app/q;

    invoke-static {v0}, Landroid/support/v7/app/q;->a(Landroid/support/v7/app/q;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/app/s;->h:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b(I)V

    :cond_11
    return-object p0
.end method

.method public c(I)Landroid/support/v7/app/d;
    .registers 4

    iget-object v0, p0, Landroid/support/v7/app/s;->b:Landroid/support/v7/app/q;

    invoke-virtual {v0}, Landroid/support/v7/app/q;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/s;->a(Landroid/view/View;)Landroid/support/v7/app/d;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/s;->f:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public d(I)Landroid/support/v7/app/d;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/s;->b:Landroid/support/v7/app/q;

    invoke-static {v0}, Landroid/support/v7/app/q;->b(Landroid/support/v7/app/q;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/s;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/d;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/s;->i:Landroid/view/View;

    return-object v0
.end method

.method public e()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/s;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public e(I)V
    .registers 2

    iput p1, p0, Landroid/support/v7/app/s;->h:I

    return-void
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/s;->b:Landroid/support/v7/app/q;

    invoke-virtual {v0, p0}, Landroid/support/v7/app/q;->c(Landroid/support/v7/app/d;)V

    return-void
.end method

.method public g()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/s;->g:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public h()Landroid/support/v7/app/e;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/s;->c:Landroid/support/v7/app/e;

    return-object v0
.end method
