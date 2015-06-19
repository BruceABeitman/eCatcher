.class  Lcom/c/a/aq;
.super Ljava/lang/Object;
.implements Lcom/c/y;
.field private final a:Ljava/util/List;
.method private constructor <init>(Lcom/c/a/bv;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Lcom/c/a/bv;->c()Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/c/a/aq;->a:Ljava/util/List;
return-void
.end method
.method constructor <init>(Lcom/c/a/bv;Lcom/c/a/du;)V
.registers 3
invoke-direct {p0, p1}, Lcom/c/a/aq;-><init>(Lcom/c/a/bv;)V
return-void
.end method
.method public bridge synthetic a(Ljava/lang/Object;)Z
.registers 3
check-cast p1, Ljava/util/Map$Entry;
invoke-virtual {p0, p1}, Lcom/c/a/aq;->a(Ljava/util/Map$Entry;)Z
move-result v0
return v0
.end method
.method public a(Ljava/util/Map$Entry;)Z
.registers 5
iget-object v1, p0, Lcom/c/a/aq;->a:Ljava/util/List;
invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/a/bv;
invoke-virtual {v0}, Lcom/c/a/bv;->c()Ljava/util/ArrayList;
move-result-object v0
sget-object v2, Lcom/c/q;->a:Ljava/util/Comparator;
invoke-static {v1, v0, v2}, Lcom/c/br;->c(Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;)I
move-result v0
if-lez v0, :cond_16
const/4 v0, 0x1
:goto_15
return v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method