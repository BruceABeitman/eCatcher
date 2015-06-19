.class  Lcom/twidroid/ui/a/x;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field  a:Ljava/util/ArrayList;
.field  b:Ljava/util/HashMap;
.field  c:Ljava/util/HashMap;
.field private final d:Lcom/twidroid/ui/a/w;
.field private final e:Lcom/twidroid/ui/a/y;
.method public constructor <init>(Lcom/twidroid/ui/a/w;Lcom/twidroid/ui/a/y;)V
.registers 4
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/a/x;->a:Ljava/util/ArrayList;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/a/x;->b:Ljava/util/HashMap;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/a/x;->c:Ljava/util/HashMap;
iput-object p1, p0, Lcom/twidroid/ui/a/x;->d:Lcom/twidroid/ui/a/w;
iput-object p2, p0, Lcom/twidroid/ui/a/x;->e:Lcom/twidroid/ui/a/y;
return-void
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/util/List;
invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/x;->a([Ljava/util/List;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method protected varargs a([Ljava/util/List;)Ljava/util/List;
.registers 10
const/4 v7, 0x0
iget-object v0, p0, Lcom/twidroid/ui/a/x;->d:Lcom/twidroid/ui/a/w;
if-nez v0, :cond_a
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
:goto_9
return-object v0
:cond_a
aget-object v0, p1, v7
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_10
:goto_10
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_9b
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/DirectMessage;
iget-wide v3, v0, Lcom/twidroid/model/twitter/DirectMessage;->C:J
iget-wide v5, v0, Lcom/twidroid/model/twitter/DirectMessage;->W:J
cmp-long v1, v3, v5
if-lez v1, :cond_62
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, ""
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v3, v0, Lcom/twidroid/model/twitter/DirectMessage;->C:J
invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v3, v0, Lcom/twidroid/model/twitter/DirectMessage;->W:J
invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, ""
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:goto_45
iget-object v3, p0, Lcom/twidroid/ui/a/x;->b:Ljava/util/HashMap;
invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_84
iget-object v3, p0, Lcom/twidroid/ui/a/x;->b:Ljava/util/HashMap;
invoke-virtual {v3, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/DirectMessage;->v()J
move-result-wide v3
iget-wide v5, v0, Lcom/twidroid/model/twitter/DirectMessage;->D:J
cmp-long v1, v3, v5
if-eqz v1, :cond_10
iget-object v1, p0, Lcom/twidroid/ui/a/x;->a:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_10
:cond_62
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, ""
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v3, v0, Lcom/twidroid/model/twitter/DirectMessage;->W:J
invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v3, v0, Lcom/twidroid/model/twitter/DirectMessage;->C:J
invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, ""
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
goto :goto_45
:cond_84
iget-wide v3, v0, Lcom/twidroid/model/twitter/DirectMessage;->D:J
iget-wide v5, v0, Lcom/twidroid/model/twitter/DirectMessage;->C:J
cmp-long v3, v3, v5
if-eqz v3, :cond_10
iget-object v3, p0, Lcom/twidroid/ui/a/x;->c:Ljava/util/HashMap;
invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_10
iget-object v3, p0, Lcom/twidroid/ui/a/x;->c:Ljava/util/HashMap;
invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_10
:cond_9b
aget-object v0, p1, v7
goto/16 :goto_9
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/util/List;
invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/x;->a(Ljava/util/List;)V
return-void
.end method
.method protected a(Ljava/util/List;)V
.registers 4
invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/twidroid/ui/a/x;->d:Lcom/twidroid/ui/a/w;
if-eqz v0, :cond_4b
iget-object v0, p0, Lcom/twidroid/ui/a/x;->d:Lcom/twidroid/ui/a/w;
iget-object v0, v0, Lcom/twidroid/ui/a/w;->b:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
iget-object v0, p0, Lcom/twidroid/ui/a/x;->d:Lcom/twidroid/ui/a/w;
iget-object v0, v0, Lcom/twidroid/ui/a/w;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
iget-object v0, p0, Lcom/twidroid/ui/a/x;->d:Lcom/twidroid/ui/a/w;
invoke-static {v0}, Lcom/twidroid/ui/a/w;->a(Lcom/twidroid/ui/a/w;)Ljava/util/HashMap;
move-result-object v0
invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
iget-object v0, p0, Lcom/twidroid/ui/a/x;->d:Lcom/twidroid/ui/a/w;
iget-object v0, v0, Lcom/twidroid/ui/a/w;->b:Ljava/util/HashMap;
iget-object v1, p0, Lcom/twidroid/ui/a/x;->b:Ljava/util/HashMap;
invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
iget-object v0, p0, Lcom/twidroid/ui/a/x;->d:Lcom/twidroid/ui/a/w;
iget-object v0, v0, Lcom/twidroid/ui/a/w;->a:Ljava/util/ArrayList;
iget-object v1, p0, Lcom/twidroid/ui/a/x;->a:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
iget-object v0, p0, Lcom/twidroid/ui/a/x;->d:Lcom/twidroid/ui/a/w;
invoke-static {v0}, Lcom/twidroid/ui/a/w;->a(Lcom/twidroid/ui/a/w;)Ljava/util/HashMap;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/ui/a/x;->c:Ljava/util/HashMap;
invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
iget-object v0, p0, Lcom/twidroid/ui/a/x;->d:Lcom/twidroid/ui/a/w;
invoke-virtual {v0}, Lcom/twidroid/ui/a/w;->notifyDataSetChanged()V
iget-object v0, p0, Lcom/twidroid/ui/a/x;->e:Lcom/twidroid/ui/a/y;
if-eqz v0, :cond_4b
iget-object v0, p0, Lcom/twidroid/ui/a/x;->e:Lcom/twidroid/ui/a/y;
iget-object v1, p0, Lcom/twidroid/ui/a/x;->d:Lcom/twidroid/ui/a/w;
invoke-interface {v0, v1}, Lcom/twidroid/ui/a/y;->a(Lcom/twidroid/ui/a/w;)V
:cond_4b
return-void
.end method