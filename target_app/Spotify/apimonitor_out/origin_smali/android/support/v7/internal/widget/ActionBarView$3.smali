.class final Landroid/support/v7/internal/widget/ActionBarView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ActionBarView;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ActionBarView;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ActionBarView;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView$3;->a:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$3;->a:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->h:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView$3;->a:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v2}, Landroid/support/v7/internal/widget/ActionBarView;->c(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/view/menu/a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    return-void
.end method
