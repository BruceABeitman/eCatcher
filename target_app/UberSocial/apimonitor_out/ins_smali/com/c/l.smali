.class public final Lcom/c/l;
.super Ljava/lang/Object;
.implements Ljava/lang/Comparable;
.field private final a:I
.field private final b:I
.field private final c:I
.field private final d:I
.field private final e:I
.method public constructor <init>(III)V
.registers 5
const/4 v0, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/c/l;->a:I
iput p2, p0, Lcom/c/l;->b:I
iput v0, p0, Lcom/c/l;->c:I
iput v0, p0, Lcom/c/l;->d:I
iput p3, p0, Lcom/c/l;->e:I
return-void
.end method
.method public constructor <init>(IIII)V
.registers 7
const/4 v1, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/c/l;->a:I
iput p2, p0, Lcom/c/l;->b:I
if-ne p3, v1, :cond_12
move v0, v1
:goto_b
iput v0, p0, Lcom/c/l;->c:I
iput p4, p0, Lcom/c/l;->d:I
iput v1, p0, Lcom/c/l;->e:I
return-void
:cond_12
const v0, 0xffff
and-int/2addr v0, p3
goto :goto_b
.end method
.method public a()I
.registers 2
iget v0, p0, Lcom/c/l;->e:I
return v0
.end method
.method public a(Lcom/c/l;)I
.registers 4
if-nez p1, :cond_4
const/4 v0, -0x1
:cond_3
:goto_3
return v0
:cond_4
iget v0, p0, Lcom/c/l;->a:I
iget v1, p1, Lcom/c/l;->a:I
sub-int/2addr v0, v1
if-nez v0, :cond_3
iget v0, p0, Lcom/c/l;->b:I
iget v1, p1, Lcom/c/l;->b:I
sub-int/2addr v0, v1
if-nez v0, :cond_3
iget v0, p0, Lcom/c/l;->c:I
iget v1, p1, Lcom/c/l;->c:I
sub-int/2addr v0, v1
if-nez v0, :cond_3
iget v0, p0, Lcom/c/l;->d:I
iget v1, p1, Lcom/c/l;->d:I
sub-int/2addr v0, v1
if-nez v0, :cond_3
iget v0, p0, Lcom/c/l;->e:I
iget v1, p1, Lcom/c/l;->e:I
sub-int/2addr v0, v1
goto :goto_3
.end method
.method public b()I
.registers 2
iget v0, p0, Lcom/c/l;->c:I
return v0
.end method
.method public c()I
.registers 2
iget v0, p0, Lcom/c/l;->d:I
return v0
.end method
.method public synthetic compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lcom/c/l;
invoke-virtual {p0, p1}, Lcom/c/l;->a(Lcom/c/l;)I
move-result v0
return v0
.end method
.method public d()I
.registers 2
iget v0, p0, Lcom/c/l;->a:I
return v0
.end method
.method public e()I
.registers 2
iget v0, p0, Lcom/c/l;->b:I
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 5
const/4 v0, 0x0
if-nez p1, :cond_4
:goto_3
:cond_3
return v0
:try_start_4
:cond_4
check-cast p1, Lcom/c/l;
iget v1, p0, Lcom/c/l;->c:I
iget v2, p1, Lcom/c/l;->c:I
if-ne v1, v2, :cond_3
iget v1, p0, Lcom/c/l;->d:I
iget v2, p1, Lcom/c/l;->d:I
if-ne v1, v2, :cond_3
iget v1, p0, Lcom/c/l;->b:I
iget v2, p1, Lcom/c/l;->b:I
if-ne v1, v2, :cond_3
iget v1, p0, Lcom/c/l;->a:I
iget v2, p1, Lcom/c/l;->a:I
if-ne v1, v2, :cond_3
iget v1, p0, Lcom/c/l;->e:I
iget v2, p1, Lcom/c/l;->e:I
:try_end_22
.catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_22} :catch_26
if-ne v1, v2, :cond_3
const/4 v0, 0x1
goto :goto_3
:catch_26
move-exception v1
goto :goto_3
.end method
.method public hashCode()I
.registers 3
iget v0, p0, Lcom/c/l;->e:I
const/4 v1, -0x1
if-ne v0, v1, :cond_b
iget v0, p0, Lcom/c/l;->c:I
iget v1, p0, Lcom/c/l;->d:I
xor-int/2addr v0, v1
:goto_a
return v0
:cond_b
iget v0, p0, Lcom/c/l;->e:I
goto :goto_a
.end method
.method public toString()Ljava/lang/String;
.registers 5
sget v1, Lcom/c/ak;->c:I
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "["
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v2, p0, Lcom/c/l;->a:I
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ","
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v2, p0, Lcom/c/l;->b:I
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ","
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget v0, p0, Lcom/c/l;->e:I
const/4 v3, -0x1
if-ne v0, v3, :cond_5c
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget v3, p0, Lcom/c/l;->d:I
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, ","
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v3, p0, Lcom/c/l;->c:I
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_45
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "]"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sget-boolean v2, Lcom/c/bp;->b:Z
if-eqz v2, :cond_5b
add-int/lit8 v1, v1, 0x1
sput v1, Lcom/c/ak;->c:I
:cond_5b
return-object v0
:cond_5c
iget v0, p0, Lcom/c/l;->e:I
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
goto :goto_45
.end method