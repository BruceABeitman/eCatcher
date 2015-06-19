.class public final Lcom/userzoom/x;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/userzoom/x;->a:I

    iput-object p1, p0, Lcom/userzoom/x;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/userzoom/x;->c:Ljava/lang/String;

    iput v0, p0, Lcom/userzoom/x;->a:I

    return-void
.end method


# virtual methods
.method final a()V
    .registers 5

    iget v0, p0, Lcom/userzoom/x;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/userzoom/x;->a:I

    const-wide/16 v0, 0x3e8

    :try_start_8
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_4b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_29

    invoke-static {}, Lcom/userzoom/y;->a()Lcom/userzoom/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/userzoom/y;->a(Lcom/userzoom/x;)V

    const-string v0, "PacketVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SR: Packet lost numRetries: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/userzoom/x;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_28
    return-void

    :catch_29
    move-exception v0

    :try_start_2a
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_4b

    invoke-static {}, Lcom/userzoom/y;->a()Lcom/userzoom/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/userzoom/y;->a(Lcom/userzoom/x;)V

    const-string v0, "PacketVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SR: Packet lost numRetries: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/userzoom/x;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    :catchall_4b
    move-exception v0

    invoke-static {}, Lcom/userzoom/y;->a()Lcom/userzoom/y;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/userzoom/y;->a(Lcom/userzoom/x;)V

    const-string v1, "PacketVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SR: Packet lost numRetries: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/userzoom/x;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method
