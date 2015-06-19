.class public final Lcom/millennialmedia/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Ljava/lang/reflect/Field;
.method public constructor <init>(Ljava/lang/reflect/Field;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/millennialmedia/a/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;
iput-object p1, p0, Lcom/millennialmedia/a/a/c;->a:Ljava/lang/reflect/Field;
return-void
.end method
.method public a()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/a/a/c;->a:Ljava/lang/reflect/Field;
invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;
move-result-object v0
return-object v0
.end method
.method  a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/c;->a:Ljava/lang/reflect/Field;
invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/c;->a:Ljava/lang/reflect/Field;
invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v0
return-object v0
.end method
.method public a(I)Z
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/c;->a:Ljava/lang/reflect/Field;
invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I
move-result v0
and-int/2addr v0, p1
if-eqz v0, :cond_b
const/4 v0, 0x1
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/a/a/c;->a:Ljava/lang/reflect/Field;
invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public c()Ljava/lang/reflect/Type;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/a/a/c;->a:Ljava/lang/reflect/Field;
invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;
move-result-object v0
return-object v0
.end method
.method public d()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/a/a/c;->a:Ljava/lang/reflect/Field;
invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;
move-result-object v0
return-object v0
.end method
.method public e()Ljava/util/Collection;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/a/a/c;->a:Ljava/lang/reflect/Field;
invoke-virtual {v0}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;
move-result-object v0
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method  f()Z
.registers 2
iget-object v0, p0, Lcom/millennialmedia/a/a/c;->a:Ljava/lang/reflect/Field;
invoke-virtual {v0}, Ljava/lang/reflect/Field;->isSynthetic()Z
move-result v0
return v0
.end method