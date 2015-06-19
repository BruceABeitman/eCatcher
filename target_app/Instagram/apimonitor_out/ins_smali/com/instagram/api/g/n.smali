.class public Lcom/instagram/api/g/n;
.super Ljava/lang/Object;
.source "NetworkTraceLogger.java"
.field private static final a:Ljava/lang/Class;
.field private static b:Ljava/lang/Boolean;
.field private static c:Lcom/instagram/api/g/n;
.field private final d:Ljava/util/concurrent/ConcurrentHashMap;
.field private final e:Z
.field private final f:Lcom/instagram/api/g/g;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/api/g/n;
sput-object v0, Lcom/instagram/api/g/n;->a:Ljava/lang/Class;
return-void
.end method
.method private constructor <init>(ZLcom/instagram/api/g/g;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
iput-object v0, p0, Lcom/instagram/api/g/n;->d:Ljava/util/concurrent/ConcurrentHashMap;
iput-boolean p1, p0, Lcom/instagram/api/g/n;->e:Z
iput-object p2, p0, Lcom/instagram/api/g/n;->f:Lcom/instagram/api/g/g;
return-void
.end method
.method private a(Ljava/lang/String;)Lcom/instagram/api/g/d;
.registers 4
iget-object v0, p0, Lcom/instagram/api/g/n;->d:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/api/g/d;
if-nez v0, :cond_14
new-instance v0, Lcom/instagram/api/g/d;
invoke-direct {v0, p1}, Lcom/instagram/api/g/d;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/instagram/api/g/n;->d:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_14
return-object v0
.end method
.method public static declared-synchronized a()Lcom/instagram/api/g/n;
.registers 4
const-class v1, Lcom/instagram/api/g/n;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/instagram/api/g/n;->c:Lcom/instagram/api/g/n;
if-nez v0, :cond_16
new-instance v0, Lcom/instagram/api/g/n;
invoke-static {}, Lcom/instagram/api/g/n;->d()Z
move-result v2
invoke-static {}, Lcom/instagram/api/g/g;->a()Lcom/instagram/api/g/g;
move-result-object v3
invoke-direct {v0, v2, v3}, Lcom/instagram/api/g/n;-><init>(ZLcom/instagram/api/g/g;)V
sput-object v0, Lcom/instagram/api/g/n;->c:Lcom/instagram/api/g/n;
:cond_16
sget-object v0, Lcom/instagram/api/g/n;->c:Lcom/instagram/api/g/n;
:try_end_18
.catchall {:try_start_3 .. :try_end_18} :catchall_1a
monitor-exit v1
return-object v0
:catchall_1a
move-exception v0
monitor-exit v1
throw v0
.end method
.method private static b(Lcom/instagram/api/g/i;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/instagram/api/g/i;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/api/g/i;->a()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/instagram/api/g/n;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static b(Ljava/lang/String;)Ljava/lang/String;
.registers 5
const/16 v3, 0x2e
if-nez p0, :cond_9
sget-object v0, Lcom/instagram/api/g/n;->a:Ljava/lang/Class;
const-string v0, "null"
:goto_8
:cond_8
return-object v0
:cond_9
invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_18
sget-object v0, Lcom/instagram/api/g/n;->a:Ljava/lang/Class;
const-string v0, "null"
goto :goto_8
:cond_18
const-string v2, "ak.instagram.com"
invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_4a
invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_47
invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I
move-result v1
const/4 v2, -0x1
if-eq v1, v2, :cond_47
invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I
move-result v1
add-int/lit8 v1, v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "ak.instagram.com:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_8
:cond_47
const-string v0, "ak.instagram.com"
goto :goto_8
:cond_4a
invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_8
const-string v2, "upload/photo"
invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_6c
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ":upload_photo"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_8
:cond_6c
const-string v2, "feed/timeline"
invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_88
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ":feed_fetch"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_8
:cond_88
const-string v2, "transcode/v1"
invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_8
const-string v0, "transcode_server"
goto/16 :goto_8
.end method
.method private c()Ljava/lang/String;
.registers 6
const-string v1, ""
:try_start_2
iget-object v0, p0, Lcom/instagram/api/g/n;->d:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I
move-result v0
if-lez v0, :cond_35
new-instance v2, Ljava/io/StringWriter;
invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V
sget-object v0, Lcom/instagram/common/k/a;->a:Lcom/fasterxml/jackson/a/e;
invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/a/h;
move-result-object v3
invoke-virtual {v3}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V
iget-object v0, p0, Lcom/instagram/api/g/n;->d:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_22
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3c
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/api/g/d;
invoke-virtual {v0, v3}, Lcom/instagram/api/g/d;->a(Lcom/fasterxml/jackson/a/h;)V
:try_end_31
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_31} :catch_32
goto :goto_22
:catch_32
move-exception v0
sget-object v0, Lcom/instagram/api/g/n;->a:Ljava/lang/Class;
:cond_35
move-object v0, v1
:goto_36
iget-object v1, p0, Lcom/instagram/api/g/n;->d:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
return-object v0
:try_start_3c
:cond_3c
invoke-virtual {v3}, Lcom/fasterxml/jackson/a/h;->writeEndArray()V
invoke-virtual {v3}, Lcom/fasterxml/jackson/a/h;->close()V
invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
:try_end_45
.catch Ljava/io/IOException; {:try_start_3c .. :try_end_45} :catch_32
move-result-object v0
goto :goto_36
.end method
.method private static c(Lcom/instagram/api/g/i;)V
.registers 7
invoke-virtual {p0}, Lcom/instagram/api/g/i;->d()Z
move-result v0
if-eqz v0, :cond_b5
new-instance v0, Lcom/instagram/common/analytics/b;
const-string v1, "network_trace"
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V
const-string v1, "ct"
invoke-virtual {p0}, Lcom/instagram/api/g/i;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v1
const-string v2, "sd"
invoke-virtual {p0}, Lcom/instagram/api/g/i;->l()J
move-result-wide v3
invoke-virtual {v1, v2, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;
move-result-object v1
const-string v2, "sb"
invoke-virtual {p0}, Lcom/instagram/api/g/i;->i()J
move-result-wide v3
invoke-virtual {v1, v2, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;
move-result-object v1
const-string v2, "wd"
invoke-virtual {p0}, Lcom/instagram/api/g/i;->m()J
move-result-wide v3
invoke-virtual {v1, v2, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;
move-result-object v1
const-string v2, "rd"
invoke-virtual {p0}, Lcom/instagram/api/g/i;->n()J
move-result-wide v3
invoke-virtual {v1, v2, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;
move-result-object v1
const-string v2, "rb"
invoke-virtual {p0}, Lcom/instagram/api/g/i;->j()J
move-result-wide v3
invoke-virtual {v1, v2, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;
move-result-object v1
const-string v2, "ts"
invoke-virtual {p0}, Lcom/instagram/api/g/i;->h()J
move-result-wide v3
invoke-virtual {v1, v2, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;
move-result-object v1
const-string v2, "sip"
invoke-virtual {p0}, Lcom/instagram/api/g/i;->f()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v1
const-string v2, "sc"
invoke-virtual {p0}, Lcom/instagram/api/g/i;->e()I
move-result v3
invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;
move-result-object v1
const-string v2, "tt"
invoke-virtual {p0}, Lcom/instagram/api/g/i;->c()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v1
const-string v2, "url"
invoke-virtual {p0}, Lcom/instagram/api/g/i;->a()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v1
const-string v2, "hm"
invoke-virtual {p0}, Lcom/instagram/api/g/i;->g()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
invoke-virtual {p0}, Lcom/instagram/api/g/i;->k()Lcom/instagram/api/g/a;
move-result-object v1
if-eqz v1, :cond_ae
invoke-static {v1}, Lcom/instagram/api/g/b;->a(Lcom/instagram/api/g/a;)Z
move-result v2
if-eqz v2, :cond_b6
const-string v2, "xc"
invoke-virtual {v1}, Lcom/instagram/api/g/a;->b()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v2
const-string v3, "cr"
invoke-virtual {v1}, Lcom/instagram/api/g/a;->c()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v2
const-string v3, "pc"
invoke-virtual {v1}, Lcom/instagram/api/g/a;->d()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v3, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
:goto_ae
:cond_ae
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v1
invoke-interface {v1, v0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V
:cond_b5
return-void
:cond_b6
invoke-static {v1}, Lcom/instagram/api/g/b;->b(Lcom/instagram/api/g/a;)Z
move-result v2
if-eqz v2, :cond_ae
const-string v2, "xb"
invoke-virtual {v1}, Lcom/instagram/api/g/a;->e()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v2
const-string v3, "bi"
invoke-virtual {v1}, Lcom/instagram/api/g/a;->f()J
move-result-wide v4
invoke-virtual {v2, v3, v4, v5}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;
move-result-object v2
const-string v3, "ot"
invoke-virtual {v1}, Lcom/instagram/api/g/a;->g()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v2
const-string v3, "oh"
invoke-virtual {v1}, Lcom/instagram/api/g/a;->h()I
move-result v4
invoke-virtual {v2, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;
move-result-object v2
const-string v3, "op"
invoke-virtual {v1}, Lcom/instagram/api/g/a;->i()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v2
const-string v3, "oho"
invoke-virtual {v1}, Lcom/instagram/api/g/a;->j()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v2
const-string v3, "oit"
invoke-virtual {v1}, Lcom/instagram/api/g/a;->k()I
move-result v4
invoke-virtual {v2, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;
move-result-object v2
const-string v3, "eh"
invoke-virtual {v1}, Lcom/instagram/api/g/a;->l()I
move-result v4
invoke-virtual {v2, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;
move-result-object v2
const-string v3, "efp"
invoke-virtual {v1}, Lcom/instagram/api/g/a;->m()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v2
const-string v3, "ed"
invoke-virtual {v1}, Lcom/instagram/api/g/a;->n()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v3, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
goto :goto_ae
.end method
.method private static declared-synchronized d()Z
.registers 6
const-class v1, Lcom/instagram/api/g/n;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/instagram/api/g/n;->b:Ljava/lang/Boolean;
if-nez v0, :cond_26
invoke-static {}, Lcom/instagram/common/o/a;->b()Z
move-result v0
if-nez v0, :cond_1f
new-instance v0, Ljava/util/Random;
invoke-direct {v0}, Ljava/util/Random;-><init>()V
invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D
move-result-wide v2
const-wide v4, 0x3f847ae147ae147bL
cmpg-double v0, v2, v4
if-gtz v0, :cond_2e
:cond_1f
const/4 v0, 0x1
:goto_20
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
sput-object v0, Lcom/instagram/api/g/n;->b:Ljava/lang/Boolean;
:cond_26
sget-object v0, Lcom/instagram/api/g/n;->b:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
:try_end_2b
.catchall {:try_start_3 .. :try_end_2b} :catchall_30
move-result v0
monitor-exit v1
return v0
:cond_2e
const/4 v0, 0x0
goto :goto_20
:catchall_30
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Lcom/instagram/api/g/i;)V
.registers 4
invoke-virtual {p1}, Lcom/instagram/api/g/i;->o()Z
move-result v0
if-eqz v0, :cond_26
invoke-virtual {p1}, Lcom/instagram/api/g/i;->e()I
move-result v0
const/16 v1, 0xc8
if-ne v0, v1, :cond_23
invoke-static {p1}, Lcom/instagram/api/g/n;->b(Lcom/instagram/api/g/i;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/instagram/api/g/n;->a(Ljava/lang/String;)Lcom/instagram/api/g/d;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/instagram/api/g/d;->a(Lcom/instagram/api/g/i;)V
iget-object v0, p0, Lcom/instagram/api/g/n;->f:Lcom/instagram/api/g/g;
invoke-virtual {v0, p1}, Lcom/instagram/api/g/g;->a(Lcom/instagram/api/g/i;)V
sget-object v0, Lcom/instagram/api/g/n;->a:Ljava/lang/Class;
invoke-virtual {p1}, Lcom/instagram/api/g/i;->p()Ljava/lang/String;
:cond_23
invoke-static {p1}, Lcom/instagram/api/g/n;->c(Lcom/instagram/api/g/i;)V
:cond_26
return-void
.end method
.method public final a(Lcom/instagram/api/g/i;Ljava/lang/Exception;)V
.registers 4
invoke-static {p1}, Lcom/instagram/api/g/n;->b(Lcom/instagram/api/g/i;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/instagram/api/g/n;->a(Ljava/lang/String;)Lcom/instagram/api/g/d;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/instagram/api/g/d;->a(Ljava/lang/Exception;)V
return-void
.end method
.method public final b()V
.registers 5
iget-object v0, p0, Lcom/instagram/api/g/n;->d:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I
move-result v0
if-lez v0, :cond_25
iget-boolean v0, p0, Lcom/instagram/api/g/n;->e:Z
if-eqz v0, :cond_25
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v0
new-instance v1, Lcom/instagram/common/analytics/b;
const-string v2, "network_performance"
const/4 v3, 0x0
invoke-direct {v1, v2, v3}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V
const-string v2, "traces"
invoke-direct {p0}, Lcom/instagram/api/g/n;->c()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v1
invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V
:cond_25
iget-object v0, p0, Lcom/instagram/api/g/n;->d:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
return-void
.end method