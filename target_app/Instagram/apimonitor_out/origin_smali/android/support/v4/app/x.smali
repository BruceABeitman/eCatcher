.class final Landroid/support/v4/app/x;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Landroid/support/v4/app/u;


# direct methods
.method constructor <init>(Landroid/support/v4/app/u;Ljava/lang/String;I)V
    .registers 5

    iput-object p1, p0, Landroid/support/v4/app/x;->c:Landroid/support/v4/app/u;

    iput-object p2, p0, Landroid/support/v4/app/x;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/x;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/x;->c:Landroid/support/v4/app/u;

    iget-object v1, p0, Landroid/support/v4/app/x;->c:Landroid/support/v4/app/u;

    iget-object v1, v1, Landroid/support/v4/app/u;->o:Landroid/support/v4/app/r;

    invoke-virtual {v1}, Landroid/support/v4/app/r;->b()Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/x;->a:Ljava/lang/String;

    const/4 v2, -0x1

    iget v3, p0, Landroid/support/v4/app/x;->b:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/u;->a(Ljava/lang/String;II)Z

    return-void
.end method
