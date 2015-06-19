.class final Landroid/support/v4/app/q;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroid/support/v4/app/o;


# direct methods
.method constructor <init>(Landroid/support/v4/app/o;I)V
    .registers 4

    iput-object p1, p0, Landroid/support/v4/app/q;->c:Landroid/support/v4/app/o;

    iput p2, p0, Landroid/support/v4/app/q;->a:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/q;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/q;->c:Landroid/support/v4/app/o;

    iget-object v1, p0, Landroid/support/v4/app/q;->c:Landroid/support/v4/app/o;

    iget-object v1, v1, Landroid/support/v4/app/o;->o:Landroid/support/v4/app/h;

    iget-object v1, v1, Landroid/support/v4/app/h;->mHandler:Landroid/os/Handler;

    iget v1, p0, Landroid/support/v4/app/q;->a:I

    iget v2, p0, Landroid/support/v4/app/q;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/o;->a(II)Z

    return-void
.end method
