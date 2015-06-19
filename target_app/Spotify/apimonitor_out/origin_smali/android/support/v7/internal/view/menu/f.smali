.class final Landroid/support/v7/internal/view/menu/f;
.super Landroid/support/v7/internal/view/menu/y;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;Landroid/view/View;)V
    .registers 6

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/f;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, p4, v0}, Landroid/support/v7/internal/view/menu/y;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;Landroid/view/View;Z)V

    iget-object v0, p1, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/f;->a(Landroid/support/v7/internal/view/menu/ab;)V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .registers 3

    invoke-super {p0}, Landroid/support/v7/internal/view/menu/y;->onDismiss()V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/f;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->close()V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/f;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/f;)Landroid/support/v7/internal/view/menu/f;

    return-void
.end method
