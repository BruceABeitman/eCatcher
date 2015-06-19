.class public final Lcom/bbm/d/a/a/e;
.super Lcom/bbm/d/a/a/a;
.source "LiveList.java"
.implements Lcom/bbm/j/w;
.field  a:Lcom/bbm/d/a/a/f;
.field  b:Lcom/bbm/d/a/a/g;
.field  d:Ljava/lang/String;
.field  e:Z
.field private f:Lcom/bbm/d/a/a/g;
.field private final g:Lcom/bbm/d/a/c;
.field private final h:Lcom/bbm/d/a/d;
.field private i:Z
.field private final j:Ljava/lang/Class;
.field private k:Lcom/google/b/a/l;
.field private final l:Lcom/bbm/f/a;
.method public constructor <init>(Lcom/bbm/d/a/c;Lcom/bbm/d/a/d;Lcom/bbm/f/a;Ljava/lang/Class;)V
.registers 11
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v5
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
invoke-direct/range {v0 .. v5}, Lcom/bbm/d/a/a/e;-><init>(Lcom/bbm/d/a/c;Lcom/bbm/d/a/d;Lcom/bbm/f/a;Ljava/lang/Class;Lcom/google/b/a/l;)V
return-void
.end method
.method public constructor <init>(Lcom/bbm/d/a/c;Lcom/bbm/d/a/d;Lcom/bbm/f/a;Ljava/lang/Class;Lcom/google/b/a/l;)V
.registers 8
const/4 v1, 0x0
invoke-direct {p0}, Lcom/bbm/d/a/a/a;-><init>()V
sget-object v0, Lcom/bbm/d/a/a/f;->a:Lcom/bbm/d/a/a/f;
iput-object v0, p0, Lcom/bbm/d/a/a/e;->a:Lcom/bbm/d/a/a/f;
new-instance v0, Lcom/bbm/d/a/a/g;
invoke-direct {v0, p0, v1}, Lcom/bbm/d/a/a/g;-><init>(Lcom/bbm/d/a/a/e;B)V
iput-object v0, p0, Lcom/bbm/d/a/a/e;->f:Lcom/bbm/d/a/a/g;
new-instance v0, Lcom/bbm/d/a/a/g;
invoke-direct {v0, p0, v1}, Lcom/bbm/d/a/a/g;-><init>(Lcom/bbm/d/a/a/e;B)V
iput-object v0, p0, Lcom/bbm/d/a/a/e;->b:Lcom/bbm/d/a/a/g;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/d/a/a/e;->i:Z
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/a/a/e;->k:Lcom/google/b/a/l;
iput-object p1, p0, Lcom/bbm/d/a/a/e;->g:Lcom/bbm/d/a/c;
iput-object p2, p0, Lcom/bbm/d/a/a/e;->h:Lcom/bbm/d/a/d;
iput-object p4, p0, Lcom/bbm/d/a/a/e;->j:Ljava/lang/Class;
iput-object p5, p0, Lcom/bbm/d/a/a/e;->k:Lcom/google/b/a/l;
const-string v0, ""
iput-object v0, p0, Lcom/bbm/d/a/a/e;->d:Ljava/lang/String;
iput-object p3, p0, Lcom/bbm/d/a/a/e;->l:Lcom/bbm/f/a;
iput-boolean v1, p0, Lcom/bbm/d/a/a/e;->e:Z
invoke-direct {p0}, Lcom/bbm/d/a/a/e;->f()V
return-void
.end method
.method private a(ILcom/bbm/d/a/a;)Z
.registers 4
if-ltz p1, :cond_1d
iget-object v0, p0, Lcom/bbm/d/a/a/e;->f:Lcom/bbm/d/a/a/g;
invoke-virtual {v0}, Lcom/bbm/d/a/a/g;->size()I
move-result v0
if-ge p1, v0, :cond_1d
iget-object v0, p0, Lcom/bbm/d/a/a/e;->f:Lcom/bbm/d/a/a/g;
invoke-virtual {v0, p1}, Lcom/bbm/d/a/a/g;->get(I)Ljava/lang/Object;
move-result-object v0
invoke-static {p2, v0}, Lcom/bbm/util/bg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1d
iget-object v0, p0, Lcom/bbm/d/a/a/e;->f:Lcom/bbm/d/a/a/g;
invoke-virtual {v0, p1, p2}, Lcom/bbm/d/a/a/g;->set(ILjava/lang/Object;)Ljava/lang/Object;
const/4 v0, 0x1
:goto_1c
return v0
:cond_1d
const/4 v0, 0x0
goto :goto_1c
.end method
.method private f()V
.registers 6
iget-object v0, p0, Lcom/bbm/d/a/a/e;->k:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_7f
new-instance v1, Lcom/bbm/f/ab;
const-string v0, "requestListMatching"
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
invoke-direct {v1, v0, v2}, Lcom/bbm/f/ab;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V
:try_start_14
iget-object v0, v1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;
const-string v2, "type"
iget-object v3, p0, Lcom/bbm/d/a/a/e;->h:Lcom/bbm/d/a/d;
iget-object v3, v3, Lcom/bbm/d/a/d;->a:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
iget-object v0, v1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;
const-string v2, "cookie"
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v3
invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/bbm/d/a/a/e;->d:Ljava/lang/String;
iget-object v3, p0, Lcom/bbm/d/a/a/e;->d:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
iget-object v0, p0, Lcom/bbm/d/a/a/e;->k:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_71
iget-object v0, p0, Lcom/bbm/d/a/a/e;->k:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/a/d;
invoke-interface {v0}, Lcom/bbm/d/a/a/d;->a()Ljava/util/Map;
move-result-object v0
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_53
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_77
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v4
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_6c
.catch Lorg/json/JSONException; {:try_start_14 .. :try_end_6c} :catch_6d
goto :goto_53
:catch_6d
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
:cond_71
:goto_71
iget-object v0, p0, Lcom/bbm/d/a/a/e;->l:Lcom/bbm/f/a;
invoke-interface {v0, v1}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ab;)V
:goto_76
return-void
:try_start_77
:cond_77
iget-object v0, v1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;
const-string v3, "criteria"
invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_7e
.catch Lorg/json/JSONException; {:try_start_77 .. :try_end_7e} :catch_6d
goto :goto_71
:cond_7f
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/d/a/a/e;->e:Z
new-instance v1, Lcom/bbm/f/ab;
const-string v0, "requestListAll"
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
invoke-direct {v1, v0, v2}, Lcom/bbm/f/ab;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V
:try_start_8e
iget-object v0, v1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;
const-string v2, "type"
iget-object v3, p0, Lcom/bbm/d/a/a/e;->g:Lcom/bbm/d/a/c;
iget-object v3, v3, Lcom/bbm/d/a/c;->a:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
iget-object v0, v1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;
const-string v2, "id"
iget-object v3, p0, Lcom/bbm/d/a/a/e;->h:Lcom/bbm/d/a/d;
iget-object v3, v3, Lcom/bbm/d/a/d;->b:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:goto_a4
:try_end_a4
.catch Lorg/json/JSONException; {:try_start_8e .. :try_end_a4} :catch_aa
iget-object v0, p0, Lcom/bbm/d/a/a/e;->l:Lcom/bbm/f/a;
invoke-interface {v0, v1}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ab;)V
goto :goto_76
:catch_aa
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_a4
.end method
.method public final a(Ljava/lang/String;)Lcom/bbm/d/a/a;
.registers 4
invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V
iget-object v0, p0, Lcom/bbm/d/a/a/e;->f:Lcom/bbm/d/a/a/g;
invoke-virtual {v0, p1}, Lcom/bbm/d/a/a/g;->b(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/a;
if-eqz v0, :cond_e
:goto_d
return-object v0
:cond_e
iget-object v0, p0, Lcom/bbm/d/a/a/e;->j:Ljava/lang/Class;
invoke-static {v0}, Lcom/bbm/util/bc;->a(Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/a;
invoke-virtual {p0}, Lcom/bbm/d/a/a/e;->b()Z
move-result v1
if-eqz v1, :cond_22
sget-object v1, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
invoke-interface {v0, v1}, Lcom/bbm/d/a/a;->a(Lcom/bbm/util/bh;)V
goto :goto_d
:cond_22
sget-object v1, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
invoke-interface {v0, v1}, Lcom/bbm/d/a/a;->a(Lcom/bbm/util/bh;)V
goto :goto_d
.end method
.method public final synthetic a(I)Ljava/lang/Object;
.registers 4
invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V
if-ltz p1, :cond_14
invoke-virtual {p0}, Lcom/bbm/d/a/a/e;->d()I
move-result v0
if-ge p1, v0, :cond_14
iget-object v0, p0, Lcom/bbm/d/a/a/e;->f:Lcom/bbm/d/a/a/g;
invoke-virtual {v0, p1}, Lcom/bbm/d/a/a/g;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/a;
:goto_13
return-object v0
:cond_14
iget-object v0, p0, Lcom/bbm/d/a/a/e;->j:Ljava/lang/Class;
invoke-static {v0}, Lcom/bbm/util/bc;->a(Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/a;
sget-object v1, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
invoke-interface {v0, v1}, Lcom/bbm/d/a/a;->a(Lcom/bbm/util/bh;)V
goto :goto_13
.end method
.method public final a()V
.registers 3
sget-object v0, Lcom/bbm/d/a/a/f;->a:Lcom/bbm/d/a/a/f;
iput-object v0, p0, Lcom/bbm/d/a/a/e;->a:Lcom/bbm/d/a/a/f;
new-instance v0, Lcom/bbm/d/a/a/g;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/bbm/d/a/a/g;-><init>(Lcom/bbm/d/a/a/e;B)V
iput-object v0, p0, Lcom/bbm/d/a/a/e;->b:Lcom/bbm/d/a/a/g;
iget-boolean v0, p0, Lcom/bbm/d/a/a/e;->i:Z
if-nez v0, :cond_16
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/d/a/a/e;->i:Z
invoke-virtual {p0}, Lcom/bbm/d/a/a/e;->c()V
:cond_16
invoke-direct {p0}, Lcom/bbm/d/a/a/e;->f()V
return-void
.end method
.method public final a(Lorg/json/JSONObject;)V
.registers 11
const/4 v8, -0x1
const/4 v2, 0x0
const/4 v3, 0x1
iget-object v0, p0, Lcom/bbm/d/a/a/e;->a:Lcom/bbm/d/a/a/f;
sget-object v1, Lcom/bbm/d/a/a/f;->a:Lcom/bbm/d/a/a/f;
if-ne v0, v1, :cond_11
const-string v0, "received listChunk without being triggered!"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
:cond_10
:goto_10
return-void
:cond_11
const-string v0, "last"
invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v4
const-string v0, "elements"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v5
move v1, v2
:goto_1e
invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
move-result v0
if-ge v1, v0, :cond_41
iget-object v0, p0, Lcom/bbm/d/a/a/e;->j:Ljava/lang/Class;
invoke-static {v0}, Lcom/bbm/util/bc;->a(Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/a;
invoke-virtual {v5, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;
move-result-object v6
invoke-interface {v0, v6}, Lcom/bbm/d/a/a;->a(Lorg/json/JSONObject;)V
sget-object v6, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
invoke-interface {v0, v6}, Lcom/bbm/d/a/a;->a(Lcom/bbm/util/bh;)V
iget-object v6, p0, Lcom/bbm/d/a/a/e;->b:Lcom/bbm/d/a/a/g;
invoke-virtual {v6, v0}, Lcom/bbm/d/a/a/g;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_1e
:cond_41
if-eqz v4, :cond_10
iget-object v0, p0, Lcom/bbm/d/a/a/e;->k:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_ce
iget-object v0, p0, Lcom/bbm/d/a/a/e;->k:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/a/d;
iget-object v1, p0, Lcom/bbm/d/a/a/e;->a:Lcom/bbm/d/a/a/f;
sget-object v4, Lcom/bbm/d/a/a/f;->b:Lcom/bbm/d/a/a/f;
if-ne v1, v4, :cond_8a
iget-object v1, p0, Lcom/bbm/d/a/a/e;->f:Lcom/bbm/d/a/a/g;
invoke-virtual {v1}, Lcom/bbm/d/a/a/g;->size()I
move-result v1
if-lez v1, :cond_136
new-instance v1, Lcom/bbm/d/a/a/g;
invoke-direct {v1, p0, v2}, Lcom/bbm/d/a/a/g;-><init>(Lcom/bbm/d/a/a/e;B)V
iput-object v1, p0, Lcom/bbm/d/a/a/e;->f:Lcom/bbm/d/a/a/g;
move v1, v3
:goto_69
iget-object v4, p0, Lcom/bbm/d/a/a/e;->b:Lcom/bbm/d/a/a/g;
invoke-virtual {v4}, Lcom/bbm/d/a/a/g;->iterator()Ljava/util/Iterator;
move-result-object v5
move v4, v1
:goto_70
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_e0
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/a/a;
invoke-interface {v0, v1}, Lcom/bbm/d/a/a/d;->a(Lcom/bbm/d/a/a;)Z
move-result v6
if-eqz v6, :cond_133
iget-object v4, p0, Lcom/bbm/d/a/a/e;->f:Lcom/bbm/d/a/a/g;
invoke-virtual {v4, v1}, Lcom/bbm/d/a/a/g;->add(Ljava/lang/Object;)Z
move v1, v3
:goto_88
move v4, v1
goto :goto_70
:cond_8a
iget-object v1, p0, Lcom/bbm/d/a/a/e;->a:Lcom/bbm/d/a/a/f;
sget-object v4, Lcom/bbm/d/a/a/f;->c:Lcom/bbm/d/a/a/f;
if-ne v1, v4, :cond_12f
iget-object v1, p0, Lcom/bbm/d/a/a/e;->b:Lcom/bbm/d/a/a/g;
invoke-virtual {v1}, Lcom/bbm/d/a/a/g;->iterator()Ljava/util/Iterator;
move-result-object v5
move v4, v2
:goto_97
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_e0
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/a/a;
iget-object v6, p0, Lcom/bbm/d/a/a/e;->f:Lcom/bbm/d/a/a/g;
invoke-interface {v1}, Lcom/bbm/d/a/a;->a()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Lcom/bbm/d/a/a/g;->a(Ljava/lang/Object;)I
move-result v6
invoke-interface {v0, v1}, Lcom/bbm/d/a/a/d;->a(Lcom/bbm/d/a/a;)Z
move-result v7
if-eqz v7, :cond_c4
if-eq v6, v8, :cond_bd
invoke-direct {p0, v6, v1}, Lcom/bbm/d/a/a/e;->a(ILcom/bbm/d/a/a;)Z
move-result v1
if-eqz v1, :cond_131
move v4, v3
goto :goto_97
:cond_bd
iget-object v4, p0, Lcom/bbm/d/a/a/e;->f:Lcom/bbm/d/a/a/g;
invoke-virtual {v4, v1}, Lcom/bbm/d/a/a/g;->add(Ljava/lang/Object;)Z
move v4, v3
goto :goto_97
:cond_c4
if-eq v6, v8, :cond_131
iget-object v1, p0, Lcom/bbm/d/a/a/e;->f:Lcom/bbm/d/a/a/g;
invoke-virtual {v1, v6}, Lcom/bbm/d/a/a/g;->remove(I)Ljava/lang/Object;
move v1, v3
:goto_cc
move v4, v1
goto :goto_97
:cond_ce
iget-object v0, p0, Lcom/bbm/d/a/a/e;->a:Lcom/bbm/d/a/a/f;
sget-object v1, Lcom/bbm/d/a/a/f;->b:Lcom/bbm/d/a/a/f;
if-ne v0, v1, :cond_f6
iget-object v0, p0, Lcom/bbm/d/a/a/e;->b:Lcom/bbm/d/a/a/g;
iput-object v0, p0, Lcom/bbm/d/a/a/e;->f:Lcom/bbm/d/a/a/g;
new-instance v0, Lcom/bbm/d/a/a/g;
invoke-direct {v0, p0, v2}, Lcom/bbm/d/a/a/g;-><init>(Lcom/bbm/d/a/a/e;B)V
iput-object v0, p0, Lcom/bbm/d/a/a/e;->b:Lcom/bbm/d/a/a/g;
move v4, v3
:cond_e0
:goto_e0
iget-object v0, p0, Lcom/bbm/d/a/a/e;->a:Lcom/bbm/d/a/a/f;
if-eqz v4, :cond_e7
invoke-virtual {p0}, Lcom/bbm/d/a/a/e;->c()V
:cond_e7
sget-object v1, Lcom/bbm/d/a/a/f;->b:Lcom/bbm/d/a/a/f;
if-ne v0, v1, :cond_10
iget-boolean v0, p0, Lcom/bbm/d/a/a/e;->i:Z
if-eqz v0, :cond_10
iput-boolean v2, p0, Lcom/bbm/d/a/a/e;->i:Z
invoke-virtual {p0}, Lcom/bbm/d/a/a/e;->c()V
goto/16 :goto_10
:cond_f6
iget-object v0, p0, Lcom/bbm/d/a/a/e;->a:Lcom/bbm/d/a/a/f;
sget-object v1, Lcom/bbm/d/a/a/f;->c:Lcom/bbm/d/a/a/f;
if-ne v0, v1, :cond_12f
iget-object v0, p0, Lcom/bbm/d/a/a/e;->b:Lcom/bbm/d/a/a/g;
invoke-virtual {v0}, Lcom/bbm/d/a/a/g;->iterator()Ljava/util/Iterator;
move-result-object v4
move v1, v2
:goto_103
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_12b
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/a;
iget-object v5, p0, Lcom/bbm/d/a/a/e;->f:Lcom/bbm/d/a/a/g;
invoke-interface {v0}, Lcom/bbm/d/a/a;->a()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Lcom/bbm/d/a/a/g;->a(Ljava/lang/Object;)I
move-result v5
if-eq v5, v8, :cond_123
invoke-direct {p0, v5, v0}, Lcom/bbm/d/a/a/e;->a(ILcom/bbm/d/a/a;)Z
move-result v0
if-eqz v0, :cond_12d
move v1, v3
goto :goto_103
:cond_123
iget-object v1, p0, Lcom/bbm/d/a/a/e;->f:Lcom/bbm/d/a/a/g;
invoke-virtual {v1, v0}, Lcom/bbm/d/a/a/g;->add(Ljava/lang/Object;)Z
move v0, v3
:goto_129
move v1, v0
goto :goto_103
:cond_12b
move v4, v1
goto :goto_e0
:cond_12d
move v0, v1
goto :goto_129
:cond_12f
move v4, v2
goto :goto_e0
:cond_131
move v1, v4
goto :goto_cc
:cond_133
move v1, v4
goto/16 :goto_88
:cond_136
move v1, v2
goto/16 :goto_69
.end method
.method public final b(Lorg/json/JSONObject;)V
.registers 12
const/4 v4, 0x1
const/4 v1, 0x0
const-string v0, "elements"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v5
iget-object v0, p0, Lcom/bbm/d/a/a/e;->k:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_b0
new-instance v6, Lorg/json/JSONArray;
invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V
iget-object v0, p0, Lcom/bbm/d/a/a/e;->k:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/a/d;
move v2, v1
move v3, v1
:goto_1f
invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
move-result v1
if-ge v2, v1, :cond_7a
invoke-virtual {v5, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;
move-result-object v7
iget-object v1, p0, Lcom/bbm/d/a/a/e;->j:Ljava/lang/Class;
invoke-static {v7, v1}, Lcom/bbm/d/a/b;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/String;
move-result-object v1
iget-object v8, p0, Lcom/bbm/d/a/a/e;->f:Lcom/bbm/d/a/a/g;
invoke-virtual {v8, v1}, Lcom/bbm/d/a/a/g;->a(Ljava/lang/Object;)I
move-result v8
if-ltz v8, :cond_66
iget-object v9, p0, Lcom/bbm/d/a/a/e;->f:Lcom/bbm/d/a/a/g;
invoke-virtual {v9}, Lcom/bbm/d/a/a/g;->size()I
move-result v9
if-ge v8, v9, :cond_66
iget-object v1, p0, Lcom/bbm/d/a/a/e;->f:Lcom/bbm/d/a/a/g;
invoke-virtual {v1, v8}, Lcom/bbm/d/a/a/g;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/a/a;
invoke-interface {v1}, Lcom/bbm/d/a/a;->b()Lcom/bbm/d/a/a;
move-result-object v1
invoke-interface {v1, v7}, Lcom/bbm/d/a/a;->a(Lorg/json/JSONObject;)V
invoke-interface {v0, v1}, Lcom/bbm/d/a/a/d;->a(Lcom/bbm/d/a/a;)Z
move-result v7
if-eqz v7, :cond_5f
invoke-direct {p0, v8, v1}, Lcom/bbm/d/a/a/e;->a(ILcom/bbm/d/a/a;)Z
move-result v1
if-eqz v1, :cond_5b
move v3, v4
:goto_5b
:cond_5b
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_1f
:cond_5f
iget-object v1, p0, Lcom/bbm/d/a/a/e;->f:Lcom/bbm/d/a/a/g;
invoke-virtual {v1, v8}, Lcom/bbm/d/a/a/g;->remove(I)Ljava/lang/Object;
move v3, v4
goto :goto_5b
:cond_66
invoke-interface {v0}, Lcom/bbm/d/a/a/d;->a()Ljava/util/Map;
move-result-object v8
invoke-static {v7, v8}, Lcom/bbm/util/cb;->a(Lorg/json/JSONObject;Ljava/util/Map;)Z
move-result v7
if-eqz v7, :cond_5b
iget-object v7, p0, Lcom/bbm/d/a/a/e;->g:Lcom/bbm/d/a/c;
invoke-virtual {v7, v1}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
invoke-virtual {v6, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
goto :goto_5b
:cond_7a
invoke-virtual {v6}, Lorg/json/JSONArray;->length()I
move-result v0
if-lez v0, :cond_a3
new-instance v0, Lcom/bbm/f/ab;
const-string v1, "requestListElements"
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
invoke-direct {v0, v1, v2}, Lcom/bbm/f/ab;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V
:try_start_8c
iget-object v1, v0, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;
const-string v2, "elements"
invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
iget-object v1, v0, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;
const-string v2, "type"
iget-object v4, p0, Lcom/bbm/d/a/a/e;->g:Lcom/bbm/d/a/c;
iget-object v4, v4, Lcom/bbm/d/a/c;->a:Ljava/lang/String;
invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_9e
.catch Lorg/json/JSONException; {:try_start_8c .. :try_end_9e} :catch_a9
iget-object v1, p0, Lcom/bbm/d/a/a/e;->l:Lcom/bbm/f/a;
invoke-interface {v1, v0}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ab;)V
:goto_a3
:cond_a3
if-eqz v3, :cond_a8
invoke-virtual {p0}, Lcom/bbm/d/a/a/e;->c()V
:cond_a8
return-void
:catch_a9
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
:cond_b0
move v2, v1
:goto_b1
invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
move-result v0
if-ge v1, v0, :cond_f2
invoke-virtual {v5, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;
move-result-object v3
iget-object v0, p0, Lcom/bbm/d/a/a/e;->j:Ljava/lang/Class;
invoke-static {v3, v0}, Lcom/bbm/d/a/b;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/String;
move-result-object v0
iget-object v6, p0, Lcom/bbm/d/a/a/e;->f:Lcom/bbm/d/a/a/g;
invoke-virtual {v6, v0}, Lcom/bbm/d/a/a/g;->a(Ljava/lang/Object;)I
move-result v6
if-ltz v6, :cond_f0
iget-object v0, p0, Lcom/bbm/d/a/a/e;->f:Lcom/bbm/d/a/a/g;
invoke-virtual {v0}, Lcom/bbm/d/a/a/g;->size()I
move-result v0
if-ge v6, v0, :cond_f0
iget-object v0, p0, Lcom/bbm/d/a/a/e;->f:Lcom/bbm/d/a/a/g;
invoke-virtual {v0, v6}, Lcom/bbm/d/a/a/g;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/a;
invoke-interface {v0}, Lcom/bbm/d/a/a;->b()Lcom/bbm/d/a/a;
move-result-object v0
invoke-interface {v0, v3}, Lcom/bbm/d/a/a;->a(Lorg/json/JSONObject;)V
sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
invoke-interface {v0, v3}, Lcom/bbm/d/a/a;->a(Lcom/bbm/util/bh;)V
invoke-direct {p0, v6, v0}, Lcom/bbm/d/a/a/e;->a(ILcom/bbm/d/a/a;)Z
move-result v0
if-eqz v0, :cond_f0
move v0, v4
:goto_ec
add-int/lit8 v1, v1, 0x1
move v2, v0
goto :goto_b1
:cond_f0
move v0, v2
goto :goto_ec
:cond_f2
move v3, v2
goto :goto_a3
.end method
.method public final b()Z
.registers 2
invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V
iget-boolean v0, p0, Lcom/bbm/d/a/a/e;->i:Z
return v0
.end method
.method public final c(Lorg/json/JSONObject;)V
.registers 12
const/4 v9, -0x1
const/4 v3, 0x0
const/4 v5, 0x1
const-string v0, "elements"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v6
move v2, v3
move v4, v3
:goto_b
invoke-virtual {v6}, Lorg/json/JSONArray;->length()I
move-result v0
if-ge v2, v0, :cond_87
iget-object v0, p0, Lcom/bbm/d/a/a/e;->j:Ljava/lang/Class;
invoke-static {v0}, Lcom/bbm/util/bc;->a(Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/a;
invoke-virtual {v6, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;
move-result-object v1
invoke-interface {v0, v1}, Lcom/bbm/d/a/a;->a(Lorg/json/JSONObject;)V
sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
invoke-interface {v0, v1}, Lcom/bbm/d/a/a;->a(Lcom/bbm/util/bh;)V
invoke-interface {v0}, Lcom/bbm/d/a/a;->a()Ljava/lang/String;
move-result-object v1
iget-object v7, p0, Lcom/bbm/d/a/a/e;->f:Lcom/bbm/d/a/a/g;
invoke-virtual {v7, v1}, Lcom/bbm/d/a/a/g;->a(Ljava/lang/Object;)I
move-result v7
iget-object v1, p0, Lcom/bbm/d/a/a/e;->k:Lcom/google/b/a/l;
invoke-virtual {v1}, Lcom/google/b/a/l;->a()Z
move-result v1
if-eqz v1, :cond_6f
iget-object v1, p0, Lcom/bbm/d/a/a/e;->k:Lcom/google/b/a/l;
invoke-virtual {v1}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/a/a/d;
if-ne v7, v9, :cond_52
invoke-interface {v1, v0}, Lcom/bbm/d/a/a/d;->a(Lcom/bbm/d/a/a;)Z
move-result v1
if-eqz v1, :cond_6d
iget-object v1, p0, Lcom/bbm/d/a/a/e;->f:Lcom/bbm/d/a/a/g;
invoke-virtual {v1, v0}, Lcom/bbm/d/a/a/g;->add(Ljava/lang/Object;)Z
move v1, v5
:goto_4d
add-int/lit8 v0, v2, 0x1
move v2, v0
move v4, v1
goto :goto_b
:cond_52
invoke-interface {v1, v0}, Lcom/bbm/d/a/a/d;->a(Lcom/bbm/d/a/a;)Z
move-result v1
if-eqz v1, :cond_67
const-string v1, "Add of existing element"
new-array v8, v3, [Ljava/lang/Object;
invoke-static {v1, v8}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-direct {p0, v7, v0}, Lcom/bbm/d/a/a/e;->a(ILcom/bbm/d/a/a;)Z
move-result v0
if-eqz v0, :cond_6d
move v1, v5
goto :goto_4d
:cond_67
iget-object v0, p0, Lcom/bbm/d/a/a/e;->f:Lcom/bbm/d/a/a/g;
invoke-virtual {v0, v7}, Lcom/bbm/d/a/a/g;->remove(I)Ljava/lang/Object;
move v4, v5
:cond_6d
move v1, v4
goto :goto_4d
:cond_6f
if-ne v7, v9, :cond_78
iget-object v1, p0, Lcom/bbm/d/a/a/e;->f:Lcom/bbm/d/a/a/g;
invoke-virtual {v1, v0}, Lcom/bbm/d/a/a/g;->add(Ljava/lang/Object;)Z
move v1, v5
goto :goto_4d
:cond_78
const-string v1, "Add of existing element"
new-array v8, v3, [Ljava/lang/Object;
invoke-static {v1, v8}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-direct {p0, v7, v0}, Lcom/bbm/d/a/a/e;->a(ILcom/bbm/d/a/a;)Z
move-result v0
if-eqz v0, :cond_8d
move v1, v5
goto :goto_4d
:cond_87
if-eqz v4, :cond_8c
invoke-virtual {p0}, Lcom/bbm/d/a/a/e;->c()V
:cond_8c
return-void
:cond_8d
move v1, v4
goto :goto_4d
.end method
.method public final d()I
.registers 2
invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V
iget-object v0, p0, Lcom/bbm/d/a/a/e;->f:Lcom/bbm/d/a/a/g;
invoke-virtual {v0}, Lcom/bbm/d/a/a/g;->size()I
move-result v0
return v0
.end method
.method public final d(Lorg/json/JSONObject;)V
.registers 7
const/4 v0, 0x0
const-string v1, "elements"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v2
move v1, v0
:goto_8
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v3
if-ge v0, v3, :cond_2a
invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;
move-result-object v3
iget-object v4, p0, Lcom/bbm/d/a/a/e;->j:Ljava/lang/Class;
invoke-static {v3, v4}, Lcom/bbm/d/a/b;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/bbm/d/a/a/e;->f:Lcom/bbm/d/a/a/g;
invoke-virtual {v4, v3}, Lcom/bbm/d/a/a/g;->a(Ljava/lang/Object;)I
move-result v3
const/4 v4, -0x1
if-eq v3, v4, :cond_27
iget-object v1, p0, Lcom/bbm/d/a/a/e;->f:Lcom/bbm/d/a/a/g;
invoke-virtual {v1, v3}, Lcom/bbm/d/a/a/g;->remove(I)Ljava/lang/Object;
const/4 v1, 0x1
:cond_27
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_2a
if-eqz v1, :cond_2f
invoke-virtual {p0}, Lcom/bbm/d/a/a/e;->c()V
:cond_2f
return-void
.end method
.method public final synthetic e()Ljava/lang/Object;
.registers 3
invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p0, Lcom/bbm/d/a/a/e;->f:Lcom/bbm/d/a/a/g;
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
return-object v0
.end method