.class Landroid/support/v7/internal/widget/ActionBarView$2;
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

    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView$2;->a:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$2;->a:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->b(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/c;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/internal/widget/c;->b:Landroid/support/v7/internal/view/menu/r;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->collapseActionView()Z

    :cond_d
    return-void
.end method
