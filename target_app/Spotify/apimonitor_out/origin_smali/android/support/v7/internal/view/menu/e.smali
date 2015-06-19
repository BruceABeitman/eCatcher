.class final Landroid/support/v7/internal/view/menu/e;
.super Landroid/widget/ImageButton;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/h;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V
    .registers 6

    const/4 v2, 0x1

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/e;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    const/4 v0, 0x0

    sget v1, Landroid/support/v7/a/c;->g:I

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/e;->setClickable(Z)V

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/e;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/e;->setVisibility(I)V

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/e;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final performClick()Z
    .registers 3

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return v1

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/e;->playSoundEffect(I)V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/e;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->c()Z

    goto :goto_7
.end method
