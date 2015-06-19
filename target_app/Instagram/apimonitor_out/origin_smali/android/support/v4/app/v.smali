.class final Landroid/support/v4/app/v;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/app/u;


# direct methods
.method constructor <init>(Landroid/support/v4/app/u;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/app/v;->a:Landroid/support/v4/app/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/v;->a:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->i()Z

    return-void
.end method
