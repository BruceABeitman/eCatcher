.class final Landroid/support/v4/app/y;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroid/support/v4/app/u;


# direct methods
.method constructor <init>(Landroid/support/v4/app/u;II)V
    .registers 5

    iput-object p1, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/app/u;

    iput p2, p0, Landroid/support/v4/app/y;->a:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/y;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/app/u;

    iget-object v1, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/app/u;

    iget-object v1, v1, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    invoke-virtual {v1}, Landroid/support/v4/app/r;->b()Landroid/os/Handler;

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v4/app/y;->a:I

    iget v3, p0, Landroid/support/v4/app/y;->b:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/u;->a(Ljava/lang/String;II)Z

    return-void
.end method
