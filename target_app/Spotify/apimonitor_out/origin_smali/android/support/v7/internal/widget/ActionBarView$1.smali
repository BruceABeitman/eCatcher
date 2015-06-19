.class final Landroid/support/v7/internal/widget/ActionBarView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ActionBarView;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ActionBarView;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ActionBarView;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView$1;->a:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$1;->a:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/app/b;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$1;->a:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/app/b;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v7/app/b;->b_(I)Z

    :cond_11
    return-void
.end method
