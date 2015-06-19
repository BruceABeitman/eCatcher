.class final Lcom/twidroid/net/c/t$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/net/c/t;->g(Landroid/app/Activity;Lcom/twidroid/net/c/a/f;[Ljava/lang/Runnable;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/net/c/a/f;


# direct methods
.method constructor <init>(Lcom/twidroid/net/c/a/f;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/net/c/t$4;->a:Lcom/twidroid/net/c/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/net/c/t$4;->a:Lcom/twidroid/net/c/a/f;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/twidroid/net/c/t$4;->a:Lcom/twidroid/net/c/a/f;

    invoke-interface {v0}, Lcom/twidroid/net/c/a/f;->r()V

    :cond_9
    return-void
.end method
