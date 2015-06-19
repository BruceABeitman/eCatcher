.class final Lcom/bbm/ui/c/bd;
.super Lcom/bbm/j/a;
.source "ChatsFragment.java"
.field final synthetic a:Lcom/bbm/ui/c/at;
.method constructor <init>(Lcom/bbm/ui/c/at;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/bd;->a:Lcom/bbm/ui/c/at;
invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V
return-void
.end method
.method protected final synthetic a()Ljava/lang/Object;
.registers 5
const/4 v1, 0x0
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a;->r()Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v2
invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;
move-result-object v0
const-string v3, "adsEnabled"
invoke-virtual {v0, v3}, Lcom/bbm/b/q;->a(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v0
iget-object v0, v0, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
const-string v3, "value"
invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_3a
invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/b/q;->b()Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
move v1, v0
:cond_3a
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/g/am;->c()Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
add-int/2addr v1, v2
add-int/2addr v0, v1
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method