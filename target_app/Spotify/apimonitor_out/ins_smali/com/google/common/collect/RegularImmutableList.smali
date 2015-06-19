.class  Lcom/google/common/collect/RegularImmutableList;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"
.field private final transient a:I
.field private final transient c:I
.field private final transient d:[Ljava/lang/Object;
.method constructor <init>([Ljava/lang/Object;)V
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;II)V
return-void
.end method
.method private constructor <init>([Ljava/lang/Object;II)V
.registers 4
invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V
iput p2, p0, Lcom/google/common/collect/RegularImmutableList;->a:I
iput p3, p0, Lcom/google/common/collect/RegularImmutableList;->c:I
iput-object p1, p0, Lcom/google/common/collect/RegularImmutableList;->d:[Ljava/lang/Object;
return-void
.end method
.method public final a(I)Lcom/google/common/collect/ar;
.registers 5
iget-object v0, p0, Lcom/google/common/collect/RegularImmutableList;->d:[Ljava/lang/Object;
iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->a:I
iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->c:I
invoke-static {v0, v1, v2, p1}, Lcom/google/common/collect/i;->a([Ljava/lang/Object;III)Lcom/google/common/collect/ar;
move-result-object v0
return-object v0
.end method
.method final a()Z
.registers 3
iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->a:I
if-nez v0, :cond_b
iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->c:I
iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList;->d:[Ljava/lang/Object;
array-length v1, v1
if-eq v0, v1, :cond_d
:cond_b
const/4 v0, 0x1
:goto_c
return v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method final b(II)Lcom/google/common/collect/ImmutableList;
.registers 7
new-instance v0, Lcom/google/common/collect/RegularImmutableList;
iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList;->d:[Ljava/lang/Object;
iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->a:I
add-int/2addr v2, p1
sub-int v3, p2, p1
invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;II)V
return-object v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 9
const/4 v3, 0x1
const/4 v4, 0x0
if-ne p1, p0, :cond_6
move v0, v3
:goto_5
return v0
:cond_6
instance-of v0, p1, Ljava/util/List;
if-nez v0, :cond_c
move v0, v4
goto :goto_5
:cond_c
move-object v0, p1
check-cast v0, Ljava/util/List;
invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableList;->size()I
move-result v1
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v2
if-eq v1, v2, :cond_1b
move v0, v4
goto :goto_5
:cond_1b
iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->a:I
instance-of v2, p1, Lcom/google/common/collect/RegularImmutableList;
if-eqz v2, :cond_42
check-cast p1, Lcom/google/common/collect/RegularImmutableList;
iget v0, p1, Lcom/google/common/collect/RegularImmutableList;->a:I
:goto_25
iget v2, p1, Lcom/google/common/collect/RegularImmutableList;->a:I
iget v5, p1, Lcom/google/common/collect/RegularImmutableList;->c:I
add-int/2addr v2, v5
if-ge v0, v2, :cond_60
iget-object v5, p0, Lcom/google/common/collect/RegularImmutableList;->d:[Ljava/lang/Object;
add-int/lit8 v2, v1, 0x1
aget-object v1, v5, v1
iget-object v5, p1, Lcom/google/common/collect/RegularImmutableList;->d:[Ljava/lang/Object;
aget-object v5, v5, v0
invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_3e
move v0, v4
goto :goto_5
:cond_3e
add-int/lit8 v0, v0, 0x1
move v1, v2
goto :goto_25
:cond_42
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_46
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_60
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v5
iget-object v6, p0, Lcom/google/common/collect/RegularImmutableList;->d:[Ljava/lang/Object;
add-int/lit8 v0, v1, 0x1
aget-object v1, v6, v1
invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_5e
move v0, v4
goto :goto_5
:cond_5e
move v1, v0
goto :goto_46
:cond_60
move v0, v3
goto :goto_5
.end method
.method public get(I)Ljava/lang/Object;
.registers 4
iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->c:I
invoke-static {p1, v0}, Lcom/google/common/base/i;->a(II)I
iget-object v0, p0, Lcom/google/common/collect/RegularImmutableList;->d:[Ljava/lang/Object;
iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->a:I
add-int/2addr v1, p1
aget-object v0, v0, v1
return-object v0
.end method
.method public isEmpty()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public synthetic listIterator(I)Ljava/util/ListIterator;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableList;->a(I)Lcom/google/common/collect/ar;
move-result-object v0
return-object v0
.end method
.method public size()I
.registers 2
iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->c:I
return v0
.end method
.method public toArray()[Ljava/lang/Object;
.registers 6
invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableList;->size()I
move-result v0
new-array v0, v0, [Ljava/lang/Object;
iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList;->d:[Ljava/lang/Object;
iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->a:I
const/4 v3, 0x0
iget v4, p0, Lcom/google/common/collect/RegularImmutableList;->c:I
invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v0
.end method
.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
.registers 6
array-length v0, p1
iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->c:I
if-ge v0, v1, :cond_16
iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->c:I
invoke-static {p1, v0}, Lcom/google/common/collect/al;->a([Ljava/lang/Object;I)[Ljava/lang/Object;
move-result-object p1
:goto_b
:cond_b
iget-object v0, p0, Lcom/google/common/collect/RegularImmutableList;->d:[Ljava/lang/Object;
iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->a:I
const/4 v2, 0x0
iget v3, p0, Lcom/google/common/collect/RegularImmutableList;->c:I
invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object p1
:cond_16
array-length v0, p1
iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->c:I
if-le v0, v1, :cond_b
iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->c:I
const/4 v1, 0x0
aput-object v1, p1, v0
goto :goto_b
.end method
.method public toString()Ljava/lang/String;
.registers 5
invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableList;->size()I
move-result v0
invoke-static {v0}, Lcom/google/common/collect/d;->a(I)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x5b
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList;->d:[Ljava/lang/Object;
iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->a:I
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->a:I
add-int/lit8 v0, v0, 0x1
:goto_1c
iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->a:I
iget v3, p0, Lcom/google/common/collect/RegularImmutableList;->c:I
add-int/2addr v2, v3
if-ge v0, v2, :cond_33
const-string v2, ", "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/google/common/collect/RegularImmutableList;->d:[Ljava/lang/Object;
aget-object v3, v3, v0
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_1c
:cond_33
const/16 v0, 0x5d
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method