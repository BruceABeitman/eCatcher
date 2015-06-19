.class Lcom/vandalsoftware/io/DiskLruCache$Editor$ErrorCatchingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vandalsoftware/io/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorCatchingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vandalsoftware/io/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lcom/vandalsoftware/io/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .registers 3

    iput-object p1, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor$ErrorCatchingOutputStream;->this$1:Lcom/vandalsoftware/io/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vandalsoftware/io/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/vandalsoftware/io/DiskLruCache$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/vandalsoftware/io/DiskLruCache$Editor$ErrorCatchingOutputStream;-><init>(Lcom/vandalsoftware/io/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor$ErrorCatchingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    iget-object v1, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor$ErrorCatchingOutputStream;->this$1:Lcom/vandalsoftware/io/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Lcom/vandalsoftware/io/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->access$1402(Lcom/vandalsoftware/io/DiskLruCache$Editor;Z)Z

    throw v0
.end method

.method public flush()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor$ErrorCatchingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    iget-object v1, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor$ErrorCatchingOutputStream;->this$1:Lcom/vandalsoftware/io/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Lcom/vandalsoftware/io/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->access$1402(Lcom/vandalsoftware/io/DiskLruCache$Editor;Z)Z

    throw v0
.end method

.method public write(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor$ErrorCatchingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    iget-object v1, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor$ErrorCatchingOutputStream;->this$1:Lcom/vandalsoftware/io/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Lcom/vandalsoftware/io/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->access$1402(Lcom/vandalsoftware/io/DiskLruCache$Editor;Z)Z

    throw v0
.end method

.method public write([BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor$ErrorCatchingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    iget-object v1, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor$ErrorCatchingOutputStream;->this$1:Lcom/vandalsoftware/io/DiskLruCache$Editor;

    const/4 v2, 0x1

    #setter for: Lcom/vandalsoftware/io/DiskLruCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/vandalsoftware/io/DiskLruCache$Editor;->access$1402(Lcom/vandalsoftware/io/DiskLruCache$Editor;Z)Z

    throw v0
.end method
