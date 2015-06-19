.class public final Lcom/vandalsoftware/io/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vandalsoftware/io/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vandalsoftware/io/DiskLruCache$Editor$ErrorCatchingOutputStream;
    }
.end annotation


# instance fields
.field private final entry:Lcom/vandalsoftware/io/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/vandalsoftware/io/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/vandalsoftware/io/DiskLruCache;Lcom/vandalsoftware/io/DiskLruCache$Entry;)V
    .registers 3

    iput-object p1, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor;->this$0:Lcom/vandalsoftware/io/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor;->entry:Lcom/vandalsoftware/io/DiskLruCache$Entry;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vandalsoftware/io/DiskLruCache;Lcom/vandalsoftware/io/DiskLruCache$Entry;Lcom/vandalsoftware/io/DiskLruCache$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/vandalsoftware/io/DiskLruCache$Editor;-><init>(Lcom/vandalsoftware/io/DiskLruCache;Lcom/vandalsoftware/io/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/vandalsoftware/io/DiskLruCache$Editor;)Lcom/vandalsoftware/io/DiskLruCache$Entry;
    .registers 2

    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor;->entry:Lcom/vandalsoftware/io/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/vandalsoftware/io/DiskLruCache$Editor;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor;->hasErrors:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor;->this$0:Lcom/vandalsoftware/io/DiskLruCache;

    const/4 v1, 0x0

    #calls: Lcom/vandalsoftware/io/DiskLruCache;->completeEdit(Lcom/vandalsoftware/io/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/vandalsoftware/io/DiskLruCache;->access$1300(Lcom/vandalsoftware/io/DiskLruCache;Lcom/vandalsoftware/io/DiskLruCache$Editor;Z)V

    return-void
.end method

.method public commit()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor;->this$0:Lcom/vandalsoftware/io/DiskLruCache;

    const/4 v1, 0x0

    #calls: Lcom/vandalsoftware/io/DiskLruCache;->completeEdit(Lcom/vandalsoftware/io/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/vandalsoftware/io/DiskLruCache;->access$1300(Lcom/vandalsoftware/io/DiskLruCache;Lcom/vandalsoftware/io/DiskLruCache$Editor;Z)V

    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor;->this$0:Lcom/vandalsoftware/io/DiskLruCache;

    iget-object v1, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor;->entry:Lcom/vandalsoftware/io/DiskLruCache$Entry;

    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v1}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$900(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vandalsoftware/io/DiskLruCache;->remove(Ljava/lang/String;)Z

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor;->this$0:Lcom/vandalsoftware/io/DiskLruCache;

    const/4 v1, 0x1

    #calls: Lcom/vandalsoftware/io/DiskLruCache;->completeEdit(Lcom/vandalsoftware/io/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/vandalsoftware/io/DiskLruCache;->access$1300(Lcom/vandalsoftware/io/DiskLruCache;Lcom/vandalsoftware/io/DiskLruCache$Editor;Z)V

    goto :goto_15
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor;->this$0:Lcom/vandalsoftware/io/DiskLruCache;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor;->entry:Lcom/vandalsoftware/io/DiskLruCache$Entry;

    #getter for: Lcom/vandalsoftware/io/DiskLruCache$Entry;->currentEditor:Lcom/vandalsoftware/io/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->access$600(Lcom/vandalsoftware/io/DiskLruCache$Entry;)Lcom/vandalsoftware/io/DiskLruCache$Editor;

    move-result-object v0

    if-eq v0, p0, :cond_14

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0

    :cond_14
    :try_start_14
    new-instance v0, Lcom/vandalsoftware/io/DiskLruCache$Editor$ErrorCatchingOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/vandalsoftware/io/DiskLruCache$Editor;->entry:Lcom/vandalsoftware/io/DiskLruCache$Entry;

    invoke-virtual {v3, p1}, Lcom/vandalsoftware/io/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/vandalsoftware/io/DiskLruCache$Editor$ErrorCatchingOutputStream;-><init>(Lcom/vandalsoftware/io/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/vandalsoftware/io/DiskLruCache$1;)V

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_11

    return-object v0
.end method
