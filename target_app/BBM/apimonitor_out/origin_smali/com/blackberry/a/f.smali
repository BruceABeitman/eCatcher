.class final Lcom/blackberry/a/f;
.super Ljava/lang/Object;
.source "IcebergClient.java"

# interfaces
.implements Lcom/blackberry/ids/IChallengeCallback;


# instance fields
.field final synthetic a:Lcom/blackberry/a/c;


# direct methods
.method constructor <init>(Lcom/blackberry/a/c;)V
    .registers 2

    iput-object p1, p0, Lcom/blackberry/a/f;->a:Lcom/blackberry/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(II)V
    .registers 7

    const-string v0, "BBID Challenge level %d, releasing BBID Lock"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/blackberry/a/i;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/blackberry/a/f;->a:Lcom/blackberry/a/c;

    iget-object v0, v0, Lcom/blackberry/a/c;->q:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
