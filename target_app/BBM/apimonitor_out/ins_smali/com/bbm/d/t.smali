.class final Lcom/bbm/d/t;
.super Lcom/bbm/d/b/q;
.source "BbmdsModel.java"
.field final synthetic a:Lcom/bbm/d/w;
.field final synthetic b:Lcom/bbm/d/a;
.method constructor <init>(Lcom/bbm/d/a;Lcom/bbm/d/w;)V
.registers 3
iput-object p1, p0, Lcom/bbm/d/t;->b:Lcom/bbm/d/a;
iput-object p2, p0, Lcom/bbm/d/t;->a:Lcom/bbm/d/w;
invoke-direct {p0}, Lcom/bbm/d/b/q;-><init>()V
return-void
.end method
.method protected final a()Ljava/util/List;
.registers 5
invoke-virtual {p0}, Lcom/bbm/d/t;->b()Z
move-result v0
if-eqz v0, :cond_b
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
:goto_a
return-object v0
:cond_b
iget-object v0, p0, Lcom/bbm/d/t;->b:Lcom/bbm/d/a;
invoke-virtual {v0}, Lcom/bbm/d/a;->P()Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
iget-object v1, p0, Lcom/bbm/d/t;->b:Lcom/bbm/d/a;
const-string v2, "defaultCategory"
invoke-virtual {v1, v2}, Lcom/bbm/d/a;->E(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v1
iget-object v1, v1, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
const-string v2, "value"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
move-result v1
int-to-long v1, v1
new-instance v3, Lcom/bbm/d/u;
invoke-direct {v3, p0, v1, v2}, Lcom/bbm/d/u;-><init>(Lcom/bbm/d/t;J)V
invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
goto :goto_a
.end method
.method public final b()Z
.registers 3
iget-object v0, p0, Lcom/bbm/d/t;->b:Lcom/bbm/d/a;
invoke-virtual {v0}, Lcom/bbm/d/a;->P()Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->b()Z
move-result v0
if-nez v0, :cond_1a
iget-object v0, p0, Lcom/bbm/d/t;->b:Lcom/bbm/d/a;
const-string v1, "defaultCategory"
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->E(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v0
iget-object v0, v0, Lcom/bbm/util/bl;->b:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v0, v1, :cond_1c
:cond_1a
const/4 v0, 0x1
:goto_1b
return v0
:cond_1c
const/4 v0, 0x0
goto :goto_1b
.end method