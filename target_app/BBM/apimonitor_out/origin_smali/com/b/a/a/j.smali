.class public final Lcom/b/a/a/j;
.super Ljava/lang/Object;
.source "DbxChooser.java"

# interfaces
.implements Lcom/b/a/a/a;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/b/a/a/i;


# direct methods
.method public constructor <init>(Lcom/b/a/a/i;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/b/a/a/j;->b:Lcom/b/a/a/i;

    iput-object p2, p0, Lcom/b/a/a/j;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/pm/PackageManager;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/j;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/b/a/a/j;->a:Landroid/app/Activity;

    const/16 v1, 0x8

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final b()Landroid/app/FragmentManager;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/j;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final c()Landroid/support/v4/app/n;
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/j;->a:Landroid/app/Activity;

    instance-of v0, v0, Landroid/support/v4/app/h;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/b/a/a/j;->a:Landroid/app/Activity;

    check-cast v0, Landroid/support/v4/app/h;

    invoke-virtual {v0}, Landroid/support/v4/app/h;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
