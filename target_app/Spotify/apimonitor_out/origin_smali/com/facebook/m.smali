.class final Lcom/facebook/m;
.super Ljava/io/OutputStream;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/y;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/Request;",
            "Lcom/facebook/z;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/os/Handler;

.field private c:Lcom/facebook/Request;

.field private d:Lcom/facebook/z;

.field private e:I


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/m;->a:Ljava/util/Map;

    iput-object p1, p0, Lcom/facebook/m;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method final a()I
    .registers 2

    iget v0, p0, Lcom/facebook/m;->e:I

    return v0
.end method

.method final a(J)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/m;->d:Lcom/facebook/z;

    if-nez v0, :cond_18

    new-instance v0, Lcom/facebook/z;

    iget-object v1, p0, Lcom/facebook/m;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/m;->c:Lcom/facebook/Request;

    invoke-direct {v0, v1, v2}, Lcom/facebook/z;-><init>(Landroid/os/Handler;Lcom/facebook/Request;)V

    iput-object v0, p0, Lcom/facebook/m;->d:Lcom/facebook/z;

    iget-object v0, p0, Lcom/facebook/m;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/facebook/m;->c:Lcom/facebook/Request;

    iget-object v2, p0, Lcom/facebook/m;->d:Lcom/facebook/z;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    iget-object v0, p0, Lcom/facebook/m;->d:Lcom/facebook/z;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/z;->b(J)V

    iget v0, p0, Lcom/facebook/m;->e:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/facebook/m;->e:I

    return-void
.end method

.method public final a(Lcom/facebook/Request;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/m;->c:Lcom/facebook/Request;

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/facebook/m;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/z;

    :goto_c
    iput-object v0, p0, Lcom/facebook/m;->d:Lcom/facebook/z;

    return-void

    :cond_f
    const/4 v0, 0x0

    goto :goto_c
.end method

.method final b()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/Request;",
            "Lcom/facebook/z;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/m;->a:Ljava/util/Map;

    return-object v0
.end method

.method public final write(I)V
    .registers 4

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/m;->a(J)V

    return-void
.end method

.method public final write([B)V
    .registers 4

    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/m;->a(J)V

    return-void
.end method

.method public final write([BII)V
    .registers 6

    int-to-long v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/facebook/m;->a(J)V

    return-void
.end method
