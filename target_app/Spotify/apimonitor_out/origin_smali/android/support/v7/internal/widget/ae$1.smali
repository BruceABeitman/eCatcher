.class final Landroid/support/v7/internal/widget/ae$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/internal/widget/ae;-><init>(Landroid/support/v7/internal/widget/ab;Landroid/content/Context;I)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ab;

.field final synthetic b:Landroid/support/v7/internal/widget/ae;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ae;Landroid/support/v7/internal/widget/ab;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/internal/widget/ae$1;->b:Landroid/support/v7/internal/widget/ae;

    iput-object p2, p0, Landroid/support/v7/internal/widget/ae$1;->a:Landroid/support/v7/internal/widget/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .registers 5

    iget-object v0, p0, Landroid/support/v7/internal/widget/ae$1;->b:Landroid/support/v7/internal/widget/ae;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ae;->b:Landroid/support/v7/internal/widget/ab;

    invoke-virtual {v0, p2}, Landroid/support/v7/internal/widget/ab;->a(I)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ae$1;->b:Landroid/support/v7/internal/widget/ae;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ae;->b:Landroid/support/v7/internal/widget/ab;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ab;->t:Landroid/support/v7/internal/widget/n;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/support/v7/internal/widget/ae$1;->b:Landroid/support/v7/internal/widget/ae;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ae;->b:Landroid/support/v7/internal/widget/ab;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ae$1;->b:Landroid/support/v7/internal/widget/ae;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ae;->a(Landroid/support/v7/internal/widget/ae;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/internal/widget/ab;->a(Landroid/view/View;I)Z

    :cond_1f
    iget-object v0, p0, Landroid/support/v7/internal/widget/ae$1;->b:Landroid/support/v7/internal/widget/ae;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ae;->f()V

    return-void
.end method
