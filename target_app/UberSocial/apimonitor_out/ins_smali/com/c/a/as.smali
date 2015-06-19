.class  Lcom/c/a/as;
.super Ljava/util/LinkedHashMap;
.field final a:I
.field final b:Lcom/c/a/dl;
.method constructor <init>(Lcom/c/a/dl;IFZI)V
.registers 6
iput-object p1, p0, Lcom/c/a/as;->b:Lcom/c/a/dl;
iput p5, p0, Lcom/c/a/as;->a:I
invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V
return-void
.end method
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
.registers 4
invoke-virtual {p0}, Lcom/c/a/as;->size()I
move-result v0
iget v1, p0, Lcom/c/a/as;->a:I
if-le v0, v1, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method