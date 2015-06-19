.class final Lcom/millennialmedia/a/a/b/d;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/ParameterizedType;
.field private static final d:J
.field private final a:Ljava/lang/reflect/Type;
.field private final b:Ljava/lang/reflect/Type;
.field private final c:[Ljava/lang/reflect/Type;
.method public varargs constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
.registers 8
const/4 v3, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
instance-of v0, p2, Ljava/lang/Class;
if-eqz v0, :cond_23
move-object v0, p2
check-cast v0, Ljava/lang/Class;
if-nez p1, :cond_14
invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;
move-result-object v1
if-nez v1, :cond_58
:cond_14
move v1, v3
:goto_15
invoke-static {v1}, Lcom/millennialmedia/a/a/b/a;->a(Z)V
if-eqz p1, :cond_20
invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;
move-result-object v0
if-eqz v0, :cond_5a
:goto_20
:cond_20
invoke-static {v3}, Lcom/millennialmedia/a/a/b/a;->a(Z)V
:cond_23
if-nez p1, :cond_5c
const/4 v0, 0x0
:goto_26
iput-object v0, p0, Lcom/millennialmedia/a/a/b/d;->a:Ljava/lang/reflect/Type;
invoke-static {p2}, Lcom/millennialmedia/a/a/b/b;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/a/a/b/d;->b:Ljava/lang/reflect/Type;
invoke-virtual {p3}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/reflect/Type;
iput-object v0, p0, Lcom/millennialmedia/a/a/b/d;->c:[Ljava/lang/reflect/Type;
:goto_36
iget-object v0, p0, Lcom/millennialmedia/a/a/b/d;->c:[Ljava/lang/reflect/Type;
array-length v0, v0
if-ge v2, v0, :cond_61
iget-object v0, p0, Lcom/millennialmedia/a/a/b/d;->c:[Ljava/lang/reflect/Type;
aget-object v0, v0, v2
invoke-static {v0}, Lcom/millennialmedia/a/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/millennialmedia/a/a/b/d;->c:[Ljava/lang/reflect/Type;
aget-object v0, v0, v2
invoke-static {v0}, Lcom/millennialmedia/a/a/b/b;->h(Ljava/lang/reflect/Type;)V
iget-object v0, p0, Lcom/millennialmedia/a/a/b/d;->c:[Ljava/lang/reflect/Type;
iget-object v1, p0, Lcom/millennialmedia/a/a/b/d;->c:[Ljava/lang/reflect/Type;
aget-object v1, v1, v2
invoke-static {v1}, Lcom/millennialmedia/a/a/b/b;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
move-result-object v1
aput-object v1, v0, v2
add-int/lit8 v2, v2, 0x1
goto :goto_36
:cond_58
move v1, v2
goto :goto_15
:cond_5a
move v3, v2
goto :goto_20
:cond_5c
invoke-static {p1}, Lcom/millennialmedia/a/a/b/b;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
move-result-object v0
goto :goto_26
:cond_61
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 3
instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;
if-eqz v0, :cond_e
check-cast p1, Ljava/lang/reflect/ParameterizedType;
invoke-static {p0, p1}, Lcom/millennialmedia/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/a/a/b/d;->c:[Ljava/lang/reflect/Type;
invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/reflect/Type;
return-object v0
.end method
.method public getOwnerType()Ljava/lang/reflect/Type;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/a/a/b/d;->a:Ljava/lang/reflect/Type;
return-object v0
.end method
.method public getRawType()Ljava/lang/reflect/Type;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/a/a/b/d;->b:Ljava/lang/reflect/Type;
return-object v0
.end method
.method public hashCode()I
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/b/d;->c:[Ljava/lang/reflect/Type;
invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v0
iget-object v1, p0, Lcom/millennialmedia/a/a/b/d;->b:Ljava/lang/reflect/Type;
invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
move-result v1
xor-int/2addr v0, v1
iget-object v1, p0, Lcom/millennialmedia/a/a/b/d;->a:Ljava/lang/reflect/Type;
invoke-static {v1}, Lcom/millennialmedia/a/a/b/b;->a(Ljava/lang/Object;)I
move-result v1
xor-int/2addr v0, v1
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 5
new-instance v1, Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/millennialmedia/a/a/b/d;->c:[Ljava/lang/reflect/Type;
array-length v0, v0
add-int/lit8 v0, v0, 0x1
mul-int/lit8 v0, v0, 0x1e
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V
iget-object v0, p0, Lcom/millennialmedia/a/a/b/d;->b:Ljava/lang/reflect/Type;
invoke-static {v0}, Lcom/millennialmedia/a/a/b/b;->f(Ljava/lang/reflect/Type;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/millennialmedia/a/a/b/d;->c:[Ljava/lang/reflect/Type;
array-length v0, v0
if-nez v0, :cond_1f
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_1e
return-object v0
:cond_1f
const-string v0, "<"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/millennialmedia/a/a/b/d;->c:[Ljava/lang/reflect/Type;
const/4 v3, 0x0
aget-object v2, v2, v3
invoke-static {v2}, Lcom/millennialmedia/a/a/b/b;->f(Ljava/lang/reflect/Type;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/4 v0, 0x1
:goto_32
iget-object v2, p0, Lcom/millennialmedia/a/a/b/d;->c:[Ljava/lang/reflect/Type;
array-length v2, v2
if-ge v0, v2, :cond_4b
const-string v2, ", "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/millennialmedia/a/a/b/d;->c:[Ljava/lang/reflect/Type;
aget-object v3, v3, v0
invoke-static {v3}, Lcom/millennialmedia/a/a/b/b;->f(Ljava/lang/reflect/Type;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_32
:cond_4b
const-string v0, ">"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_1e
.end method