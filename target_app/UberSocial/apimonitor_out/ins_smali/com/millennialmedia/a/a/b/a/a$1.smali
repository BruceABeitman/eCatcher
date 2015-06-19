.class final Lcom/millennialmedia/a/a/b/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/millennialmedia/a/a/ab;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/f;Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/aa;
.registers 6
invoke-virtual {p2}, Lcom/millennialmedia/a/a/c/a;->b()Ljava/lang/reflect/Type;
move-result-object v1
instance-of v0, v1, Ljava/lang/reflect/GenericArrayType;
if-nez v0, :cond_17
instance-of v0, v1, Ljava/lang/Class;
if-eqz v0, :cond_15
move-object v0, v1
check-cast v0, Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z
move-result v0
if-nez v0, :cond_17
:cond_15
const/4 v0, 0x0
:goto_16
return-object v0
:cond_17
invoke-static {v1}, Lcom/millennialmedia/a/a/b/b;->g(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
move-result-object v1
invoke-static {v1}, Lcom/millennialmedia/a/a/c/a;->b(Ljava/lang/reflect/Type;)Lcom/millennialmedia/a/a/c/a;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/f;->a(Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/aa;
move-result-object v2
new-instance v0, Lcom/millennialmedia/a/a/b/a/a;
invoke-static {v1}, Lcom/millennialmedia/a/a/b/b;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;
move-result-object v1
invoke-direct {v0, p1, v2, v1}, Lcom/millennialmedia/a/a/b/a/a;-><init>(Lcom/millennialmedia/a/a/f;Lcom/millennialmedia/a/a/aa;Ljava/lang/Class;)V
goto :goto_16
.end method