.class  Lcom/millennialmedia/a/a/b/f$8;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/millennialmedia/a/a/b/q;
.field final synthetic a:Ljava/lang/reflect/Type;
.field final synthetic b:Lcom/millennialmedia/a/a/b/f;
.method constructor <init>(Lcom/millennialmedia/a/a/b/f;Ljava/lang/reflect/Type;)V
.registers 3
iput-object p1, p0, Lcom/millennialmedia/a/a/b/f$8;->b:Lcom/millennialmedia/a/a/b/f;
iput-object p2, p0, Lcom/millennialmedia/a/a/b/f$8;->a:Ljava/lang/reflect/Type;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/millennialmedia/a/a/b/f$8;->a:Ljava/lang/reflect/Type;
instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;
if-eqz v0, :cond_3b
iget-object v0, p0, Lcom/millennialmedia/a/a/b/f$8;->a:Ljava/lang/reflect/Type;
check-cast v0, Ljava/lang/reflect/ParameterizedType;
invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;
move-result-object v0
const/4 v1, 0x0
aget-object v0, v0, v1
instance-of v1, v0, Ljava/lang/Class;
if-eqz v1, :cond_1c
check-cast v0, Ljava/lang/Class;
invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;
move-result-object v0
return-object v0
:cond_1c
new-instance v0, Lcom/millennialmedia/a/a/n;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Invalid EnumSet type: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/millennialmedia/a/a/b/f$8;->a:Ljava/lang/reflect/Type;
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/millennialmedia/a/a/n;-><init>(Ljava/lang/String;)V
throw v0
:cond_3b
new-instance v0, Lcom/millennialmedia/a/a/n;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Invalid EnumSet type: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/millennialmedia/a/a/b/f$8;->a:Ljava/lang/reflect/Type;
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/millennialmedia/a/a/n;-><init>(Ljava/lang/String;)V
throw v0
.end method