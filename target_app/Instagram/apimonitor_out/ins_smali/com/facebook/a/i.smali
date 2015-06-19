.class public final Lcom/facebook/a/i;
.super Ljava/lang/Object;
.source "ErrorReporter.java"
.implements Ljava/lang/Thread$UncaughtExceptionHandler;
.field private static D:Ljava/util/concurrent/atomic/AtomicBoolean;
.field private static final c:Ljava/util/regex/Pattern;
.field private static final j:[Lcom/facebook/a/l;
.field private static n:Lcom/facebook/a/i;
.field private static q:I
.field private static r:I
.field private A:Z
.field private B:Z
.field private C:Lcom/facebook/a/n;
.field  a:Ljava/util/Map;
.field  b:Ljava/util/Map;
.field private d:J
.field private e:Z
.field private f:Ljava/util/ArrayList;
.field private final g:Ljava/util/Map;
.field private final h:Ljava/util/Map;
.field private i:Lcom/facebook/a/c/g;
.field private k:Z
.field private final l:Ljava/lang/Object;
.field private m:Ljava/lang/Thread$UncaughtExceptionHandler;
.field private o:Landroid/content/Context;
.field private p:Ljava/io/File;
.field private final s:Lcom/facebook/a/c/k;
.field private t:Ljava/lang/String;
.field private u:Ljava/lang/String;
.field private volatile v:Ljava/lang/String;
.field private volatile w:Z
.field private x:Z
.field private y:Ljava/lang/String;
.field private final z:Landroid/text/format/Time;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x0
const-string v0, "^\\d+-[a-zA-Z0-9_\\-]+-(\\d+)\\.(temp_stacktrace|stacktrace)$"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/facebook/a/i;->c:Ljava/util/regex/Pattern;
const/4 v0, 0x3
new-array v0, v0, [Lcom/facebook/a/l;
sget-object v1, Lcom/facebook/a/l;->a:Lcom/facebook/a/l;
aput-object v1, v0, v3
const/4 v1, 0x1
sget-object v2, Lcom/facebook/a/l;->b:Lcom/facebook/a/l;
aput-object v2, v0, v1
const/4 v1, 0x2
sget-object v2, Lcom/facebook/a/l;->c:Lcom/facebook/a/l;
aput-object v2, v0, v1
sput-object v0, Lcom/facebook/a/i;->j:[Lcom/facebook/a/l;
const/4 v0, 0x5
sput v0, Lcom/facebook/a/i;->q:I
const/16 v0, 0x14
sput v0, Lcom/facebook/a/i;->r:I
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
sput-object v0, Lcom/facebook/a/i;->D:Ljava/util/concurrent/atomic/AtomicBoolean;
return-void
.end method
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/32 v0, 0xc800
iput-wide v0, p0, Lcom/facebook/a/i;->d:J
iput-boolean v2, p0, Lcom/facebook/a/i;->e:Z
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/facebook/a/i;->f:Ljava/util/ArrayList;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
iput-object v0, p0, Lcom/facebook/a/i;->a:Ljava/util/Map;
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
iput-object v0, p0, Lcom/facebook/a/i;->b:Ljava/util/Map;
iput-boolean v2, p0, Lcom/facebook/a/i;->k:Z
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/facebook/a/i;->l:Ljava/lang/Object;
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/a/i;->p:Ljava/io/File;
new-instance v0, Lcom/facebook/a/c/k;
sget v1, Lcom/facebook/a/i;->r:I
invoke-direct {v0, v1}, Lcom/facebook/a/c/k;-><init>(I)V
iput-object v0, p0, Lcom/facebook/a/i;->s:Lcom/facebook/a/c/k;
iput-boolean v2, p0, Lcom/facebook/a/i;->w:Z
new-instance v0, Landroid/text/format/Time;
invoke-direct {v0}, Landroid/text/format/Time;-><init>()V
iput-object v0, p0, Lcom/facebook/a/i;->z:Landroid/text/format/Time;
iput-boolean v2, p0, Lcom/facebook/a/i;->A:Z
return-void
.end method
.method private a(Landroid/content/Context;Lcom/facebook/a/l;)I
.registers 13
const/4 v7, 0x0
const/4 v9, 0x0
sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;
invoke-static {p2}, Lcom/facebook/a/l;->a(Lcom/facebook/a/l;)Ljava/lang/String;
move-result-object v0
invoke-static {p2}, Lcom/facebook/a/l;->b(Lcom/facebook/a/l;)[Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/facebook/a/i;->a(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
move-result-object v8
if-eqz v8, :cond_dd
array-length v0, v8
if-lez v0, :cond_dd
invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V
new-instance v4, Lcom/facebook/a/d;
invoke-direct {v4}, Lcom/facebook/a/d;-><init>()V
:try_start_1d
const-string v1, "crash attachment"
new-instance v2, Lcom/facebook/a/k;
const/4 v0, 0x0
invoke-direct {v2, p0, v0}, Lcom/facebook/a/k;-><init>(Lcom/facebook/a/i;B)V
sget-object v3, Lcom/facebook/a/a;->b:[Lcom/facebook/a/r;
const/4 v5, 0x0
const/4 v6, 0x0
move-object v0, p0
invoke-direct/range {v0 .. v6}, Lcom/facebook/a/i;->a(Ljava/lang/String;Ljava/lang/Throwable;[Lcom/facebook/a/r;Lcom/facebook/a/d;Ljava/io/Writer;Ljava/util/Map;)V
:goto_2d
:try_end_2d
.catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2d} :catch_40
array-length v2, v8
move v1, v7
:goto_2f
if-ge v7, v2, :cond_af
aget-object v3, v8, v7
const/4 v0, 0x5
if-lt v1, v0, :cond_5a
const-string v0, "minidumps"
invoke-static {p1, v0, v3}, Lcom/facebook/a/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
move v0, v1
:goto_3c
add-int/lit8 v7, v7, 0x1
move v1, v0
goto :goto_2f
:catch_40
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "retrieve exception: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/facebook/a/r;->T:Lcom/facebook/a/r;
invoke-direct {p0, v1, v0, v4, v9}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
goto :goto_2d
:cond_5a
:try_start_5a
invoke-direct {p0, p1, v3, p2}, Lcom/facebook/a/i;->a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/a/l;)Lcom/facebook/a/d;
move-result-object v5
const-string v0, "load failed"
if-eqz v5, :cond_6c
invoke-static {p2}, Lcom/facebook/a/l;->c(Lcom/facebook/a/l;)Lcom/facebook/a/r;
move-result-object v0
invoke-virtual {v5, v0}, Lcom/facebook/a/d;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:cond_6c
sget-object v5, Lcom/facebook/a/r;->a:Lcom/facebook/a/r;
const/4 v6, 0x0
const/16 v9, 0x2e
invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(I)I
move-result v9
invoke-virtual {v3, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v6
const/4 v9, 0x0
invoke-virtual {v4, v5, v6, v9}, Lcom/facebook/a/d;->a(Lcom/facebook/a/r;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;
invoke-static {p2}, Lcom/facebook/a/l;->c(Lcom/facebook/a/l;)Lcom/facebook/a/r;
move-result-object v5
const/4 v6, 0x0
invoke-virtual {v4, v5, v0, v6}, Lcom/facebook/a/d;->a(Lcom/facebook/a/r;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;
sget-object v0, Lcom/facebook/a/r;->S:Lcom/facebook/a/r;
const-string v5, "crash attachment"
const/4 v6, 0x0
invoke-virtual {v4, v0, v5, v6}, Lcom/facebook/a/d;->a(Lcom/facebook/a/r;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;
invoke-direct {p0, v4}, Lcom/facebook/a/i;->a(Lcom/facebook/a/d;)V
invoke-static {p2}, Lcom/facebook/a/l;->a(Lcom/facebook/a/l;)Ljava/lang/String;
move-result-object v0
invoke-static {p1, v0, v3}, Lcom/facebook/a/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
:try_end_97
.catch Lcom/facebook/a/b/c; {:try_start_5a .. :try_end_97} :catch_9a
.catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_97} :catch_c0
add-int/lit8 v0, v1, 0x1
goto :goto_3c
:catch_9a
move-exception v0
sget-object v2, Lcom/facebook/a/a;->a:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Failed to send crash attachment report "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_af
:goto_af
sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "#checkAndSendCrashAttachments - finish, sent: "
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
return v1
:catch_c0
move-exception v0
sget-object v2, Lcom/facebook/a/a;->a:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Failed on crash attachment file "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
invoke-static {p2}, Lcom/facebook/a/l;->a(Lcom/facebook/a/l;)Ljava/lang/String;
move-result-object v0
invoke-static {p1, v0, v3}, Lcom/facebook/a/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_af
:cond_dd
move v1, v7
goto :goto_af
.end method
.method static synthetic a(Lcom/facebook/a/i;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;
return-object v0
.end method
.method private a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/a/d;
.registers 9
sget-object v3, Lcom/facebook/a/l;->a:Lcom/facebook/a/l;
iget-wide v4, p0, Lcom/facebook/a/i;->d:J
move-object v0, p0
move-object v1, p1
move-object v2, p2
invoke-direct/range {v0 .. v5}, Lcom/facebook/a/i;->a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/a/l;J)Lcom/facebook/a/d;
move-result-object v0
return-object v0
.end method
.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/a/l;)Lcom/facebook/a/d;
.registers 10
invoke-static {p3}, Lcom/facebook/a/l;->d(Lcom/facebook/a/l;)J
move-result-wide v4
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
invoke-direct/range {v0 .. v5}, Lcom/facebook/a/i;->a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/a/l;J)Lcom/facebook/a/d;
move-result-object v0
return-object v0
.end method
.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/a/l;J)Lcom/facebook/a/d;
.registers 14
const/4 v0, 0x0
new-instance v1, Lcom/facebook/a/d;
invoke-direct {v1}, Lcom/facebook/a/d;-><init>()V
invoke-static {p3}, Lcom/facebook/a/l;->a(Lcom/facebook/a/l;)Ljava/lang/String;
move-result-object v2
invoke-static {p1, v2, p2}, Lcom/facebook/a/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
move-result-object v3
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
invoke-virtual {v3}, Ljava/io/File;->lastModified()J
move-result-wide v6
sub-long/2addr v4, v6
const-wide/32 v6, 0x5265c00
cmp-long v2, v4, v6
if-lez v2, :cond_38
sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "crash report "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " was too old; deleted"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p3}, Lcom/facebook/a/l;->a(Lcom/facebook/a/l;)Ljava/lang/String;
move-result-object v1
invoke-static {p1, v1, p2}, Lcom/facebook/a/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
:goto_37
return-object v0
:cond_38
const-string v2, ".temp_stacktrace"
invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_63
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
invoke-virtual {v3}, Ljava/io/File;->lastModified()J
move-result-wide v6
sub-long/2addr v4, v6
const-wide/32 v6, 0x927c0
cmp-long v2, v4, v6
if-gez v2, :cond_63
sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "temp file "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " is too recent; skipping"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_37
:cond_63
invoke-virtual {v3}, Ljava/io/File;->length()J
move-result-wide v4
cmp-long v2, v4, p4
if-lez v2, :cond_9b
sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3}, Ljava/io/File;->length()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "-byte crash report "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " exceeded max size of "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " bytes; deleted"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p3}, Lcom/facebook/a/l;->a(Lcom/facebook/a/l;)Ljava/lang/String;
move-result-object v1
invoke-static {p1, v1, p2}, Lcom/facebook/a/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_37
:cond_9b
new-instance v4, Ljava/io/FileInputStream;
invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
const/4 v2, 0x0
:try_start_a1
sget-object v0, Lcom/facebook/a/l;->a:Lcom/facebook/a/l;
if-ne p3, v0, :cond_b5
invoke-virtual {v1, v4}, Lcom/facebook/a/d;->a(Ljava/io/InputStream;)V
:goto_a8
:try_end_a8
.catchall {:try_start_a1 .. :try_end_a8} :catchall_11f
.catch Ljava/lang/Throwable; {:try_start_a1 .. :try_end_a8} :catch_c6
invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
:goto_ab
sget-object v0, Lcom/facebook/a/r;->R:Lcom/facebook/a/r;
invoke-virtual {v1, v0, p2}, Lcom/facebook/a/d;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
invoke-direct {p0, v1}, Lcom/facebook/a/i;->b(Lcom/facebook/a/d;)V
move-object v0, v1
goto :goto_37
:cond_b5
:try_start_b5
invoke-virtual {v3}, Ljava/io/File;->length()J
move-result-wide v5
long-to-int v0, v5
invoke-static {v4, v0}, Lcom/facebook/a/i;->a(Ljava/io/InputStream;I)Ljava/lang/String;
move-result-object v0
invoke-static {p3}, Lcom/facebook/a/l;->c(Lcom/facebook/a/l;)Lcom/facebook/a/r;
move-result-object v3
invoke-virtual {v1, v3, v0}, Lcom/facebook/a/d;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_c5
.catchall {:try_start_b5 .. :try_end_c5} :catchall_11f
.catch Ljava/lang/Throwable; {:try_start_b5 .. :try_end_c5} :catch_c6
goto :goto_a8
:catch_c6
move-exception v0
:try_start_c7
sget-object v3, Lcom/facebook/a/r;->T:Lcom/facebook/a/r;
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "throwable: "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v3, v5}, Lcom/facebook/a/d;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v3, Lcom/facebook/a/a;->a:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Could not load crash report:"
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, " "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
const/4 v2, 0x1
invoke-virtual {p1, p2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string v5, "Crash report:"
invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v5, " deleted"
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:try_end_11e
.catchall {:try_start_c7 .. :try_end_11e} :catchall_11f
goto :goto_ab
:catchall_11f
move-exception v0
move v1, v2
if-nez v1, :cond_126
invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
:cond_126
throw v0
.end method
.method public static a()Lcom/facebook/a/i;
.registers 1
sget-object v0, Lcom/facebook/a/i;->n:Lcom/facebook/a/i;
if-nez v0, :cond_b
new-instance v0, Lcom/facebook/a/i;
invoke-direct {v0}, Lcom/facebook/a/i;-><init>()V
sput-object v0, Lcom/facebook/a/i;->n:Lcom/facebook/a/i;
:cond_b
sget-object v0, Lcom/facebook/a/i;->n:Lcom/facebook/a/i;
return-object v0
.end method
.method private a(Ljava/lang/Throwable;Ljava/util/Map;[Lcom/facebook/a/r;Z)Lcom/facebook/a/m;
.registers 15
invoke-static {p1}, Lcom/facebook/a/i;->c(Ljava/lang/Throwable;)Ljava/lang/Throwable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-direct {p0, v0}, Lcom/facebook/a/i;->d(Ljava/lang/Throwable;)Z
move-result v0
if-nez v0, :cond_10
const/4 v0, 0x0
:goto_f
return-object v0
:cond_10
new-instance v4, Lcom/facebook/a/d;
invoke-direct {v4}, Lcom/facebook/a/d;-><init>()V
instance-of v0, p1, Lcom/facebook/a/p;
if-eqz v0, :cond_b1
move-object v0, p1
check-cast v0, Lcom/facebook/a/p;
invoke-interface {v0}, Lcom/facebook/a/p;->a()Ljava/lang/String;
move-result-object v0
:goto_20
sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string v5, "Handling exception for "
invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v2, 0x0
invoke-direct {p0, v1, v0, p1, v2}, Lcom/facebook/a/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;
const-string v0, ".temp_stacktrace"
invoke-direct {p0, v3, v0}, Lcom/facebook/a/i;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;
const-string v2, "acra-reports"
invoke-static {v1, v2, v0}, Lcom/facebook/a/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
move-result-object v8
const-string v0, ".stacktrace"
invoke-direct {p0, v3, v0}, Lcom/facebook/a/i;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
iget-object v0, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;
const-string v1, "acra-reports"
invoke-static {v0, v1, v6}, Lcom/facebook/a/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
move-result-object v9
const/4 v1, 0x0
const/4 v5, 0x0
:try_start_55
iget-boolean v0, p0, Lcom/facebook/a/i;->A:Z
if-eqz v0, :cond_5e
iget-object v0, p0, Lcom/facebook/a/i;->p:Ljava/io/File;
invoke-virtual {v0, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
:cond_5e
new-instance v2, Ljava/io/RandomAccessFile;
const-string v0, "rw"
invoke-direct {v2, v8, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
:try_end_65
.catch Ljava/lang/Exception; {:try_start_55 .. :try_end_65} :catch_b5
:try_start_65
new-instance v0, Ljava/io/FileOutputStream;
invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
invoke-static {v0}, Lcom/facebook/a/d;->a(Ljava/io/OutputStream;)Ljava/io/Writer;
:try_end_71
.catch Ljava/lang/Exception; {:try_start_65 .. :try_end_71} :catch_152
move-result-object v5
move-object v7, v2
:goto_73
:try_start_73
sget-object v0, Lcom/facebook/a/r;->R:Lcom/facebook/a/r;
invoke-direct {p0, v0, v6, v4, v5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
sget-object v0, Lcom/facebook/a/r;->S:Lcom/facebook/a/r;
invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v0, v1, v4, v5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
invoke-static {p1}, Lcom/facebook/a/i;->a(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v1
move-object v0, p0
move-object v2, p1
move-object v3, p3
move-object v6, p2
invoke-direct/range {v0 .. v6}, Lcom/facebook/a/i;->a(Ljava/lang/String;Ljava/lang/Throwable;[Lcom/facebook/a/r;Lcom/facebook/a/d;Ljava/io/Writer;Ljava/util/Map;)V
:try_end_8c
.catchall {:try_start_73 .. :try_end_8c} :catchall_117
.catch Ljava/lang/Exception; {:try_start_73 .. :try_end_8c} :catch_cb
if-eqz v7, :cond_9f
:try_start_8e
invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
move-result-object v0
invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
invoke-virtual {v8, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
:goto_9f
:try_end_9f
.catch Ljava/lang/Exception; {:try_start_8e .. :try_end_9f} :catch_c2
:cond_9f
if-eqz p4, :cond_14d
iget-boolean v0, p0, Lcom/facebook/a/i;->w:Z
if-eqz v0, :cond_13e
new-instance v0, Lcom/facebook/a/m;
invoke-direct {v0, p0, v4}, Lcom/facebook/a/m;-><init>(Lcom/facebook/a/i;Lcom/facebook/a/d;)V
:goto_aa
sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;
invoke-virtual {v0}, Lcom/facebook/a/m;->start()V
goto/16 :goto_f
:cond_b1
const-string v0, "crash"
goto/16 :goto_20
:catch_b5
move-exception v0
:goto_b6
sget-object v2, Lcom/facebook/a/a;->a:Ljava/lang/String;
const-string v7, "An error occurred while creating the report file ..."
invoke-static {v2, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/a/i;->w:Z
move-object v7, v1
goto :goto_73
:catch_c2
move-exception v0
sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;
const-string v2, "An error occurred while deleting closing the report file ..."
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_9f
:catch_cb
move-exception v0
:try_start_cc
sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;
const-string v2, "An error occurred while gathering crash data ..."
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
sget-object v1, Lcom/facebook/a/r;->N:Lcom/facebook/a/r;
invoke-static {v0}, Lcom/facebook/a/i;->a(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v1, v2, v4, v5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
:try_end_dc
.catchall {:try_start_cc .. :try_end_dc} :catchall_12c
.catch Ljava/lang/Exception; {:try_start_cc .. :try_end_dc} :catch_100
:try_start_dc
sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;
const-string v2, "An error occurred while gathering crash data ..."
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_e3
.catchall {:try_start_dc .. :try_end_e3} :catchall_117
:goto_e3
if-eqz v7, :cond_9f
:try_start_e5
invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
move-result-object v0
invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
invoke-virtual {v8, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
:try_end_f6
.catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_f6} :catch_f7
goto :goto_9f
:catch_f7
move-exception v0
sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;
const-string v2, "An error occurred while deleting closing the report file ..."
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_9f
:catch_100
move-exception v1
:try_start_101
sget-object v2, Lcom/facebook/a/a;->a:Ljava/lang/String;
const-string v3, "An error occurred while gathering internal crash data ..."
invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
sget-object v1, Lcom/facebook/a/r;->N:Lcom/facebook/a/r;
const-string v2, "ACRA_INTERNAL=java.lang.Exception: An exception occurred while trying to collect data about an ACRA internal error\n\tat com.facebook.acra.ErrorReporter.handleException(ErrorReporter.java:810)\n\tat com.facebook.acra.ErrorReporter.handleException(ErrorReporter.java:866)\n\tat com.facebook.acra.ErrorReporter.uncaughtException(ErrorReporter.java:666)\n\tat java.lang.ThreadGroup.uncaughtException(ThreadGroup.java:693)\n\tat java.lang.ThreadGroup.uncaughtException(ThreadGroup.java:690)\n"
invoke-direct {p0, v1, v2, v4, v5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
:try_start_10f
:try_end_10f
.catchall {:try_start_101 .. :try_end_10f} :catchall_12c
sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;
const-string v2, "An error occurred while gathering crash data ..."
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_116
.catchall {:try_start_10f .. :try_end_116} :catchall_117
goto :goto_e3
:catchall_117
move-exception v0
if-eqz v7, :cond_12b
:try_start_11a
invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
move-result-object v1
invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
invoke-virtual {v8, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
:cond_12b
:try_end_12b
.catch Ljava/lang/Exception; {:try_start_11a .. :try_end_12b} :catch_135
:goto_12b
throw v0
:catchall_12c
move-exception v1
:try_start_12d
sget-object v2, Lcom/facebook/a/a;->a:Ljava/lang/String;
const-string v3, "An error occurred while gathering crash data ..."
invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
throw v1
:catch_135
:try_end_135
.catchall {:try_start_12d .. :try_end_135} :catchall_117
move-exception v1
sget-object v2, Lcom/facebook/a/a;->a:Ljava/lang/String;
const-string v3, "An error occurred while deleting closing the report file ..."
invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_12b
:cond_13e
new-instance v0, Lcom/facebook/a/m;
const/4 v1, 0x1
new-array v1, v1, [Lcom/facebook/a/l;
const/4 v2, 0x0
sget-object v3, Lcom/facebook/a/l;->a:Lcom/facebook/a/l;
aput-object v3, v1, v2
invoke-direct {v0, p0, v1}, Lcom/facebook/a/m;-><init>(Lcom/facebook/a/i;[Lcom/facebook/a/l;)V
goto/16 :goto_aa
:cond_14d
sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;
const/4 v0, 0x0
goto/16 :goto_f
:catch_152
move-exception v0
move-object v1, v2
goto/16 :goto_b6
.end method
.method private varargs a([Lcom/facebook/a/l;)Lcom/facebook/a/m;
.registers 3
new-instance v0, Lcom/facebook/a/m;
invoke-direct {v0, p0, p1}, Lcom/facebook/a/m;-><init>(Lcom/facebook/a/i;[Lcom/facebook/a/l;)V
invoke-virtual {v0}, Lcom/facebook/a/m;->start()V
return-object v0
.end method
.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.registers 5
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;
move-result-object v0
new-instance v1, Ljava/io/File;
invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
return-object v1
.end method
.method private static a(J)Ljava/lang/String;
.registers 4
new-instance v0, Landroid/text/format/Time;
invoke-direct {v0}, Landroid/text/format/Time;-><init>()V
invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static a(Landroid/view/Display;)Ljava/lang/String;
.registers 6
const/16 v4, 0xa
new-instance v0, Landroid/util/DisplayMetrics;
invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V
invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "width="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0}, Landroid/view/Display;->getWidth()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "height="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0}, Landroid/view/Display;->getHeight()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "pixelFormat="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0}, Landroid/view/Display;->getPixelFormat()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "refreshRate="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "fps\nmetrics.density=x"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget v3, v0, Landroid/util/DisplayMetrics;->density:F
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "metrics.scaledDensity=x"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget v3, v0, Landroid/util/DisplayMetrics;->scaledDensity:F
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "metrics.widthPixels="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "metrics.heightPixels="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "metrics.xdpi="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget v3, v0, Landroid/util/DisplayMetrics;->xdpi:F
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "metrics.ydpi="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static a(Ljava/io/InputStream;I)Ljava/lang/String;
.registers 7
const/4 v0, 0x0
new-array v3, p1, [B
move v1, v0
:goto_4
sub-int v2, p1, v1
if-lez v2, :cond_13
sub-int v0, p1, v1
invoke-virtual {p0, v3, v1, v0}, Ljava/io/InputStream;->read([BII)I
move-result v0
const/4 v2, -0x1
if-eq v0, v2, :cond_13
add-int/2addr v1, v0
goto :goto_4
:cond_13
if-nez v0, :cond_18
const-string v0, ""
:goto_17
return-object v0
:cond_18
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
const/4 v2, 0x0
:try_start_1e
new-instance v1, Ljava/util/zip/GZIPOutputStream;
invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
:try_end_23
.catchall {:try_start_1e .. :try_end_23} :catchall_38
const/4 v2, 0x0
:try_start_24
array-length v4, v3
invoke-virtual {v1, v3, v2, v4}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
const/4 v2, 0x0
invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
:try_end_33
.catchall {:try_start_24 .. :try_end_33} :catchall_40
move-result-object v0
invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
goto :goto_17
:catchall_38
move-exception v0
move-object v1, v2
:goto_3a
if-eqz v1, :cond_3f
invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
:cond_3f
throw v0
:catchall_40
move-exception v0
goto :goto_3a
.end method
.method private a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "-"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v0, p0, Lcom/facebook/a/i;->t:Ljava/lang/String;
if-eqz v0, :cond_41
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "-"
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/facebook/a/i;->t:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_34
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_41
const-string v0, ""
goto :goto_34
.end method
.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
.registers 3
if-nez p0, :cond_9
new-instance p0, Ljava/lang/Exception;
const-string v0, "Report requested by developer"
invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
:cond_9
new-instance v0, Ljava/io/StringWriter;
invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V
new-instance v1, Ljava/io/PrintWriter;
invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private a(Ljava/util/Map;Ljava/lang/Throwable;)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/facebook/a/i;->a:Ljava/util/Map;
invoke-static {v0, v1}, Lcom/facebook/a/i;->b(Ljava/lang/StringBuilder;Ljava/util/Map;)V
if-eqz p1, :cond_f
invoke-static {v0, p1}, Lcom/facebook/a/i;->b(Ljava/lang/StringBuilder;Ljava/util/Map;)V
:cond_f
iget-object v1, p0, Lcom/facebook/a/i;->b:Ljava/util/Map;
invoke-static {v0, v1}, Lcom/facebook/a/i;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)V
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private a(Landroid/content/Context;)V
.registers 10
const/4 v0, 0x0
const-string v1, "acra-reports"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const-string v3, ".stacktrace"
aput-object v3, v2, v0
const/4 v3, 0x1
const-string v4, ".temp_stacktrace"
aput-object v4, v2, v3
invoke-direct {p0, v1, v2}, Lcom/facebook/a/i;->a(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V
invoke-direct {p0}, Lcom/facebook/a/i;->h()Ljava/lang/String;
move-result-object v3
array-length v4, v2
move v1, v0
:goto_1c
if-ge v1, v4, :cond_57
aget-object v5, v2, v1
const/4 v6, 0x5
if-lt v0, v6, :cond_2b
const-string v6, "acra-reports"
invoke-static {p1, v6, v5}, Lcom/facebook/a/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
:goto_28
add-int/lit8 v1, v1, 0x1
goto :goto_1c
:cond_2b
sget-object v6, Lcom/facebook/a/a;->a:Ljava/lang/String;
:try_start_2d
invoke-direct {p0, p1, v5}, Lcom/facebook/a/i;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/a/d;
move-result-object v6
if-eqz v6, :cond_47
sget-object v7, Lcom/facebook/a/r;->R:Lcom/facebook/a/r;
invoke-virtual {v6, v7, v5}, Lcom/facebook/a/d;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v7, Lcom/facebook/a/r;->L:Lcom/facebook/a/r;
invoke-virtual {v6, v7, v3}, Lcom/facebook/a/d;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v7, Lcom/facebook/a/a;->a:Ljava/lang/String;
invoke-direct {p0, v6}, Lcom/facebook/a/i;->a(Lcom/facebook/a/d;)V
const-string v6, "acra-reports"
invoke-static {p1, v6, v5}, Lcom/facebook/a/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
:try_end_47
.catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_47} :catch_4a
.catch Ljava/io/IOException; {:try_start_2d .. :try_end_47} :catch_58
.catch Lcom/facebook/a/b/c; {:try_start_2d .. :try_end_47} :catch_73
:cond_47
add-int/lit8 v0, v0, 0x1
goto :goto_28
:catch_4a
move-exception v0
sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;
const-string v2, "Failed to send crash reports"
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const-string v0, "acra-reports"
invoke-static {p1, v0, v5}, Lcom/facebook/a/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
:goto_57
:cond_57
return-void
:catch_58
move-exception v0
sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Failed to load crash report for "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const-string v0, "acra-reports"
invoke-static {p1, v0, v5}, Lcom/facebook/a/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_57
:catch_73
move-exception v0
sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Failed to send crash report for "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_57
.end method
.method private a(Landroid/content/Context;Ljava/lang/Throwable;[Lcom/facebook/a/r;Lcom/facebook/a/d;Ljava/io/Writer;)V
.registers 11
const/4 v4, 0x0
invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
sget-object v0, Lcom/facebook/a/r;->a:Lcom/facebook/a/r;
invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1a
sget-object v0, Lcom/facebook/a/r;->a:Lcom/facebook/a/r;
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v2
invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v0, v2, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
:cond_1a
sget-object v0, Lcom/facebook/a/r;->J:Lcom/facebook/a/r;
invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2b
sget-object v0, Lcom/facebook/a/r;->J:Lcom/facebook/a/r;
invoke-direct {p0}, Lcom/facebook/a/i;->i()Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v0, v2, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
:cond_2b
sget-object v0, Lcom/facebook/a/r;->u:Lcom/facebook/a/r;
invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3e
sget-object v0, Lcom/facebook/a/r;->u:Lcom/facebook/a/r;
iget-object v2, p0, Lcom/facebook/a/i;->z:Landroid/text/format/Time;
invoke-virtual {v2, v4}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v0, v2, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
:cond_3e
sget-object v0, Lcom/facebook/a/r;->O:Lcom/facebook/a/r;
invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_53
sget-object v0, Lcom/facebook/a/r;->O:Lcom/facebook/a/r;
invoke-static {}, Lcom/facebook/a/i;->k()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v0, v2, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
:cond_53
sget-object v0, Lcom/facebook/a/r;->P:Lcom/facebook/a/r;
invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_68
sget-object v0, Lcom/facebook/a/r;->P:Lcom/facebook/a/r;
invoke-static {}, Lcom/facebook/a/i;->l()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v0, v2, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
:cond_68
sget-object v0, Lcom/facebook/a/r;->s:Lcom/facebook/a/r;
invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_81
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
sget-object v2, Lcom/facebook/a/r;->s:Lcom/facebook/a/r;
invoke-static {v0}, Lcom/facebook/a/c;->a(Landroid/content/res/Configuration;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v2, v0, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
:cond_81
sget-object v0, Lcom/facebook/a/r;->p:Lcom/facebook/a/r;
invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_96
invoke-static {}, Lcom/facebook/a/i;->n()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v0
sget-object v2, Lcom/facebook/a/r;->p:Lcom/facebook/a/r;
invoke-direct {p0, v2, v0, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
:cond_96
sget-object v0, Lcom/facebook/a/r;->w:Lcom/facebook/a/r;
invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_a7
sget-object v0, Lcom/facebook/a/r;->w:Lcom/facebook/a/r;
invoke-static {p1}, Lcom/facebook/a/h;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v0, v2, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
:cond_a7
sget-object v0, Lcom/facebook/a/r;->v:Lcom/facebook/a/r;
invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_c0
new-instance v0, Landroid/text/format/Time;
invoke-direct {v0}, Landroid/text/format/Time;-><init>()V
invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V
sget-object v2, Lcom/facebook/a/r;->v:Lcom/facebook/a/r;
invoke-virtual {v0, v4}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v2, v0, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
:cond_c0
sget-object v0, Lcom/facebook/a/r;->M:Lcom/facebook/a/r;
invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_d7
instance-of v0, p2, Ljava/lang/OutOfMemoryError;
if-eqz v0, :cond_1a9
iget-object v0, p0, Lcom/facebook/a/i;->s:Lcom/facebook/a/c/k;
invoke-virtual {v0}, Lcom/facebook/a/c/k;->toString()Ljava/lang/String;
move-result-object v0
:goto_d2
sget-object v2, Lcom/facebook/a/r;->M:Lcom/facebook/a/r;
invoke-direct {p0, v2, v0, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
:cond_d7
sget-object v0, Lcom/facebook/a/r;->K:Lcom/facebook/a/r;
invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_e8
sget-object v0, Lcom/facebook/a/r;->K:Lcom/facebook/a/r;
invoke-direct {p0}, Lcom/facebook/a/i;->h()Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v0, v2, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
:cond_e8
invoke-direct {p0}, Lcom/facebook/a/i;->g()V
sget-object v0, Lcom/facebook/a/r;->V:Lcom/facebook/a/r;
invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_100
sget-object v0, Lcom/facebook/a/r;->V:Lcom/facebook/a/r;
invoke-static {}, Lcom/facebook/a/c/h;->a()I
move-result v2
invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v0, v2, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
:cond_100
sget-object v0, Lcom/facebook/a/r;->W:Lcom/facebook/a/r;
invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_110
sget-object v0, Lcom/facebook/a/r;->X:Lcom/facebook/a/r;
invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_134
:cond_110
invoke-static {}, Lcom/facebook/a/c/h;->b()Lcom/facebook/a/c/i;
move-result-object v0
if-eqz v0, :cond_134
sget-object v2, Lcom/facebook/a/r;->W:Lcom/facebook/a/r;
invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_125
sget-object v2, Lcom/facebook/a/r;->W:Lcom/facebook/a/r;
iget-object v3, v0, Lcom/facebook/a/c/i;->a:Ljava/lang/String;
invoke-direct {p0, v2, v3, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
:cond_125
sget-object v2, Lcom/facebook/a/r;->X:Lcom/facebook/a/r;
invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_134
sget-object v2, Lcom/facebook/a/r;->X:Lcom/facebook/a/r;
iget-object v0, v0, Lcom/facebook/a/c/i;->b:Ljava/lang/String;
invoke-direct {p0, v2, v0, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
:cond_134
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x10
if-lt v0, v2, :cond_191
iget-boolean v0, p0, Lcom/facebook/a/i;->B:Z
if-eqz v0, :cond_191
sget-object v0, Lcom/facebook/a/r;->y:Lcom/facebook/a/r;
invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_150
sget-object v0, Lcom/facebook/a/r;->y:Lcom/facebook/a/r;
const/4 v2, 0x0
invoke-static {v2}, Lcom/facebook/a/o;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v0, v2, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
:cond_150
sget-object v0, Lcom/facebook/a/r;->z:Lcom/facebook/a/r;
invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_163
sget-object v0, Lcom/facebook/a/r;->z:Lcom/facebook/a/r;
const-string v2, "events"
invoke-static {v2}, Lcom/facebook/a/o;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v0, v2, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
:cond_163
sget-object v0, Lcom/facebook/a/r;->A:Lcom/facebook/a/r;
invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_176
sget-object v0, Lcom/facebook/a/r;->A:Lcom/facebook/a/r;
const-string v2, "radio"
invoke-static {v2}, Lcom/facebook/a/o;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v0, v2, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
:cond_176
sget-object v0, Lcom/facebook/a/r;->x:Lcom/facebook/a/r;
invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_191
iget-object v0, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;
invoke-static {}, Lcom/facebook/a/a;->a()Lcom/facebook/a/a/b;
move-result-object v2
invoke-interface {v2}, Lcom/facebook/a/a/b;->a()[Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/facebook/a/g;->a(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sget-object v2, Lcom/facebook/a/r;->x:Lcom/facebook/a/r;
invoke-direct {p0, v2, v0, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
:cond_191
sget-object v0, Lcom/facebook/a/r;->ad:Lcom/facebook/a/r;
invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1a8
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_1a8
sget-object v0, Lcom/facebook/a/r;->ad:Lcom/facebook/a/r;
invoke-static {p1}, Lcom/facebook/a/h;->b(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v0, v1, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
:cond_1a8
return-void
:cond_1a9
iget-object v0, p0, Lcom/facebook/a/i;->s:Lcom/facebook/a/c/k;
sget v2, Lcom/facebook/a/i;->q:I
invoke-virtual {v0, v2}, Lcom/facebook/a/c/k;->a(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_d2
.end method
.method private a(Lcom/facebook/a/d;)V
.registers 7
const/4 v0, 0x0
iget-object v1, p0, Lcom/facebook/a/i;->f:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
move v1, v0
:goto_8
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_39
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/a/b/b;
:try_start_14
invoke-interface {v0, p1}, Lcom/facebook/a/b/b;->a(Lcom/facebook/a/d;)V
:try_end_17
.catch Lcom/facebook/a/b/c; {:try_start_14 .. :try_end_17} :catch_1a
const/4 v0, 0x1
move v1, v0
goto :goto_8
:catch_1a
move-exception v3
if-nez v1, :cond_1e
throw v3
:cond_1e
sget-object v3, Lcom/facebook/a/a;->a:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "ReportSender of class "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, " failed but other senders completed their task. ACRA will not send this report again."
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_8
:cond_39
return-void
.end method
.method private a(Lcom/facebook/a/d;Ljava/io/Writer;)V
.registers 6
invoke-direct {p0}, Lcom/facebook/a/i;->p()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_28
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/a/r;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
goto :goto_c
:cond_28
return-void
.end method
.method private a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
.registers 6
:try_start_0
iget-boolean v0, p0, Lcom/facebook/a/i;->w:Z
if-eqz v0, :cond_5
const/4 p4, 0x0
:cond_5
invoke-virtual {p3, p1, p2, p4}, Lcom/facebook/a/d;->a(Lcom/facebook/a/r;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;
:try_end_8
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9
:goto_8
return-void
:catch_9
move-exception v0
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/a/i;->w:Z
goto :goto_8
.end method
.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
.registers 6
invoke-direct {p0}, Lcom/facebook/a/i;->d()Lcom/facebook/a/n;
move-result-object v0
if-eqz v0, :cond_a
invoke-interface {v0, p1, p2, p3}, Lcom/facebook/a/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:goto_9
return-void
:cond_a
invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_9
.end method
.method private a(Ljava/lang/String;Ljava/lang/Throwable;[Lcom/facebook/a/r;Lcom/facebook/a/d;Ljava/io/Writer;Ljava/util/Map;)V
.registers 13
if-nez p3, :cond_4e
sget-object v3, Lcom/facebook/a/a;->c:[Lcom/facebook/a/r;
:goto_4
sget-object v0, Lcom/facebook/a/r;->c:Lcom/facebook/a/r;
invoke-direct {p0}, Lcom/facebook/a/i;->e()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v0, v1, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
sget-object v0, Lcom/facebook/a/r;->r:Lcom/facebook/a/r;
invoke-direct {p0, v0, p1, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
iget-object v0, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_1c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_38
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/a/r;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-direct {p0, v1, v0, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
goto :goto_1c
:cond_38
iget-object v1, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;
move-object v0, p0
move-object v2, p2
move-object v4, p4
move-object v5, p5
invoke-direct/range {v0 .. v5}, Lcom/facebook/a/i;->a(Landroid/content/Context;Ljava/lang/Throwable;[Lcom/facebook/a/r;Lcom/facebook/a/d;Ljava/io/Writer;)V
invoke-direct {p0, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/d;Ljava/io/Writer;)V
sget-object v0, Lcom/facebook/a/r;->q:Lcom/facebook/a/r;
invoke-direct {p0, p6, p2}, Lcom/facebook/a/i;->a(Ljava/util/Map;Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v0, v1, p4, p5}, Lcom/facebook/a/i;->a(Lcom/facebook/a/r;Ljava/lang/String;Lcom/facebook/a/d;Ljava/io/Writer;)V
return-void
:cond_4e
move-object v3, p3
goto :goto_4
.end method
.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
const/4 v0, 0x0
if-eqz p1, :cond_29
const-string v1, "\n"
const-string v2, "\\n"
invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v1
:goto_b
if-eqz p2, :cond_15
const-string v0, "\n"
const-string v2, "\\n"
invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
:cond_15
invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
return-void
:cond_29
move-object v1, v0
goto :goto_b
.end method
.method private static a(Ljava/lang/StringBuilder;Ljava/util/Map;)V
.registers 6
invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_8
:cond_8
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_33
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
:try_start_1a
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/a/e;
invoke-interface {v0}, Lcom/facebook/a/e;->a()Ljava/lang/String;
:try_end_23
.catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_23} :catch_2a
move-result-object v0
if-eqz v0, :cond_8
invoke-static {p0, v1, v0}, Lcom/facebook/a/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_8
:catch_2a
move-exception v0
sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;
const-string v3, "Caught throwable while getting custom report data"
invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_8
:cond_33
return-void
.end method
.method private varargs a(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
.registers 7
const/4 v3, 0x0
iget-object v0, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;
if-nez v0, :cond_f
sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;
const-string v1, "Trying to get ACRA reports but ACRA is not initialized."
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
new-array v0, v3, [Ljava/lang/String;
:cond_e
:goto_e
return-object v0
:cond_f
iget-object v0, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;
invoke-virtual {v0, p1, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;
move-result-object v0
if-eqz v0, :cond_35
sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Looking for error files in "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v1, Lcom/facebook/a/j;
invoke-direct {v1, p0, p2}, Lcom/facebook/a/j;-><init>(Lcom/facebook/a/i;[Ljava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_e
new-array v0, v3, [Ljava/lang/String;
goto :goto_e
:cond_35
sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;
new-array v0, v3, [Ljava/lang/String;
goto :goto_e
.end method
.method private b(Ljava/lang/String;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/facebook/a/i;->a:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-static {p0, p1, p2}, Lcom/facebook/a/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->delete()Z
move-result v0
if-nez v0, :cond_c
sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;
:cond_c
return-void
.end method
.method private b(Lcom/facebook/a/b/b;)V
.registers 3
iget-object v0, p0, Lcom/facebook/a/i;->f:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method private b(Lcom/facebook/a/d;)V
.registers 7
sget-object v0, Lcom/facebook/a/r;->R:Lcom/facebook/a/r;
invoke-virtual {p1, v0}, Lcom/facebook/a/d;->a(Lcom/facebook/a/r;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/facebook/a/i;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/facebook/a/i;->t:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_58
const/4 v0, 0x1
move v2, v0
:goto_14
sget-object v0, Lcom/facebook/a/r;->a:Lcom/facebook/a/r;
invoke-virtual {p1, v0}, Lcom/facebook/a/d;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_24
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_73
:cond_24
iget-object v0, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_2e
:cond_2e
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_73
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/a/r;
sget-object v4, Lcom/facebook/a/r;->e:Lcom/facebook/a/r;
invoke-virtual {v1, v4}, Lcom/facebook/a/r;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5b
if-nez v2, :cond_2e
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Enum;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-virtual {p1, v1, v0}, Lcom/facebook/a/d;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_2e
:cond_58
const/4 v0, 0x0
move v2, v0
goto :goto_14
:cond_5b
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
invoke-virtual {p1, v1}, Lcom/facebook/a/d;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_2e
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Enum;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-virtual {p1, v1, v0}, Lcom/facebook/a/d;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_2e
:cond_73
invoke-direct {p0}, Lcom/facebook/a/i;->e()Ljava/lang/String;
move-result-object v1
sget-object v0, Lcom/facebook/a/r;->c:Lcom/facebook/a/r;
invoke-virtual {p1, v0}, Lcom/facebook/a/d;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_90
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_90
sget-object v0, Lcom/facebook/a/r;->c:Lcom/facebook/a/r;
invoke-virtual {p1, v0, v1}, Lcom/facebook/a/d;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
:cond_90
return-void
.end method
.method private static b(Ljava/lang/StringBuilder;Ljava/util/Map;)V
.registers 5
invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_8
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_24
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {p0, v1, v0}, Lcom/facebook/a/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_8
:cond_24
return-void
.end method
.method private static b(Ljava/lang/Throwable;)[Lcom/facebook/a/r;
.registers 2
instance-of v0, p0, Ljava/lang/OutOfMemoryError;
if-eqz v0, :cond_7
sget-object v0, Lcom/facebook/a/a;->c:[Lcom/facebook/a/r;
:goto_6
return-object v0
:cond_7
sget-object v0, Lcom/facebook/a/a;->b:[Lcom/facebook/a/r;
goto :goto_6
.end method
.method private static c(Ljava/lang/String;)Ljava/lang/String;
.registers 3
if-eqz p0, :cond_14
sget-object v0, Lcom/facebook/a/i;->c:Ljava/util/regex/Pattern;
invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z
move-result v1
if-eqz v1, :cond_14
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v0
:goto_13
return-object v0
:cond_14
const-string v0, ""
goto :goto_13
.end method
.method private static c(Ljava/lang/Throwable;)Ljava/lang/Throwable;
.registers 2
instance-of v0, p0, Lcom/facebook/a/p;
if-eqz v0, :cond_5
:cond_4
return-object p0
:cond_5
:goto_5
invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v0
if-eqz v0, :cond_4
invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object p0
goto :goto_5
.end method
.method private d()Lcom/facebook/a/n;
.registers 2
iget-object v0, p0, Lcom/facebook/a/i;->C:Lcom/facebook/a/n;
return-object v0
.end method
.method private d(Ljava/lang/Throwable;)Z
.registers 5
const/4 v0, 0x1
iget-object v1, p0, Lcom/facebook/a/i;->l:Ljava/lang/Object;
monitor-enter v1
:try_start_4
iget-boolean v2, p0, Lcom/facebook/a/i;->k:Z
if-eqz v2, :cond_b
const/4 v0, 0x0
monitor-exit v1
:goto_a
return v0
:cond_b
instance-of v2, p1, Ljava/lang/OutOfMemoryError;
if-eqz v2, :cond_12
const/4 v2, 0x1
iput-boolean v2, p0, Lcom/facebook/a/i;->k:Z
:cond_12
monitor-exit v1
:try_end_13
.catchall {:try_start_4 .. :try_end_13} :catchall_14
goto :goto_a
:catchall_14
move-exception v0
monitor-exit v1
throw v0
.end method
.method private e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/a/i;->v:Ljava/lang/String;
return-object v0
.end method
.method private f()Ljava/lang/String;
.registers 5
iget-boolean v0, p0, Lcom/facebook/a/i;->x:Z
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/facebook/a/i;->y:Ljava/lang/String;
:goto_6
return-object v0
:cond_7
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/a/i;->y:Ljava/lang/String;
invoke-static {}, Landroid/os/Process;->myPid()I
move-result v1
iget-object v0, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;
const-string v2, "activity"
invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/ActivityManager;
if-nez v0, :cond_1d
iget-object v0, p0, Lcom/facebook/a/i;->y:Ljava/lang/String;
goto :goto_6
:cond_1d
invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;
move-result-object v0
if-nez v0, :cond_26
iget-object v0, p0, Lcom/facebook/a/i;->y:Ljava/lang/String;
goto :goto_6
:cond_26
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_2a
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3e
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;
iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I
if-ne v3, v1, :cond_2a
iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
iput-object v0, p0, Lcom/facebook/a/i;->y:Ljava/lang/String;
:cond_3e
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/a/i;->x:Z
iget-object v0, p0, Lcom/facebook/a/i;->y:Ljava/lang/String;
goto :goto_6
.end method
.method private g()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/a/i;->y:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/facebook/a/i;->x:Z
return-void
.end method
.method private h()Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lcom/facebook/a/i;->f()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_8
const-string v0, "n/a"
:cond_8
return-object v0
.end method
.method private i()Ljava/lang/String;
.registers 7
invoke-direct {p0}, Lcom/facebook/a/i;->f()Ljava/lang/String;
move-result-object v3
if-nez v3, :cond_48
const/4 v1, 0x0
:try_start_7
new-instance v0, Ljava/io/FileReader;
const-string v2, "/proc/self/cmdline"
invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
new-instance v2, Ljava/io/BufferedReader;
const/16 v4, 0x80
invoke-direct {v2, v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
:try_end_15
.catch Ljava/io/IOException; {:try_start_7 .. :try_end_15} :catch_29
:try_start_15
invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
:try_end_18
.catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_3e
move-result-object v0
if-eqz v0, :cond_1f
:try_start_1b
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
:try_end_1e
.catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_42
move-result-object v0
:goto_1f
:cond_1f
if-eqz v2, :cond_24
:try_start_21
invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
:goto_24
:cond_24
:try_end_24
.catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_35
if-nez v0, :cond_28
const-string v0, ""
:cond_28
return-object v0
:catch_29
move-exception v0
move-object v2, v3
:goto_2b
sget-object v3, Lcom/facebook/a/a;->a:Ljava/lang/String;
const-string v4, "Failed to get process name."
invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
move-object v0, v2
move-object v2, v1
goto :goto_1f
:catch_35
move-exception v1
sget-object v2, Lcom/facebook/a/a;->a:Ljava/lang/String;
const-string v3, "Failed to close file."
invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_24
:catch_3e
move-exception v0
move-object v1, v2
move-object v2, v3
goto :goto_2b
:catch_42
move-exception v1
move-object v5, v1
move-object v1, v2
move-object v2, v0
move-object v0, v5
goto :goto_2b
:cond_48
move-object v0, v3
goto :goto_24
.end method
.method private static j()Ljava/lang/String;
.registers 6
sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;
if-eqz v0, :cond_f
const-string v1, "test-keys"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_f
const-string v0, "yes"
:goto_e
return-object v0
:cond_f
:try_start_f
new-instance v0, Ljava/io/File;
const-string v1, "/system/app/Superuser.apk"
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_27
const-string v0, "yes"
:try_end_1e
.catch Ljava/lang/Exception; {:try_start_f .. :try_end_1e} :catch_1f
goto :goto_e
:catch_1f
move-exception v0
sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;
const-string v2, "Failed to find Superuser.pak"
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_27
invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;
move-result-object v0
if-eqz v0, :cond_6f
const-string v1, "PATH"
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v1, ":"
invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
array-length v3, v2
const/4 v0, 0x0
move v1, v0
:goto_3e
if-ge v1, v3, :cond_6f
aget-object v0, v2, v1
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v4, "/su"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:try_start_55
new-instance v4, Ljava/io/File;
invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_6b
const-string v0, "yes"
:try_end_62
.catch Ljava/lang/Exception; {:try_start_55 .. :try_end_62} :catch_63
goto :goto_e
:catch_63
move-exception v0
sget-object v4, Lcom/facebook/a/a;->a:Ljava/lang/String;
const-string v5, "Failed to find su binary in the PATH"
invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_6b
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_3e
:cond_6f
const-string v0, "no"
goto :goto_e
.end method
.method private static k()J
.registers 2
invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J
move-result-wide v0
return-wide v0
.end method
.method private static l()J
.registers 2
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v0
return-wide v0
.end method
.method private m()V
.registers 9
const/4 v2, 0x0
:try_start_1
iget-object v0, p0, Lcom/facebook/a/i;->p:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_23
const/16 v0, 0x2800
new-array v3, v0, [B
new-instance v1, Ljava/io/FileOutputStream;
iget-object v0, p0, Lcom/facebook/a/i;->p:Ljava/io/File;
invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
:try_end_14
.catchall {:try_start_1 .. :try_end_14} :catchall_3b
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_2a
const/4 v0, 0x0
:goto_15
int-to-long v4, v0
const-wide/32 v6, 0xc800
cmp-long v2, v4, v6
if-gez v2, :cond_24
:try_start_1d
invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V
:try_end_20
.catchall {:try_start_1d .. :try_end_20} :catchall_46
.catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_49
add-int/lit16 v0, v0, 0x2800
goto :goto_15
:cond_23
move-object v1, v2
:cond_24
if-eqz v1, :cond_29
:try_start_26
invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
:try_end_29
.catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_42
:cond_29
:goto_29
return-void
:catch_2a
move-exception v0
move-object v1, v2
:try_start_2c
:goto_2c
sget-object v2, Lcom/facebook/a/a;->a:Ljava/lang/String;
const-string v3, "Failed to pre-allocate crash report file"
invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_33
.catchall {:try_start_2c .. :try_end_33} :catchall_46
if-eqz v1, :cond_29
:try_start_35
invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
:try_end_38
.catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39
goto :goto_29
:catch_39
move-exception v0
goto :goto_29
:catchall_3b
move-exception v0
:goto_3c
if-eqz v2, :cond_41
:try_start_3e
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:try_end_41
.catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_44
:goto_41
:cond_41
throw v0
:catch_42
move-exception v0
goto :goto_29
:catch_44
move-exception v1
goto :goto_41
:catchall_46
move-exception v0
move-object v2, v1
goto :goto_3c
:catch_49
move-exception v0
goto :goto_2c
.end method
.method private static n()J
.registers 4
:try_start_0
invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;
move-result-object v0
new-instance v1, Landroid/os/StatFs;
invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I
move-result v0
int-to-long v2, v0
invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I
:try_end_15
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_19
move-result v0
int-to-long v0, v0
mul-long/2addr v0, v2
:goto_18
return-wide v0
:catch_19
move-exception v0
const-wide/16 v0, -0x1
goto :goto_18
.end method
.method private static o()J
.registers 4
:try_start_0
invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;
move-result-object v0
new-instance v1, Landroid/os/StatFs;
invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I
move-result v0
int-to-long v2, v0
invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I
:try_end_15
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_19
move-result v0
int-to-long v0, v0
mul-long/2addr v0, v2
:goto_18
return-wide v0
:catch_19
move-exception v0
const-wide/16 v0, -0x1
goto :goto_18
.end method
.method private p()Ljava/util/Map;
.registers 6
iget-object v1, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
move-result v0
if-eqz v0, :cond_d7
iget-object v0, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;
sget-object v2, Lcom/facebook/a/r;->l:Lcom/facebook/a/r;
const-class v3, Landroid/os/Build;
invoke-static {v3}, Lcom/facebook/a/q;->a(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;
sget-object v2, Lcom/facebook/a/r;->Q:Lcom/facebook/a/r;
invoke-static {}, Lcom/facebook/a/i;->j()Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;
sget-object v2, Lcom/facebook/a/r;->D:Lcom/facebook/a/r;
iget-object v3, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;
invoke-static {v3}, Lcom/facebook/a/c/f;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;
sget-object v2, Lcom/facebook/a/r;->o:Lcom/facebook/a/r;
invoke-static {}, Lcom/facebook/a/i;->o()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/a/i;->i:Lcom/facebook/a/c/g;
const-string v2, "android.permission.READ_PHONE_STATE"
invoke-virtual {v0, v2}, Lcom/facebook/a/c/g;->a(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_60
iget-object v0, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;
const-string v2, "phone"
invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/telephony/TelephonyManager;
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_60
iget-object v2, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;
sget-object v3, Lcom/facebook/a/r;->C:Lcom/facebook/a/r;
invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_60
iget-object v0, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;
const-string v2, "window"
invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/WindowManager;
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v0
iget-object v2, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;
sget-object v3, Lcom/facebook/a/r;->t:Lcom/facebook/a/r;
invoke-static {v0}, Lcom/facebook/a/i;->a(Landroid/view/Display;)Ljava/lang/String;
move-result-object v0
invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;
sget-object v2, Lcom/facebook/a/r;->G:Lcom/facebook/a/r;
const-class v3, Landroid/os/Environment;
invoke-static {v3}, Lcom/facebook/a/q;->b(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;
sget-object v2, Lcom/facebook/a/r;->F:Lcom/facebook/a/r;
iget-object v3, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;
invoke-static {v3}, Lcom/facebook/a/f;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;
sget-object v2, Lcom/facebook/a/r;->H:Lcom/facebook/a/r;
iget-object v3, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;
invoke-static {v3}, Lcom/facebook/a/s;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;
sget-object v2, Lcom/facebook/a/r;->I:Lcom/facebook/a/r;
iget-object v3, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;
invoke-static {v3}, Lcom/facebook/a/s;->b(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x13
if-lt v0, v2, :cond_cc
iget-object v0, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;
const-string v2, "activity"
invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/ActivityManager;
iget-object v2, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;
sget-object v3, Lcom/facebook/a/r;->ab:Lcom/facebook/a/r;
invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z
move-result v0
invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;
move-result-object v0
invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_cc
iget-object v0, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;
sget-object v2, Lcom/facebook/a/r;->ae:Lcom/facebook/a/r;
invoke-static {}, Lcom/facebook/a/i;->q()Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_d7
iget-object v0, p0, Lcom/facebook/a/i;->h:Ljava/util/Map;
monitor-exit v1
:try_end_da
.catchall {:try_start_3 .. :try_end_da} :catchall_db
return-object v0
:catchall_db
move-exception v0
monitor-exit v1
throw v0
.end method
.method private static q()Ljava/lang/String;
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x13
if-ge v0, v1, :cond_9
const-string v0, "DALVIK"
:goto_8
return-object v0
:cond_9
const-string v0, "java.boot.class.path"
invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_27
const-string v1, "/system/framework/core-libart.jar"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_1c
const-string v0, "ART"
goto :goto_8
:cond_1c
const-string v1, "/system/framework/core.jar"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_27
const-string v0, "DALVIK"
goto :goto_8
:cond_27
const-string v0, "UNKNOWN"
goto :goto_8
.end method
.method private r()V
.registers 2
iget-object v0, p0, Lcom/facebook/a/i;->f:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
return-void
.end method
.method public final a(Ljava/lang/Throwable;Ljava/util/Map;)Lcom/facebook/a/m;
.registers 5
instance-of v0, p1, Ljava/lang/OutOfMemoryError;
if-nez v0, :cond_e
const/4 v0, 0x1
:goto_5
invoke-static {p1}, Lcom/facebook/a/i;->b(Ljava/lang/Throwable;)[Lcom/facebook/a/r;
move-result-object v1
invoke-direct {p0, p1, p2, v1, v0}, Lcom/facebook/a/i;->a(Ljava/lang/Throwable;Ljava/util/Map;[Lcom/facebook/a/r;Z)Lcom/facebook/a/m;
move-result-object v0
return-object v0
:cond_e
const/4 v0, 0x0
goto :goto_5
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 4
if-eqz p2, :cond_b
iget-object v0, p0, Lcom/facebook/a/i;->a:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:goto_a
return-object v0
:cond_b
invoke-direct {p0, p1}, Lcom/facebook/a/i;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_a
.end method
.method final declared-synchronized a(Landroid/content/Context;Lcom/facebook/a/d;)V
.registers 6
monitor-enter p0
:try_start_1
sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;
:try_start_3
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_2d
invoke-direct {p0}, Lcom/facebook/a/i;->h()Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/facebook/a/r;->L:Lcom/facebook/a/r;
invoke-virtual {p2, v1, v0}, Lcom/facebook/a/d;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
invoke-direct {p0, p2}, Lcom/facebook/a/i;->a(Lcom/facebook/a/d;)V
sget-object v0, Lcom/facebook/a/r;->R:Lcom/facebook/a/r;
invoke-virtual {p2, v0}, Lcom/facebook/a/d;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_22
const-string v1, "acra-reports"
invoke-static {p1, v1, v0}, Lcom/facebook/a/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->delete()Z
:cond_22
:goto_22
:try_end_22
.catchall {:try_start_3 .. :try_end_22} :catchall_2d
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_22} :catch_24
monitor-exit p0
return-void
:catch_24
move-exception v0
:try_start_25
sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;
const-string v2, "Failed to send in-memory crash report: "
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_2c
.catchall {:try_start_25 .. :try_end_2c} :catchall_2d
goto :goto_22
:catchall_2d
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final a(Landroid/content/Context;Z)V
.registers 10
iget-object v0, p0, Lcom/facebook/a/i;->m:Ljava/lang/Thread$UncaughtExceptionHandler;
if-nez v0, :cond_f2
invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
move-result-object v0
iput-object v0, p0, Lcom/facebook/a/i;->m:Ljava/lang/Thread$UncaughtExceptionHandler;
iput-boolean p2, p0, Lcom/facebook/a/i;->B:Z
iput-object p1, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;
new-instance v0, Lcom/facebook/a/c/g;
invoke-direct {v0, p1}, Lcom/facebook/a/c/g;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/facebook/a/c/g;->a()Landroid/content/pm/PackageInfo;
move-result-object v1
if-eqz v1, :cond_29
iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/a/i;->t:Ljava/lang/String;
iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
if-eqz v0, :cond_f3
iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
:goto_27
iput-object v0, p0, Lcom/facebook/a/i;->u:Ljava/lang/String;
:cond_29
new-instance v0, Lcom/facebook/a/c/g;
invoke-direct {v0, p1}, Lcom/facebook/a/c/g;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/facebook/a/i;->i:Lcom/facebook/a/c/g;
const-string v0, "os.version"
invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_f7
const-string v0, "cyanogenmod"
invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
:goto_3e
iget-object v3, p0, Lcom/facebook/a/i;->z:Landroid/text/format/Time;
invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V
:try_start_43
iget-object v3, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;
sget-object v4, Lcom/facebook/a/r;->b:Lcom/facebook/a/r;
invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v5
const-string v6, "android_id"
invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v3, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;
sget-object v4, Lcom/facebook/a/r;->d:Lcom/facebook/a/r;
iget-object v5, p0, Lcom/facebook/a/i;->t:Ljava/lang/String;
invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v3, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;
sget-object v4, Lcom/facebook/a/r;->e:Lcom/facebook/a/r;
iget-object v5, p0, Lcom/facebook/a/i;->u:Ljava/lang/String;
invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v3, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;
sget-object v4, Lcom/facebook/a/r;->f:Lcom/facebook/a/r;
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v5
invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v3, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;
sget-object v4, Lcom/facebook/a/r;->h:Lcom/facebook/a/r;
sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v3, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;
sget-object v4, Lcom/facebook/a/r;->i:Lcom/facebook/a/r;
sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v3, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;
sget-object v4, Lcom/facebook/a/r;->j:Lcom/facebook/a/r;
invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v2, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;
sget-object v3, Lcom/facebook/a/r;->k:Lcom/facebook/a/r;
invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;
move-result-object v0
invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;
sget-object v2, Lcom/facebook/a/r;->m:Lcom/facebook/a/r;
sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;
sget-object v2, Lcom/facebook/a/r;->n:Lcom/facebook/a/r;
sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "n/a"
invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v2
if-eqz v2, :cond_b3
invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
:cond_b3
iget-object v2, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;
sget-object v3, Lcom/facebook/a/r;->g:Lcom/facebook/a/r;
invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x9
if-lt v0, v2, :cond_e5
iget-object v0, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;
sget-object v2, Lcom/facebook/a/r;->aa:Lcom/facebook/a/r;
sget-object v3, Landroid/os/Build;->SERIAL:Ljava/lang/String;
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
if-eqz v1, :cond_e5
iget-object v0, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;
sget-object v2, Lcom/facebook/a/r;->Y:Lcom/facebook/a/r;
iget-wide v3, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J
invoke-static {v3, v4}, Lcom/facebook/a/i;->a(J)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/a/i;->g:Ljava/util/Map;
sget-object v2, Lcom/facebook/a/r;->Z:Lcom/facebook/a/r;
iget-wide v3, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
invoke-static {v3, v4}, Lcom/facebook/a/i;->a(J)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_e5
.catch Ljava/lang/Exception; {:try_start_43 .. :try_end_e5} :catch_fa
:goto_e5
:cond_e5
const-string v0, "acra-reports"
const-string v1, "reportfile.prealloc"
invoke-static {p1, v0, v1}, Lcom/facebook/a/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
move-result-object v0
iput-object v0, p0, Lcom/facebook/a/i;->p:Ljava/io/File;
invoke-direct {p0}, Lcom/facebook/a/i;->m()V
:cond_f2
return-void
:cond_f3
const-string v0, "not set"
goto/16 :goto_27
:cond_f7
const/4 v0, 0x0
goto/16 :goto_3e
:catch_fa
move-exception v0
sget-object v1, Lcom/facebook/a/a;->a:Ljava/lang/String;
const-string v2, "failed to install constants"
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_e5
.end method
.method final varargs declared-synchronized a(Landroid/content/Context;[Lcom/facebook/a/l;)V
.registers 7
monitor-enter p0
:try_start_1
sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;
array-length v1, p2
const/4 v0, 0x0
:goto_5
if-ge v0, v1, :cond_1a
aget-object v2, p2, v0
sget-object v3, Lcom/facebook/a/l;->a:Lcom/facebook/a/l;
if-ne v3, v2, :cond_13
invoke-direct {p0, p1}, Lcom/facebook/a/i;->a(Landroid/content/Context;)V
:goto_10
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_13
invoke-direct {p0, p1, v2}, Lcom/facebook/a/i;->a(Landroid/content/Context;Lcom/facebook/a/l;)I
:try_end_16
.catchall {:try_start_1 .. :try_end_16} :catchall_17
goto :goto_10
:catchall_17
move-exception v0
monitor-exit p0
throw v0
:try_start_1a
:cond_1a
sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;
:try_end_1c
.catchall {:try_start_1a .. :try_end_1c} :catchall_17
monitor-exit p0
return-void
.end method
.method public final a(Lcom/facebook/a/b/b;)V
.registers 2
invoke-direct {p0}, Lcom/facebook/a/i;->r()V
invoke-direct {p0, p1}, Lcom/facebook/a/i;->b(Lcom/facebook/a/b/b;)V
return-void
.end method
.method public final a(Lcom/facebook/a/n;)V
.registers 2
iput-object p1, p0, Lcom/facebook/a/i;->C:Lcom/facebook/a/n;
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/facebook/a/i;->v:Ljava/lang/String;
return-void
.end method
.method public final b()Lcom/facebook/a/m;
.registers 7
const/4 v5, 0x0
const/4 v4, 0x1
const-string v0, "acra-reports"
new-array v1, v4, [Ljava/lang/String;
const-string v2, ".stacktrace"
aput-object v2, v1, v5
invoke-direct {p0, v0, v1}, Lcom/facebook/a/i;->a(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
const-string v1, "minidumps"
new-array v2, v4, [Ljava/lang/String;
const-string v3, ".dmp"
aput-object v3, v2, v5
invoke-direct {p0, v1, v2}, Lcom/facebook/a/i;->a(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
if-eqz v0, :cond_1f
array-length v0, v0
if-gtz v0, :cond_24
:cond_1f
if-eqz v1, :cond_34
array-length v0, v1
if-lez v0, :cond_34
:cond_24
sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;
if-eqz v1, :cond_2d
array-length v0, v1
if-lez v0, :cond_2d
iput-boolean v4, p0, Lcom/facebook/a/i;->e:Z
:cond_2d
sget-object v0, Lcom/facebook/a/i;->j:[Lcom/facebook/a/l;
invoke-direct {p0, v0}, Lcom/facebook/a/i;->a([Lcom/facebook/a/l;)Lcom/facebook/a/m;
move-result-object v0
:goto_33
return-object v0
:cond_34
const/4 v0, 0x0
goto :goto_33
.end method
.method public final c()V
.registers 3
const-wide/32 v0, 0x100000
iput-wide v0, p0, Lcom/facebook/a/i;->d:J
return-void
.end method
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.registers 8
const/4 v3, 0x1
sget-object v0, Lcom/facebook/a/a;->a:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "ACRA caught a "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " exception for "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/facebook/a/i;->o:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ". Building report."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
iput-boolean v3, p0, Lcom/facebook/a/i;->A:Z
sget-object v0, Lcom/facebook/a/i;->D:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z
move-result v2
const/4 v1, 0x0
:try_start_3c
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
:try_start_41
:try_end_41
.catch Ljava/lang/OutOfMemoryError; {:try_start_3c .. :try_end_41} :catch_84
const-string v1, "IS_PROCESSING_ANOTHER_EXCEPTION"
invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_4a
:try_end_4a
.catch Ljava/lang/OutOfMemoryError; {:try_start_41 .. :try_end_4a} :catch_87
invoke-virtual {p0, p2, v0}, Lcom/facebook/a/i;->a(Ljava/lang/Throwable;Ljava/util/Map;)Lcom/facebook/a/m;
move-result-object v1
if-eqz v1, :cond_7a
:goto_50
invoke-virtual {v1}, Lcom/facebook/a/m;->isAlive()Z
move-result v2
if-eqz v2, :cond_65
const-wide/16 v2, 0x64
:try_start_58
invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
:try_end_5b
.catch Ljava/lang/InterruptedException; {:try_start_58 .. :try_end_5b} :catch_5c
goto :goto_50
:catch_5c
move-exception v2
sget-object v3, Lcom/facebook/a/a;->a:Ljava/lang/String;
const-string v4, "Error : "
invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_50
:cond_65
invoke-virtual {v1}, Lcom/facebook/a/m;->a()Ljava/lang/Throwable;
move-result-object v1
if-eqz v1, :cond_7a
sget-object v2, Lcom/facebook/a/a;->a:Ljava/lang/String;
const-string v3, "ReportsWorkerSender failed with exception"
invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
invoke-static {p2}, Lcom/facebook/a/i;->b(Ljava/lang/Throwable;)[Lcom/facebook/a/r;
move-result-object v2
const/4 v3, 0x0
invoke-direct {p0, v1, v0, v2, v3}, Lcom/facebook/a/i;->a(Ljava/lang/Throwable;Ljava/util/Map;[Lcom/facebook/a/r;Z)Lcom/facebook/a/m;
:cond_7a
iget-object v0, p0, Lcom/facebook/a/i;->m:Ljava/lang/Thread$UncaughtExceptionHandler;
if-eqz v0, :cond_83
iget-object v0, p0, Lcom/facebook/a/i;->m:Ljava/lang/Thread$UncaughtExceptionHandler;
invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
:cond_83
return-void
:catch_84
move-exception v0
move-object v0, v1
goto :goto_4a
:catch_87
move-exception v1
goto :goto_4a
.end method