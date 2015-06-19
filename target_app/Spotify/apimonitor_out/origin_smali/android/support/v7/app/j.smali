.class Landroid/support/v7/app/j;
.super Landroid/support/v7/app/h;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v7/app/h;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/app/ActionBar;
    .registers 4

    new-instance v0, Landroid/support/v7/app/p;

    iget-object v1, p0, Landroid/support/v7/app/j;->a:Landroid/support/v7/app/ActionBarActivity;

    iget-object v2, p0, Landroid/support/v7/app/j;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/p;-><init>(Landroid/app/Activity;Landroid/support/v7/app/a;)V

    return-object v0
.end method

.method final a(Landroid/content/Context;Landroid/view/ActionMode;)Landroid/support/v7/internal/view/b;
    .registers 4

    new-instance v0, Landroid/support/v7/internal/view/c;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/internal/view/c;-><init>(Landroid/content/Context;Landroid/view/ActionMode;)V

    return-object v0
.end method
