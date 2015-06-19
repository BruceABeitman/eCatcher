.class Lcom/c/dj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field private final a:Ljava/lang/Iterable;

.field private final b:Lcom/c/y;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lcom/c/y;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/c/dj;->a:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/c/dj;->b:Lcom/c/y;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 4

    new-instance v0, Lcom/c/e;

    iget-object v1, p0, Lcom/c/dj;->a:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/c/dj;->b:Lcom/c/y;

    invoke-direct {v0, p0, v1, v2}, Lcom/c/e;-><init>(Lcom/c/dj;Ljava/util/Iterator;Lcom/c/y;)V

    return-object v0
.end method
