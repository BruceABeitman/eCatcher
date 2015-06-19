.class public final Landroid/support/v7/internal/view/menu/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/aa;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/view/LayoutInflater;

.field c:Landroid/support/v7/internal/view/menu/n;

.field d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

.field e:I

.field f:I

.field g:Landroid/support/v7/internal/view/menu/m;

.field private h:I

.field private i:Landroid/support/v7/internal/view/menu/ab;


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v7/internal/view/menu/l;->f:I

    iput p2, p0, Landroid/support/v7/internal/view/menu/l;->e:I

    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/view/menu/l;)I
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/l;->h:I

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/ac;
    .registers 5

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->g:Landroid/support/v7/internal/view/menu/m;

    if-nez v0, :cond_b

    new-instance v0, Landroid/support/v7/internal/view/menu/m;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/m;-><init>(Landroid/support/v7/internal/view/menu/l;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/l;->g:Landroid/support/v7/internal/view/menu/m;

    :cond_b
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->g:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/m;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    if-nez v0, :cond_30

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->b:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/v7/a/h;->j:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/l;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/l;->g:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_30
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    :goto_32
    return-object v0

    :cond_33
    const/4 v0, 0x0

    goto :goto_32
.end method

.method public final a()Landroid/widget/ListAdapter;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->g:Landroid/support/v7/internal/view/menu/m;

    if-nez v0, :cond_b

    new-instance v0, Landroid/support/v7/internal/view/menu/m;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/m;-><init>(Landroid/support/v7/internal/view/menu/l;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/l;->g:Landroid/support/v7/internal/view/menu/m;

    :cond_b
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->g:Landroid/support/v7/internal/view/menu/m;

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;)V
    .registers 5

    iget v0, p0, Landroid/support/v7/internal/view/menu/l;->e:I

    if-eqz v0, :cond_21

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Landroid/support/v7/internal/view/menu/l;->e:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/l;->a:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/l;->b:Landroid/view/LayoutInflater;

    :cond_15
    :goto_15
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/l;->c:Landroid/support/v7/internal/view/menu/n;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->g:Landroid/support/v7/internal/view/menu/m;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->g:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/m;->notifyDataSetChanged()V

    :cond_20
    return-void

    :cond_21
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->a:Landroid/content/Context;

    if-eqz v0, :cond_15

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/l;->a:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/l;->b:Landroid/view/LayoutInflater;

    goto :goto_15
.end method

.method public final a(Landroid/support/v7/internal/view/menu/ab;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/l;->i:Landroid/support/v7/internal/view/menu/ab;

    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/n;Z)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->i:Landroid/support/v7/internal/view/menu/ab;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->i:Landroid/support/v7/internal/view/menu/ab;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/ab;->a(Landroid/support/v7/internal/view/menu/n;Z)V

    :cond_9
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/ag;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/ag;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    new-instance v0, Landroid/support/v7/internal/view/menu/q;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/menu/q;-><init>(Landroid/support/v7/internal/view/menu/n;)V

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/q;->a()V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->i:Landroid/support/v7/internal/view/menu/ab;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->i:Landroid/support/v7/internal/view/menu/ab;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/view/menu/ab;->b(Landroid/support/v7/internal/view/menu/n;)Z

    :cond_19
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public final b(Landroid/support/v7/internal/view/menu/r;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public final c(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->g:Landroid/support/v7/internal/view/menu/m;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->g:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/m;->notifyDataSetChanged()V

    :cond_9
    return-void
.end method

.method public final c(Landroid/support/v7/internal/view/menu/r;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public final i()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->c:Landroid/support/v7/internal/view/menu/n;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/l;->g:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v1, p3}, Landroid/support/v7/internal/view/menu/m;->a(I)Landroid/support/v7/internal/view/menu/r;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/view/MenuItem;I)Z

    return-void
.end method
