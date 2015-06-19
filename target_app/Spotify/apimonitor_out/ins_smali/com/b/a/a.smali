.class public final Lcom/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Closeable;
.field static final a:Ljava/util/regex/Pattern;
.field private static final p:Ljava/io/OutputStream;
.field final b:Ljava/util/concurrent/ThreadPoolExecutor;
.field private final c:Ljava/io/File;
.field private final d:Ljava/io/File;
.field private final e:Ljava/io/File;
.field private final f:Ljava/io/File;
.field private final g:I
.field private h:J
.field private final i:I
.field private j:J
.field private k:Ljava/io/Writer;
.field private final l:Ljava/util/LinkedHashMap;
.field private m:I
.field private n:J
.field private final o:Ljava/util/concurrent/Callable;
.method static constructor <clinit>()V
.registers 1
const-string v0, "[a-z0-9_-]{1,64}"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/b/a/a;->a:Ljava/util/regex/Pattern;
new-instance v0, Lcom/b/a/a$2;
invoke-direct {v0}, Lcom/b/a/a$2;-><init>()V
sput-object v0, Lcom/b/a/a;->p:Ljava/io/OutputStream;
return-void
.end method
.method private constructor <init>(Ljava/io/File;)V
.registers 9
const-wide/16 v4, 0x0
const/4 v1, 0x0
const/4 v2, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide v4, p0, Lcom/b/a/a;->j:J
new-instance v0, Ljava/util/LinkedHashMap;
const/high16 v3, 0x3f40
invoke-direct {v0, v1, v3, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V
iput-object v0, p0, Lcom/b/a/a;->l:Ljava/util/LinkedHashMap;
iput-wide v4, p0, Lcom/b/a/a;->n:J
new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;
const-wide/16 v3, 0x3c
sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;
invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V
invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
iput-object v0, p0, Lcom/b/a/a;->b:Ljava/util/concurrent/ThreadPoolExecutor;
new-instance v0, Lcom/b/a/a$1;
invoke-direct {v0, p0}, Lcom/b/a/a$1;-><init>(Lcom/b/a/a;)V
iput-object v0, p0, Lcom/b/a/a;->o:Ljava/util/concurrent/Callable;
iput-object p1, p0, Lcom/b/a/a;->c:Ljava/io/File;
iput v2, p0, Lcom/b/a/a;->g:I
new-instance v0, Ljava/io/File;
const-string v1, "journal"
invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
iput-object v0, p0, Lcom/b/a/a;->d:Ljava/io/File;
new-instance v0, Ljava/io/File;
const-string v1, "journal.tmp"
invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
iput-object v0, p0, Lcom/b/a/a;->e:Ljava/io/File;
new-instance v0, Ljava/io/File;
const-string v1, "journal.bkp"
invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
iput-object v0, p0, Lcom/b/a/a;->f:Ljava/io/File;
iput v2, p0, Lcom/b/a/a;->i:I
const-wide/32 v0, 0xa00000
iput-wide v0, p0, Lcom/b/a/a;->h:J
return-void
.end method
.method public static a(Ljava/io/File;)Lcom/b/a/a;
.registers 7
const-wide/32 v0, 0xa00000
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-gtz v0, :cond_11
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "maxSize <= 0"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_11
new-instance v0, Ljava/io/File;
const-string v1, "journal.bkp"
invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_2e
new-instance v1, Ljava/io/File;
const-string v2, "journal"
invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v2
if-eqz v2, :cond_58
invoke-virtual {v0}, Ljava/io/File;->delete()Z
:goto_2e
:cond_2e
new-instance v0, Lcom/b/a/a;
invoke-direct {v0, p0}, Lcom/b/a/a;-><init>(Ljava/io/File;)V
iget-object v1, v0, Lcom/b/a/a;->d:Ljava/io/File;
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_8e
:try_start_3b
invoke-direct {v0}, Lcom/b/a/a;->c()V
invoke-direct {v0}, Lcom/b/a/a;->d()V
new-instance v1, Ljava/io/BufferedWriter;
new-instance v2, Ljava/io/OutputStreamWriter;
new-instance v3, Ljava/io/FileOutputStream;
iget-object v4, v0, Lcom/b/a/a;->d:Ljava/io/File;
const/4 v5, 0x1
invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
sget-object v4, Lcom/b/a/g;->a:Ljava/nio/charset/Charset;
invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
iput-object v1, v0, Lcom/b/a/a;->k:Ljava/io/Writer;
:try_end_57
.catch Ljava/io/IOException; {:try_start_3b .. :try_end_57} :catch_5d
:goto_57
return-object v0
:cond_58
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Lcom/b/a/a;->a(Ljava/io/File;Ljava/io/File;Z)V
goto :goto_2e
:catch_5d
move-exception v1
sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "DiskLruCache "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " is corrupt: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, ", removing"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/b/a/a;->close()V
iget-object v0, v0, Lcom/b/a/a;->c:Ljava/io/File;
invoke-static {v0}, Lcom/b/a/g;->a(Ljava/io/File;)V
:cond_8e
invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z
new-instance v0, Lcom/b/a/a;
invoke-direct {v0, p0}, Lcom/b/a/a;-><init>(Ljava/io/File;)V
invoke-direct {v0}, Lcom/b/a/a;->e()V
goto :goto_57
.end method
.method static synthetic a(Lcom/b/a/a;)Ljava/io/Writer;
.registers 2
iget-object v0, p0, Lcom/b/a/a;->k:Ljava/io/Writer;
return-object v0
.end method
.method static synthetic a(Lcom/b/a/a;Lcom/b/a/b;Z)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/b/a/a;->a(Lcom/b/a/b;Z)V
return-void
.end method
.method private declared-synchronized a(Lcom/b/a/b;Z)V
.registers 13
const/4 v0, 0x0
monitor-enter p0
:try_start_2
invoke-static {p1}, Lcom/b/a/b;->a(Lcom/b/a/b;)Lcom/b/a/d;
move-result-object v2
invoke-static {v2}, Lcom/b/a/d;->b(Lcom/b/a/d;)Lcom/b/a/b;
move-result-object v1
if-eq v1, p1, :cond_15
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
:catchall_12
:try_end_12
.catchall {:try_start_2 .. :try_end_12} :catchall_12
move-exception v0
monitor-exit p0
throw v0
:cond_15
if-eqz p2, :cond_54
:try_start_17
invoke-static {v2}, Lcom/b/a/d;->e(Lcom/b/a/d;)Z
move-result v1
if-nez v1, :cond_54
move v1, v0
:goto_1e
iget v3, p0, Lcom/b/a/a;->i:I
if-ge v1, v3, :cond_54
invoke-static {p1}, Lcom/b/a/b;->b(Lcom/b/a/b;)[Z
move-result-object v3
aget-boolean v3, v3, v1
if-nez v3, :cond_42
invoke-virtual {p1}, Lcom/b/a/b;->c()V
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
invoke-virtual {v2, v1}, Lcom/b/a/d;->b(I)Ljava/io/File;
move-result-object v3
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v3
if-nez v3, :cond_51
invoke-virtual {p1}, Lcom/b/a/b;->c()V
:goto_4f
:cond_4f
:try_end_4f
.catchall {:try_start_17 .. :try_end_4f} :catchall_12
monitor-exit p0
return-void
:cond_51
add-int/lit8 v1, v1, 0x1
goto :goto_1e
:goto_54
:cond_54
:try_start_54
iget v1, p0, Lcom/b/a/a;->i:I
if-ge v0, v1, :cond_89
invoke-virtual {v2, v0}, Lcom/b/a/d;->b(I)Ljava/io/File;
move-result-object v1
if-eqz p2, :cond_85
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_82
invoke-virtual {v2, v0}, Lcom/b/a/d;->a(I)Ljava/io/File;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
invoke-static {v2}, Lcom/b/a/d;->c(Lcom/b/a/d;)[J
move-result-object v1
aget-wide v4, v1, v0
invoke-virtual {v3}, Ljava/io/File;->length()J
move-result-wide v6
invoke-static {v2}, Lcom/b/a/d;->c(Lcom/b/a/d;)[J
move-result-object v1
aput-wide v6, v1, v0
iget-wide v8, p0, Lcom/b/a/a;->j:J
sub-long v3, v8, v4
add-long/2addr v3, v6
iput-wide v3, p0, Lcom/b/a/a;->j:J
:goto_82
:cond_82
add-int/lit8 v0, v0, 0x1
goto :goto_54
:cond_85
invoke-static {v1}, Lcom/b/a/a;->b(Ljava/io/File;)V
goto :goto_82
:cond_89
iget v0, p0, Lcom/b/a/a;->m:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/b/a/a;->m:I
const/4 v0, 0x0
invoke-static {v2, v0}, Lcom/b/a/d;->a(Lcom/b/a/d;Lcom/b/a/b;)Lcom/b/a/b;
invoke-static {v2}, Lcom/b/a/d;->e(Lcom/b/a/d;)Z
move-result v0
or-int/2addr v0, p2
if-eqz v0, :cond_eb
invoke-static {v2}, Lcom/b/a/d;->a(Lcom/b/a/d;)Z
iget-object v0, p0, Lcom/b/a/a;->k:Ljava/io/Writer;
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "CLEAN "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v2}, Lcom/b/a/d;->d(Lcom/b/a/d;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v2}, Lcom/b/a/d;->a()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const/16 v3, 0xa
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
if-eqz p2, :cond_cf
iget-wide v0, p0, Lcom/b/a/a;->n:J
const-wide/16 v3, 0x1
add-long/2addr v3, v0
iput-wide v3, p0, Lcom/b/a/a;->n:J
invoke-static {v2, v0, v1}, Lcom/b/a/d;->a(Lcom/b/a/d;J)J
:cond_cf
:goto_cf
iget-object v0, p0, Lcom/b/a/a;->k:Ljava/io/Writer;
invoke-virtual {v0}, Ljava/io/Writer;->flush()V
iget-wide v0, p0, Lcom/b/a/a;->j:J
iget-wide v2, p0, Lcom/b/a/a;->h:J
cmp-long v0, v0, v2
if-gtz v0, :cond_e2
invoke-direct {p0}, Lcom/b/a/a;->f()Z
move-result v0
if-eqz v0, :cond_4f
:cond_e2
iget-object v0, p0, Lcom/b/a/a;->b:Ljava/util/concurrent/ThreadPoolExecutor;
iget-object v1, p0, Lcom/b/a/a;->o:Ljava/util/concurrent/Callable;
invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
goto/16 :goto_4f
:cond_eb
iget-object v0, p0, Lcom/b/a/a;->l:Ljava/util/LinkedHashMap;
invoke-static {v2}, Lcom/b/a/d;->d(Lcom/b/a/d;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/b/a/a;->k:Ljava/io/Writer;
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "REMOVE "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v2}, Lcom/b/a/d;->d(Lcom/b/a/d;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const/16 v2, 0xa
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
:try_end_112
.catchall {:try_start_54 .. :try_end_112} :catchall_12
goto :goto_cf
.end method
.method private static a(Ljava/io/File;Ljava/io/File;Z)V
.registers 4
if-eqz p2, :cond_5
invoke-static {p1}, Lcom/b/a/a;->b(Ljava/io/File;)V
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
.method static synthetic b()Ljava/io/OutputStream;
.registers 1
sget-object v0, Lcom/b/a/a;->p:Ljava/io/OutputStream;
return-object v0
.end method
.method static synthetic b(Lcom/b/a/a;)V
.registers 1
invoke-direct {p0}, Lcom/b/a/a;->h()V
return-void
.end method
.method private static b(Ljava/io/File;)V
.registers 2
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_12
invoke-virtual {p0}, Ljava/io/File;->delete()Z
move-result v0
if-nez v0, :cond_12
new-instance v0, Ljava/io/IOException;
invoke-direct {v0}, Ljava/io/IOException;-><init>()V
throw v0
:cond_12
return-void
.end method
.method private c()V
.registers 11
const/4 v9, 0x5
const/4 v0, 0x0
const/4 v8, -0x1
new-instance v3, Lcom/b/a/f;
new-instance v1, Ljava/io/FileInputStream;
iget-object v2, p0, Lcom/b/a/a;->d:Ljava/io/File;
invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
sget-object v2, Lcom/b/a/g;->a:Ljava/nio/charset/Charset;
invoke-direct {v3, v1, v2}, Lcom/b/a/f;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
:try_start_11
invoke-virtual {v3}, Lcom/b/a/f;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3}, Lcom/b/a/f;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v3}, Lcom/b/a/f;->a()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3}, Lcom/b/a/f;->a()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3}, Lcom/b/a/f;->a()Ljava/lang/String;
move-result-object v6
const-string v7, "libcore.io.DiskLruCache"
invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_55
const-string v7, "1"
invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_55
iget v7, p0, Lcom/b/a/a;->g:I
invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v7
invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_55
iget v4, p0, Lcom/b/a/a;->i:I
invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_55
const-string v4, ""
invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_93
:cond_55
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
:catchall_8e
:try_end_8e
.catchall {:try_start_11 .. :try_end_8e} :catchall_8e
move-exception v0
invoke-static {v3}, Lcom/b/a/g;->a(Ljava/io/Closeable;)V
throw v0
:cond_93
move v2, v0
:try_start_94
:goto_94
invoke-virtual {v3}, Lcom/b/a/f;->a()Ljava/lang/String;
move-result-object v4
const/16 v0, 0x20
invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I
move-result v5
if-ne v5, v8, :cond_c4
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
:try_end_b5
.catchall {:try_start_94 .. :try_end_b5} :catchall_8e
.catch Ljava/io/EOFException; {:try_start_94 .. :try_end_b5} :catch_b5
:catch_b5
move-exception v0
:try_start_b6
iget-object v0, p0, Lcom/b/a/a;->l:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I
move-result v0
sub-int v0, v2, v0
iput v0, p0, Lcom/b/a/a;->m:I
:try_end_c0
.catchall {:try_start_b6 .. :try_end_c0} :catchall_8e
invoke-static {v3}, Lcom/b/a/g;->a(Ljava/io/Closeable;)V
return-void
:cond_c4
add-int/lit8 v0, v5, 0x1
const/16 v1, 0x20
:try_start_c8
invoke-virtual {v4, v1, v0}, Ljava/lang/String;->indexOf(II)I
move-result v6
if-ne v6, v8, :cond_e6
invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x6
if-ne v5, v1, :cond_15b
const-string v1, "REMOVE"
invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_15b
iget-object v1, p0, Lcom/b/a/a;->l:Ljava/util/LinkedHashMap;
invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_e2
:goto_e2
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_94
:cond_e6
invoke-virtual {v4, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
move-object v1, v0
:goto_eb
iget-object v0, p0, Lcom/b/a/a;->l:Ljava/util/LinkedHashMap;
invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/b/a/d;
if-nez v0, :cond_100
new-instance v0, Lcom/b/a/d;
const/4 v7, 0x0
invoke-direct {v0, p0, v1, v7}, Lcom/b/a/d;-><init>(Lcom/b/a/a;Ljava/lang/String;B)V
iget-object v7, p0, Lcom/b/a/a;->l:Ljava/util/LinkedHashMap;
invoke-virtual {v7, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_100
if-eq v6, v8, :cond_123
if-ne v5, v9, :cond_123
const-string v1, "CLEAN"
invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_123
add-int/lit8 v1, v6, 0x1
invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
const-string v4, " "
invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
invoke-static {v0}, Lcom/b/a/d;->a(Lcom/b/a/d;)Z
const/4 v4, 0x0
invoke-static {v0, v4}, Lcom/b/a/d;->a(Lcom/b/a/d;Lcom/b/a/b;)Lcom/b/a/b;
invoke-static {v0, v1}, Lcom/b/a/d;->a(Lcom/b/a/d;[Ljava/lang/String;)V
goto :goto_e2
:cond_123
if-ne v6, v8, :cond_139
if-ne v5, v9, :cond_139
const-string v1, "DIRTY"
invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_139
new-instance v1, Lcom/b/a/b;
const/4 v4, 0x0
invoke-direct {v1, p0, v0, v4}, Lcom/b/a/b;-><init>(Lcom/b/a/a;Lcom/b/a/d;B)V
invoke-static {v0, v1}, Lcom/b/a/d;->a(Lcom/b/a/d;Lcom/b/a/b;)Lcom/b/a/b;
goto :goto_e2
:cond_139
if-ne v6, v8, :cond_146
const/4 v0, 0x4
if-ne v5, v0, :cond_146
const-string v0, "READ"
invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_e2
:cond_146
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
:try_end_15b
.catchall {:try_start_c8 .. :try_end_15b} :catchall_8e
.catch Ljava/io/EOFException; {:try_start_c8 .. :try_end_15b} :catch_b5
:cond_15b
move-object v1, v0
goto :goto_eb
.end method
.method static synthetic c(Lcom/b/a/a;)Z
.registers 2
invoke-direct {p0}, Lcom/b/a/a;->f()Z
move-result v0
return v0
.end method
.method private declared-synchronized d(Ljava/lang/String;)Lcom/b/a/b;
.registers 8
const/4 v1, 0x0
const-wide/16 v4, -0x1
monitor-enter p0
:try_start_4
invoke-direct {p0}, Lcom/b/a/a;->g()V
invoke-static {p1}, Lcom/b/a/a;->e(Ljava/lang/String;)V
iget-object v0, p0, Lcom/b/a/a;->l:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/b/a/d;
cmp-long v2, v4, v4
if-eqz v2, :cond_23
if-eqz v0, :cond_20
invoke-static {v0}, Lcom/b/a/d;->f(Lcom/b/a/d;)J
:try_end_1b
.catchall {:try_start_4 .. :try_end_1b} :catchall_5a
move-result-wide v2
cmp-long v2, v2, v4
if-eqz v2, :cond_23
:cond_20
move-object v0, v1
:goto_21
monitor-exit p0
return-object v0
:cond_23
if-nez v0, :cond_5d
:try_start_25
new-instance v0, Lcom/b/a/d;
const/4 v1, 0x0
invoke-direct {v0, p0, p1, v1}, Lcom/b/a/d;-><init>(Lcom/b/a/a;Ljava/lang/String;B)V
iget-object v1, p0, Lcom/b/a/a;->l:Ljava/util/LinkedHashMap;
invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-object v1, v0
:goto_31
new-instance v0, Lcom/b/a/b;
const/4 v2, 0x0
invoke-direct {v0, p0, v1, v2}, Lcom/b/a/b;-><init>(Lcom/b/a/a;Lcom/b/a/d;B)V
invoke-static {v1, v0}, Lcom/b/a/d;->a(Lcom/b/a/d;Lcom/b/a/b;)Lcom/b/a/b;
iget-object v1, p0, Lcom/b/a/a;->k:Ljava/io/Writer;
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
invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
iget-object v1, p0, Lcom/b/a/a;->k:Ljava/io/Writer;
invoke-virtual {v1}, Ljava/io/Writer;->flush()V
:try_end_59
.catchall {:try_start_25 .. :try_end_59} :catchall_5a
goto :goto_21
:catchall_5a
move-exception v0
monitor-exit p0
throw v0
:cond_5d
:try_start_5d
invoke-static {v0}, Lcom/b/a/d;->b(Lcom/b/a/d;)Lcom/b/a/b;
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
.method private d()V
.registers 9
const/4 v2, 0x0
iget-object v0, p0, Lcom/b/a/a;->e:Ljava/io/File;
invoke-static {v0}, Lcom/b/a/a;->b(Ljava/io/File;)V
iget-object v0, p0, Lcom/b/a/a;->l:Ljava/util/LinkedHashMap;
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
check-cast v0, Lcom/b/a/d;
invoke-static {v0}, Lcom/b/a/d;->b(Lcom/b/a/d;)Lcom/b/a/b;
move-result-object v1
if-nez v1, :cond_35
move v1, v2
:goto_23
iget v4, p0, Lcom/b/a/a;->i:I
if-ge v1, v4, :cond_10
iget-wide v4, p0, Lcom/b/a/a;->j:J
invoke-static {v0}, Lcom/b/a/d;->c(Lcom/b/a/d;)[J
move-result-object v6
aget-wide v6, v6, v1
add-long/2addr v4, v6
iput-wide v4, p0, Lcom/b/a/a;->j:J
add-int/lit8 v1, v1, 0x1
goto :goto_23
:cond_35
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/b/a/d;->a(Lcom/b/a/d;Lcom/b/a/b;)Lcom/b/a/b;
move v1, v2
:goto_3a
iget v4, p0, Lcom/b/a/a;->i:I
if-ge v1, v4, :cond_4f
invoke-virtual {v0, v1}, Lcom/b/a/d;->a(I)Ljava/io/File;
move-result-object v4
invoke-static {v4}, Lcom/b/a/a;->b(Ljava/io/File;)V
invoke-virtual {v0, v1}, Lcom/b/a/d;->b(I)Ljava/io/File;
move-result-object v4
invoke-static {v4}, Lcom/b/a/a;->b(Ljava/io/File;)V
add-int/lit8 v1, v1, 0x1
goto :goto_3a
:cond_4f
invoke-interface {v3}, Ljava/util/Iterator;->remove()V
goto :goto_10
:cond_53
return-void
.end method
.method static synthetic d(Lcom/b/a/a;)V
.registers 1
invoke-direct {p0}, Lcom/b/a/a;->e()V
return-void
.end method
.method static synthetic e(Lcom/b/a/a;)I
.registers 2
const/4 v0, 0x0
iput v0, p0, Lcom/b/a/a;->m:I
return v0
.end method
.method private declared-synchronized e()V
.registers 6
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/b/a/a;->k:Ljava/io/Writer;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/b/a/a;->k:Ljava/io/Writer;
invoke-virtual {v0}, Ljava/io/Writer;->close()V
:cond_a
new-instance v1, Ljava/io/BufferedWriter;
new-instance v0, Ljava/io/OutputStreamWriter;
new-instance v2, Ljava/io/FileOutputStream;
iget-object v3, p0, Lcom/b/a/a;->e:Ljava/io/File;
invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
sget-object v3, Lcom/b/a/g;->a:Ljava/nio/charset/Charset;
invoke-direct {v0, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
:try_start_1d
:try_end_1d
.catchall {:try_start_1 .. :try_end_1d} :catchall_90
const-string v0, "libcore.io.DiskLruCache"
invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
const-string v0, "\n"
invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
const-string v0, "1"
invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
const-string v0, "\n"
invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
iget v0, p0, Lcom/b/a/a;->g:I
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
const-string v0, "\n"
invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
iget v0, p0, Lcom/b/a/a;->i:I
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
const-string v0, "\n"
invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
const-string v0, "\n"
invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
iget-object v0, p0, Lcom/b/a/a;->l:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_5c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_b8
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/b/a/d;
invoke-static {v0}, Lcom/b/a/d;->b(Lcom/b/a/d;)Lcom/b/a/b;
move-result-object v3
if-eqz v3, :cond_93
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "DIRTY "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lcom/b/a/d;->d(Lcom/b/a/d;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v3, 0xa
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
:try_end_8a
.catchall {:try_start_1d .. :try_end_8a} :catchall_8b
goto :goto_5c
:catchall_8b
move-exception v0
:try_start_8c
invoke-virtual {v1}, Ljava/io/Writer;->close()V
throw v0
:try_end_90
.catchall {:try_start_8c .. :try_end_90} :catchall_90
:catchall_90
move-exception v0
monitor-exit p0
throw v0
:cond_93
:try_start_93
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "CLEAN "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lcom/b/a/d;->d(Lcom/b/a/d;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v0}, Lcom/b/a/d;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v3, 0xa
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
:try_end_b7
.catchall {:try_start_93 .. :try_end_b7} :catchall_8b
goto :goto_5c
:try_start_b8
:cond_b8
invoke-virtual {v1}, Ljava/io/Writer;->close()V
iget-object v0, p0, Lcom/b/a/a;->d:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_cb
iget-object v0, p0, Lcom/b/a/a;->d:Ljava/io/File;
iget-object v1, p0, Lcom/b/a/a;->f:Ljava/io/File;
const/4 v2, 0x1
invoke-static {v0, v1, v2}, Lcom/b/a/a;->a(Ljava/io/File;Ljava/io/File;Z)V
:cond_cb
iget-object v0, p0, Lcom/b/a/a;->e:Ljava/io/File;
iget-object v1, p0, Lcom/b/a/a;->d:Ljava/io/File;
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Lcom/b/a/a;->a(Ljava/io/File;Ljava/io/File;Z)V
iget-object v0, p0, Lcom/b/a/a;->f:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->delete()Z
new-instance v0, Ljava/io/BufferedWriter;
new-instance v1, Ljava/io/OutputStreamWriter;
new-instance v2, Ljava/io/FileOutputStream;
iget-object v3, p0, Lcom/b/a/a;->d:Ljava/io/File;
const/4 v4, 0x1
invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
sget-object v3, Lcom/b/a/g;->a:Ljava/nio/charset/Charset;
invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
iput-object v0, p0, Lcom/b/a/a;->k:Ljava/io/Writer;
:try_end_ee
.catchall {:try_start_b8 .. :try_end_ee} :catchall_90
monitor-exit p0
return-void
.end method
.method private static e(Ljava/lang/String;)V
.registers 4
sget-object v0, Lcom/b/a/a;->a:Ljava/util/regex/Pattern;
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
.method static synthetic f(Lcom/b/a/a;)I
.registers 2
iget v0, p0, Lcom/b/a/a;->i:I
return v0
.end method
.method private f()Z
.registers 3
iget v0, p0, Lcom/b/a/a;->m:I
const/16 v1, 0x7d0
if-lt v0, v1, :cond_12
iget v0, p0, Lcom/b/a/a;->m:I
iget-object v1, p0, Lcom/b/a/a;->l:Ljava/util/LinkedHashMap;
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
.method static synthetic g(Lcom/b/a/a;)Ljava/io/File;
.registers 2
iget-object v0, p0, Lcom/b/a/a;->c:Ljava/io/File;
return-object v0
.end method
.method private g()V
.registers 3
iget-object v0, p0, Lcom/b/a/a;->k:Ljava/io/Writer;
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "cache is closed"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
return-void
.end method
.method private h()V
.registers 5
:goto_0
iget-wide v0, p0, Lcom/b/a/a;->j:J
iget-wide v2, p0, Lcom/b/a/a;->h:J
cmp-long v0, v0, v2
if-lez v0, :cond_22
iget-object v0, p0, Lcom/b/a/a;->l:Ljava/util/LinkedHashMap;
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
invoke-virtual {p0, v0}, Lcom/b/a/a;->c(Ljava/lang/String;)Z
goto :goto_0
:cond_22
return-void
.end method
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/b/a/e;
.registers 11
const/4 v3, 0x0
const/4 v4, 0x0
monitor-enter p0
:try_start_3
invoke-direct {p0}, Lcom/b/a/a;->g()V
invoke-static {p1}, Lcom/b/a/a;->e(Ljava/lang/String;)V
iget-object v1, p0, Lcom/b/a/a;->l:Ljava/util/LinkedHashMap;
invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
move-object v0, v1
check-cast v0, Lcom/b/a/d;
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
invoke-static {v2}, Lcom/b/a/d;->e(Lcom/b/a/d;)Z
move-result v1
if-nez v1, :cond_20
move-object v1, v3
goto :goto_16
:cond_20
iget v1, p0, Lcom/b/a/a;->i:I
new-array v6, v1, [Ljava/io/InputStream;
:try_end_24
.catchall {:try_start_18 .. :try_end_24} :catchall_89
move v1, v4
:goto_25
:try_start_25
iget v5, p0, Lcom/b/a/a;->i:I
if-ge v1, v5, :cond_4b
new-instance v5, Ljava/io/FileInputStream;
invoke-virtual {v2, v1}, Lcom/b/a/d;->a(I)Ljava/io/File;
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
:try_start_39
:goto_39
iget v2, p0, Lcom/b/a/a;->i:I
if-ge v1, v2, :cond_49
aget-object v2, v6, v1
if-eqz v2, :cond_49
aget-object v2, v6, v1
invoke-static {v2}, Lcom/b/a/g;->a(Ljava/io/Closeable;)V
add-int/lit8 v1, v1, 0x1
goto :goto_39
:cond_49
move-object v1, v3
goto :goto_16
:cond_4b
iget v1, p0, Lcom/b/a/a;->m:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/b/a/a;->m:I
iget-object v1, p0, Lcom/b/a/a;->k:Ljava/io/Writer;
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
invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
invoke-direct {p0}, Lcom/b/a/a;->f()Z
move-result v1
if-eqz v1, :cond_78
iget-object v1, p0, Lcom/b/a/a;->b:Ljava/util/concurrent/ThreadPoolExecutor;
iget-object v3, p0, Lcom/b/a/a;->o:Ljava/util/concurrent/Callable;
invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
:cond_78
new-instance v1, Lcom/b/a/e;
invoke-static {v2}, Lcom/b/a/d;->f(Lcom/b/a/d;)J
move-result-wide v4
invoke-static {v2}, Lcom/b/a/d;->c(Lcom/b/a/d;)[J
move-result-object v7
const/4 v8, 0x0
move-object v2, p0
move-object v3, p1
invoke-direct/range {v1 .. v8}, Lcom/b/a/e;-><init>(Lcom/b/a/a;Ljava/lang/String;J[Ljava/io/InputStream;[JB)V
:try_end_88
.catchall {:try_start_39 .. :try_end_88} :catchall_89
goto :goto_16
:catchall_89
move-exception v1
monitor-exit p0
throw v1
.end method
.method public final declared-synchronized a()V
.registers 2
monitor-enter p0
:try_start_1
invoke-direct {p0}, Lcom/b/a/a;->g()V
invoke-direct {p0}, Lcom/b/a/a;->h()V
iget-object v0, p0, Lcom/b/a/a;->k:Ljava/io/Writer;
invoke-virtual {v0}, Ljava/io/Writer;->flush()V
:try_end_c
.catchall {:try_start_1 .. :try_end_c} :catchall_e
monitor-exit p0
return-void
:catchall_e
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final b(Ljava/lang/String;)Lcom/b/a/b;
.registers 3
invoke-direct {p0, p1}, Lcom/b/a/a;->d(Ljava/lang/String;)Lcom/b/a/b;
move-result-object v0
return-object v0
.end method
.method public final declared-synchronized c(Ljava/lang/String;)Z
.registers 8
const/4 v1, 0x0
monitor-enter p0
:try_start_2
invoke-direct {p0}, Lcom/b/a/a;->g()V
invoke-static {p1}, Lcom/b/a/a;->e(Ljava/lang/String;)V
iget-object v0, p0, Lcom/b/a/a;->l:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/b/a/d;
if-eqz v0, :cond_18
invoke-static {v0}, Lcom/b/a/d;->b(Lcom/b/a/d;)Lcom/b/a/b;
:try_end_15
.catchall {:try_start_2 .. :try_end_15} :catchall_59
move-result-object v2
if-eqz v2, :cond_30
:cond_18
move v0, v1
:goto_19
monitor-exit p0
return v0
:try_start_1b
:cond_1b
iget-wide v2, p0, Lcom/b/a/a;->j:J
invoke-static {v0}, Lcom/b/a/d;->c(Lcom/b/a/d;)[J
move-result-object v4
aget-wide v4, v4, v1
sub-long/2addr v2, v4
iput-wide v2, p0, Lcom/b/a/a;->j:J
invoke-static {v0}, Lcom/b/a/d;->c(Lcom/b/a/d;)[J
move-result-object v2
const-wide/16 v3, 0x0
aput-wide v3, v2, v1
add-int/lit8 v1, v1, 0x1
:cond_30
iget v2, p0, Lcom/b/a/a;->i:I
if-ge v1, v2, :cond_5c
invoke-virtual {v0, v1}, Lcom/b/a/d;->a(I)Ljava/io/File;
move-result-object v2
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_1b
invoke-virtual {v2}, Ljava/io/File;->delete()Z
move-result v3
if-nez v3, :cond_1b
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "failed to delete "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_59
:try_end_59
.catchall {:try_start_1b .. :try_end_59} :catchall_59
move-exception v0
monitor-exit p0
throw v0
:cond_5c
:try_start_5c
iget v0, p0, Lcom/b/a/a;->m:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/b/a/a;->m:I
iget-object v0, p0, Lcom/b/a/a;->k:Ljava/io/Writer;
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
invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
iget-object v0, p0, Lcom/b/a/a;->l:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
invoke-direct {p0}, Lcom/b/a/a;->f()Z
move-result v0
if-eqz v0, :cond_8e
iget-object v0, p0, Lcom/b/a/a;->b:Ljava/util/concurrent/ThreadPoolExecutor;
iget-object v1, p0, Lcom/b/a/a;->o:Ljava/util/concurrent/Callable;
invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
:try_end_8e
.catchall {:try_start_5c .. :try_end_8e} :catchall_59
:cond_8e
const/4 v0, 0x1
goto :goto_19
.end method
.method public final declared-synchronized close()V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/b/a/a;->k:Ljava/io/Writer;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_30
if-nez v0, :cond_7
:goto_5
monitor-exit p0
return-void
:try_start_7
:cond_7
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p0, Lcom/b/a/a;->l:Ljava/util/LinkedHashMap;
invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_16
:goto_16
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_33
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/b/a/d;
invoke-static {v0}, Lcom/b/a/d;->b(Lcom/b/a/d;)Lcom/b/a/b;
move-result-object v2
if-eqz v2, :cond_16
invoke-static {v0}, Lcom/b/a/d;->b(Lcom/b/a/d;)Lcom/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/b/a/b;->c()V
:try_end_2f
.catchall {:try_start_7 .. :try_end_2f} :catchall_30
goto :goto_16
:catchall_30
move-exception v0
monitor-exit p0
throw v0
:cond_33
:try_start_33
invoke-direct {p0}, Lcom/b/a/a;->h()V
iget-object v0, p0, Lcom/b/a/a;->k:Ljava/io/Writer;
invoke-virtual {v0}, Ljava/io/Writer;->close()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/b/a/a;->k:Ljava/io/Writer;
:try_end_3e
.catchall {:try_start_33 .. :try_end_3e} :catchall_30
goto :goto_5
.end method