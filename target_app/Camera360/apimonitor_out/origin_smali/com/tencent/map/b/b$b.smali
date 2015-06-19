.class public final Lcom/tencent/map/b/b$b;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/map/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/map/b/b;


# direct methods
.method public constructor <init>(Lcom/tencent/map/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/map/b/b$b;->a:Lcom/tencent/map/b/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    const-wide v5, 0x4076800000000000L

    const/4 v1, 0x0

    :try_start_6
    iget-object v0, p0, Lcom/tencent/map/b/b$b;->a:Lcom/tencent/map/b/b;

    iget-object v0, v0, Lcom/tencent/map/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/map/b/r;->a([B)[B

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/map/b/b$b;->a:Lcom/tencent/map/b/b;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/tencent/map/b/b;->a(Lcom/tencent/map/b/b;Z)Z

    const-string/jumbo v2, "http://ls.map.soso.com/deflect?c=1"

    const-string/jumbo v3, "SOSO MAP LBS SDK"

    invoke-static {v2, v3, v0}, Lcom/tencent/map/b/b;->a(Ljava/lang/String;Ljava/lang/String;[B)Lcom/tencent/map/b/u;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/map/b/b$b;->a:Lcom/tencent/map/b/b;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tencent/map/b/b;->a(Lcom/tencent/map/b/b;Z)Z

    iget-object v2, v0, Lcom/tencent/map/b/u;->a:[B

    invoke-static {v2}, Lcom/tencent/map/b/r;->b([B)[B

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/map/b/b$b;->a:Lcom/tencent/map/b/b;

    iget-object v0, v0, Lcom/tencent/map/b/u;->b:Ljava/lang/String;

    invoke-static {v3, v2, v0}, Lcom/tencent/map/b/b;->a(Lcom/tencent/map/b/b;[BLjava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_35} :catch_36

    :cond_35
    :goto_35
    return-void

    :catch_36
    move-exception v0

    move v0, v1

    :goto_38
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x3

    if-gt v0, v2, :cond_6e

    const-wide/16 v2, 0x7d0

    :try_start_3f
    invoke-static {v2, v3}, Lcom/tencent/map/b/b$b;->sleep(J)V

    iget-object v2, p0, Lcom/tencent/map/b/b$b;->a:Lcom/tencent/map/b/b;

    iget-object v2, v2, Lcom/tencent/map/b/b;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/map/b/r;->a([B)[B

    move-result-object v2

    const-string/jumbo v3, "http://ls.map.soso.com/deflect?c=1"

    const-string/jumbo v4, "SOSO MAP LBS SDK"

    invoke-static {v3, v4, v2}, Lcom/tencent/map/b/b;->a(Ljava/lang/String;Ljava/lang/String;[B)Lcom/tencent/map/b/u;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/map/b/b$b;->a:Lcom/tencent/map/b/b;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/tencent/map/b/b;->a(Lcom/tencent/map/b/b;Z)Z

    iget-object v3, v2, Lcom/tencent/map/b/u;->a:[B

    invoke-static {v3}, Lcom/tencent/map/b/r;->b([B)[B

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/map/b/b$b;->a:Lcom/tencent/map/b/b;

    iget-object v2, v2, Lcom/tencent/map/b/u;->b:Ljava/lang/String;

    invoke-static {v4, v3, v2}, Lcom/tencent/map/b/b;->a(Lcom/tencent/map/b/b;[BLjava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_6b} :catch_6c

    goto :goto_35

    :catch_6c
    move-exception v2

    goto :goto_38

    :cond_6e
    iget-object v0, p0, Lcom/tencent/map/b/b$b;->a:Lcom/tencent/map/b/b;

    invoke-static {v0, v1}, Lcom/tencent/map/b/b;->a(Lcom/tencent/map/b/b;Z)Z

    iget-object v0, p0, Lcom/tencent/map/b/b$b;->a:Lcom/tencent/map/b/b;

    invoke-static {v0}, Lcom/tencent/map/b/b;->a(Lcom/tencent/map/b/b;)Lcom/tencent/map/b/b$a;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/tencent/map/b/b$b;->a:Lcom/tencent/map/b/b;

    invoke-static {v0}, Lcom/tencent/map/b/b;->a(Lcom/tencent/map/b/b;)Lcom/tencent/map/b/b$a;

    move-result-object v0

    invoke-interface {v0, v5, v6, v5, v6}, Lcom/tencent/map/b/b$a;->a(DD)V

    goto :goto_35
.end method
