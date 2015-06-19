.class Landroid/support/v7/app/l;
.super Landroid/support/v7/app/j;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v7/app/j;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/app/ActionBar;
    .registers 4

    invoke-virtual {p0}, Landroid/support/v7/app/l;->m()V

    new-instance v0, Landroid/support/v7/app/t;

    iget-object v1, p0, Landroid/support/v7/app/l;->c:Landroid/support/v7/app/ActionBarActivity;

    iget-object v2, p0, Landroid/support/v7/app/l;->c:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/t;-><init>(Landroid/support/v7/app/ActionBarActivity;Landroid/support/v7/app/a;)V

    return-object v0
.end method
