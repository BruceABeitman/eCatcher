.class public final Lcom/squareup/okhttp/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field private static final p:Ljava/io/OutputStream;


# instance fields
.field final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:Ljava/io/File;

.field private final f:Ljava/io/File;

.field private final g:I

.field private h:J

.field private final i:I

.field private j:J

.field private k:Lcom/squareup/okhttp/internal/a/b;

.field private final l:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/squareup/okhttp/internal/g;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:J

.field private final o:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "[a-z0-9_-]{1,64}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/d;->a:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/squareup/okhttp/internal/d$2;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/d$2;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/d;->p:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;J)V
    .registers 12

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lcom/squareup/okhttp/internal/d;->j:J

    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f40

    invoke-direct {v0, v1, v3, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/d;->l:Ljava/util/LinkedHashMap;

    iput-wide v4, p0, Lcom/squareup/okhttp/internal/d;->n:J

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v7, "OkHttp DiskLruCache"

    invoke-static {v7}, Lcom/squareup/okhttp/internal/o;->c(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/d;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/squareup/okhttp/internal/d$1;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/d$1;-><init>(Lcom/squareup/okhttp/internal/d;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/d;->o:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/squareup/okhttp/internal/d;->c:Ljava/io/File;

    const v0, 0x31191

    iput v0, p0, Lcom/squareup/okhttp/internal/d;->g:I

    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/d;->d:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/d;->e:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/d;->f:Ljava/io/File;

    const/4 v0, 0x2

    iput v0, p0, Lcom/squareup/okhttp/internal/d;->i:I

    iput-wide p2, p0, Lcom/squareup/okhttp/internal/d;->h:J

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/d;)Lcom/squareup/okhttp/internal/a/b;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d;->k:Lcom/squareup/okhttp/internal/a/b;

    return-object v0
.end method

.method public static a(Ljava/io/File;J)Lcom/squareup/okhttp/internal/d;
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2b

    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2b
    :goto_2b
    new-instance v0, Lcom/squareup/okhttp/internal/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/squareup/okhttp/internal/d;-><init>(Ljava/io/File;J)V

    iget-object v1, v0, Lcom/squareup/okhttp/internal/d;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_88

    :try_start_38
    invoke-direct {v0}, Lcom/squareup/okhttp/internal/d;->b()V

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/d;->c()V

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, v0, Lcom/squareup/okhttp/internal/d;->d:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v1}, Lcom/squareup/okhttp/internal/a/j;->a(Ljava/io/OutputStream;)Lcom/squareup/okhttp/internal/a/o;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/internal/a/o;)Lcom/squareup/okhttp/internal/a/b;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/internal/d;->k:Lcom/squareup/okhttp/internal/a/b;
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_50} :catch_56

    :goto_50
    return-object v0

    :cond_51
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/squareup/okhttp/internal/d;->a(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_2b

    :catch_56
    move-exception v1

    invoke-static {}, Lcom/squareup/okhttp/internal/k;->a()Lcom/squareup/okhttp/internal/k;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DiskLruCache "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", removing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/k;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/d;->close()V

    iget-object v0, v0, Lcom/squareup/okhttp/internal/d;->c:Ljava/io/File;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/o;->a(Ljava/io/File;)V

    :cond_88
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Lcom/squareup/okhttp/internal/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/squareup/okhttp/internal/d;-><init>(Ljava/io/File;J)V

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/d;->d()V

    goto :goto_50
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/d;Ljava/lang/String;J)Lcom/squareup/okhttp/internal/e;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/d;->a(Ljava/lang/String;J)Lcom/squareup/okhttp/internal/e;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/squareup/okhttp/internal/e;
    .registers 8

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/d;->f()V

    invoke-static {p1}, Lcom/squareup/okhttp/internal/d;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/g;

    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_23

    if-eqz v0, :cond_20

    invoke-static {v0}, Lcom/squareup/okhttp/internal/g;->f(Lcom/squareup/okhttp/internal/g;)J
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_5a

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_23

    :cond_20
    move-object v0, v1

    :goto_21
    monitor-exit p0

    return-object v0

    :cond_23
    if-nez v0, :cond_5d

    :try_start_25
    new-instance v0, Lcom/squareup/okhttp/internal/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/squareup/okhttp/internal/g;-><init>(Lcom/squareup/okhttp/internal/d;Ljava/lang/String;B)V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/d;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_31
    new-instance v0, Lcom/squareup/okhttp/internal/e;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/okhttp/internal/e;-><init>(Lcom/squareup/okhttp/internal/d;Lcom/squareup/okhttp/internal/g;B)V

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/g;->a(Lcom/squareup/okhttp/internal/g;Lcom/squareup/okhttp/internal/e;)Lcom/squareup/okhttp/internal/e;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/d;->k:Lcom/squareup/okhttp/internal/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DIRTY "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/squareup/okhttp/internal/a/b;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/d;->k:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v1}, Lcom/squareup/okhttp/internal/a/b;->a()V
    :try_end_59
    .catchall {:try_start_25 .. :try_end_59} :catchall_5a

    goto :goto_21

    :catchall_5a
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5d
    :try_start_5d
    invoke-static {v0}, Lcom/squareup/okhttp/internal/g;->b(Lcom/squareup/okhttp/internal/g;)Lcom/squareup/okhttp/internal/e;
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_5a

    move-result-object v2

    if-eqz v2, :cond_65

    move-object v0, v1

    goto :goto_21

    :cond_65
    move-object v1, v0

    goto :goto_31
