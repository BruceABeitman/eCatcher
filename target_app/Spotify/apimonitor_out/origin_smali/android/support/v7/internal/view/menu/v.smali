.class final Landroid/support/v7/internal/view/menu/v;
.super Landroid/support/v7/internal/view/menu/k;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/internal/view/menu/k",
        "<",
        "Landroid/view/MenuItem$OnMenuItemClickListener;",
        ">;",
        "Landroid/view/MenuItem$OnMenuItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic b:Landroid/support/v7/internal/view/menu/s;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/view/menu/s;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/v;->b:Landroid/support/v7/internal/view/menu/s;

    invoke-direct {p0, p2}, Landroid/support/v7/internal/view/menu/k;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem$OnMenuItemClickListener;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/v;->b:Landroid/support/v7/internal/view/menu/s;

    invoke-virtual {v1, p1}, Landroid/support/v7/internal/view/menu/s;->a(Landroid/view/MenuItem;)Landroid/support/v4/a/a/b;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
