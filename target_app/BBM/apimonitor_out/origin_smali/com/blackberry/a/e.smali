.class final Lcom/blackberry/a/e;
.super Ljava/lang/Object;
.source "IcebergClient.java"

# interfaces
.implements Lcom/blackberry/ids/IFailureCallback;


# instance fields
.field final synthetic a:Lcom/blackberry/a/c;


# direct methods
.method constructor <init>(Lcom/blackberry/a/c;)V
    .registers 2

    iput-object p1, p0, Lcom/blackberry/a/e;->a:Lcom/blackberry/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(IILjava/lang/String;)V
    .registers 9

    const/4 v4, 0x1

    const-string v0, "BBID Token request failed result=%d info=%s\n"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object p3, v1, v4

    invoke-static {v0, v1}, Lcom/blackberry/a/i;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/blackberry/a/e;->a:Lcom/blackberry/a/c;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/blackberry/a/c;->e:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/blackberry/a/e;->a:Lcom/blackberry/a/c;

    iput p2, v0, Lcom/blackberry/a/c;->f:I

    iget-object v0, p0, Lcom/blackberry/a/e;->a:Lcom/blackberry/a/c;

    iput-object p3, v0, Lcom/blackberry/a/c;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/blackberry/a/e;->a:Lcom/blackberry/a/c;

    iget-object v0, v0, Lcom/blackberry/a/c;->q:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
