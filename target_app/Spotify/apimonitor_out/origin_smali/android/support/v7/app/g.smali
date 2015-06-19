.class final Landroid/support/v7/app/g;
.super Landroid/support/v7/app/f;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v7/app/f;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/app/ActionBar;
    .registers 4

    invoke-virtual {p0}, Landroid/support/v7/app/g;->m()V

    new-instance v0, Landroid/support/v7/app/m;

    iget-object v1, p0, Landroid/support/v7/app/g;->a:Landroid/support/v7/app/ActionBarActivity;

    iget-object v2, p0, Landroid/support/v7/app/g;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/m;-><init>(Landroid/support/v7/app/ActionBarActivity;Landroid/support/v7/app/a;)V

    return-object v0
.end method
