.class public Landroid/support/v7/internal/view/b;
.super Landroid/support/v7/b/a;
.source "SourceFile"


# instance fields
.field final a:Landroid/view/MenuInflater;

.field final b:Landroid/view/ActionMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode;)V
    .registers 4

    invoke-direct {p0}, Landroid/support/v7/b/a;-><init>()V

    iput-object p2, p0, Landroid/support/v7/internal/view/b;->b:Landroid/view/ActionMode;

    new-instance v0, Landroid/support/v7/internal/view/d;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/b;->a:Landroid/view/MenuInflater;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/b;->b:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    return-void
.end method
