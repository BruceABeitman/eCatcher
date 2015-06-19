.class public final Lcom/bbm/util/a/d;
.super Ljava/lang/Object;
.source "GlympseTicketFetcher.java"
.field private static e:Lcom/bbm/util/a/d;
.field final a:Lcom/bbm/o;
.field  b:Z
.field  c:I
.field final d:Lcom/glympse/android/api/GEventListener;
.field private final f:Ljava/util/Map;
.method private constructor <init>(Lcom/bbm/o;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/b/c/q;
invoke-direct {v0}, Lcom/google/b/c/q;-><init>()V
invoke-virtual {v0}, Lcom/google/b/c/q;->f()Lcom/google/b/c/q;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/c/q;->c()Lcom/google/b/c/q;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/c/q;->g()Ljava/util/concurrent/ConcurrentMap;
move-result-object v0
iput-object v0, p0, Lcom/bbm/util/a/d;->f:Ljava/util/Map;
iput v1, p0, Lcom/bbm/util/a/d;->c:I
new-instance v0, Lcom/bbm/util/a/e;
invoke-direct {v0, p0}, Lcom/bbm/util/a/e;-><init>(Lcom/bbm/util/a/d;)V
iput-object v0, p0, Lcom/bbm/util/a/d;->d:Lcom/glympse/android/api/GEventListener;
iput-object p1, p0, Lcom/bbm/util/a/d;->a:Lcom/bbm/o;
iput-boolean v1, p0, Lcom/bbm/util/a/d;->b:Z
return-void
.end method
.method public static a(Ljava/lang/String;)Lcom/bbm/j/r;
.registers 5
sget-object v0, Lcom/bbm/util/a/d;->e:Lcom/bbm/util/a/d;
if-nez v0, :cond_f
new-instance v0, Lcom/bbm/util/a/d;
invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;
move-result-object v1
invoke-direct {v0, v1}, Lcom/bbm/util/a/d;-><init>(Lcom/bbm/o;)V
sput-object v0, Lcom/bbm/util/a/d;->e:Lcom/bbm/util/a/d;
:cond_f
sget-object v3, Lcom/bbm/util/a/d;->e:Lcom/bbm/util/a/d;
iget-object v0, v3, Lcom/bbm/util/a/d;->f:Ljava/util/Map;
invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/util/cr;
if-nez v0, :cond_6b
iget-object v0, v3, Lcom/bbm/util/a/d;->a:Lcom/bbm/o;
iget-object v0, v0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;
invoke-interface {v0}, Lcom/glympse/android/api/GGlympse;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v0
invoke-interface {v0, p0}, Lcom/glympse/android/api/GUserManager;->findTicketByInviteCode(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
move-result-object v0
if-nez v0, :cond_77
iget-object v0, v3, Lcom/bbm/util/a/d;->a:Lcom/bbm/o;
iget-object v0, v0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;
invoke-interface {v0}, Lcom/glympse/android/api/GGlympse;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v0
invoke-interface {v0, p0}, Lcom/glympse/android/api/GHistoryManager;->findTicketByInviteCode(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
move-result-object v0
move-object v2, v0
:goto_36
if-nez v2, :cond_6c
new-instance v0, Lcom/bbm/util/a/f;
invoke-direct {v0}, Lcom/bbm/util/a/f;-><init>()V
:goto_3d
new-instance v1, Lcom/bbm/util/cr;
invoke-direct {v1, v0}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
iget-object v0, v3, Lcom/bbm/util/a/d;->f:Ljava/util/Map;
invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
if-nez v2, :cond_6a
iget-boolean v0, v3, Lcom/bbm/util/a/d;->b:Z
if-nez v0, :cond_57
const/4 v0, 0x1
iput-boolean v0, v3, Lcom/bbm/util/a/d;->b:Z
iget-object v0, v3, Lcom/bbm/util/a/d;->a:Lcom/bbm/o;
iget-object v2, v3, Lcom/bbm/util/a/d;->d:Lcom/glympse/android/api/GEventListener;
invoke-virtual {v0, v2}, Lcom/bbm/o;->a(Lcom/glympse/android/api/GEventListener;)V
:cond_57
iget v0, v3, Lcom/bbm/util/a/d;->c:I
add-int/lit8 v0, v0, 0x1
iput v0, v3, Lcom/bbm/util/a/d;->c:I
iget-object v0, v3, Lcom/bbm/util/a/d;->a:Lcom/bbm/o;
invoke-virtual {v0, p0}, Lcom/bbm/o;->a(Ljava/lang/String;)Lcom/glympse/android/api/GEventSink;
move-result-object v0
if-eqz v0, :cond_6a
iget-object v2, v3, Lcom/bbm/util/a/d;->d:Lcom/glympse/android/api/GEventListener;
invoke-interface {v0, v2}, Lcom/glympse/android/api/GEventSink;->addListener(Lcom/glympse/android/api/GEventListener;)Z
:cond_6a
move-object v0, v1
:cond_6b
return-object v0
:cond_6c
new-instance v0, Lcom/bbm/util/a/f;
invoke-direct {v0, v2, p0}, Lcom/bbm/util/a/f;-><init>(Lcom/glympse/android/api/GTicket;Ljava/lang/String;)V
iget-object v1, v3, Lcom/bbm/util/a/d;->d:Lcom/glympse/android/api/GEventListener;
invoke-interface {v2, v1}, Lcom/glympse/android/api/GTicket;->addListener(Lcom/glympse/android/api/GEventListener;)Z
goto :goto_3d
:cond_77
move-object v2, v0
goto :goto_36
.end method
.method final a(Lcom/glympse/android/api/GTicket;)Ljava/lang/String;
.registers 7
const-string v0, ""
invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->getInvites()Lcom/glympse/android/core/GArray;
move-result-object v1
invoke-interface {v1}, Lcom/glympse/android/core/GArray;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_21
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GInvite;
invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getCode()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_a
:cond_20
:goto_20
return-object v0
:cond_21
iget-object v1, p0, Lcom/bbm/util/a/d;->f:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
iget-object v1, p0, Lcom/bbm/util/a/d;->f:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_35
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_20
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/Map$Entry;
invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/util/cr;
invoke-virtual {v1}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/util/a/f;
iget-object v1, v1, Lcom/bbm/util/a/f;->e:Ljava/lang/String;
invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->getId()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_35
goto :goto_20
.end method
.method final a(Ljava/lang/String;Lcom/glympse/android/api/GTicket;)V
.registers 5
iget-object v0, p0, Lcom/bbm/util/a/d;->f:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/util/cr;
if-eqz v0, :cond_12
new-instance v1, Lcom/bbm/util/a/f;
invoke-direct {v1, p2, p1}, Lcom/bbm/util/a/f;-><init>(Lcom/glympse/android/api/GTicket;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V
:cond_12
return-void
.end method