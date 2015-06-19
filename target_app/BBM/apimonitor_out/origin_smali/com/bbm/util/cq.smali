.class final Lcom/bbm/util/cq;
.super Ljava/lang/Object;
.source "LogCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Process;


# direct methods
.method constructor <init>(Ljava/lang/Process;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/util/cq;->a:Ljava/lang/Process;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/bbm/util/cq;->a:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x2000

    new-array v1, v1, [B

    :cond_a
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_11

    move-result v2

    if-gez v2, :cond_a

    :goto_10
    return-void

    :catch_11
    move-exception v0

    goto :goto_10
.end method
