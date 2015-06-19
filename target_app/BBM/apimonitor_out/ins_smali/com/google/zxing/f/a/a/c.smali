.class public final Lcom/google/zxing/f/a/a/c;
.super Ljava/lang/Object;
.source "ModulusPoly.java"
.field public final a:Lcom/google/zxing/f/a/a/b;
.field public final b:[I
.method public constructor <init>(Lcom/google/zxing/f/a/a/b;[I)V
.registers 7
const/4 v0, 0x1
const/4 v3, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
array-length v1, p2
if-nez v1, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_e
iput-object p1, p0, Lcom/google/zxing/f/a/a/c;->a:Lcom/google/zxing/f/a/a/b;
array-length v1, p2
if-le v1, v0, :cond_37
aget v2, p2, v3
if-nez v2, :cond_37
:goto_17
if-ge v0, v1, :cond_20
aget v2, p2, v0
if-nez v2, :cond_20
add-int/lit8 v0, v0, 0x1
goto :goto_17
:cond_20
if-ne v0, v1, :cond_29
iget-object v0, p1, Lcom/google/zxing/f/a/a/b;->d:Lcom/google/zxing/f/a/a/c;
iget-object v0, v0, Lcom/google/zxing/f/a/a/c;->b:[I
iput-object v0, p0, Lcom/google/zxing/f/a/a/c;->b:[I
:goto_28
return-void
:cond_29
sub-int/2addr v1, v0
new-array v1, v1, [I
iput-object v1, p0, Lcom/google/zxing/f/a/a/c;->b:[I
iget-object v1, p0, Lcom/google/zxing/f/a/a/c;->b:[I
iget-object v2, p0, Lcom/google/zxing/f/a/a/c;->b:[I
array-length v2, v2
invoke-static {p2, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto :goto_28
:cond_37
iput-object p2, p0, Lcom/google/zxing/f/a/a/c;->b:[I
goto :goto_28
.end method
.method public final a(I)I
.registers 4
iget-object v0, p0, Lcom/google/zxing/f/a/a/c;->b:[I
iget-object v1, p0, Lcom/google/zxing/f/a/a/c;->b:[I
array-length v1, v1
add-int/lit8 v1, v1, -0x1
sub-int/2addr v1, p1
aget v0, v0, v1
return v0
.end method
.method public final a(Lcom/google/zxing/f/a/a/c;)Lcom/google/zxing/f/a/a/c;
.registers 11
const/4 v5, 0x0
iget-object v0, p0, Lcom/google/zxing/f/a/a/c;->a:Lcom/google/zxing/f/a/a/b;
iget-object v1, p1, Lcom/google/zxing/f/a/a/c;->a:Lcom/google/zxing/f/a/a/b;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_13
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "ModulusPolys do not have same ModulusGF field"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_13
invoke-virtual {p0}, Lcom/google/zxing/f/a/a/c;->a()Z
move-result v0
if-eqz v0, :cond_1a
:goto_19
return-object p1
:cond_1a
invoke-virtual {p1}, Lcom/google/zxing/f/a/a/c;->a()Z
move-result v0
if-eqz v0, :cond_22
move-object p1, p0
goto :goto_19
:cond_22
iget-object v1, p0, Lcom/google/zxing/f/a/a/c;->b:[I
iget-object v0, p1, Lcom/google/zxing/f/a/a/c;->b:[I
array-length v2, v1
array-length v3, v0
if-le v2, v3, :cond_51
:goto_2a
array-length v2, v1
new-array v4, v2, [I
array-length v2, v1
array-length v3, v0
sub-int v3, v2, v3
invoke-static {v1, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
move v2, v3
:goto_35
array-length v5, v1
if-ge v2, v5, :cond_49
iget-object v5, p0, Lcom/google/zxing/f/a/a/c;->a:Lcom/google/zxing/f/a/a/b;
sub-int v6, v2, v3
aget v6, v0, v6
aget v7, v1, v2
invoke-virtual {v5, v6, v7}, Lcom/google/zxing/f/a/a/b;->b(II)I
move-result v5
aput v5, v4, v2
add-int/lit8 v2, v2, 0x1
goto :goto_35
:cond_49
new-instance p1, Lcom/google/zxing/f/a/a/c;
iget-object v0, p0, Lcom/google/zxing/f/a/a/c;->a:Lcom/google/zxing/f/a/a/b;
invoke-direct {p1, v0, v4}, Lcom/google/zxing/f/a/a/c;-><init>(Lcom/google/zxing/f/a/a/b;[I)V
goto :goto_19
:cond_51
move-object v8, v1
move-object v1, v0
move-object v0, v8
goto :goto_2a
.end method
.method public final a()Z
.registers 3
const/4 v0, 0x0
iget-object v1, p0, Lcom/google/zxing/f/a/a/c;->b:[I
aget v1, v1, v0
if-nez v1, :cond_8
const/4 v0, 0x1
:cond_8
return v0
.end method
.method public final b(I)I
.registers 9
const/4 v0, 0x1
const/4 v1, 0x0
if-nez p1, :cond_9
invoke-virtual {p0, v1}, Lcom/google/zxing/f/a/a/c;->a(I)I
move-result v0
:cond_8
return v0
:cond_9
iget-object v2, p0, Lcom/google/zxing/f/a/a/c;->b:[I
array-length v3, v2
if-ne p1, v0, :cond_1f
iget-object v2, p0, Lcom/google/zxing/f/a/a/c;->b:[I
array-length v3, v2
move v0, v1
:goto_12
if-ge v1, v3, :cond_8
aget v4, v2, v1
iget-object v5, p0, Lcom/google/zxing/f/a/a/c;->a:Lcom/google/zxing/f/a/a/b;
invoke-virtual {v5, v0, v4}, Lcom/google/zxing/f/a/a/b;->b(II)I
move-result v0
add-int/lit8 v1, v1, 0x1
goto :goto_12
:cond_1f
iget-object v2, p0, Lcom/google/zxing/f/a/a/c;->b:[I
aget v1, v2, v1
move v6, v0
move v0, v1
move v1, v6
:goto_26
if-ge v1, v3, :cond_8
iget-object v2, p0, Lcom/google/zxing/f/a/a/c;->a:Lcom/google/zxing/f/a/a/b;
iget-object v4, p0, Lcom/google/zxing/f/a/a/c;->a:Lcom/google/zxing/f/a/a/b;
invoke-virtual {v4, p1, v0}, Lcom/google/zxing/f/a/a/b;->d(II)I
move-result v0
iget-object v4, p0, Lcom/google/zxing/f/a/a/c;->b:[I
aget v4, v4, v1
invoke-virtual {v2, v0, v4}, Lcom/google/zxing/f/a/a/b;->b(II)I
move-result v2
add-int/lit8 v0, v1, 0x1
move v1, v0
move v0, v2
goto :goto_26
.end method
.method public final b()Lcom/google/zxing/f/a/a/c;
.registers 7
const/4 v1, 0x0
iget-object v0, p0, Lcom/google/zxing/f/a/a/c;->b:[I
array-length v2, v0
new-array v3, v2, [I
move v0, v1
:goto_7
if-ge v0, v2, :cond_18
iget-object v4, p0, Lcom/google/zxing/f/a/a/c;->a:Lcom/google/zxing/f/a/a/b;
iget-object v5, p0, Lcom/google/zxing/f/a/a/c;->b:[I
aget v5, v5, v0
invoke-virtual {v4, v1, v5}, Lcom/google/zxing/f/a/a/b;->c(II)I
move-result v4
aput v4, v3, v0
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_18
new-instance v0, Lcom/google/zxing/f/a/a/c;
iget-object v1, p0, Lcom/google/zxing/f/a/a/c;->a:Lcom/google/zxing/f/a/a/b;
invoke-direct {v0, v1, v3}, Lcom/google/zxing/f/a/a/c;-><init>(Lcom/google/zxing/f/a/a/b;[I)V
return-object v0
.end method
.method public final b(Lcom/google/zxing/f/a/a/c;)Lcom/google/zxing/f/a/a/c;
.registers 4
iget-object v0, p0, Lcom/google/zxing/f/a/a/c;->a:Lcom/google/zxing/f/a/a/b;
iget-object v1, p1, Lcom/google/zxing/f/a/a/c;->a:Lcom/google/zxing/f/a/a/b;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_12
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "ModulusPolys do not have same ModulusGF field"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_12
invoke-virtual {p1}, Lcom/google/zxing/f/a/a/c;->a()Z
move-result v0
if-eqz v0, :cond_19
:goto_18
return-object p0
:cond_19
invoke-virtual {p1}, Lcom/google/zxing/f/a/a/c;->b()Lcom/google/zxing/f/a/a/c;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/zxing/f/a/a/c;->a(Lcom/google/zxing/f/a/a/c;)Lcom/google/zxing/f/a/a/c;
move-result-object p0
goto :goto_18
.end method
.method public final c(I)Lcom/google/zxing/f/a/a/c;
.registers 7
if-nez p1, :cond_7
iget-object v0, p0, Lcom/google/zxing/f/a/a/c;->a:Lcom/google/zxing/f/a/a/b;
iget-object p0, v0, Lcom/google/zxing/f/a/a/b;->d:Lcom/google/zxing/f/a/a/c;
:goto_6
:cond_6
return-object p0
:cond_7
const/4 v0, 0x1
if-eq p1, v0, :cond_6
iget-object v0, p0, Lcom/google/zxing/f/a/a/c;->b:[I
array-length v1, v0
new-array v2, v1, [I
const/4 v0, 0x0
:goto_10
if-ge v0, v1, :cond_21
iget-object v3, p0, Lcom/google/zxing/f/a/a/c;->a:Lcom/google/zxing/f/a/a/b;
iget-object v4, p0, Lcom/google/zxing/f/a/a/c;->b:[I
aget v4, v4, v0
invoke-virtual {v3, v4, p1}, Lcom/google/zxing/f/a/a/b;->d(II)I
move-result v3
aput v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_10
:cond_21
new-instance v0, Lcom/google/zxing/f/a/a/c;
iget-object v1, p0, Lcom/google/zxing/f/a/a/c;->a:Lcom/google/zxing/f/a/a/b;
invoke-direct {v0, v1, v2}, Lcom/google/zxing/f/a/a/c;-><init>(Lcom/google/zxing/f/a/a/b;[I)V
move-object p0, v0
goto :goto_6
.end method
.method public final c(Lcom/google/zxing/f/a/a/c;)Lcom/google/zxing/f/a/a/c;
.registers 16
const/4 v1, 0x0
iget-object v0, p0, Lcom/google/zxing/f/a/a/c;->a:Lcom/google/zxing/f/a/a/b;
iget-object v2, p1, Lcom/google/zxing/f/a/a/c;->a:Lcom/google/zxing/f/a/a/b;
invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_13
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "ModulusPolys do not have same ModulusGF field"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_13
invoke-virtual {p0}, Lcom/google/zxing/f/a/a/c;->a()Z
move-result v0
if-nez v0, :cond_1f
invoke-virtual {p1}, Lcom/google/zxing/f/a/a/c;->a()Z
move-result v0
if-eqz v0, :cond_24
:cond_1f
iget-object v0, p0, Lcom/google/zxing/f/a/a/c;->a:Lcom/google/zxing/f/a/a/b;
iget-object v0, v0, Lcom/google/zxing/f/a/a/b;->d:Lcom/google/zxing/f/a/a/c;
:goto_23
return-object v0
:cond_24
iget-object v3, p0, Lcom/google/zxing/f/a/a/c;->b:[I
array-length v4, v3
iget-object v5, p1, Lcom/google/zxing/f/a/a/c;->b:[I
array-length v6, v5
add-int v0, v4, v6
add-int/lit8 v0, v0, -0x1
new-array v7, v0, [I
move v2, v1
:goto_31
if-ge v2, v4, :cond_55
aget v8, v3, v2
move v0, v1
:goto_36
if-ge v0, v6, :cond_51
add-int v9, v2, v0
iget-object v10, p0, Lcom/google/zxing/f/a/a/c;->a:Lcom/google/zxing/f/a/a/b;
add-int v11, v2, v0
aget v11, v7, v11
iget-object v12, p0, Lcom/google/zxing/f/a/a/c;->a:Lcom/google/zxing/f/a/a/b;
aget v13, v5, v0
invoke-virtual {v12, v8, v13}, Lcom/google/zxing/f/a/a/b;->d(II)I
move-result v12
invoke-virtual {v10, v11, v12}, Lcom/google/zxing/f/a/a/b;->b(II)I
move-result v10
aput v10, v7, v9
add-int/lit8 v0, v0, 0x1
goto :goto_36
:cond_51
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_31
:cond_55
new-instance v0, Lcom/google/zxing/f/a/a/c;
iget-object v1, p0, Lcom/google/zxing/f/a/a/c;->a:Lcom/google/zxing/f/a/a/b;
invoke-direct {v0, v1, v7}, Lcom/google/zxing/f/a/a/c;-><init>(Lcom/google/zxing/f/a/a/b;[I)V
goto :goto_23
.end method
.method public final toString()Ljava/lang/String;
.registers 6
const/4 v4, 0x1
new-instance v2, Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/google/zxing/f/a/a/c;->b:[I
array-length v0, v0
add-int/lit8 v0, v0, -0x1
mul-int/lit8 v0, v0, 0x8
invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V
iget-object v0, p0, Lcom/google/zxing/f/a/a/c;->b:[I
array-length v0, v0
add-int/lit8 v0, v0, -0x1
move v1, v0
:goto_13
if-ltz v1, :cond_4c
invoke-virtual {p0, v1}, Lcom/google/zxing/f/a/a/c;->a(I)I
move-result v0
if-eqz v0, :cond_33
if-gez v0, :cond_37
const-string v3, " - "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
neg-int v0, v0
:goto_23
:cond_23
if-eqz v1, :cond_27
if-eq v0, v4, :cond_2a
:cond_27
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
:cond_2a
if-eqz v1, :cond_33
if-ne v1, v4, :cond_43
const/16 v0, 0x78
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:goto_33
:cond_33
add-int/lit8 v0, v1, -0x1
move v1, v0
goto :goto_13
:cond_37
invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I
move-result v3
if-lez v3, :cond_23
const-string v3, " + "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_23
:cond_43
const-string v0, "x^"
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
goto :goto_33
:cond_4c
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method