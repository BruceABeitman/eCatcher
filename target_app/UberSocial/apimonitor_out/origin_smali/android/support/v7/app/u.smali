.class Landroid/support/v7/app/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field final synthetic a:Landroid/support/v7/app/t;

.field private final b:Landroid/view/ActionMode$Callback;


# direct methods
.method constructor <init>(Landroid/support/v7/app/t;Landroid/view/ActionMode$Callback;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/app/u;->a:Landroid/support/v7/app/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v7/app/u;->b:Landroid/view/ActionMode$Callback;

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v7/app/u;->b:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    iget-object v0, p0, Landroid/support/v7/app/u;->b:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v1, p0, Landroid/support/v7/app/u;->a:Landroid/support/v7/app/t;

    invoke-static {v1, p1}, Landroid/support/v7/app/t;->a(Landroid/support/v7/app/t;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v1, p0, Landroid/support/v7/app/u;->a:Landroid/support/v7/app/t;

    invoke-virtual {v1}, Landroid/support/v7/app/t;->r()V

    :cond_12
    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/app/u;->b:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    iget-object v0, p0, Landroid/support/v7/app/u;->a:Landroid/support/v7/app/t;

    invoke-virtual {v0}, Landroid/support/v7/app/t;->s()V

    iget-object v0, p0, Landroid/support/v7/app/u;->a:Landroid/support/v7/app/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/app/t;->a(Landroid/support/v7/app/t;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v7/app/u;->b:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method