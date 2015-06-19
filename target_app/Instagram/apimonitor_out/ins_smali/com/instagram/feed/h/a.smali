.class public final Lcom/instagram/feed/h/a;
.super Ljava/lang/Object;
.source "VisibleItemTracker.java"
.field private final a:Lcom/instagram/feed/h/e;
.field private final b:Lcom/instagram/feed/h/e;
.field private final c:Lcom/instagram/feed/h/d;
.field private final d:Ljava/util/Map;
.field private final e:Ljava/util/Map;
.method public constructor <init>(Lcom/instagram/feed/h/d;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/instagram/feed/h/b;
invoke-direct {v0, p0}, Lcom/instagram/feed/h/b;-><init>(Lcom/instagram/feed/h/a;)V
iput-object v0, p0, Lcom/instagram/feed/h/a;->a:Lcom/instagram/feed/h/e;
new-instance v0, Lcom/instagram/feed/h/c;
invoke-direct {v0, p0}, Lcom/instagram/feed/h/c;-><init>(Lcom/instagram/feed/h/a;)V
iput-object v0, p0, Lcom/instagram/feed/h/a;->b:Lcom/instagram/feed/h/e;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/instagram/feed/h/a;->d:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/instagram/feed/h/a;->e:Ljava/util/Map;
iput-object p1, p0, Lcom/instagram/feed/h/a;->c:Lcom/instagram/feed/h/d;
return-void
.end method
.method static synthetic a(Lcom/instagram/feed/h/a;)Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/h/a;->d:Ljava/util/Map;
return-object v0
.end method
.method static synthetic a(Ljava/util/Map;Ljava/lang/String;)Z
.registers 3
invoke-static {p0, p1}, Lcom/instagram/feed/h/a;->b(Ljava/util/Map;Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method static synthetic b(Lcom/instagram/feed/h/a;)Lcom/instagram/feed/h/d;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/h/a;->c:Lcom/instagram/feed/h/d;
return-object v0
.end method
.method private static b(Ljava/util/Map;Ljava/lang/String;)Z
.registers 4
invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_7
const/4 v1, 0x0
invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return v0
:cond_c
const/4 v0, 0x0
goto :goto_7
.end method
.method static synthetic c(Lcom/instagram/feed/h/a;)Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/h/a;->e:Ljava/util/Map;
return-object v0
.end method
.method public final a()V
.registers 4
iget-object v0, p0, Lcom/instagram/feed/h/a;->c:Lcom/instagram/feed/h/d;
iget-object v1, p0, Lcom/instagram/feed/h/a;->a:Lcom/instagram/feed/h/e;
invoke-interface {v0, v1}, Lcom/instagram/feed/h/d;->a(Lcom/instagram/feed/h/e;)V
iget-object v0, p0, Lcom/instagram/feed/h/a;->d:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
move-result v0
if-nez v0, :cond_2e
iget-object v0, p0, Lcom/instagram/feed/h/a;->d:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_19
:goto_19
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_2e
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_19
iget-object v2, p0, Lcom/instagram/feed/h/a;->c:Lcom/instagram/feed/h/d;
invoke-interface {v2, v1}, Lcom/instagram/feed/h/d;->b(Ljava/lang/Object;)V
invoke-interface {v0}, Ljava/util/Iterator;->remove()V
goto :goto_19
:cond_2e
iget-object v0, p0, Lcom/instagram/feed/h/a;->e:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
move-result v0
if-nez v0, :cond_55
iget-object v0, p0, Lcom/instagram/feed/h/a;->e:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_40
:cond_40
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_55
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_40
iget-object v2, p0, Lcom/instagram/feed/h/a;->c:Lcom/instagram/feed/h/d;
invoke-interface {v2, v1}, Lcom/instagram/feed/h/d;->a(Ljava/lang/Object;)V
invoke-interface {v0}, Ljava/util/Iterator;->remove()V
goto :goto_40
:cond_55
iget-object v0, p0, Lcom/instagram/feed/h/a;->c:Lcom/instagram/feed/h/d;
iget-object v1, p0, Lcom/instagram/feed/h/a;->b:Lcom/instagram/feed/h/e;
invoke-interface {v0, v1}, Lcom/instagram/feed/h/d;->a(Lcom/instagram/feed/h/e;)V
return-void
.end method