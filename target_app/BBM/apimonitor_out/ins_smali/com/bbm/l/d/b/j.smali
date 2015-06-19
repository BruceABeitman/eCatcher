.class final Lcom/bbm/l/d/b/j;
.super Ljava/lang/Object;
.source "GooglePlayMethod.java"
.implements Lcom/bbm/l/d;
.field final synthetic a:Ljava/util/ArrayList;
.field final synthetic b:Lcom/bbm/l/d/b/i;
.method constructor <init>(Lcom/bbm/l/d/b/i;Ljava/util/ArrayList;)V
.registers 3
iput-object p1, p0, Lcom/bbm/l/d/b/j;->b:Lcom/bbm/l/d/b/i;
iput-object p2, p0, Lcom/bbm/l/d/b/j;->a:Ljava/util/ArrayList;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Ljava/util/List;)V
.registers 10
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_9
:cond_9
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_55
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/l/d/b/x;
iget-object v3, v0, Lcom/bbm/l/d/b/x;->k:Ljava/lang/String;
invoke-static {v3}, Lcom/bbm/l/a;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
iget v4, v0, Lcom/bbm/l/d/b/x;->m:I
if-nez v4, :cond_9
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "restoring sticker pack: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
const/4 v5, 0x0
new-array v5, v5, [Ljava/lang/Object;
invoke-static {v4, v5}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_start_34
iget-wide v4, v0, Lcom/bbm/l/d/b/x;->l:J
const-wide/16 v6, 0x3e8
div-long/2addr v4, v6
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
const-string v6, "id"
invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "timeOwned"
invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_4f
.catch Lorg/json/JSONException; {:try_start_34 .. :try_end_4f} :catch_50
goto :goto_9
:catch_50
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_9
:cond_55
sget-object v0, Lcom/bbm/l/d/b/c;->d:Lcom/bbm/d/a;
invoke-static {v1}, Lcom/bbm/d/z;->a(Ljava/util/List;)Lcom/bbm/d/cq;
move-result-object v1
iget-object v2, p0, Lcom/bbm/l/d/b/j;->b:Lcom/bbm/l/d/b/i;
iget-object v2, v2, Lcom/bbm/l/d/b/i;->c:Lcom/bbm/l/d/b/h;
iget-boolean v2, v2, Lcom/bbm/l/d/b/h;->a:Z
invoke-virtual {v1, v2}, Lcom/bbm/d/cq;->a(Z)Lcom/bbm/d/cq;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
invoke-static {}, Lcom/bbm/l/d/b/c;->n()Z
iget-object v0, p0, Lcom/bbm/l/d/b/j;->b:Lcom/bbm/l/d/b/i;
iget-object v0, v0, Lcom/bbm/l/d/b/i;->c:Lcom/bbm/l/d/b/h;
iget-object v0, v0, Lcom/bbm/l/d/b/h;->d:Lcom/bbm/l/d/b/c;
iget-object v1, p0, Lcom/bbm/l/d/b/j;->b:Lcom/bbm/l/d/b/i;
iget-object v1, v1, Lcom/bbm/l/d/b/i;->c:Lcom/bbm/l/d/b/h;
iget-wide v1, v1, Lcom/bbm/l/d/b/h;->b:J
invoke-static {v0, v1, v2}, Lcom/bbm/l/d/b/c;->a(Lcom/bbm/l/d/b/c;J)V
iget-object v0, p0, Lcom/bbm/l/d/b/j;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v1
if-le v0, v1, :cond_8c
const v0, 0x7f0e0628
invoke-static {v0}, Lcom/bbm/util/fb;->b(I)V
:cond_8c
return-void
.end method