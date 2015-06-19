.class public final Lcom/googlecode/mp4parser/a/c;
.super Ljava/lang/Object;
.source "Movie.java"
.field  a:Ljava/util/List;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/googlecode/mp4parser/a/c;->a:Ljava/util/List;
return-void
.end method
.method private a(J)Lcom/googlecode/mp4parser/a/e;
.registers 7
iget-object v0, p0, Lcom/googlecode/mp4parser/a/c;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1f
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/googlecode/mp4parser/a/e;
invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v2
invoke-virtual {v2}, Lcom/googlecode/mp4parser/a/f;->g()J
move-result-wide v2
cmp-long v2, v2, p1
if-nez v2, :cond_6
:goto_1e
return-object v0
:cond_1f
const/4 v0, 0x0
goto :goto_1e
.end method
.method private b()J
.registers 7
const-wide/16 v0, 0x0
iget-object v2, p0, Lcom/googlecode/mp4parser/a/c;->a:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
move-wide v1, v0
:goto_9
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2d
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/googlecode/mp4parser/a/e;
invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v4
invoke-virtual {v4}, Lcom/googlecode/mp4parser/a/f;->g()J
move-result-wide v4
cmp-long v4, v1, v4
if-gez v4, :cond_2b
invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v0
invoke-virtual {v0}, Lcom/googlecode/mp4parser/a/f;->g()J
move-result-wide v0
:goto_29
move-wide v1, v0
goto :goto_9
:cond_2b
move-wide v0, v1
goto :goto_29
:cond_2d
const-wide/16 v3, 0x1
add-long v0, v1, v3
return-wide v0
.end method
.method public final a()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/googlecode/mp4parser/a/c;->a:Ljava/util/List;
return-object v0
.end method
.method public final a(Lcom/googlecode/mp4parser/a/e;)V
.registers 5
invoke-interface {p1}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v0
invoke-virtual {v0}, Lcom/googlecode/mp4parser/a/f;->g()J
move-result-wide v0
invoke-direct {p0, v0, v1}, Lcom/googlecode/mp4parser/a/c;->a(J)Lcom/googlecode/mp4parser/a/e;
move-result-object v0
if-eqz v0, :cond_19
invoke-interface {p1}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v0
invoke-direct {p0}, Lcom/googlecode/mp4parser/a/c;->b()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/a/f;->b(J)V
:cond_19
iget-object v0, p0, Lcom/googlecode/mp4parser/a/c;->a:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public final toString()Ljava/lang/String;
.registers 6
const-string v0, "Movie{ "
iget-object v1, p0, Lcom/googlecode/mp4parser/a/c;->a:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
move-object v1, v0
:goto_9
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4a
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/googlecode/mp4parser/a/e;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, "track_"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v3
invoke-virtual {v3}, Lcom/googlecode/mp4parser/a/f;->g()J
move-result-wide v3
invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, " ("
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->l()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
move-object v1, v0
goto :goto_9
:cond_4a
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method