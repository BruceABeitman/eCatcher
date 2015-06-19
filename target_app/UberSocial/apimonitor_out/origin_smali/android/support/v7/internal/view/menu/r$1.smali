.class Landroid/support/v7/internal/view/menu/r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/internal/view/menu/r;->setSupportActionProvider(Landroid/support/v4/view/ActionProvider;)Landroid/support/v4/internal/view/SupportMenuItem;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/internal/view/menu/r;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/view/menu/r;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/r$1;->a:Landroid/support/v7/internal/view/menu/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/r$1;->a:Landroid/support/v7/internal/view/menu/r;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/r;->a(Landroid/support/v7/internal/view/menu/r;)Landroid/support/v7/internal/view/menu/n;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/r$1;->a:Landroid/support/v7/internal/view/menu/r;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/support/v7/internal/view/menu/r;)V

    return-void
.end method
