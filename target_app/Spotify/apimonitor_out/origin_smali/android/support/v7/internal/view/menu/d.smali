.class final Landroid/support/v7/internal/view/menu/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

.field private b:Landroid/support/v7/internal/view/menu/f;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/f;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/d;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v7/internal/view/menu/d;->b:Landroid/support/v7/internal/view/menu/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/d;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->f()V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/d;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->h:Landroid/support/v7/internal/view/menu/ac;

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/d;->b:Landroid/support/v7/internal/view/menu/f;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/f;->a()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/d;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/d;->b:Landroid/support/v7/internal/view/menu/f;

    invoke-static {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/f;)Landroid/support/v7/internal/view/menu/f;

    :cond_24
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/d;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/d;

    return-void
.end method
