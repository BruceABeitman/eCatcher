.class final Landroid/support/v4/app/p;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/app/o;


# direct methods
.method constructor <init>(Landroid/support/v4/app/o;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->d()Z

    return-void
.end method
