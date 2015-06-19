.class public Lch/boye/httpclientandroidlib/impl/client/cache/FileResource;
.super Ljava/lang/Object;
.source "FileResource.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/cache/Resource;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3958ae6717f23345L


# instance fields
.field private volatile disposed:Z

.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/FileResource;->file:Ljava/io/File;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/FileResource;->disposed:Z

    return-void
.end method

.method private ensureValid()V
    .registers 3

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/FileResource;->disposed:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Resource has been deallocated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/FileResource;->disposed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/FileResource;->disposed:Z

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/FileResource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    goto :goto_5

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getFile()Ljava/io/File;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/FileResource;->ensureValid()V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/FileResource;->file:Ljava/io/File;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInputStream()Ljava/io/InputStream;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/FileResource;->ensureValid()V

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/FileResource;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized length()J
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/FileResource;->ensureValid()V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/FileResource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
