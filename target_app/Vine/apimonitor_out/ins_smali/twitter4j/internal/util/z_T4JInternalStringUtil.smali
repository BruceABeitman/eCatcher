.class public Ltwitter4j/internal/util/z_T4JInternalStringUtil;
.super Ljava/lang/Object;
.source "z_T4JInternalStringUtil.java"
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
.end method
.method public static join(Ljava/util/List;)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-interface {p0}, Ljava/util/List;->size()I
move-result v3
mul-int/lit8 v3, v3, 0xb
invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V
invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_f
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_2a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
move-result v3
if-eqz v3, :cond_26
const-string v3, ","
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_26
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_f
:cond_2a
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
return-object v3
.end method
.method public static join([I)Ljava/lang/String;
.registers 7
new-instance v1, Ljava/lang/StringBuilder;
array-length v5, p0
mul-int/lit8 v5, v5, 0xb
invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V
move-object v0, p0
array-length v4, v0
const/4 v3, 0x0
:goto_b
if-ge v3, v4, :cond_20
aget v2, v0, v3
invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I
move-result v5
if-eqz v5, :cond_1a
const-string v5, ","
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_1a
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
add-int/lit8 v3, v3, 0x1
goto :goto_b
:cond_20
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
return-object v5
.end method
.method public static join([J)Ljava/lang/String;
.registers 8
new-instance v1, Ljava/lang/StringBuilder;
array-length v6, p0
mul-int/lit8 v6, v6, 0xb
invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V
move-object v0, p0
array-length v5, v0
const/4 v4, 0x0
:goto_b
if-ge v4, v5, :cond_20
aget-wide v2, v0, v4
invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I
move-result v6
if-eqz v6, :cond_1a
const-string v6, ","
invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_1a
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
add-int/lit8 v4, v4, 0x1
goto :goto_b
:cond_20
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
return-object v6
.end method
.method public static join([Ljava/lang/String;)Ljava/lang/String;
.registers 7
new-instance v1, Ljava/lang/StringBuilder;
array-length v5, p0
mul-int/lit8 v5, v5, 0xb
invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V
move-object v0, p0
array-length v3, v0
const/4 v2, 0x0
:goto_b
if-ge v2, v3, :cond_20
aget-object v4, v0, v2
invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I
move-result v5
if-eqz v5, :cond_1a
const-string v5, ","
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_1a
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v2, v2, 0x1
goto :goto_b
:cond_20
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
return-object v5
.end method
.method public static maskString(Ljava/lang/String;)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V
const/4 v1, 0x0
:goto_a
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
if-ge v1, v2, :cond_18
const-string v2, "*"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v1, v1, 0x1
goto :goto_a
:cond_18
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
return-object v2
.end method
.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
.registers 9
const/4 v6, -0x1
invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v0
if-ne v0, v6, :cond_e
const/4 v5, 0x1
new-array v2, v5, [Ljava/lang/String;
const/4 v5, 0x0
aput-object p0, v2, v5
:goto_d
return-object v2
:cond_e
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
const/4 v1, 0x0
:goto_14
if-eq v0, v6, :cond_28
invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v4
invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v5
add-int v1, v0, v5
invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v0
goto :goto_14
:cond_28
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v5
if-eq v1, v5, :cond_35
invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v5
invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_35
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v5
new-array v5, v5, [Ljava/lang/String;
invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v2
check-cast v2, [Ljava/lang/String;
goto :goto_d
.end method