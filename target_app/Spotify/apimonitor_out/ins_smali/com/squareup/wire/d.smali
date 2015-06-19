.class public final Lcom/squareup/wire/d;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Comparable;
.field private final a:Ljava/lang/Class;
.field private final b:Ljava/lang/Class;
.field private final c:Ljava/lang/Class;
.field private final d:Ljava/lang/String;
.field private final e:I
.field private final f:Lcom/squareup/wire/Message$Datatype;
.field private final g:Lcom/squareup/wire/Message$Label;
.method private a(Lcom/squareup/wire/d;)I
.registers 5
const/4 v0, 0x0
if-ne p1, p0, :cond_4
:goto_3
:cond_3
return v0
:cond_4
iget v1, p0, Lcom/squareup/wire/d;->e:I
iget v2, p1, Lcom/squareup/wire/d;->e:I
if-eq v1, v2, :cond_10
iget v0, p0, Lcom/squareup/wire/d;->e:I
iget v1, p1, Lcom/squareup/wire/d;->e:I
sub-int/2addr v0, v1
goto :goto_3
:cond_10
iget-object v1, p0, Lcom/squareup/wire/d;->f:Lcom/squareup/wire/Message$Datatype;
iget-object v2, p1, Lcom/squareup/wire/d;->f:Lcom/squareup/wire/Message$Datatype;
if-eq v1, v2, :cond_24
iget-object v0, p0, Lcom/squareup/wire/d;->f:Lcom/squareup/wire/Message$Datatype;
invoke-virtual {v0}, Lcom/squareup/wire/Message$Datatype;->a()I
move-result v0
iget-object v1, p1, Lcom/squareup/wire/d;->f:Lcom/squareup/wire/Message$Datatype;
invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->a()I
move-result v1
sub-int/2addr v0, v1
goto :goto_3
:cond_24
iget-object v1, p0, Lcom/squareup/wire/d;->g:Lcom/squareup/wire/Message$Label;
iget-object v2, p1, Lcom/squareup/wire/d;->g:Lcom/squareup/wire/Message$Label;
if-eq v1, v2, :cond_38
iget-object v0, p0, Lcom/squareup/wire/d;->g:Lcom/squareup/wire/Message$Label;
invoke-virtual {v0}, Lcom/squareup/wire/Message$Label;->a()I
move-result v0
iget-object v1, p1, Lcom/squareup/wire/d;->g:Lcom/squareup/wire/Message$Label;
invoke-virtual {v1}, Lcom/squareup/wire/Message$Label;->a()I
move-result v1
sub-int/2addr v0, v1
goto :goto_3
:cond_38
iget-object v1, p0, Lcom/squareup/wire/d;->a:Ljava/lang/Class;
if-eqz v1, :cond_57
iget-object v1, p0, Lcom/squareup/wire/d;->a:Ljava/lang/Class;
iget-object v2, p1, Lcom/squareup/wire/d;->a:Ljava/lang/Class;
invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_57
iget-object v0, p0, Lcom/squareup/wire/d;->a:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
iget-object v1, p1, Lcom/squareup/wire/d;->a:Ljava/lang/Class;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
goto :goto_3
:cond_57
iget-object v1, p0, Lcom/squareup/wire/d;->b:Ljava/lang/Class;
if-eqz v1, :cond_76
iget-object v1, p0, Lcom/squareup/wire/d;->b:Ljava/lang/Class;
iget-object v2, p1, Lcom/squareup/wire/d;->b:Ljava/lang/Class;
invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_76
iget-object v0, p0, Lcom/squareup/wire/d;->b:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
iget-object v1, p1, Lcom/squareup/wire/d;->b:Ljava/lang/Class;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
goto :goto_3
:cond_76
iget-object v1, p0, Lcom/squareup/wire/d;->c:Ljava/lang/Class;
if-eqz v1, :cond_3
iget-object v1, p0, Lcom/squareup/wire/d;->c:Ljava/lang/Class;
iget-object v2, p1, Lcom/squareup/wire/d;->c:Ljava/lang/Class;
invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_3
iget-object v0, p0, Lcom/squareup/wire/d;->c:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
iget-object v1, p1, Lcom/squareup/wire/d;->c:Ljava/lang/Class;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
goto/16 :goto_3
.end method
.method public final a()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/squareup/wire/d;->a:Ljava/lang/Class;
return-object v0
.end method
.method public final b()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/squareup/wire/d;->b:Ljava/lang/Class;
return-object v0
.end method
.method public final c()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/squareup/wire/d;->c:Ljava/lang/Class;
return-object v0
.end method
.method public final synthetic compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lcom/squareup/wire/d;
invoke-direct {p0, p1}, Lcom/squareup/wire/d;->a(Lcom/squareup/wire/d;)I
move-result v0
return v0
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/squareup/wire/d;->d:Ljava/lang/String;
return-object v0
.end method
.method public final e()I
.registers 2
iget v0, p0, Lcom/squareup/wire/d;->e:I
return v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 3
instance-of v0, p1, Lcom/squareup/wire/d;
if-eqz v0, :cond_e
check-cast p1, Lcom/squareup/wire/d;
invoke-direct {p0, p1}, Lcom/squareup/wire/d;->a(Lcom/squareup/wire/d;)I
move-result v0
if-nez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public final f()Lcom/squareup/wire/Message$Datatype;
.registers 2
iget-object v0, p0, Lcom/squareup/wire/d;->f:Lcom/squareup/wire/Message$Datatype;
return-object v0
.end method
.method public final g()Lcom/squareup/wire/Message$Label;
.registers 2
iget-object v0, p0, Lcom/squareup/wire/d;->g:Lcom/squareup/wire/Message$Label;
return-object v0
.end method
.method public final hashCode()I
.registers 4
const/4 v1, 0x0
iget v0, p0, Lcom/squareup/wire/d;->e:I
mul-int/lit8 v0, v0, 0x25
iget-object v2, p0, Lcom/squareup/wire/d;->f:Lcom/squareup/wire/Message$Datatype;
invoke-virtual {v2}, Lcom/squareup/wire/Message$Datatype;->a()I
move-result v2
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x25
iget-object v2, p0, Lcom/squareup/wire/d;->g:Lcom/squareup/wire/Message$Label;
invoke-virtual {v2}, Lcom/squareup/wire/Message$Label;->a()I
move-result v2
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x25
iget-object v2, p0, Lcom/squareup/wire/d;->a:Ljava/lang/Class;
invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
move-result v2
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x25
iget-object v0, p0, Lcom/squareup/wire/d;->b:Ljava/lang/Class;
if-eqz v0, :cond_39
iget-object v0, p0, Lcom/squareup/wire/d;->b:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
:goto_2a
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x25
iget-object v2, p0, Lcom/squareup/wire/d;->c:Ljava/lang/Class;
if-eqz v2, :cond_37
iget-object v1, p0, Lcom/squareup/wire/d;->c:Ljava/lang/Class;
invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
move-result v1
:cond_37
add-int/2addr v0, v1
return v0
:cond_39
move v0, v1
goto :goto_2a
.end method
.method public final toString()Ljava/lang/String;
.registers 5
const-string v0, "[%s %s %s = %d]"
const/4 v1, 0x4
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/squareup/wire/d;->g:Lcom/squareup/wire/Message$Label;
aput-object v3, v1, v2
const/4 v2, 0x1
iget-object v3, p0, Lcom/squareup/wire/d;->f:Lcom/squareup/wire/Message$Datatype;
aput-object v3, v1, v2
const/4 v2, 0x2
iget-object v3, p0, Lcom/squareup/wire/d;->d:Ljava/lang/String;
aput-object v3, v1, v2
const/4 v2, 0x3
iget v3, p0, Lcom/squareup/wire/d;->e:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method