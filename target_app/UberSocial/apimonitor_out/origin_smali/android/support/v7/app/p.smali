.class Landroid/support/v7/app/p;
.super Landroid/support/v7/app/o;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v7/app/o;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/app/ActionBar;
    .registers 4

    new-instance v0, Landroid/support/v7/app/aa;

    iget-object v1, p0, Landroid/support/v7/app/p;->c:Landroid/support/v7/app/ActionBarActivity;

    iget-object v2, p0, Landroid/support/v7/app/p;->c:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/aa;-><init>(Landroid/app/Activity;Landroid/support/v7/app/a;)V

    return-object v0
.end method
