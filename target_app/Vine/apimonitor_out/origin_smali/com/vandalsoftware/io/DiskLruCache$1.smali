.class Lcom/vandalsoftware/io/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vandalsoftware/io/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vandalsoftware/io/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/vandalsoftware/io/DiskLruCache;)V
    .registers 2

    iput-object p1, p0, Lcom/vandalsoftware/io/DiskLruCache$1;->this$0:Lcom/vandalsoftware/io/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/vandalsoftware/io/DiskLruCache$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/vandalsoftware/io/DiskLruCache$1;->this$0:Lcom/vandalsoftware/io/DiskLruCache;

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache$1;->this$0:Lcom/vandalsoftware/io/DiskLruCache;

    #getter for: Lcom/vandalsoftware/io/DiskLruCache;->journalStream:Ljava/io/DataOutputStream;
    invoke-static {v0}, Lcom/vandalsoftware/io/DiskLruCache;->access$000(Lcom/vandalsoftware/io/DiskLruCache;)Ljava/io/DataOutputStream;

    move-result-object v0

    if-nez v0, :cond_e

    monitor-exit v1

    :goto_d
    return-object v2

    :cond_e
    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache$1;->this$0:Lcom/vandalsoftware/io/DiskLruCache;

    #calls: Lcom/vandalsoftware/io/DiskLruCache;->trimToSize()V
    invoke-static {v0}, Lcom/vandalsoftware/io/DiskLruCache;->access$100(Lcom/vandalsoftware/io/DiskLruCache;)V

    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache$1;->this$0:Lcom/vandalsoftware/io/DiskLruCache;

    #calls: Lcom/vandalsoftware/io/DiskLruCache;->journalRebuildRequired()Z
    invoke-static {v0}, Lcom/vandalsoftware/io/DiskLruCache;->access$200(Lcom/vandalsoftware/io/DiskLruCache;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache$1;->this$0:Lcom/vandalsoftware/io/DiskLruCache;

    #calls: Lcom/vandalsoftware/io/DiskLruCache;->rebuildJournal()V
    invoke-static {v0}, Lcom/vandalsoftware/io/DiskLruCache;->access$300(Lcom/vandalsoftware/io/DiskLruCache;)V

    :cond_20
    monitor-exit v1

    goto :goto_d

    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v0
.end method
