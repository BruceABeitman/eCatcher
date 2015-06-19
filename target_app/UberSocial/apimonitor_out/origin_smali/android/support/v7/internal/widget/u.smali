.class Landroid/support/v7/internal/widget/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/n;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/n;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/widget/u;->a:Landroid/support/v7/internal/widget/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/n;Landroid/support/v7/internal/widget/n$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/u;-><init>(Landroid/support/v7/internal/widget/n;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->a:Landroid/support/v7/internal/widget/n;

    iget-boolean v0, v0, Landroid/support/v7/internal/widget/n;->A:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->a:Landroid/support/v7/internal/widget/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/n;->f()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->a:Landroid/support/v7/internal/widget/n;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/n;->post(Ljava/lang/Runnable;)Z

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Landroid/support/v7/internal/widget/u;->a:Landroid/support/v7/internal/widget/n;

    invoke-static {v0}, Landroid/support/v7/internal/widget/n;->b(Landroid/support/v7/internal/widget/n;)V

    goto :goto_13
.end method
