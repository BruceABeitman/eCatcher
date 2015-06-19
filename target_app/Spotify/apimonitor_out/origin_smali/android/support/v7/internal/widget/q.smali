.class final Landroid/support/v7/internal/widget/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/l;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/l;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/l;B)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/q;-><init>(Landroid/support/v7/internal/widget/l;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/l;

    iget-boolean v0, v0, Landroid/support/v7/internal/widget/l;->u:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/l;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/l;->c()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/l;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/l;->post(Ljava/lang/Runnable;)Z

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/l;

    invoke-static {v0}, Landroid/support/v7/internal/widget/l;->b(Landroid/support/v7/internal/widget/l;)V

    goto :goto_13
.end method
