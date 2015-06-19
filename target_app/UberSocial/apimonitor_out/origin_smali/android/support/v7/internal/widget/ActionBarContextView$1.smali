.class Landroid/support/v7/internal/widget/ActionBarContextView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/support/v7/b/a;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/b/a;

.field final synthetic b:Landroid/support/v7/internal/widget/ActionBarContextView;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ActionBarContextView;Landroid/support/v7/b/a;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView$1;->b:Landroid/support/v7/internal/widget/ActionBarContextView;

    iput-object p2, p0, Landroid/support/v7/internal/widget/ActionBarContextView$1;->a:Landroid/support/v7/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView$1;->a:Landroid/support/v7/b/a;

    invoke-virtual {v0}, Landroid/support/v7/b/a;->c()V

    return-void
.end method
