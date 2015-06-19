.class public Landroid/support/v7/internal/view/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field final a:Landroid/support/v7/b/b;

.field final b:Landroid/content/Context;

.field private c:Landroid/support/v7/internal/view/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/b/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/internal/view/c;->b:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v7/internal/view/c;->a:Landroid/support/v7/b/b;

    return-void
.end method

.method private a(Landroid/view/ActionMode;)Landroid/support/v7/b/a;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/view/c;->c:Landroid/support/v7/internal/view/b;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/internal/view/c;->c:Landroid/support/v7/internal/view/b;

    iget-object v0, v0, Landroid/support/v7/internal/view/b;->b:Landroid/view/ActionMode;

    if-ne v0, p1, :cond_d

    iget-object v0, p0, Landroid/support/v7/internal/view/c;->c:Landroid/support/v7/internal/view/b;

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/support/v7/internal/view/c;->a(Landroid/content/Context;Landroid/view/ActionMode;)Landroid/support/v7/internal/view/b;

    move-result-object v0

    goto :goto_c
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/view/ActionMode;)Landroid/support/v7/internal/view/b;
    .registers 4

    new-instance v0, Landroid/support/v7/internal/view/b;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/internal/view/b;-><init>(Landroid/content/Context;Landroid/view/ActionMode;)V

    return-object v0
.end method

.method public a(Landroid/support/v7/internal/view/b;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/view/c;->c:Landroid/support/v7/internal/view/b;

    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 6

    iget-object v0, p0, Landroid/support/v7/internal/view/c;->a:Landroid/support/v7/b/b;

    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/c;->a(Landroid/view/ActionMode;)Landroid/support/v7/b/a;

    move-result-object v1

    invoke-static {p2}, Landroid/support/v7/internal/view/menu/af;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/support/v7/b/b;->a(Landroid/support/v7/b/a;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 6

    iget-object v0, p0, Landroid/support/v7/internal/view/c;->a:Landroid/support/v7/b/b;

    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/c;->a(Landroid/view/ActionMode;)Landroid/support/v7/b/a;

    move-result-object v1

    invoke-static {p2}, Landroid/support/v7/internal/view/menu/af;->a(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/support/v7/b/b;->a(Landroid/support/v7/b/a;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/internal/view/c;->a:Landroid/support/v7/b/b;

    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/c;->a(Landroid/view/ActionMode;)Landroid/support/v7/b/a;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/v7/b/b;->a(Landroid/support/v7/b/a;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 6

    iget-object v0, p0, Landroid/support/v7/internal/view/c;->a:Landroid/support/v7/b/b;

    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/c;->a(Landroid/view/ActionMode;)Landroid/support/v7/b/a;

    move-result-object v1

    invoke-static {p2}, Landroid/support/v7/internal/view/menu/af;->a(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/support/v7/b/b;->b(Landroid/support/v7/b/a;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
