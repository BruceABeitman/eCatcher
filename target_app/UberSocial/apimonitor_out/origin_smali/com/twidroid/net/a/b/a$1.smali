.class Lcom/twidroid/net/a/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ubermedia/net/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/net/a/b/a;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Landroid/app/Activity;Lcom/twidroid/d/v;Landroid/os/Handler;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/twidroid/net/a/b/c;ZDDLjava/lang/String;J)Ljava/lang/String;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/net/a/b/c;

.field final synthetic b:Lcom/twidroid/net/a/b/a;


# direct methods
.method constructor <init>(Lcom/twidroid/net/a/b/a;Lcom/twidroid/net/a/b/c;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/net/a/b/a$1;->b:Lcom/twidroid/net/a/b/a;

    iput-object p2, p0, Lcom/twidroid/net/a/b/a$1;->a:Lcom/twidroid/net/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 7

    iget-object v0, p0, Lcom/twidroid/net/a/b/a$1;->a:Lcom/twidroid/net/a/b/c;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/twidroid/net/a/b/a$1;->a:Lcom/twidroid/net/a/b/c;

    long-to-float v1, p1

    iget-object v2, p0, Lcom/twidroid/net/a/b/a$1;->b:Lcom/twidroid/net/a/b/a;

    iget-wide v2, v2, Lcom/twidroid/net/a/b/a;->a:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/twidroid/net/a/b/c;->a(I)V

    :cond_14
    return-void
.end method
