.class Lcom/twidroid/net/a/c/a/h;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/twidroid/net/a/c/a/d;


# direct methods
.method private constructor <init>(Lcom/twidroid/net/a/c/a/d;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/net/a/c/a/h;->a:Lcom/twidroid/net/a/c/a/d;

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twidroid/net/a/c/a/d;Lcom/twidroid/net/a/c/a/d$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/twidroid/net/a/c/a/h;-><init>(Lcom/twidroid/net/a/c/a/d;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Lcom/twidroid/net/a/c/a/i;

    invoke-virtual {p0, p1}, Lcom/twidroid/net/a/c/a/h;->a([Lcom/twidroid/net/a/c/a/i;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Lcom/twidroid/net/a/c/a/i;)Ljava/lang/Void;
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v0, "TwitterStream"

    const-string v1, "Starting background tweet inserter"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, p1

    if-nez v0, :cond_d

    :goto_c
    return-object v5

    :cond_d
    iget-object v0, p0, Lcom/twidroid/net/a/c/a/h;->a:Lcom/twidroid/net/a/c/a/d;

    aget-object v1, p1, v4

    iget-object v1, v1, Lcom/twidroid/net/a/c/a/i;->d:Lcom/twidroid/b/a/b;

    aget-object v2, p1, v4

    iget-object v2, v2, Lcom/twidroid/net/a/c/a/i;->a:Lcom/twidroid/model/twitter/Tweet;

    aget-object v3, p1, v4

    iget v3, v3, Lcom/twidroid/net/a/c/a/i;->b:I

    aget-object v4, p1, v4

    iget-boolean v4, v4, Lcom/twidroid/net/a/c/a/i;->c:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/twidroid/net/a/c/a/d;->a(Lcom/twidroid/net/a/c/a/d;Lcom/twidroid/b/a/b;Lcom/twidroid/model/twitter/Tweet;IZ)V

    const-string v0, "TwitterStream"

    const-string v1, "Bg tweet inserter finished!"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method
