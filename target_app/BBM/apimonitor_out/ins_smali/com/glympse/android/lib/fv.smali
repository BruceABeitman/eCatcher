.class  Lcom/glympse/android/lib/fv;
.super Ljava/lang/Object;
.source "MemoryCache.java"
.implements Lcom/glympse/android/lib/GMemoryCache;
.field private nS:Ljava/util/Hashtable;
.field private ql:I
.field private qm:I
.field private qn:Lcom/glympse/android/lib/bu;
.method public constructor <init>(II)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/glympse/android/lib/fv;->ql:I
iput p2, p0, Lcom/glympse/android/lib/fv;->qm:I
new-instance v0, Ljava/util/Hashtable;
iget v1, p0, Lcom/glympse/android/lib/fv;->qm:I
add-int/lit8 v1, v1, 0x1
invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V
iput-object v0, p0, Lcom/glympse/android/lib/fv;->nS:Ljava/util/Hashtable;
new-instance v0, Lcom/glympse/android/lib/ge;
invoke-direct {v0}, Lcom/glympse/android/lib/ge;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/fv;->qn:Lcom/glympse/android/lib/bu;
return-void
.end method
.method private ca()V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/fv;->qn:Lcom/glympse/android/lib/bu;
invoke-interface {v0}, Lcom/glympse/android/lib/bu;->size()I
move-result v0
iget v1, p0, Lcom/glympse/android/lib/fv;->qm:I
if-ge v0, v1, :cond_b
:cond_a
return-void
:goto_b
:cond_b
iget-object v0, p0, Lcom/glympse/android/lib/fv;->qn:Lcom/glympse/android/lib/bu;
invoke-interface {v0}, Lcom/glympse/android/lib/bu;->size()I
move-result v0
iget v1, p0, Lcom/glympse/android/lib/fv;->ql:I
if-le v0, v1, :cond_a
iget-object v0, p0, Lcom/glympse/android/lib/fv;->qn:Lcom/glympse/android/lib/bu;
invoke-interface {v0}, Lcom/glympse/android/lib/bu;->bi()Lcom/glympse/android/lib/bt;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/fv;->nS:Ljava/util/Hashtable;
invoke-interface {v0}, Lcom/glympse/android/lib/bt;->be()Ljava/lang/Object;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v1, p0, Lcom/glympse/android/lib/fv;->qn:Lcom/glympse/android/lib/bu;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/bu;->c(Lcom/glympse/android/lib/bt;)V
goto :goto_b
.end method
.method private x(Ljava/lang/String;)Lcom/glympse/android/lib/fx;
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/fv;->nS:Ljava/util/Hashtable;
invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/fx;
return-object v0
.end method
.method public cache(Ljava/lang/String;Lcom/glympse/android/core/GCommon;)V
.registers 6
invoke-direct {p0, p1}, Lcom/glympse/android/lib/fv;->x(Ljava/lang/String;)Lcom/glympse/android/lib/fx;
move-result-object v0
if-nez v0, :cond_1f
new-instance v0, Lcom/glympse/android/lib/fw;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/glympse/android/lib/fw;-><init>(Lcom/glympse/android/lib/fv$1;)V
iput-object p2, v0, Lcom/glympse/android/lib/fx;->qo:Lcom/glympse/android/core/GCommon;
iget-object v1, p0, Lcom/glympse/android/lib/fv;->qn:Lcom/glympse/android/lib/bu;
invoke-interface {v1, p1}, Lcom/glympse/android/lib/bu;->e(Ljava/lang/Object;)Lcom/glympse/android/lib/bt;
move-result-object v1
iput-object v1, v0, Lcom/glympse/android/lib/fx;->qp:Lcom/glympse/android/lib/bt;
iget-object v1, p0, Lcom/glympse/android/lib/fv;->nS:Ljava/util/Hashtable;
invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-direct {p0}, Lcom/glympse/android/lib/fv;->ca()V
:goto_1e
return-void
:cond_1f
iget-object v1, p0, Lcom/glympse/android/lib/fv;->qn:Lcom/glympse/android/lib/bu;
iget-object v2, v0, Lcom/glympse/android/lib/fx;->qp:Lcom/glympse/android/lib/bt;
invoke-interface {v1, v2}, Lcom/glympse/android/lib/bu;->c(Lcom/glympse/android/lib/bt;)V
iget-object v1, p0, Lcom/glympse/android/lib/fv;->qn:Lcom/glympse/android/lib/bu;
invoke-interface {v1, p1}, Lcom/glympse/android/lib/bu;->e(Ljava/lang/Object;)Lcom/glympse/android/lib/bt;
move-result-object v1
iput-object v1, v0, Lcom/glympse/android/lib/fx;->qp:Lcom/glympse/android/lib/bt;
goto :goto_1e
.end method
.method public extract(Ljava/lang/String;)Lcom/glympse/android/core/GCommon;
.registers 5
invoke-direct {p0, p1}, Lcom/glympse/android/lib/fv;->x(Ljava/lang/String;)Lcom/glympse/android/lib/fx;
move-result-object v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
iget-object v1, p0, Lcom/glympse/android/lib/fv;->qn:Lcom/glympse/android/lib/bu;
iget-object v2, v0, Lcom/glympse/android/lib/fx;->qp:Lcom/glympse/android/lib/bt;
invoke-interface {v1, v2}, Lcom/glympse/android/lib/bu;->c(Lcom/glympse/android/lib/bt;)V
iget-object v1, p0, Lcom/glympse/android/lib/fv;->qn:Lcom/glympse/android/lib/bu;
invoke-interface {v1, p1}, Lcom/glympse/android/lib/bu;->e(Ljava/lang/Object;)Lcom/glympse/android/lib/bt;
move-result-object v1
iput-object v1, v0, Lcom/glympse/android/lib/fx;->qp:Lcom/glympse/android/lib/bt;
iget-object v0, v0, Lcom/glympse/android/lib/fx;->qo:Lcom/glympse/android/core/GCommon;
goto :goto_7
.end method
.method public onLowMemory()V
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/fv;->nS:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V
iget-object v0, p0, Lcom/glympse/android/lib/fv;->qn:Lcom/glympse/android/lib/bu;
invoke-interface {v0}, Lcom/glympse/android/lib/bu;->removeAll()V
return-void
.end method