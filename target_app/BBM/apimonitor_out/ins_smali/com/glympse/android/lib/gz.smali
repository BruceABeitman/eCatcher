.class  Lcom/glympse/android/lib/gz;
.super Ljava/lang/Object;
.source "RefCounter.java"
.implements Lcom/glympse/android/core/GCommon;
.field private rs:Ljava/util/Hashtable;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/Hashtable;
invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/gz;->rs:Ljava/util/Hashtable;
return-void
.end method
.method public a(Lcom/glympse/android/core/GArray;)V
.registers 5
invoke-interface {p1}, Lcom/glympse/android/core/GArray;->length()I
move-result v1
const/4 v0, 0x0
:goto_5
if-ge v0, v1, :cond_11
invoke-interface {p1, v0}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/glympse/android/lib/gz;->i(Ljava/lang/Object;)I
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_11
return-void
.end method
.method public b(Lcom/glympse/android/core/GArray;)V
.registers 5
invoke-interface {p1}, Lcom/glympse/android/core/GArray;->length()I
move-result v1
const/4 v0, 0x0
:goto_5
if-ge v0, v1, :cond_11
invoke-interface {p1, v0}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/glympse/android/lib/gz;->j(Ljava/lang/Object;)I
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_11
return-void
.end method
.method public cw()V
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/gz;->rs:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V
return-void
.end method
.method public cx()Ljava/util/Enumeration;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/gz;->rs:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public i(Ljava/lang/Object;)I
.registers 7
const-wide/16 v1, 0x1
iget-object v0, p0, Lcom/glympse/android/lib/gz;->rs:Ljava/util/Hashtable;
invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
if-nez v0, :cond_18
move-wide v0, v1
:goto_d
iget-object v2, p0, Lcom/glympse/android/lib/gz;->rs:Ljava/util/Hashtable;
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v2, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
long-to-int v0, v0
return v0
:cond_18
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v3
add-long v0, v3, v1
goto :goto_d
.end method
.method public j(Ljava/lang/Object;)I
.registers 6
iget-object v0, p0, Lcom/glympse/android/lib/gz;->rs:Ljava/util/Hashtable;
invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
if-nez v0, :cond_c
const/4 v0, -0x1
:goto_b
return v0
:cond_c
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
const-wide/16 v2, 0x1
sub-long/2addr v0, v2
const-wide/16 v2, 0x0
cmp-long v2, v0, v2
if-nez v2, :cond_20
iget-object v2, p0, Lcom/glympse/android/lib/gz;->rs:Ljava/util/Hashtable;
invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:goto_1e
long-to-int v0, v0
goto :goto_b
:cond_20
iget-object v2, p0, Lcom/glympse/android/lib/gz;->rs:Ljava/util/Hashtable;
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v2, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_1e
.end method
.method public k(Ljava/lang/Object;)I
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/gz;->rs:Ljava/util/Hashtable;
invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
long-to-int v0, v0
goto :goto_b
.end method