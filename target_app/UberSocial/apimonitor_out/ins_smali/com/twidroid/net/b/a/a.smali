.class public final Lcom/twidroid/net/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Closeable;
.field static final a:Ljava/lang/String; = "journal"
.field static final b:Ljava/lang/String; = "journal.tmp"
.field static final c:Ljava/lang/String; = "libcore.io.DiskLruCache"
.field static final d:Ljava/lang/String; = "1"
.field static final e:J = -0x1L
.field private static final f:Ljava/lang/String; = "CLEAN"
.field private static final g:Ljava/lang/String; = "DIRTY"
.field private static final h:Ljava/lang/String; = "REMOVE"
.field private static final i:Ljava/lang/String; = "READ"
.field private static final j:Ljava/nio/charset/Charset; = null
.field private static final k:I = 0x2000
.field private final l:Ljava/io/File;
.field private final m:Ljava/io/File;
.field private final n:Ljava/io/File;
.field private final o:I
.field private final p:J
.field private final q:I
.field private r:J
.field private s:Ljava/io/Writer;
.field private final t:Ljava/util/LinkedHashMap;
.field private u:I
.field private v:J
.field private final w:Ljava/util/concurrent/ExecutorService;
.field private final x:Ljava/util/concurrent/Callable;
.method static constructor <clinit>()V
.registers 1
const-string v0, "UTF-8"
invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
sput-object v0, Lcom/twidroid/net/b/a/a;->j:Ljava/nio/charset/Charset;
return-void
.end method
.method private constructor <init>(Ljava/io/File;IIJ)V
.registers 13
const-wide/16 v4, 0x0
const/4 v2, 0x1
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide v4, p0, Lcom/twidroid/net/b/a/a;->r:J
new-instance v0, Ljava/util/LinkedHashMap;
const/high16 v3, 0x3f40
invoke-direct {v0, v1, v3, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V
iput-object v0, p0, Lcom/twidroid/net/b/a/a;->t:Ljava/util/LinkedHashMap;
iput-wide v4, p0, Lcom/twidroid/net/b/a/a;->v:J
new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;
const-wide/16 v3, 0x3c
sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;
invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V
invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
iput-object v0, p0, Lcom/twidroid/net/b/a/a;->w:Ljava/util/concurrent/ExecutorService;
new-instance v0, Lcom/twidroid/net/b/a/a$1;
invoke-direct {v0, p0}, Lcom/twidroid/net/b/a/a$1;-><init>(Lcom/twidroid/net/b/a/a;)V
iput-object v0, p0, Lcom/twidroid/net/b/a/a;->x:Ljava/util/concurrent/Callable;
iput-object p1, p0, Lcom/twidroid/net/b/a/a;->l:Ljava/io/File;
iput p2, p0, Lcom/twidroid/net/b/a/a;->o:I
new-instance v0, Ljava/io/File;
const-string v1, "journal"
invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
iput-object v0, p0, Lcom/twidroid/net/b/a/a;->m:Ljava/io/File;
new-instance v0, Ljava/io/File;
const-string v1, "journal.tmp"
invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
iput-object v0, p0, Lcom/twidroid/net/b/a/a;->n:Ljava/io/File;
iput p3, p0, Lcom/twidroid/net/b/a/a;->q:I
iput-wide p4, p0, Lcom/twidroid/net/b/a/a;->p:J
return-void
.end method
.method static synthetic a(Lcom/twidroid/net/b/a/a;I)I
.registers 2
iput p1, p0, Lcom/twidroid/net/b/a/a;->u:I
return p1
.end method
.method public static a(Ljava/io/File;IIJ)Lcom/twidroid/net/b/a/a;
.registers 11
const-wide/16 v0, 0x0
cmp-long v0, p3, v0
if-gtz v0, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "maxSize <= 0"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
if-gtz p2, :cond_18
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "valueCount <= 0"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_18
new-instance v0, Lcom/twidroid/net/b/a/a;
move-object v1, p0
move v2, p1
move v3, p2
move-wide v4, p3
invoke-direct/range {v0 .. v5}, Lcom/twidroid/net/b/a/a;-><init>(Ljava/io/File;IIJ)V
iget-object v1, v0, Lcom/twidroid/net/b/a/a;->m:Ljava/io/File;
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_45
:try_start_29
invoke-direct {v0}, Lcom/twidroid/net/b/a/a;->h()V
invoke-direct {v0}, Lcom/twidroid/net/b/a/a;->i()V
new-instance v1, Ljava/io/BufferedWriter;
new-instance v2, Ljava/io/FileWriter;
iget-object v3, v0, Lcom/twidroid/net/b/a/a;->m:Ljava/io/File;
const/4 v4, 0x1
invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
const/16 v3, 0x2000
invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
iput-object v1, v0, Lcom/twidroid/net/b/a/a;->s:Ljava/io/Writer;
:try_end_40
.catch Ljava/io/IOException; {:try_start_29 .. :try_end_40} :catch_41
:goto_40
return-object v0
:catch_41
move-exception v1
invoke-virtual {v0}, Lcom/twidroid/net/b/a/a;->f()V
:cond_45
invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z
new-instance v0, Lcom/twidroid/net/b/a/a;
move-object v1, p0
move v2, p1
move v3, p2
move-wide v4, p3
invoke-direct/range {v0 .. v5}, Lcom/twidroid/net/b/a/a;-><init>(Ljava/io/File;IIJ)V
invoke-direct {v0}, Lcom/twidroid/net/b/a/a;->j()V
goto :goto_40
.end method
.method static synthetic a(Lcom/twidroid/net/b/a/a;Ljava/lang/String;J)Lcom/twidroid/net/b/a/b;
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/twidroid/net/b/a/a;->a(Ljava/lang/String;J)Lcom/twidroid/net/b/a/b;
move-result-object v0
return-object v0
.end method
.method private declared-synchronized a(Ljava/lang/String;J)Lcom/twidroid/net/b/a/b;
.registers 8
const/4 v1, 0x0
monitor-enter p0
:try_start_2
invoke-direct {p0}, Lcom/twidroid/net/b/a/a;->l()V
invoke-direct {p0, p1}, Lcom/twidroid/net/b/a/a;->e(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/net/b/a/a;->t:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/net/b/a/d;
const-wide/16 v2, -0x1
cmp-long v2, p2, v2
if-eqz v2, :cond_23
if-eqz v0, :cond_20
invoke-static {v0}, Lcom/twidroid/net/b/a/d;->e(Lcom/twidroid/net/b/a/d;)J
:try_end_1b
.catchall {:try_start_2 .. :try_end_1b} :catchall_5e
move-result-wide v2
cmp-long v2, v2, p2
if-eqz v2, :cond_23
:cond_20
move-object v0, v1
:goto_21
monitor-exit p0
return-object v0
:cond_23
if-nez v0, :cond_61
:try_start_25
new-instance v0, Lcom/twidroid/net/b/a/d;
const/4 v1, 0x0
invoke-direct {v0, p0, p1, v1}, Lcom/twidroid/net/b/a/d;-><init>(Lcom/twidroid/net/b/a/a;Ljava/lang/String;Lcom/twidroid/net/b/a/a$1;)V
iget-object v1, p0, Lcom/twidroid/net/b/a/a;->t:Ljava/util/LinkedHashMap;
invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-object v1, v0
:goto_31
new-instance v0, Lcom/twidroid/net/b/a/b;
const/4 v2, 0x0
invoke-direct {v0, p0, v1, v2}, Lcom/twidroid/net/b/a/b;-><init>(Lcom/twidroid/net/b/a/a;Lcom/twidroid/net/b/a/d;Lcom/twidroid/net/b/a/a$1;)V
invoke-static {v1, v0}, Lcom/twidroid/net/b/a/d;->a(Lcom/twidroid/net/b/a/d;Lcom/twidroid/net/b/a/b;)Lcom/twidroid/net/b/a/b;
iget-object v1, p0, Lcom/twidroid/net/b/a/a;->s:Ljava/io/Writer;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "DIRTY "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const/16 v3, 0xa
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/net/b/a/a;->s:Ljava/io/Writer;
invoke-virtual {v1}, Ljava/io/Writer;->flush()V
:try_end_5d
.catchall {:try_start_25 .. :try_end_5d} :catchall_5e
goto :goto_21
:catchall_5e
move-exception v0
monitor-exit p0
throw v0
:try_start_61
:cond_61
invoke-static {v0}, Lcom/twidroid/net/b/a/d;->a(Lcom/twidroid/net/b/a/d;)Lcom/twidroid/net/b/a/b;
:try_end_64
.catchall {:try_start_61 .. :try_end_64} :catchall_5e
move-result-object v2
if-eqz v2, :cond_69
move-object v0, v1
goto :goto_21
:cond_69
move-object v1, v0
goto :goto_31
.end method
.method static synthetic a(Lcom/twidroid/net/b/a/a;)Ljava/io/Writer;
.registers 2
iget-object v0, p0, Lcom/twidroid/net/b/a/a;->s:Ljava/io/Writer;
return-object v0
.end method
.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x50
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
:goto_7
invoke-virtual {p0}, Ljava/io/InputStream;->read()I
move-result v1
const/4 v2, -0x1
if-ne v1, v2, :cond_14
new-instance v0, Ljava/io/EOFException;
invoke-direct {v0}, Ljava/io/EOFException;-><init>()V
throw v0
:cond_14
const/16 v2, 0xa
if-ne v1, v2, :cond_32
invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
move-result v1
if-lez v1, :cond_2d
add-int/lit8 v2, v1, -0x1
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C
move-result v2
const/16 v3, 0xd
if-ne v2, v3, :cond_2d
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V
:cond_2d
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_32
int-to-char v1, v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_7
.end method
.method public static a(Ljava/io/Reader;)Ljava/lang/String;
.registers 5
:try_start_0
new-instance v0, Ljava/io/StringWriter;
invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V
const/16 v1, 0x400
new-array v1, v1, [C
:goto_9
invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I
move-result v2
const/4 v3, -0x1
if-eq v2, v3, :cond_1a
const/4 v3, 0x0
invoke-virtual {v0, v1, v3, v2}, Ljava/io/StringWriter;->write([CII)V
:try_end_14
.catchall {:try_start_0 .. :try_end_14} :catchall_15
goto :goto_9
:catchall_15
move-exception v0
invoke-virtual {p0}, Ljava/io/Reader;->close()V
throw v0
:try_start_1a
:cond_1a
invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
:try_end_1d
.catchall {:try_start_1a .. :try_end_1d} :catchall_15
move-result-object v0
invoke-virtual {p0}, Ljava/io/Reader;->close()V
return-object v0
.end method
.method static synthetic a(Lcom/twidroid/net/b/a/a;Lcom/twidroid/net/b/a/b;Z)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/twidroid/net/b/a/a;->a(Lcom/twidroid/net/b/a/b;Z)V
return-void
.end method
.method private declared-synchronized a(Lcom/twidroid/net/b/a/b;Z)V
.registers 13
const/4 v0, 0x0
monitor-enter p0
:try_start_2
invoke-static {p1}, Lcom/twidroid/net/b/a/b;->a(Lcom/twidroid/net/b/a/b;)Lcom/twidroid/net/b/a/d;
move-result-object v2
invoke-static {v2}, Lcom/twidroid/net/b/a/d;->a(Lcom/twidroid/net/b/a/d;)Lcom/twidroid/net/b/a/b;
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
if-eqz p2, :cond_4b
:try_start_17
invoke-static {v2}, Lcom/twidroid/net/b/a/d;->d(Lcom/twidroid/net/b/a/d;)Z
move-result v1
if-nez v1, :cond_4b
move v1, v0
:goto_1e
iget v3, p0, Lcom/twidroid/net/b/a/a;->q:I
if-ge v1, v3, :cond_4b
invoke-virtual {v2, v1}, Lcom/twidroid/net/b/a/d;->b(I)Ljava/io/File;
move-result-object v3
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v3
if-nez v3, :cond_48
invoke-virtual {p1}, Lcom/twidroid/net/b/a/b;->b()V
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "edit didn\'t create file "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_48
add-int/lit8 v1, v1, 0x1
goto :goto_1e
:goto_4b
:cond_4b
iget v1, p0, Lcom/twidroid/net/b/a/a;->q:I
if-ge v0, v1, :cond_80
invoke-virtual {v2, v0}, Lcom/twidroid/net/b/a/d;->b(I)Ljava/io/File;
move-result-object v1
if-eqz p2, :cond_7c
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_79
invoke-virtual {v2, v0}, Lcom/twidroid/net/b/a/d;->a(I)Ljava/io/File;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
invoke-static {v2}, Lcom/twidroid/net/b/a/d;->b(Lcom/twidroid/net/b/a/d;)[J
move-result-object v1
aget-wide v4, v1, v0
invoke-virtual {v3}, Ljava/io/File;->length()J
move-result-wide v6
invoke-static {v2}, Lcom/twidroid/net/b/a/d;->b(Lcom/twidroid/net/b/a/d;)[J
move-result-object v1
aput-wide v6, v1, v0
iget-wide v8, p0, Lcom/twidroid/net/b/a/a;->r:J
sub-long v3, v8, v4
add-long/2addr v3, v6
iput-wide v3, p0, Lcom/twidroid/net/b/a/a;->r:J
:cond_79
:goto_79
add-int/lit8 v0, v0, 0x1
goto :goto_4b
:cond_7c
invoke-static {v1}, Lcom/twidroid/net/b/a/a;->b(Ljava/io/File;)V
goto :goto_79
:cond_80
iget v0, p0, Lcom/twidroid/net/b/a/a;->u:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/twidroid/net/b/a/a;->u:I
const/4 v0, 0x0
invoke-static {v2, v0}, Lcom/twidroid/net/b/a/d;->a(Lcom/twidroid/net/b/a/d;Lcom/twidroid/net/b/a/b;)Lcom/twidroid/net/b/a/b;
invoke-static {v2}, Lcom/twidroid/net/b/a/d;->d(Lcom/twidroid/net/b/a/d;)Z
move-result v0
or-int/2addr v0, p2
if-eqz v0, :cond_e2
const/4 v0, 0x1
invoke-static {v2, v0}, Lcom/twidroid/net/b/a/d;->a(Lcom/twidroid/net/b/a/d;Z)Z
iget-object v0, p0, Lcom/twidroid/net/b/a/a;->s:Ljava/io/Writer;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "CLEAN "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {v2}, Lcom/twidroid/net/b/a/d;->c(Lcom/twidroid/net/b/a/d;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v2}, Lcom/twidroid/net/b/a/d;->a()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const/16 v3, 0xa
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
if-eqz p2, :cond_cb
iget-wide v0, p0, Lcom/twidroid/net/b/a/a;->v:J
const-wide/16 v3, 0x1
add-long/2addr v3, v0
iput-wide v3, p0, Lcom/twidroid/net/b/a/a;->v:J
invoke-static {v2, v0, v1}, Lcom/twidroid/net/b/a/d;->a(Lcom/twidroid/net/b/a/d;J)J
:goto_cb
:cond_cb
iget-wide v0, p0, Lcom/twidroid/net/b/a/a;->r:J
iget-wide v2, p0, Lcom/twidroid/net/b/a/a;->p:J
cmp-long v0, v0, v2
if-gtz v0, :cond_d9
invoke-direct {p0}, Lcom/twidroid/net/b/a/a;->k()Z
move-result v0
if-eqz v0, :cond_e0
:cond_d9
iget-object v0, p0, Lcom/twidroid/net/b/a/a;->w:Ljava/util/concurrent/ExecutorService;
iget-object v1, p0, Lcom/twidroid/net/b/a/a;->x:Ljava/util/concurrent/Callable;
invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
:try_end_e0
.catchall {:try_start_17 .. :try_end_e0} :catchall_12
:cond_e0
monitor-exit p0
return-void
:cond_e2
:try_start_e2
iget-object v0, p0, Lcom/twidroid/net/b/a/a;->t:Ljava/util/LinkedHashMap;
invoke-static {v2}, Lcom/twidroid/net/b/a/d;->c(Lcom/twidroid/net/b/a/d;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/twidroid/net/b/a/a;->s:Ljava/io/Writer;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "REMOVE "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {v2}, Lcom/twidroid/net/b/a/d;->c(Lcom/twidroid/net/b/a/d;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const/16 v2, 0xa
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
:try_end_10d
.catchall {:try_start_e2 .. :try_end_10d} :catchall_12
goto :goto_cb
.end method
.method public static a(Ljava/io/Closeable;)V
.registers 2
if-eqz p0, :cond_5
:try_start_2
invoke-interface {p0}, Ljava/io/Closeable;->close()V
:goto_5
:try_end_5
.catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8
:cond_5
return-void
:catch_6
move-exception v0
throw v0
:catch_8
move-exception v0
goto :goto_5
.end method
.method public static a(Ljava/io/File;)V
.registers 6
invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v1
if-nez v1, :cond_1f
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "not a directory: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1f
array-length v2, v1
const/4 v0, 0x0
:goto_21
if-ge v0, v2, :cond_50
aget-object v3, v1, v0
invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z
move-result v4
if-eqz v4, :cond_2e
invoke-static {v3}, Lcom/twidroid/net/b/a/a;->a(Ljava/io/File;)V
:cond_2e
invoke-virtual {v3}, Ljava/io/File;->delete()Z
move-result v4
if-nez v4, :cond_4d
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "failed to delete file: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_4d
add-int/lit8 v0, v0, 0x1
goto :goto_21
:cond_50
return-void
.end method
.method private static a([Ljava/lang/Object;II)[Ljava/lang/Object;
.registers 6
array-length v0, p0
if-le p1, p2, :cond_9
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_9
if-ltz p1, :cond_d
if-le p1, v0, :cond_13
:cond_d
new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;
invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V
throw v0
:cond_13
sub-int v1, p2, p1
sub-int/2addr v0, p1
invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I
move-result v2
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
move-result-object v0
invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/Object;
check-cast v0, [Ljava/lang/Object;
const/4 v1, 0x0
invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v0
.end method
.method static synthetic b(Ljava/io/InputStream;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/twidroid/net/b/a/a;->c(Ljava/io/InputStream;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic b(Lcom/twidroid/net/b/a/a;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/net/b/a/a;->m()V
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
.method private static c(Ljava/io/InputStream;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/io/InputStreamReader;
sget-object v1, Lcom/twidroid/net/b/a/a;->j:Ljava/nio/charset/Charset;
invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
invoke-static {v0}, Lcom/twidroid/net/b/a/a;->a(Ljava/io/Reader;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic c(Lcom/twidroid/net/b/a/a;)Z
.registers 2
invoke-direct {p0}, Lcom/twidroid/net/b/a/a;->k()Z
move-result v0
return v0
.end method
.method static synthetic d(Lcom/twidroid/net/b/a/a;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/net/b/a/a;->j()V
return-void
.end method
.method private d(Ljava/lang/String;)V
.registers 10
const/4 v7, 0x1
const/4 v6, 0x0
const/4 v5, 0x0
const/4 v4, 0x2
const-string v0, " "
invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
array-length v0, v2
if-ge v0, v4, :cond_26
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "unexpected journal line: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_26
aget-object v1, v2, v7
aget-object v0, v2, v5
const-string v3, "REMOVE"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3b
array-length v0, v2
if-ne v0, v4, :cond_3b
iget-object v0, p0, Lcom/twidroid/net/b/a/a;->t:Ljava/util/LinkedHashMap;
invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:goto_3a
:cond_3a
return-void
:cond_3b
iget-object v0, p0, Lcom/twidroid/net/b/a/a;->t:Ljava/util/LinkedHashMap;
invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/net/b/a/d;
if-nez v0, :cond_ae
new-instance v0, Lcom/twidroid/net/b/a/d;
invoke-direct {v0, p0, v1, v6}, Lcom/twidroid/net/b/a/d;-><init>(Lcom/twidroid/net/b/a/a;Ljava/lang/String;Lcom/twidroid/net/b/a/a$1;)V
iget-object v3, p0, Lcom/twidroid/net/b/a/a;->t:Ljava/util/LinkedHashMap;
invoke-virtual {v3, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-object v1, v0
:goto_50
aget-object v0, v2, v5
const-string v3, "CLEAN"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_72
array-length v0, v2
iget v3, p0, Lcom/twidroid/net/b/a/a;->q:I
add-int/lit8 v3, v3, 0x2
if-ne v0, v3, :cond_72
invoke-static {v1, v7}, Lcom/twidroid/net/b/a/d;->a(Lcom/twidroid/net/b/a/d;Z)Z
invoke-static {v1, v6}, Lcom/twidroid/net/b/a/d;->a(Lcom/twidroid/net/b/a/d;Lcom/twidroid/net/b/a/b;)Lcom/twidroid/net/b/a/b;
array-length v0, v2
invoke-static {v2, v4, v0}, Lcom/twidroid/net/b/a/a;->a([Ljava/lang/Object;II)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
invoke-static {v1, v0}, Lcom/twidroid/net/b/a/d;->a(Lcom/twidroid/net/b/a/d;[Ljava/lang/String;)V
goto :goto_3a
:cond_72
aget-object v0, v2, v5
const-string v3, "DIRTY"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_88
array-length v0, v2
if-ne v0, v4, :cond_88
new-instance v0, Lcom/twidroid/net/b/a/b;
invoke-direct {v0, p0, v1, v6}, Lcom/twidroid/net/b/a/b;-><init>(Lcom/twidroid/net/b/a/a;Lcom/twidroid/net/b/a/d;Lcom/twidroid/net/b/a/a$1;)V
invoke-static {v1, v0}, Lcom/twidroid/net/b/a/d;->a(Lcom/twidroid/net/b/a/d;Lcom/twidroid/net/b/a/b;)Lcom/twidroid/net/b/a/b;
goto :goto_3a
:cond_88
aget-object v0, v2, v5
const-string v1, "READ"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_95
array-length v0, v2
if-eq v0, v4, :cond_3a
:cond_95
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "unexpected journal line: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_ae
move-object v1, v0
goto :goto_50
.end method
.method static synthetic e(Lcom/twidroid/net/b/a/a;)I
.registers 2
iget v0, p0, Lcom/twidroid/net/b/a/a;->q:I
return v0
.end method
.method private e(Ljava/lang/String;)V
.registers 5
const-string v0, " "
invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_18
const-string v0, "\n"
invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_18
const-string v0, "\r"
invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_37
:cond_18
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "keys must not contain spaces or newlines: \""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_37
return-void
.end method
.method static synthetic f(Lcom/twidroid/net/b/a/a;)Ljava/io/File;
.registers 2
iget-object v0, p0, Lcom/twidroid/net/b/a/a;->l:Ljava/io/File;
return-object v0
.end method
.method static synthetic g()Ljava/nio/charset/Charset;
.registers 1
sget-object v0, Lcom/twidroid/net/b/a/a;->j:Ljava/nio/charset/Charset;
return-object v0
.end method
.method private h()V
.registers 9
new-instance v1, Ljava/io/BufferedInputStream;
new-instance v0, Ljava/io/FileInputStream;
iget-object v2, p0, Lcom/twidroid/net/b/a/a;->m:Ljava/io/File;
invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
const/16 v2, 0x2000
invoke-direct {v1, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
:try_start_e
invoke-static {v1}, Lcom/twidroid/net/b/a/a;->a(Ljava/io/InputStream;)Ljava/lang/String;
move-result-object v0
invoke-static {v1}, Lcom/twidroid/net/b/a/a;->a(Ljava/io/InputStream;)Ljava/lang/String;
move-result-object v2
invoke-static {v1}, Lcom/twidroid/net/b/a/a;->a(Ljava/io/InputStream;)Ljava/lang/String;
move-result-object v3
invoke-static {v1}, Lcom/twidroid/net/b/a/a;->a(Ljava/io/InputStream;)Ljava/lang/String;
move-result-object v4
invoke-static {v1}, Lcom/twidroid/net/b/a/a;->a(Ljava/io/InputStream;)Ljava/lang/String;
move-result-object v5
const-string v6, "libcore.io.DiskLruCache"
invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_52
const-string v6, "1"
invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_52
iget v6, p0, Lcom/twidroid/net/b/a/a;->o:I
invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_52
iget v3, p0, Lcom/twidroid/net/b/a/a;->q:I
invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_52
const-string v3, ""
invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_94
:cond_52
new-instance v3, Ljava/io/IOException;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "unexpected journal header: ["
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v6, ", "
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ", "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ", "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "]"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v3
:catchall_8f
:try_end_8f
.catchall {:try_start_e .. :try_end_8f} :catchall_8f
move-exception v0
invoke-static {v1}, Lcom/twidroid/net/b/a/a;->a(Ljava/io/Closeable;)V
throw v0
:try_start_94
:cond_94
:goto_94
invoke-static {v1}, Lcom/twidroid/net/b/a/a;->a(Ljava/io/InputStream;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/net/b/a/a;->d(Ljava/lang/String;)V
:try_end_9b
.catchall {:try_start_94 .. :try_end_9b} :catchall_8f
.catch Ljava/io/EOFException; {:try_start_94 .. :try_end_9b} :catch_9c
goto :goto_94
:catch_9c
move-exception v0
invoke-static {v1}, Lcom/twidroid/net/b/a/a;->a(Ljava/io/Closeable;)V
return-void
.end method
.method private i()V
.registers 9
const/4 v2, 0x0
iget-object v0, p0, Lcom/twidroid/net/b/a/a;->n:Ljava/io/File;
invoke-static {v0}, Lcom/twidroid/net/b/a/a;->b(Ljava/io/File;)V
iget-object v0, p0, Lcom/twidroid/net/b/a/a;->t:Ljava/util/LinkedHashMap;
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
check-cast v0, Lcom/twidroid/net/b/a/d;
invoke-static {v0}, Lcom/twidroid/net/b/a/d;->a(Lcom/twidroid/net/b/a/d;)Lcom/twidroid/net/b/a/b;
move-result-object v1
if-nez v1, :cond_35
move v1, v2
:goto_23
iget v4, p0, Lcom/twidroid/net/b/a/a;->q:I
if-ge v1, v4, :cond_10
iget-wide v4, p0, Lcom/twidroid/net/b/a/a;->r:J
invoke-static {v0}, Lcom/twidroid/net/b/a/d;->b(Lcom/twidroid/net/b/a/d;)[J
move-result-object v6
aget-wide v6, v6, v1
add-long/2addr v4, v6
iput-wide v4, p0, Lcom/twidroid/net/b/a/a;->r:J
add-int/lit8 v1, v1, 0x1
goto :goto_23
:cond_35
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/twidroid/net/b/a/d;->a(Lcom/twidroid/net/b/a/d;Lcom/twidroid/net/b/a/b;)Lcom/twidroid/net/b/a/b;
move v1, v2
:goto_3a
iget v4, p0, Lcom/twidroid/net/b/a/a;->q:I
if-ge v1, v4, :cond_4f
invoke-virtual {v0, v1}, Lcom/twidroid/net/b/a/d;->a(I)Ljava/io/File;
move-result-object v4
invoke-static {v4}, Lcom/twidroid/net/b/a/a;->b(Ljava/io/File;)V
invoke-virtual {v0, v1}, Lcom/twidroid/net/b/a/d;->b(I)Ljava/io/File;
move-result-object v4
invoke-static {v4}, Lcom/twidroid/net/b/a/a;->b(Ljava/io/File;)V
add-int/lit8 v1, v1, 0x1
goto :goto_3a
:cond_4f
invoke-interface {v3}, Ljava/util/Iterator;->remove()V
goto :goto_10
:cond_53
return-void
.end method
.method private declared-synchronized j()V
.registers 6
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/twidroid/net/b/a/a;->s:Ljava/io/Writer;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/twidroid/net/b/a/a;->s:Ljava/io/Writer;
invoke-virtual {v0}, Ljava/io/Writer;->close()V
:cond_a
new-instance v1, Ljava/io/BufferedWriter;
new-instance v0, Ljava/io/FileWriter;
iget-object v2, p0, Lcom/twidroid/net/b/a/a;->n:Ljava/io/File;
invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
const/16 v2, 0x2000
invoke-direct {v1, v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
const-string v0, "libcore.io.DiskLruCache"
invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
const-string v0, "\n"
invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
const-string v0, "1"
invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
const-string v0, "\n"
invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
iget v0, p0, Lcom/twidroid/net/b/a/a;->o:I
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
const-string v0, "\n"
invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
iget v0, p0, Lcom/twidroid/net/b/a/a;->q:I
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
const-string v0, "\n"
invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
const-string v0, "\n"
invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/net/b/a/a;->t:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_57
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_b6
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/net/b/a/d;
invoke-static {v0}, Lcom/twidroid/net/b/a/d;->a(Lcom/twidroid/net/b/a/d;)Lcom/twidroid/net/b/a/b;
move-result-object v3
if-eqz v3, :cond_8d
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "DIRTY "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {v0}, Lcom/twidroid/net/b/a/d;->c(Lcom/twidroid/net/b/a/d;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v3, 0xa
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
:try_end_89
.catchall {:try_start_1 .. :try_end_89} :catchall_8a
goto :goto_57
:catchall_8a
move-exception v0
monitor-exit p0
throw v0
:cond_8d
:try_start_8d
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "CLEAN "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {v0}, Lcom/twidroid/net/b/a/d;->c(Lcom/twidroid/net/b/a/d;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v0}, Lcom/twidroid/net/b/a/d;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v3, 0xa
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
goto :goto_57
:cond_b6
invoke-virtual {v1}, Ljava/io/Writer;->close()V
iget-object v0, p0, Lcom/twidroid/net/b/a/a;->n:Ljava/io/File;
iget-object v1, p0, Lcom/twidroid/net/b/a/a;->m:Ljava/io/File;
invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
new-instance v0, Ljava/io/BufferedWriter;
new-instance v1, Ljava/io/FileWriter;
iget-object v2, p0, Lcom/twidroid/net/b/a/a;->m:Ljava/io/File;
const/4 v3, 0x1
invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
const/16 v2, 0x2000
invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
iput-object v0, p0, Lcom/twidroid/net/b/a/a;->s:Ljava/io/Writer;
:try_end_d1
.catchall {:try_start_8d .. :try_end_d1} :catchall_8a
monitor-exit p0
return-void
.end method
.method private k()Z
.registers 3
iget v0, p0, Lcom/twidroid/net/b/a/a;->u:I
const/16 v1, 0x7d0
if-lt v0, v1, :cond_12
iget v0, p0, Lcom/twidroid/net/b/a/a;->u:I
iget-object v1, p0, Lcom/twidroid/net/b/a/a;->t:Ljava/util/LinkedHashMap;
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
.method private l()V
.registers 3
iget-object v0, p0, Lcom/twidroid/net/b/a/a;->s:Ljava/io/Writer;
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "cache is closed"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
return-void
.end method
.method private m()V
.registers 5
:goto_0
iget-wide v0, p0, Lcom/twidroid/net/b/a/a;->r:J
iget-wide v2, p0, Lcom/twidroid/net/b/a/a;->p:J
cmp-long v0, v0, v2
if-lez v0, :cond_22
iget-object v0, p0, Lcom/twidroid/net/b/a/a;->t:Ljava/util/LinkedHashMap;
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
invoke-virtual {p0, v0}, Lcom/twidroid/net/b/a/a;->c(Ljava/lang/String;)Z
goto :goto_0
:cond_22
return-void
.end method
.method public declared-synchronized a(Ljava/lang/String;)Lcom/twidroid/net/b/a/e;
.registers 10
const/4 v3, 0x0
monitor-enter p0
:try_start_2
invoke-direct {p0}, Lcom/twidroid/net/b/a/a;->l()V
invoke-direct {p0, p1}, Lcom/twidroid/net/b/a/a;->e(Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/net/b/a/a;->t:Ljava/util/LinkedHashMap;
invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
move-object v0, v1
check-cast v0, Lcom/twidroid/net/b/a/d;
move-object v2, v0
:try_end_12
.catchall {:try_start_2 .. :try_end_12} :catchall_77
if-nez v2, :cond_17
move-object v1, v3
:goto_15
monitor-exit p0
return-object v1
:cond_17
:try_start_17
invoke-static {v2}, Lcom/twidroid/net/b/a/d;->d(Lcom/twidroid/net/b/a/d;)Z
move-result v1
if-nez v1, :cond_1f
move-object v1, v3
goto :goto_15
:cond_1f
iget v1, p0, Lcom/twidroid/net/b/a/a;->q:I
new-array v6, v1, [Ljava/io/InputStream;
:try_end_23
.catchall {:try_start_17 .. :try_end_23} :catchall_77
const/4 v1, 0x0
:goto_24
:try_start_24
iget v4, p0, Lcom/twidroid/net/b/a/a;->q:I
if-ge v1, v4, :cond_39
new-instance v4, Ljava/io/FileInputStream;
invoke-virtual {v2, v1}, Lcom/twidroid/net/b/a/d;->a(I)Ljava/io/File;
move-result-object v5
invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
aput-object v4, v6, v1
:try_end_33
.catchall {:try_start_24 .. :try_end_33} :catchall_77
.catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_33} :catch_36
add-int/lit8 v1, v1, 0x1
goto :goto_24
:catch_36
move-exception v1
move-object v1, v3
goto :goto_15
:try_start_39
:cond_39
iget v1, p0, Lcom/twidroid/net/b/a/a;->u:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/twidroid/net/b/a/a;->u:I
iget-object v1, p0, Lcom/twidroid/net/b/a/a;->s:Ljava/io/Writer;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "READ "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const/16 v4, 0xa
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
invoke-direct {p0}, Lcom/twidroid/net/b/a/a;->k()Z
move-result v1
if-eqz v1, :cond_6a
iget-object v1, p0, Lcom/twidroid/net/b/a/a;->w:Ljava/util/concurrent/ExecutorService;
iget-object v3, p0, Lcom/twidroid/net/b/a/a;->x:Ljava/util/concurrent/Callable;
invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
:cond_6a
new-instance v1, Lcom/twidroid/net/b/a/e;
invoke-static {v2}, Lcom/twidroid/net/b/a/d;->e(Lcom/twidroid/net/b/a/d;)J
move-result-wide v4
const/4 v7, 0x0
move-object v2, p0
move-object v3, p1
invoke-direct/range {v1 .. v7}, Lcom/twidroid/net/b/a/e;-><init>(Lcom/twidroid/net/b/a/a;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/twidroid/net/b/a/a$1;)V
:try_end_76
.catchall {:try_start_39 .. :try_end_76} :catchall_77
goto :goto_15
:catchall_77
move-exception v1
monitor-exit p0
throw v1
.end method
.method public a()Ljava/io/File;
.registers 2
iget-object v0, p0, Lcom/twidroid/net/b/a/a;->l:Ljava/io/File;
return-object v0
.end method
.method public b()J
.registers 3
iget-wide v0, p0, Lcom/twidroid/net/b/a/a;->p:J
return-wide v0
.end method
.method public b(Ljava/lang/String;)Lcom/twidroid/net/b/a/b;
.registers 4
const-wide/16 v0, -0x1
invoke-direct {p0, p1, v0, v1}, Lcom/twidroid/net/b/a/a;->a(Ljava/lang/String;J)Lcom/twidroid/net/b/a/b;
move-result-object v0
return-object v0
.end method
.method public declared-synchronized c()J
.registers 3
monitor-enter p0
:try_start_1
iget-wide v0, p0, Lcom/twidroid/net/b/a/a;->r:J
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return-wide v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized c(Ljava/lang/String;)Z
.registers 8
const/4 v1, 0x0
monitor-enter p0
:try_start_2
invoke-direct {p0}, Lcom/twidroid/net/b/a/a;->l()V
invoke-direct {p0, p1}, Lcom/twidroid/net/b/a/a;->e(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/net/b/a/a;->t:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/net/b/a/d;
if-eqz v0, :cond_18
invoke-static {v0}, Lcom/twidroid/net/b/a/d;->a(Lcom/twidroid/net/b/a/d;)Lcom/twidroid/net/b/a/b;
:try_end_15
.catchall {:try_start_2 .. :try_end_15} :catchall_57
move-result-object v2
if-eqz v2, :cond_30
:cond_18
move v0, v1
:goto_19
monitor-exit p0
return v0
:try_start_1b
:cond_1b
iget-wide v2, p0, Lcom/twidroid/net/b/a/a;->r:J
invoke-static {v0}, Lcom/twidroid/net/b/a/d;->b(Lcom/twidroid/net/b/a/d;)[J
move-result-object v4
aget-wide v4, v4, v1
sub-long/2addr v2, v4
iput-wide v2, p0, Lcom/twidroid/net/b/a/a;->r:J
invoke-static {v0}, Lcom/twidroid/net/b/a/d;->b(Lcom/twidroid/net/b/a/d;)[J
move-result-object v2
const-wide/16 v3, 0x0
aput-wide v3, v2, v1
add-int/lit8 v1, v1, 0x1
:cond_30
iget v2, p0, Lcom/twidroid/net/b/a/a;->q:I
if-ge v1, v2, :cond_5a
invoke-virtual {v0, v1}, Lcom/twidroid/net/b/a/d;->a(I)Ljava/io/File;
move-result-object v2
invoke-virtual {v2}, Ljava/io/File;->delete()Z
move-result v3
if-nez v3, :cond_1b
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "failed to delete "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_57
:try_end_57
.catchall {:try_start_1b .. :try_end_57} :catchall_57
move-exception v0
monitor-exit p0
throw v0
:cond_5a
:try_start_5a
iget v0, p0, Lcom/twidroid/net/b/a/a;->u:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/twidroid/net/b/a/a;->u:I
iget-object v0, p0, Lcom/twidroid/net/b/a/a;->s:Ljava/io/Writer;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "REMOVE "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const/16 v2, 0xa
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
iget-object v0, p0, Lcom/twidroid/net/b/a/a;->t:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
invoke-direct {p0}, Lcom/twidroid/net/b/a/a;->k()Z
move-result v0
if-eqz v0, :cond_90
iget-object v0, p0, Lcom/twidroid/net/b/a/a;->w:Ljava/util/concurrent/ExecutorService;
iget-object v1, p0, Lcom/twidroid/net/b/a/a;->x:Ljava/util/concurrent/Callable;
invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
:try_end_90
.catchall {:try_start_5a .. :try_end_90} :catchall_57
:cond_90
const/4 v0, 0x1
goto :goto_19
.end method
.method public declared-synchronized close()V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/twidroid/net/b/a/a;->s:Ljava/io/Writer;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_30
if-nez v0, :cond_7
:goto_5
monitor-exit p0
return-void
:try_start_7
:cond_7
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p0, Lcom/twidroid/net/b/a/a;->t:Ljava/util/LinkedHashMap;
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
check-cast v0, Lcom/twidroid/net/b/a/d;
invoke-static {v0}, Lcom/twidroid/net/b/a/d;->a(Lcom/twidroid/net/b/a/d;)Lcom/twidroid/net/b/a/b;
move-result-object v2
if-eqz v2, :cond_16
invoke-static {v0}, Lcom/twidroid/net/b/a/d;->a(Lcom/twidroid/net/b/a/d;)Lcom/twidroid/net/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/net/b/a/b;->b()V
:try_end_2f
.catchall {:try_start_7 .. :try_end_2f} :catchall_30
goto :goto_16
:catchall_30
move-exception v0
monitor-exit p0
throw v0
:cond_33
:try_start_33
invoke-direct {p0}, Lcom/twidroid/net/b/a/a;->m()V
iget-object v0, p0, Lcom/twidroid/net/b/a/a;->s:Ljava/io/Writer;
invoke-virtual {v0}, Ljava/io/Writer;->close()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/net/b/a/a;->s:Ljava/io/Writer;
:try_end_3e
.catchall {:try_start_33 .. :try_end_3e} :catchall_30
goto :goto_5
.end method
.method public d()Z
.registers 2
iget-object v0, p0, Lcom/twidroid/net/b/a/a;->s:Ljava/io/Writer;
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public declared-synchronized e()V
.registers 2
monitor-enter p0
:try_start_1
invoke-direct {p0}, Lcom/twidroid/net/b/a/a;->l()V
invoke-direct {p0}, Lcom/twidroid/net/b/a/a;->m()V
iget-object v0, p0, Lcom/twidroid/net/b/a/a;->s:Ljava/io/Writer;
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
.method public f()V
.registers 2
invoke-virtual {p0}, Lcom/twidroid/net/b/a/a;->close()V
iget-object v0, p0, Lcom/twidroid/net/b/a/a;->l:Ljava/io/File;
invoke-static {v0}, Lcom/twidroid/net/b/a/a;->a(Ljava/io/File;)V
return-void
.end method