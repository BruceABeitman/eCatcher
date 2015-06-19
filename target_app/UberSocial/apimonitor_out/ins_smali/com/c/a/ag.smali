.class  Lcom/c/a/ag;
.super Lcom/c/a/dy;
.method private constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/c/a/dy;-><init>(Lcom/c/a/du;)V
return-void
.end method
.method constructor <init>(Lcom/c/a/du;)V
.registers 2
invoke-direct {p0}, Lcom/c/a/ag;-><init>()V
return-void
.end method
.method public a(Ljava/util/Map$Entry;)Lcom/c/t;
.registers 4
invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/a/cg;
invoke-virtual {v0}, Lcom/c/a/cg;->i()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/a/cg;
invoke-virtual {v0}, Lcom/c/a/cg;->h()I
move-result v0
neg-int v0, v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-static {v1, v0}, Lcom/c/t;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/c/t;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Comparable;
.registers 3
check-cast p1, Ljava/util/Map$Entry;
invoke-virtual {p0, p1}, Lcom/c/a/ag;->a(Ljava/util/Map$Entry;)Lcom/c/t;
move-result-object v0
return-object v0
.end method