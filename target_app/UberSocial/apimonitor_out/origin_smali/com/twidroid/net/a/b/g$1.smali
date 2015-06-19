.class Lcom/twidroid/net/a/b/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ubermedia/net/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/net/a/b/g;->a([Lcom/twidroid/net/a/b/i;)Ljava/lang/String;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/net/a/b/g;


# direct methods
.method constructor <init>(Lcom/twidroid/net/a/b/g;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/net/a/b/g$1;->a:Lcom/twidroid/net/a/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 8

    iget-object v0, p0, Lcom/twidroid/net/a/b/g$1;->a:Lcom/twidroid/net/a/b/g;

    iget-object v0, v0, Lcom/twidroid/net/a/b/g;->a:Lcom/twidroid/net/a/b/i;

    iget-object v0, v0, Lcom/twidroid/net/a/b/i;->h:Lcom/twidroid/net/a/b/c;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/twidroid/net/a/b/g$1;->a:Lcom/twidroid/net/a/b/g;

    iget-object v0, v0, Lcom/twidroid/net/a/b/g;->a:Lcom/twidroid/net/a/b/i;

    iget-object v0, v0, Lcom/twidroid/net/a/b/i;->h:Lcom/twidroid/net/a/b/c;

    long-to-double v1, p1

    iget-object v3, p0, Lcom/twidroid/net/a/b/g$1;->a:Lcom/twidroid/net/a/b/g;

    iget-object v3, v3, Lcom/twidroid/net/a/b/g;->b:Lcom/twidroid/net/a/b/b;

    iget-wide v3, v3, Lcom/twidroid/net/a/b/b;->e:J

    long-to-double v3, v3

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4059

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/twidroid/net/a/b/c;->a(I)V

    :cond_1e
    return-void
.end method
