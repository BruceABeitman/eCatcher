.class Lcom/twidroid/net/a/c/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/twidroid/model/twitter/Tweet;

.field b:I

.field c:Z

.field d:Lcom/twidroid/b/a/b;

.field final synthetic e:Lcom/twidroid/net/a/c/a/d;


# direct methods
.method public constructor <init>(Lcom/twidroid/net/a/c/a/d;Lcom/twidroid/b/a/b;Lcom/twidroid/model/twitter/Tweet;IZ)V
    .registers 6

    iput-object p1, p0, Lcom/twidroid/net/a/c/a/i;->e:Lcom/twidroid/net/a/c/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/twidroid/net/a/c/a/i;->a:Lcom/twidroid/model/twitter/Tweet;

    iput p4, p0, Lcom/twidroid/net/a/c/a/i;->b:I

    iput-boolean p5, p0, Lcom/twidroid/net/a/c/a/i;->c:Z

    iput-object p2, p0, Lcom/twidroid/net/a/c/a/i;->d:Lcom/twidroid/b/a/b;

    return-void
.end method
