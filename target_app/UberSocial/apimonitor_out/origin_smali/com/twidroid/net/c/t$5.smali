.class final Lcom/twidroid/net/c/t$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/net/c/t;->b(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;IILjava/lang/String;[Ljava/lang/Runnable;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/net/c/a/f;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/twidroid/net/c/a/f;IILjava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/twidroid/net/c/t$5;->a:Lcom/twidroid/net/c/a/f;

    iput p2, p0, Lcom/twidroid/net/c/t$5;->b:I

    iput p3, p0, Lcom/twidroid/net/c/t$5;->c:I

    iput-object p4, p0, Lcom/twidroid/net/c/t$5;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/net/c/t$5;->a:Lcom/twidroid/net/c/a/f;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/twidroid/net/c/t$5;->a:Lcom/twidroid/net/c/a/f;

    iget v1, p0, Lcom/twidroid/net/c/t$5;->b:I

    iget v2, p0, Lcom/twidroid/net/c/t$5;->c:I

    iget-object v3, p0, Lcom/twidroid/net/c/t$5;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/twidroid/net/c/a/f;->a(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/net/c/t$5;->a:Lcom/twidroid/net/c/a/f;

    invoke-interface {v0}, Lcom/twidroid/net/c/a/f;->r()V

    :cond_14
    return-void
.end method
