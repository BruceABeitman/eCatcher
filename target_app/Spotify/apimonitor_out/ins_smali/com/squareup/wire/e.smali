.class final Lcom/squareup/wire/e;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:[Ljava/lang/Object;
.field private b:I
.method public constructor <init>(Lcom/squareup/wire/d;Ljava/lang/Object;)V
.registers 6
const/4 v2, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
iput-object v0, p0, Lcom/squareup/wire/e;->a:[Ljava/lang/Object;
iget-object v0, p0, Lcom/squareup/wire/e;->a:[Ljava/lang/Object;
const/4 v1, 0x0
aput-object p1, v0, v1
iget-object v0, p0, Lcom/squareup/wire/e;->a:[Ljava/lang/Object;
aput-object p2, v0, v2
iput v2, p0, Lcom/squareup/wire/e;->b:I
return-void
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/squareup/wire/e;->b:I
return v0
.end method
.method public final a(I)Lcom/squareup/wire/d;
.registers 4
if-ltz p1, :cond_6
iget v0, p0, Lcom/squareup/wire/e;->b:I
if-lt p1, v0, :cond_10
:cond_6
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
iget-object v0, p0, Lcom/squareup/wire/e;->a:[Ljava/lang/Object;
aget-object v0, v0, p1
check-cast v0, Lcom/squareup/wire/d;
return-object v0
.end method
.method public final a(Lcom/squareup/wire/d;Ljava/lang/Object;)V
.registers 9
const/4 v4, 0x0
iget-object v0, p0, Lcom/squareup/wire/e;->a:[Ljava/lang/Object;
iget v1, p0, Lcom/squareup/wire/e;->b:I
invoke-static {v0, v4, v1, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I
move-result v0
if-ltz v0, :cond_13
iget-object v1, p0, Lcom/squareup/wire/e;->a:[Ljava/lang/Object;
iget v2, p0, Lcom/squareup/wire/e;->b:I
add-int/2addr v0, v2
aput-object p2, v1, v0
:goto_12
return-void
:cond_13
add-int/lit8 v0, v0, 0x1
neg-int v1, v0
iget-object v0, p0, Lcom/squareup/wire/e;->a:[Ljava/lang/Object;
iget-object v2, p0, Lcom/squareup/wire/e;->a:[Ljava/lang/Object;
array-length v2, v2
iget v3, p0, Lcom/squareup/wire/e;->b:I
add-int/lit8 v3, v3, 0x1
mul-int/lit8 v3, v3, 0x2
if-ge v2, v3, :cond_2f
iget-object v0, p0, Lcom/squareup/wire/e;->a:[Ljava/lang/Object;
array-length v0, v0
mul-int/lit8 v0, v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
iget-object v2, p0, Lcom/squareup/wire/e;->a:[Ljava/lang/Object;
invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_2f
iget v2, p0, Lcom/squareup/wire/e;->b:I
if-ge v1, v2, :cond_60
iget-object v2, p0, Lcom/squareup/wire/e;->a:[Ljava/lang/Object;
iget v3, p0, Lcom/squareup/wire/e;->b:I
add-int/2addr v3, v1
iget v4, p0, Lcom/squareup/wire/e;->b:I
add-int/2addr v4, v1
add-int/lit8 v4, v4, 0x2
iget v5, p0, Lcom/squareup/wire/e;->b:I
sub-int/2addr v5, v1
invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v2, p0, Lcom/squareup/wire/e;->a:[Ljava/lang/Object;
add-int/lit8 v3, v1, 0x1
iget v4, p0, Lcom/squareup/wire/e;->b:I
invoke-static {v2, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:goto_4c
iget v2, p0, Lcom/squareup/wire/e;->b:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/squareup/wire/e;->b:I
iput-object v0, p0, Lcom/squareup/wire/e;->a:[Ljava/lang/Object;
iget-object v0, p0, Lcom/squareup/wire/e;->a:[Ljava/lang/Object;
aput-object p1, v0, v1
iget-object v0, p0, Lcom/squareup/wire/e;->a:[Ljava/lang/Object;
iget v2, p0, Lcom/squareup/wire/e;->b:I
add-int/2addr v1, v2
aput-object p2, v0, v1
goto :goto_12
:cond_60
iget-object v2, p0, Lcom/squareup/wire/e;->a:[Ljava/lang/Object;
iget v3, p0, Lcom/squareup/wire/e;->b:I
iget v4, p0, Lcom/squareup/wire/e;->b:I
add-int/lit8 v4, v4, 0x1
iget v5, p0, Lcom/squareup/wire/e;->b:I
invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto :goto_4c
.end method
.method public final b(I)Ljava/lang/Object;
.registers 4
if-ltz p1, :cond_6
iget v0, p0, Lcom/squareup/wire/e;->b:I
if-lt p1, v0, :cond_10
:cond_6
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
iget-object v0, p0, Lcom/squareup/wire/e;->a:[Ljava/lang/Object;
iget v1, p0, Lcom/squareup/wire/e;->b:I
add-int/2addr v1, p1
aget-object v0, v0, v1
return-object v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v1, 0x0
instance-of v0, p1, Lcom/squareup/wire/e;
if-nez v0, :cond_6
:cond_5
:goto_5
return v1
:cond_6
check-cast p1, Lcom/squareup/wire/e;
iget v0, p0, Lcom/squareup/wire/e;->b:I
iget v2, p1, Lcom/squareup/wire/e;->b:I
if-ne v0, v2, :cond_5
move v0, v1
:goto_f
iget v2, p0, Lcom/squareup/wire/e;->b:I
mul-int/lit8 v2, v2, 0x2
if-ge v0, v2, :cond_26
iget-object v2, p0, Lcom/squareup/wire/e;->a:[Ljava/lang/Object;
aget-object v2, v2, v0
iget-object v3, p1, Lcom/squareup/wire/e;->a:[Ljava/lang/Object;
aget-object v3, v3, v0
invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_5
add-int/lit8 v0, v0, 0x1
goto :goto_f
:cond_26
const/4 v1, 0x1
goto :goto_5
.end method
.method public final hashCode()I
.registers 4
const/4 v0, 0x0
move v1, v0
:goto_2
iget v2, p0, Lcom/squareup/wire/e;->b:I
mul-int/lit8 v2, v2, 0x2
if-ge v0, v2, :cond_16
mul-int/lit8 v1, v1, 0x25
iget-object v2, p0, Lcom/squareup/wire/e;->a:[Ljava/lang/Object;
aget-object v2, v2, v0
invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
move-result v2
add-int/2addr v1, v2
add-int/lit8 v0, v0, 0x1
goto :goto_2
:cond_16
return v1
.end method
.method public final toString()Ljava/lang/String;
.registers 6
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v0, "{"
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, ""
const/4 v0, 0x0
move v4, v0
move-object v0, v1
move v1, v4
:goto_10
iget v2, p0, Lcom/squareup/wire/e;->b:I
if-ge v1, v2, :cond_3a
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/squareup/wire/e;->a:[Ljava/lang/Object;
aget-object v0, v0, v1
check-cast v0, Lcom/squareup/wire/d;
invoke-virtual {v0}, Lcom/squareup/wire/d;->e()I
move-result v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v0, "="
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/squareup/wire/e;->a:[Ljava/lang/Object;
iget v2, p0, Lcom/squareup/wire/e;->b:I
add-int/2addr v2, v1
aget-object v0, v0, v2
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
const-string v2, ", "
add-int/lit8 v0, v1, 0x1
move v1, v0
move-object v0, v2
goto :goto_10
:cond_3a
const-string v0, "}"
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method