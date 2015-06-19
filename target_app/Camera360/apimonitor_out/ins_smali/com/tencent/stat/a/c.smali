.class public Lcom/tencent/stat/a/c;
.super Ljava/lang/Object;
.field  a:Ljava/lang/String;
.field  b:[Ljava/lang/String;
.field  c:Ljava/util/Properties;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/tencent/stat/a/c;->c:Ljava/util/Properties;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Properties;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/tencent/stat/a/c;->c:Ljava/util/Properties;
iput-object p1, p0, Lcom/tencent/stat/a/c;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/tencent/stat/a/c;->b:[Ljava/lang/String;
iput-object p3, p0, Lcom/tencent/stat/a/c;->c:Ljava/util/Properties;
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v1, 0x1
const/4 v2, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v1
:cond_5
instance-of v0, p1, Lcom/tencent/stat/a/c;
if-eqz v0, :cond_3c
check-cast p1, Lcom/tencent/stat/a/c;
iget-object v0, p0, Lcom/tencent/stat/a/c;->a:Ljava/lang/String;
iget-object v3, p1, Lcom/tencent/stat/a/c;->a:Ljava/lang/String;
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_32
iget-object v0, p0, Lcom/tencent/stat/a/c;->b:[Ljava/lang/String;
iget-object v3, p1, Lcom/tencent/stat/a/c;->b:[Ljava/lang/String;
invoke-static {v0, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_32
move v0, v1
:goto_20
iget-object v3, p0, Lcom/tencent/stat/a/c;->c:Ljava/util/Properties;
if-eqz v3, :cond_34
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/tencent/stat/a/c;->c:Ljava/util/Properties;
iget-object v3, p1, Lcom/tencent/stat/a/c;->c:Ljava/util/Properties;
invoke-virtual {v0, v3}, Ljava/util/Properties;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_4
:cond_30
move v1, v2
goto :goto_4
:cond_32
move v0, v2
goto :goto_20
:cond_34
if-eqz v0, :cond_3a
iget-object v0, p1, Lcom/tencent/stat/a/c;->c:Ljava/util/Properties;
if-eqz v0, :cond_4
:cond_3a
move v1, v2
goto :goto_4
:cond_3c
move v1, v2
goto :goto_4
.end method
.method public hashCode()I
.registers 3
const/4 v0, 0x0
iget-object v1, p0, Lcom/tencent/stat/a/c;->a:Ljava/lang/String;
if-eqz v1, :cond_b
iget-object v0, p0, Lcom/tencent/stat/a/c;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:cond_b
iget-object v1, p0, Lcom/tencent/stat/a/c;->b:[Ljava/lang/String;
if-eqz v1, :cond_16
iget-object v1, p0, Lcom/tencent/stat/a/c;->b:[Ljava/lang/String;
invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v1
xor-int/2addr v0, v1
:cond_16
iget-object v1, p0, Lcom/tencent/stat/a/c;->c:Ljava/util/Properties;
if-eqz v1, :cond_21
iget-object v1, p0, Lcom/tencent/stat/a/c;->c:Ljava/util/Properties;
invoke-virtual {v1}, Ljava/util/Properties;->hashCode()I
move-result v1
xor-int/2addr v0, v1
:cond_21
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 5
iget-object v2, p0, Lcom/tencent/stat/a/c;->a:Ljava/lang/String;
const-string/jumbo v0, ""
iget-object v1, p0, Lcom/tencent/stat/a/c;->b:[Ljava/lang/String;
if-eqz v1, :cond_4e
iget-object v0, p0, Lcom/tencent/stat/a/c;->b:[Ljava/lang/String;
const/4 v1, 0x0
aget-object v1, v0, v1
const/4 v0, 0x1
:goto_f
iget-object v3, p0, Lcom/tencent/stat/a/c;->b:[Ljava/lang/String;
array-length v3, v3
if-ge v0, v3, :cond_33
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v3, ","
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v3, p0, Lcom/tencent/stat/a/c;->b:[Ljava/lang/String;
aget-object v3, v3, v0
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
add-int/lit8 v0, v0, 0x1
goto :goto_f
:cond_33
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "["
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_4e
iget-object v1, p0, Lcom/tencent/stat/a/c;->c:Ljava/util/Properties;
if-eqz v1, :cond_69
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/tencent/stat/a/c;->c:Ljava/util/Properties;
invoke-virtual {v1}, Ljava/util/Properties;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_69
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method