.end method

.method static synthetic a()Ljava/io/OutputStream;
    .registers 1

    sget-object v0, Lcom/squareup/okhttp/internal/d;->p:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/d;Lcom/squareup/okhttp/internal/e;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/d;->a(Lcom/squareup/okhttp/internal/e;Z)V

    return-void
.end method

.method private declared-synchronized a(Lcom/squareup/okhttp/internal/e;Z)V
    .registers 13

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Lcom/squareup/okhttp/internal/e;->a(Lcom/squareup/okhttp/internal/e;)Lcom/squareup/okhttp/internal/g;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/g;->b(Lcom/squareup/okhttp/internal/g;)Lcom/squareup/okhttp/internal/e;

    move-result-object v1

    if-eq v1, p1, :cond_15

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_15
    if-eqz p2, :cond_54

    :try_start_17
    invoke-static {v2}, Lcom/squareup/okhttp/internal/g;->e(Lcom/squareup/okhttp/internal/g;)Z

    move-result v1

    if-nez v1, :cond_54

    move v1, v0

    :goto_1e
    iget v3, p0, Lcom/squareup/okhttp/internal/d;->i:I

    if-ge v1, v3, :cond_54

    invoke-static {p1}, Lcom/squareup/okhttp/internal/e;->b(Lcom/squareup/okhttp/internal/e;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-nez v3, :cond_42

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/e;->b()V

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Newly created entry didn\'t create value for index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/internal/g;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_51

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/e;->b()V
    :try_end_4f
    .catchall {:try_start_17 .. :try_end_4f} :catchall_12

    :cond_4f
    :goto_4f
    monitor-exit p0

    return-void

    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_54
    :goto_54
    :try_start_54
    iget v1, p0, Lcom/squareup/okhttp/internal/d;->i:I

    if-ge v0, v1, :cond_89

    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/internal/g;->b(I)Ljava/io/File;

    move-result-object v1

    if-eqz p2, :cond_85

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_82

    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/internal/g;->a(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {v2}, Lcom/squareup/okhttp/internal/g;->c(Lcom/squareup/okhttp/internal/g;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v2}, Lcom/squareup/okhttp/internal/g;->c(Lcom/squareup/okhttp/internal/g;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    iget-wide v8, p0, Lcom/squareup/okhttp/internal/d;->j:J

    sub-long v3, v8, v4

    add-long/2addr v3, v6

    iput-wide v3, p0, Lcom/squareup/okhttp/internal/d;->j:J

    :cond_82
    :goto_82
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    :cond_85
    invoke-static {v1}, Lcom/squareup/okhttp/internal/d;->a(Ljava/io/File;)V

    goto :goto_82

    :cond_89
    iget v0, p0, Lcom/squareup/okhttp/internal/d;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/d;->m:I

    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/squareup/okhttp/internal/g;->a(Lcom/squareup/okhttp/internal/g;Lcom/squareup/okhttp/internal/e;)Lcom/squareup/okhttp/internal/e;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/g;->e(Lcom/squareup/okhttp/internal/g;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_eb

    invoke-static {v2}, Lcom/squareup/okhttp/internal/g;->a(Lcom/squareup/okhttp/internal/g;)Z

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d;->k:Lcom/squareup/okhttp/internal/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CLEAN "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/squareup/okhttp/internal/g;->d(Lcom/squareup/okhttp/internal/g;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/a/b;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/b;

    if-eqz p2, :cond_cf

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/d;->n:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/squareup/okhttp/internal/d;->n:J

    invoke-static {v2, v0, v1}, Lcom/squareup/okhttp/internal/g;->a(Lcom/squareup/okhttp/internal/g;J)J

    :cond_cf
    :goto_cf
    iget-object v0, p0, Lcom/squareup/okhttp/internal/d;->k:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->a()V

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/d;->j:J

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/d;->h:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_e2

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/d;->e()Z

    move-result v0

    if-eqz v0, :cond_4f

    :cond_e2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/d;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/d;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_4f

    :cond_eb
    iget-object v0, p0, Lcom/squareup/okhttp/internal/d;->l:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/g;->d(Lcom/squareup/okhttp/internal/g;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d;->k:Lcom/squareup/okhttp/internal/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "REMOVE "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/squareup/okhttp/internal/g;->d(Lcom/squareup/okhttp/internal/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/a/b;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/b;
    :try_end_112
    .catchall {:try_start_54 .. :try_end_112} :catchall_12

    goto :goto_cf
.end method

.method private static a(Ljava/io/File;)V
    .registers 4

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to delete "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Z)V
    .registers 4

    if-eqz p2, :cond_5

    invoke-static {p1}, Lcom/squareup/okhttp/internal/d;->a(Ljava/io/File;)V

    :cond_5
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_11
    return-void
.end method

.method private b()V
    .registers 11

    const/4 v9, 0x5

    const/4 v0, 0x0

    const/4 v8, -0x1

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/d;->d:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Lcom/squareup/okhttp/internal/a/j;->a(Ljava/io/InputStream;)Lcom/squareup/okhttp/internal/a/p;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/internal/a/p;)Lcom/squareup/okhttp/internal/a/c;

    move-result-object v3

    :try_start_12
    invoke-interface {v3}, Lcom/squareup/okhttp/internal/a/c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3}, Lcom/squareup/okhttp/internal/a/c;->l()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3}, Lcom/squareup/okhttp/internal/a/c;->l()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lcom/squareup/okhttp/internal/a/c;->l()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lcom/squareup/okhttp/internal/a/c;->l()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    const-string v7, "1"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    iget v7, p0, Lcom/squareup/okhttp/internal/d;->g:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    iget v4, p0, Lcom/squareup/okhttp/internal/d;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    const-string v4, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_94

    :cond_56
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "unexpected journal header: ["

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8f
    .catchall {:try_start_12 .. :try_end_8f} :catchall_8f

    :catchall_8f
    move-exception v0

    invoke-static {v3}, Lcom/squareup/okhttp/internal/o;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_94
    move v2, v0

    :goto_95
    :try_start_95
    invoke-interface {v3}, Lcom/squareup/okhttp/internal/a/c;->l()Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x20

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v8, :cond_c5

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "unexpected journal line: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b6
    .catchall {:try_start_95 .. :try_end_b6} :catchall_8f
    .catch Ljava/io/EOFException; {:try_start_95 .. :try_end_b6} :catch_b6

    :catch_b6
    move-exception v0

    :try_start_b7
    iget-object v0, p0, Lcom/squareup/okhttp/internal/d;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    sub-int v0, v2, v0

    iput v0, p0, Lcom/squareup/okhttp/internal/d;->m:I
    :try_end_c1
    .catchall {:try_start_b7 .. :try_end_c1} :catchall_8f

    invoke-static {v3}, Lcom/squareup/okhttp/internal/o;->a(Ljava/io/Closeable;)V

    return-void

    :cond_c5
    add-int/lit8 v0, v5, 0x1

    const/16 v1, 0x20

    :try_start_c9
    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-ne v6, v8, :cond_e7

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-ne v5, v1, :cond_15c

    const-string v1, "REMOVE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15c

    iget-object v1, p0, Lcom/squareup/okhttp/internal/d;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e3
    :goto_e3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_95

    :cond_e7
    invoke-virtual {v4, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_ec
    iget-object v0, p0, Lcom/squareup/okhttp/internal/d;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/g;

    if-nez v0, :cond_101

    new-instance v0, Lcom/squareup/okhttp/internal/g;

    const/4 v7, 0x0

    invoke-direct {v0, p0, v1, v7}, Lcom/squareup/okhttp/internal/g;-><init>(Lcom/squareup/okhttp/internal/d;Ljava/lang/String;B)V

    iget-object v7, p0, Lcom/squareup/okhttp/internal/d;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_101
    if-eq v6, v8, :cond_124

    if-ne v5, v9, :cond_124

    const-string v1, "CLEAN"

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_124

    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/squareup/okhttp/internal/g;->a(Lcom/squareup/okhttp/internal/g;)Z

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/squareup/okhttp/internal/g;->a(Lcom/squareup/okhttp/internal/g;Lcom/squareup/okhttp/internal/e;)Lcom/squareup/okhttp/internal/e;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/g;->a(Lcom/squareup/okhttp/internal/g;[Ljava/lang/String;)V

    goto :goto_e3

    :cond_124
    if-ne v6, v8, :cond_13a

    if-ne v5, v9, :cond_13a

    const-string v1, "DIRTY"

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13a

    new-instance v1, Lcom/squareup/okhttp/internal/e;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v0, v4}, Lcom/squareup/okhttp/internal/e;-><init>(Lcom/squareup/okhttp/internal/d;Lcom/squareup/okhttp/internal/g;B)V

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/g;->a(Lcom/squareup/okhttp/internal/g;Lcom/squareup/okhttp/internal/e;)Lcom/squareup/okhttp/internal/e;

    goto :goto_e3

    :cond_13a
    if-ne v6, v8, :cond_147

    const/4 v0, 0x4

    if-ne v5, v0, :cond_147

    const-string v0, "READ"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e3

    :cond_147
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "unexpected journal line: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15c
    .catchall {:try_start_c9 .. :try_end_15c} :catchall_8f
    .catch Ljava/io/EOFException; {:try_start_c9 .. :try_end_15c} :catch_b6

    :cond_15c
    move-object v1, v0

    goto :goto_ec
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/d;->g()V

    return-void
.end method

.method private c()V
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d;->e:Ljava/io/File;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/d;->a(Ljava/io/File;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/g;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/g;->b(Lcom/squareup/okhttp/internal/g;)Lcom/squareup/okhttp/internal/e;

    move-result-object v1

    if-nez v1, :cond_35

    move v1, v2

    :goto_23
    iget v4, p0, Lcom/squareup/okhttp/internal/d;->i:I

    if-ge v1, v4, :cond_10

    iget-wide v4, p0, Lcom/squareup/okhttp/internal/d;->j:J

    invoke-static {v0}, Lcom/squareup/okhttp/internal/g;->c(Lcom/squareup/okhttp/internal/g;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/squareup/okhttp/internal/d;->j:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_35
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/g;->a(Lcom/squareup/okhttp/internal/g;Lcom/squareup/okhttp/internal/e;)Lcom/squareup/okhttp/internal/e;

    move v1, v2

    :goto_3a
    iget v4, p0, Lcom/squareup/okhttp/internal/d;->i:I

    if-ge v1, v4, :cond_4f

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/g;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/okhttp/internal/d;->a(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/g;->b(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/okhttp/internal/d;->a(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :cond_4f
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    :cond_53
    return-void
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/d;)Z
    .registers 2

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/d;->e()Z

    move-result v0

    return v0
.end method

.method private declared-synchronized d()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/d;->k:Lcom/squareup/okhttp/internal/a/b;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d;->k:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->close()V

    :cond_a
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/d;->e:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/squareup/okhttp/internal/a/j;->a(Ljava/io/OutputStream;)Lcom/squareup/okhttp/internal/a/o;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/internal/a/o;)Lcom/squareup/okhttp/internal/a/b;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_8c

    move-result-object v1

    :try_start_19
    const-string v0, "libcore.io.DiskLruCache"

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/a/b;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/b;

    const-string v0, "\n"

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/a/b;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/b;

    const-string v0, "1"

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/a/b;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/b;

    const-string v0, "\n"

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/a/b;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/b;

    iget v0, p0, Lcom/squareup/okhttp/internal/d;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/a/b;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/b;

    const-string v0, "\n"

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/a/b;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/b;

    iget v0, p0, Lcom/squareup/okhttp/internal/d;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/a/b;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/b;

    const-string v0, "\n"

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/a/b;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/b;

    const-string v0, "\n"

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/a/b;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/b;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/g;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/g;->b(Lcom/squareup/okhttp/internal/g;)Lcom/squareup/okhttp/internal/e;

    move-result-object v3

    if-eqz v3, :cond_8f

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DIRTY "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/squareup/okhttp/internal/g;->d(Lcom/squareup/okhttp/internal/g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/a/b;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/b;
    :try_end_86
    .catchall {:try_start_19 .. :try_end_86} :catchall_87

    goto :goto_58

    :catchall_87
    move-exception v0

    :try_start_88
    invoke-interface {v1}, Lcom/squareup/okhttp/internal/a/b;->close()V

    throw v0
    :try_end_8c
    .catchall {:try_start_88 .. :try_end_8c} :catchall_8c

    :catchall_8c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_8f
    :try_start_8f
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CLEAN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/squareup/okhttp/internal/g;->d(Lcom/squareup/okhttp/internal/g;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/a/b;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/b;
    :try_end_b3
    .catchall {:try_start_8f .. :try_end_b3} :catchall_87

    goto :goto_58

    :cond_b4
    :try_start_b4
    invoke-interface {v1}, Lcom/squareup/okhttp/internal/a/b;->close()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c7

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/d;->f:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/squareup/okhttp/internal/d;->a(Ljava/io/File;Ljava/io/File;Z)V

    :cond_c7
    iget-object v0, p0, Lcom/squareup/okhttp/internal/d;->e:Ljava/io/File;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/d;->d:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/squareup/okhttp/internal/d;->a(Ljava/io/File;Ljava/io/File;Z)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/d;->d:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lcom/squareup/okhttp/internal/a/j;->a(Ljava/io/OutputStream;)Lcom/squareup/okhttp/internal/a/o;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/internal/a/o;)Lcom/squareup/okhttp/internal/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/d;->k:Lcom/squareup/okhttp/internal/a/b;
    :try_end_e6
    .catchall {:try_start_b4 .. :try_end_e6} :catchall_8c

    monitor-exit p0

    return-void
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/d;->d()V

    return-void
.end method

.method private static d(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/squareup/okhttp/internal/d;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_27

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keys must match regex [a-z0-9_-]{1,64}: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    return-void
.end method

.method static synthetic e(Lcom/squareup/okhttp/internal/d;)I
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/okhttp/internal/d;->m:I

    return v0
.end method

.method private e()Z
    .registers 3

    iget v0, p0, Lcom/squareup/okhttp/internal/d;->m:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_12

    iget v0, p0, Lcom/squareup/okhttp/internal/d;->m:I

    iget-object v1, p0, Lcom/squareup/okhttp/internal/d;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static synthetic f(Lcom/squareup/okhttp/internal/d;)I
    .registers 2

    iget v0, p0, Lcom/squareup/okhttp/internal/d;->i:I

    return v0
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d;->k:Lcom/squareup/okhttp/internal/a/b;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method static synthetic g(Lcom/squareup/okhttp/internal/d;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d;->c:Ljava/io/File;

    return-object v0
.end method

.method private g()V
    .registers 5

    :goto_0
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/d;->j:J

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/d;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_22

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/d;->c(Ljava/lang/String;)Z

    goto :goto_0

    :cond_22
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/h;
    .registers 11

    const/4 v3, 0x0

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_3
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/d;->f()V

    invoke-static {p1}, Lcom/squareup/okhttp/internal/d;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/d;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/squareup/okhttp/internal/g;

    move-object v2, v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_89

    if-nez v2, :cond_18

    move-object v1, v3

    :goto_16
    monitor-exit p0

    return-object v1

    :cond_18
    :try_start_18
    invoke-static {v2}, Lcom/squareup/okhttp/internal/g;->e(Lcom/squareup/okhttp/internal/g;)Z

    move-result v1

    if-nez v1, :cond_20

    move-object v1, v3

    goto :goto_16

    :cond_20
    iget v1, p0, Lcom/squareup/okhttp/internal/d;->i:I

    new-array v6, v1, [Ljava/io/InputStream;
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_89

    move v1, v4

    :goto_25
    :try_start_25
    iget v5, p0, Lcom/squareup/okhttp/internal/d;->i:I

    if-ge v1, v5, :cond_4b

    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/internal/g;->a(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v5, v6, v1
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_89
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_34} :catch_37

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :catch_37
    move-exception v1

    move v1, v4

    :goto_39
    :try_start_39
    iget v2, p0, Lcom/squareup/okhttp/internal/d;->i:I

    if-ge v1, v2, :cond_49

    aget-object v2, v6, v1

    if-eqz v2, :cond_49

    aget-object v2, v6, v1

    invoke-static {v2}, Lcom/squareup/okhttp/internal/o;->a(Ljava/io/Closeable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_49
    move-object v1, v3

    goto :goto_16

    :cond_4b
    iget v1, p0, Lcom/squareup/okhttp/internal/d;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/squareup/okhttp/internal/d;->m:I

    iget-object v1, p0, Lcom/squareup/okhttp/internal/d;->k:Lcom/squareup/okhttp/internal/a/b;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "READ "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/squareup/okhttp/internal/a/b;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/b;

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/d;->e()Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/squareup/okhttp/internal/d;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/d;->o:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_78
    new-instance v1, Lcom/squareup/okhttp/internal/h;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/g;->f(Lcom/squareup/okhttp/internal/g;)J

    move-result-wide v4

    invoke-static {v2}, Lcom/squareup/okhttp/internal/g;->c(Lcom/squareup/okhttp/internal/g;)[J

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/squareup/okhttp/internal/h;-><init>(Lcom/squareup/okhttp/internal/d;Ljava/lang/String;J[Ljava/io/InputStream;[JB)V
    :try_end_88
    .catchall {:try_start_39 .. :try_end_88} :catchall_89

    goto :goto_16

    :catchall_89
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final b(Ljava/lang/String;)Lcom/squareup/okhttp/internal/e;
    .registers 4

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/squareup/okhttp/internal/d;->a(Ljava/lang/String;J)Lcom/squareup/okhttp/internal/e;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized c(Ljava/lang/String;)Z
    .registers 8

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/d;->f()V

    invoke-static {p1}, Lcom/squareup/okhttp/internal/d;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/g;

    if-eqz v0, :cond_18

    invoke-static {v0}, Lcom/squareup/okhttp/internal/g;->b(Lcom/squareup/okhttp/internal/g;)Lcom/squareup/okhttp/internal/e;
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_70

    move-result-object v2

    if-eqz v2, :cond_1b

    :cond_18
    move v0, v1

    :goto_19
    monitor-exit p0

    return v0

    :cond_1b
    :goto_1b
    :try_start_1b
    iget v2, p0, Lcom/squareup/okhttp/internal/d;->i:I

    if-ge v1, v2, :cond_3c

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/g;->a(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/d;->a(Ljava/io/File;)V

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/d;->j:J

    invoke-static {v0}, Lcom/squareup/okhttp/internal/g;->c(Lcom/squareup/okhttp/internal/g;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/squareup/okhttp/internal/d;->j:J

    invoke-static {v0}, Lcom/squareup/okhttp/internal/g;->c(Lcom/squareup/okhttp/internal/g;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_3c
    iget v0, p0, Lcom/squareup/okhttp/internal/d;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/d;->m:I

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d;->k:Lcom/squareup/okhttp/internal/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "REMOVE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/a/b;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/b;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/d;->e()Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/d;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_6e
    .catchall {:try_start_1b .. :try_end_6e} :catchall_70

    :cond_6e
    const/4 v0, 0x1

    goto :goto_19

    :catchall_70
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized close()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/d;->k:Lcom/squareup/okhttp/internal/a/b;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_37

    if-nez v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/squareup/okhttp/internal/d;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_14
    if-ge v1, v3, :cond_2b

    aget-object v0, v2, v1

    check-cast v0, Lcom/squareup/okhttp/internal/g;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/g;->b(Lcom/squareup/okhttp/internal/g;)Lcom/squareup/okhttp/internal/e;

    move-result-object v4

    if-eqz v4, :cond_27

    invoke-static {v0}, Lcom/squareup/okhttp/internal/g;->b(Lcom/squareup/okhttp/internal/g;)Lcom/squareup/okhttp/internal/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/e;->b()V

    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    :cond_2b
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/d;->g()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/d;->k:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/d;->k:Lcom/squareup/okhttp/internal/a/b;
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_37

    goto :goto_5

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method
