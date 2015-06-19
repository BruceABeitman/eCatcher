.class public final Lcom/instagram/api/j/q;
.super Lcom/instagram/api/j/j;
.source "StreamingApiResponse.java"
.field protected b:Landroid/content/Context;
.field  c:Ljava/lang/Object;
.field private d:Ljava/lang/String;
.field private e:Ljava/lang/String;
.field private f:Ljava/lang/String;
.field private g:Z
.field private h:Ljava/util/Map;
.field private i:Z
.field private j:Ljava/lang/String;
.field private k:Ljava/util/Collection;
.method protected constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Lcom/instagram/api/j/j;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/api/j/q;->g:Z
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/instagram/api/j/q;->h:Ljava/util/Map;
iput-object p1, p0, Lcom/instagram/api/j/q;->b:Landroid/content/Context;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Lcom/instagram/api/j/j;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/api/j/q;->g:Z
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/instagram/api/j/q;->h:Ljava/util/Map;
iput-object p1, p0, Lcom/instagram/api/j/q;->e:Ljava/lang/String;
return-void
.end method
.method public static d(Ljava/lang/String;)Lcom/instagram/api/j/q;
.registers 4
new-instance v0, Lcom/instagram/api/j/q;
if-nez p0, :cond_e
invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;
move-result-object v1
sget v2, Lcom/facebook/az;->network_error:I
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object p0
:cond_e
invoke-direct {v0, p0}, Lcom/instagram/api/j/q;-><init>(Ljava/lang/String;)V
return-object v0
.end method
.method public final a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
.registers 4
const/4 v0, 0x0
return-object v0
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/api/j/q;->d:Ljava/lang/String;
return-object v0
.end method
.method public final a(Ljava/lang/Object;)V
.registers 2
iput-object p1, p0, Lcom/instagram/api/j/q;->c:Ljava/lang/Object;
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/api/j/q;->e:Ljava/lang/String;
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/instagram/api/j/q;->h:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public final a(Ljava/util/Collection;)V
.registers 2
iput-object p1, p0, Lcom/instagram/api/j/q;->k:Ljava/util/Collection;
return-void
.end method
.method public final a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/api/j/q;->i:Z
return-void
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/api/j/q;->j:Ljava/lang/String;
return-object v0
.end method
.method public final b(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/api/j/q;->g:Z
return-void
.end method
.method public final b(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Lcom/instagram/api/j/q;->h:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final c(Ljava/lang/String;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/instagram/api/j/q;->h:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public final e(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/api/j/q;->d:Ljava/lang/String;
return-void
.end method
.method public final f(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/api/j/q;->f:Ljava/lang/String;
return-void
.end method
.method public final g()Z
.registers 3
iget-object v0, p0, Lcom/instagram/api/j/q;->e:Ljava/lang/String;
if-nez v0, :cond_12
invoke-virtual {p0}, Lcom/instagram/api/j/q;->a()Ljava/lang/String;
move-result-object v0
const-string v1, "ok"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public final h()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/instagram/api/j/q;->c:Ljava/lang/Object;
return-object v0
.end method
.method public final i()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/api/j/q;->e:Ljava/lang/String;
return-object v0
.end method
.method public final j()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/api/j/q;->i:Z
return v0
.end method
.method public final k()Ljava/util/Collection;
.registers 2
iget-object v0, p0, Lcom/instagram/api/j/q;->k:Ljava/util/Collection;
return-object v0
.end method
.method public final l()Lcom/fasterxml/jackson/databind/JsonNode;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final m()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/api/j/q;->f:Ljava/lang/String;
return-object v0
.end method
.method public final n()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/api/j/q;->g:Z
return v0
.end method