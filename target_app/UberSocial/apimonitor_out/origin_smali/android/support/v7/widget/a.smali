.class public Landroid/support/v7/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/ac;
.implements Landroid/support/v7/internal/view/menu/o;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/support/v7/internal/view/menu/n;

.field private c:Landroid/view/View;

.field private d:Landroid/support/v7/internal/view/menu/z;

.field private e:Landroid/support/v7/widget/c;

.field private f:Landroid/support/v7/widget/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/a;->a:Landroid/content/Context;

    new-instance v0, Landroid/support/v7/internal/view/menu/n;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/menu/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/a;->b:Landroid/support/v7/internal/view/menu/n;

    iget-object v0, p0, Landroid/support/v7/widget/a;->b:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/support/v7/internal/view/menu/o;)V

    iput-object p2, p0, Landroid/support/v7/widget/a;->c:Landroid/view/View;

    new-instance v0, Landroid/support/v7/internal/view/menu/z;

    iget-object v1, p0, Landroid/support/v7/widget/a;->b:Landroid/support/v7/internal/view/menu/n;

    invoke-direct {v0, p1, v1, p2}, Landroid/support/v7/internal/view/menu/z;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/a;->d:Landroid/support/v7/internal/view/menu/z;

    iget-object v0, p0, Landroid/support/v7/widget/a;->d:Landroid/support/v7/internal/view/menu/z;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/z;->a(Landroid/support/v7/internal/view/menu/ac;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/Menu;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/a;->b:Landroid/support/v7/internal/view/menu/n;

    return-object v0
.end method

.method public a(I)V
    .registers 4

    invoke-virtual {p0}, Landroid/support/v7/widget/a;->b()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/a;->b:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/ah;)V
    .registers 2

    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/n;)V
    .registers 2

    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/n;Z)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/a;->f:Landroid/support/v7/widget/b;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/a;->f:Landroid/support/v7/widget/b;

    invoke-interface {v0, p0}, Landroid/support/v7/widget/b;->a(Landroid/support/v7/widget/a;)V

    :cond_9
    return-void
.end method

.method public a(Landroid/support/v7/widget/b;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/a;->f:Landroid/support/v7/widget/b;

    return-void
.end method

.method public a(Landroid/support/v7/widget/c;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/a;->e:Landroid/support/v7/widget/c;

    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/n;Landroid/view/MenuItem;)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/a;->e:Landroid/support/v7/widget/c;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/a;->e:Landroid/support/v7/widget/c;

    invoke-interface {v0, p2}, Landroid/support/v7/widget/c;->a(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public b()Landroid/view/MenuInflater;
    .registers 3

    new-instance v0, Landroid/support/v7/internal/view/f;

    iget-object v1, p0, Landroid/support/v7/widget/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/internal/view/f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public b(Landroid/support/v7/internal/view/menu/n;)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p1, :cond_5

    const/4 v0, 0x0

    :cond_4
    :goto_4
    return v0

    :cond_5
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/n;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Landroid/support/v7/internal/view/menu/z;

    iget-object v2, p0, Landroid/support/v7/widget/a;->a:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v7/widget/a;->c:Landroid/view/View;

    invoke-direct {v1, v2, p1, v3}, Landroid/support/v7/internal/view/menu/z;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/z;->a()V

    goto :goto_4
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/a;->d:Landroid/support/v7/internal/view/menu/z;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/z;->a()V

    return-void
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/a;->d:Landroid/support/v7/internal/view/menu/z;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/z;->c()V

    return-void
.end method
