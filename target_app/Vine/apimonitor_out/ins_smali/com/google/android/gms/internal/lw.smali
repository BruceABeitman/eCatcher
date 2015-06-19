.class public final Lcom/google/android/gms/internal/lw;
.super Ljava/lang/Object;
.method private static a(Ljava/lang/String;[Lcom/google/android/gms/internal/lx$a$a;)I
.registers 9
const/16 v2, 0xe
array-length v3, p1
const/4 v0, 0x0
move v1, v0
move v0, v2
:goto_6
if-ge v1, v3, :cond_7d
aget-object v4, p1, v1
if-ne v0, v2, :cond_4a
iget v5, v4, Lcom/google/android/gms/internal/lx$a$a;->type:I
const/16 v6, 0x9
if-eq v5, v6, :cond_1c
iget v5, v4, Lcom/google/android/gms/internal/lx$a$a;->type:I
const/4 v6, 0x2
if-eq v5, v6, :cond_1c
iget v5, v4, Lcom/google/android/gms/internal/lx$a$a;->type:I
const/4 v6, 0x6
if-ne v5, v6, :cond_21
:cond_1c
iget v0, v4, Lcom/google/android/gms/internal/lx$a$a;->type:I
:cond_1e
add-int/lit8 v1, v1, 0x1
goto :goto_6
:cond_21
iget v5, v4, Lcom/google/android/gms/internal/lx$a$a;->type:I
if-eq v5, v2, :cond_1e
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Unexpected TypedValue type: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, v4, Lcom/google/android/gms/internal/lx$a$a;->type:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " for key "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_4a
iget v5, v4, Lcom/google/android/gms/internal/lx$a$a;->type:I
if-eq v5, v0, :cond_1e
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "The ArrayList elements should all be the same type, but ArrayList with key "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " contains items of type "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " and "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v2, v4, Lcom/google/android/gms/internal/lx$a$a;->type:I
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_7d
return v0
.end method
.method static a(Ljava/util/List;Lcom/google/android/gms/wearable/Asset;)I
.registers 3
invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-interface {p0}, Ljava/util/List;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
return v0
.end method
.method public static a(Lcom/google/android/gms/wearable/DataMap;)Lcom/google/android/gms/internal/lw$a;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/lx;
invoke-direct {v0}, Lcom/google/android/gms/internal/lx;-><init>()V
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-static {p0, v1}, Lcom/google/android/gms/internal/lw;->a(Lcom/google/android/gms/wearable/DataMap;Ljava/util/List;)[Lcom/google/android/gms/internal/lx$a;
move-result-object v2
iput-object v2, v0, Lcom/google/android/gms/internal/lx;->amo:[Lcom/google/android/gms/internal/lx$a;
new-instance v2, Lcom/google/android/gms/internal/lw$a;
invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/lw$a;-><init>(Lcom/google/android/gms/internal/lx;Ljava/util/List;)V
return-object v2
.end method
.method private static a(Ljava/util/List;Ljava/lang/Object;)Lcom/google/android/gms/internal/lx$a$a;
.registers 15
const/16 v12, 0x9
const/4 v11, 0x6
const/4 v10, 0x2
const/4 v0, 0x0
const/16 v5, 0xe
new-instance v3, Lcom/google/android/gms/internal/lx$a$a;
invoke-direct {v3}, Lcom/google/android/gms/internal/lx$a$a;-><init>()V
if-nez p1, :cond_12
iput v5, v3, Lcom/google/android/gms/internal/lx$a$a;->type:I
move-object v0, v3
:goto_11
return-object v0
:cond_12
new-instance v1, Lcom/google/android/gms/internal/lx$a$a$a;
invoke-direct {v1}, Lcom/google/android/gms/internal/lx$a$a$a;-><init>()V
iput-object v1, v3, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;
instance-of v1, p1, Ljava/lang/String;
if-eqz v1, :cond_27
iput v10, v3, Lcom/google/android/gms/internal/lx$a$a;->type:I
iget-object v0, v3, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;
check-cast p1, Ljava/lang/String;
iput-object p1, v0, Lcom/google/android/gms/internal/lx$a$a$a;->amu:Ljava/lang/String;
:goto_25
move-object v0, v3
goto :goto_11
:cond_27
instance-of v1, p1, Ljava/lang/Integer;
if-eqz v1, :cond_38
iput v11, v3, Lcom/google/android/gms/internal/lx$a$a;->type:I
iget-object v0, v3, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;
check-cast p1, Ljava/lang/Integer;
invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
move-result v1
iput v1, v0, Lcom/google/android/gms/internal/lx$a$a$a;->amy:I
goto :goto_25
:cond_38
instance-of v1, p1, Ljava/lang/Long;
if-eqz v1, :cond_4a
const/4 v0, 0x5
iput v0, v3, Lcom/google/android/gms/internal/lx$a$a;->type:I
iget-object v0, v3, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;
check-cast p1, Ljava/lang/Long;
invoke-virtual {p1}, Ljava/lang/Long;->longValue()J
move-result-wide v1
iput-wide v1, v0, Lcom/google/android/gms/internal/lx$a$a$a;->amx:J
goto :goto_25
:cond_4a
instance-of v1, p1, Ljava/lang/Double;
if-eqz v1, :cond_5c
const/4 v0, 0x3
iput v0, v3, Lcom/google/android/gms/internal/lx$a$a;->type:I
iget-object v0, v3, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;
check-cast p1, Ljava/lang/Double;
invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D
move-result-wide v1
iput-wide v1, v0, Lcom/google/android/gms/internal/lx$a$a$a;->amv:D
goto :goto_25
:cond_5c
instance-of v1, p1, Ljava/lang/Float;
if-eqz v1, :cond_6e
const/4 v0, 0x4
iput v0, v3, Lcom/google/android/gms/internal/lx$a$a;->type:I
iget-object v0, v3, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;
check-cast p1, Ljava/lang/Float;
invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F
move-result v1
iput v1, v0, Lcom/google/android/gms/internal/lx$a$a$a;->amw:F
goto :goto_25
:cond_6e
instance-of v1, p1, Ljava/lang/Boolean;
if-eqz v1, :cond_81
const/16 v0, 0x8
iput v0, v3, Lcom/google/android/gms/internal/lx$a$a;->type:I
iget-object v0, v3, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;
check-cast p1, Ljava/lang/Boolean;
invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
iput-boolean v1, v0, Lcom/google/android/gms/internal/lx$a$a$a;->amA:Z
goto :goto_25
:cond_81
instance-of v1, p1, Ljava/lang/Byte;
if-eqz v1, :cond_93
const/4 v0, 0x7
iput v0, v3, Lcom/google/android/gms/internal/lx$a$a;->type:I
iget-object v0, v3, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;
check-cast p1, Ljava/lang/Byte;
invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B
move-result v1
iput v1, v0, Lcom/google/android/gms/internal/lx$a$a$a;->amz:I
goto :goto_25
:cond_93
instance-of v1, p1, [B
if-eqz v1, :cond_a3
const/4 v0, 0x1
iput v0, v3, Lcom/google/android/gms/internal/lx$a$a;->type:I
iget-object v0, v3, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;
check-cast p1, [B
check-cast p1, [B
iput-object p1, v0, Lcom/google/android/gms/internal/lx$a$a$a;->amt:[B
goto :goto_25
:cond_a3
instance-of v1, p1, [Ljava/lang/String;
if-eqz v1, :cond_b5
const/16 v0, 0xb
iput v0, v3, Lcom/google/android/gms/internal/lx$a$a;->type:I
iget-object v0, v3, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;
check-cast p1, [Ljava/lang/String;
check-cast p1, [Ljava/lang/String;
iput-object p1, v0, Lcom/google/android/gms/internal/lx$a$a$a;->amD:[Ljava/lang/String;
goto/16 :goto_25
:cond_b5
instance-of v1, p1, [J
if-eqz v1, :cond_c7
const/16 v0, 0xc
iput v0, v3, Lcom/google/android/gms/internal/lx$a$a;->type:I
iget-object v0, v3, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;
check-cast p1, [J
check-cast p1, [J
iput-object p1, v0, Lcom/google/android/gms/internal/lx$a$a$a;->amE:[J
goto/16 :goto_25
:cond_c7
instance-of v1, p1, [F
if-eqz v1, :cond_d9
const/16 v0, 0xf
iput v0, v3, Lcom/google/android/gms/internal/lx$a$a;->type:I
iget-object v0, v3, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;
check-cast p1, [F
check-cast p1, [F
iput-object p1, v0, Lcom/google/android/gms/internal/lx$a$a$a;->amF:[F
goto/16 :goto_25
:cond_d9
instance-of v1, p1, Lcom/google/android/gms/wearable/Asset;
if-eqz v1, :cond_ee
const/16 v0, 0xd
iput v0, v3, Lcom/google/android/gms/internal/lx$a$a;->type:I
iget-object v0, v3, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;
check-cast p1, Lcom/google/android/gms/wearable/Asset;
invoke-static {p0, p1}, Lcom/google/android/gms/internal/lw;->a(Ljava/util/List;Lcom/google/android/gms/wearable/Asset;)I
move-result v1
int-to-long v1, v1
iput-wide v1, v0, Lcom/google/android/gms/internal/lx$a$a$a;->amG:J
goto/16 :goto_25
:cond_ee
instance-of v1, p1, Lcom/google/android/gms/wearable/DataMap;
if-eqz v1, :cond_132
iput v12, v3, Lcom/google/android/gms/internal/lx$a$a;->type:I
check-cast p1, Lcom/google/android/gms/wearable/DataMap;
invoke-virtual {p1}, Lcom/google/android/gms/wearable/DataMap;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->size()I
move-result v2
new-array v2, v2, [Lcom/google/android/gms/internal/lx$a;
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
move v1, v0
:goto_105
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_12c
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
new-instance v5, Lcom/google/android/gms/internal/lx$a;
invoke-direct {v5}, Lcom/google/android/gms/internal/lx$a;-><init>()V
aput-object v5, v2, v1
aget-object v5, v2, v1
iput-object v0, v5, Lcom/google/android/gms/internal/lx$a;->name:Ljava/lang/String;
aget-object v5, v2, v1
invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/DataMap;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
invoke-static {p0, v0}, Lcom/google/android/gms/internal/lw;->a(Ljava/util/List;Ljava/lang/Object;)Lcom/google/android/gms/internal/lx$a$a;
move-result-object v0
iput-object v0, v5, Lcom/google/android/gms/internal/lx$a;->amq:Lcom/google/android/gms/internal/lx$a$a;
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_105
:cond_12c
iget-object v0, v3, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;
iput-object v2, v0, Lcom/google/android/gms/internal/lx$a$a$a;->amB:[Lcom/google/android/gms/internal/lx$a;
goto/16 :goto_25
:cond_132
instance-of v1, p1, Ljava/util/ArrayList;
if-eqz v1, :cond_1c5
const/16 v1, 0xa
iput v1, v3, Lcom/google/android/gms/internal/lx$a$a;->type:I
check-cast p1, Ljava/util/ArrayList;
invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
move-result v1
new-array v6, v1, [Lcom/google/android/gms/internal/lx$a$a;
const/4 v1, 0x0
invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
move-result v7
move v4, v0
move v2, v5
:goto_149
if-ge v4, v7, :cond_1bf
invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
invoke-static {p0, v0}, Lcom/google/android/gms/internal/lw;->a(Ljava/util/List;Ljava/lang/Object;)Lcom/google/android/gms/internal/lx$a$a;
move-result-object v8
iget v9, v8, Lcom/google/android/gms/internal/lx$a$a;->type:I
if-eq v9, v5, :cond_180
iget v9, v8, Lcom/google/android/gms/internal/lx$a$a;->type:I
if-eq v9, v10, :cond_180
iget v9, v8, Lcom/google/android/gms/internal/lx$a$a;->type:I
if-eq v9, v11, :cond_180
iget v9, v8, Lcom/google/android/gms/internal/lx$a$a;->type:I
if-eq v9, v12, :cond_180
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "The only ArrayList element types supported by DataBundleUtil are String, Integer, Bundle, and null, but this ArrayList contains a "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_180
if-ne v2, v5, :cond_190
iget v9, v8, Lcom/google/android/gms/internal/lx$a$a;->type:I
if-eq v9, v5, :cond_190
iget v1, v8, Lcom/google/android/gms/internal/lx$a$a;->type:I
:goto_188
aput-object v8, v6, v4
add-int/lit8 v2, v4, 0x1
move v4, v2
move v2, v1
move-object v1, v0
goto :goto_149
:cond_190
iget v9, v8, Lcom/google/android/gms/internal/lx$a$a;->type:I
if-eq v9, v2, :cond_1e6
new-instance v2, Ljava/lang/IllegalArgumentException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "ArrayList elements must all be of the sameclass, but this one contains a "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, " and a "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_1bf
iget-object v0, v3, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;
iput-object v6, v0, Lcom/google/android/gms/internal/lx$a$a$a;->amC:[Lcom/google/android/gms/internal/lx$a$a;
goto/16 :goto_25
:cond_1c5
new-instance v0, Ljava/lang/RuntimeException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "newFieldValueFromValue: unexpected value "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1e6
move-object v0, v1
move v1, v2
goto :goto_188
.end method
.method public static a(Lcom/google/android/gms/internal/lw$a;)Lcom/google/android/gms/wearable/DataMap;
.registers 8
new-instance v1, Lcom/google/android/gms/wearable/DataMap;
invoke-direct {v1}, Lcom/google/android/gms/wearable/DataMap;-><init>()V
iget-object v0, p0, Lcom/google/android/gms/internal/lw$a;->amm:Lcom/google/android/gms/internal/lx;
iget-object v2, v0, Lcom/google/android/gms/internal/lx;->amo:[Lcom/google/android/gms/internal/lx$a;
array-length v3, v2
const/4 v0, 0x0
:goto_b
if-ge v0, v3, :cond_1b
aget-object v4, v2, v0
iget-object v5, p0, Lcom/google/android/gms/internal/lw$a;->amn:Ljava/util/List;
iget-object v6, v4, Lcom/google/android/gms/internal/lx$a;->name:Ljava/lang/String;
iget-object v4, v4, Lcom/google/android/gms/internal/lx$a;->amq:Lcom/google/android/gms/internal/lx$a$a;
invoke-static {v5, v1, v6, v4}, Lcom/google/android/gms/internal/lw;->a(Ljava/util/List;Lcom/google/android/gms/wearable/DataMap;Ljava/lang/String;Lcom/google/android/gms/internal/lx$a$a;)V
add-int/lit8 v0, v0, 0x1
goto :goto_b
:cond_1b
return-object v1
.end method
.method private static a(Ljava/util/List;Lcom/google/android/gms/internal/lx$a$a$a;I)Ljava/util/ArrayList;
.registers 14
const/4 v1, 0x0
new-instance v3, Ljava/util/ArrayList;
iget-object v0, p1, Lcom/google/android/gms/internal/lx$a$a$a;->amC:[Lcom/google/android/gms/internal/lx$a$a;
array-length v0, v0
invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V
iget-object v4, p1, Lcom/google/android/gms/internal/lx$a$a$a;->amC:[Lcom/google/android/gms/internal/lx$a$a;
array-length v5, v4
move v2, v1
:goto_d
if-ge v2, v5, :cond_73
aget-object v0, v4, v2
iget v6, v0, Lcom/google/android/gms/internal/lx$a$a;->type:I
const/16 v7, 0xe
if-ne v6, v7, :cond_1f
const/4 v0, 0x0
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_1b
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_d
:cond_1f
const/16 v6, 0x9
if-ne p2, v6, :cond_40
new-instance v6, Lcom/google/android/gms/wearable/DataMap;
invoke-direct {v6}, Lcom/google/android/gms/wearable/DataMap;-><init>()V
iget-object v0, v0, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;
iget-object v7, v0, Lcom/google/android/gms/internal/lx$a$a$a;->amB:[Lcom/google/android/gms/internal/lx$a;
array-length v8, v7
move v0, v1
:goto_2e
if-ge v0, v8, :cond_3c
aget-object v9, v7, v0
iget-object v10, v9, Lcom/google/android/gms/internal/lx$a;->name:Ljava/lang/String;
iget-object v9, v9, Lcom/google/android/gms/internal/lx$a;->amq:Lcom/google/android/gms/internal/lx$a$a;
invoke-static {p0, v6, v10, v9}, Lcom/google/android/gms/internal/lw;->a(Ljava/util/List;Lcom/google/android/gms/wearable/DataMap;Ljava/lang/String;Lcom/google/android/gms/internal/lx$a$a;)V
add-int/lit8 v0, v0, 0x1
goto :goto_2e
:cond_3c
invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_1b
:cond_40
const/4 v6, 0x2
if-ne p2, v6, :cond_4b
iget-object v0, v0, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;
iget-object v0, v0, Lcom/google/android/gms/internal/lx$a$a$a;->amu:Ljava/lang/String;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_1b
:cond_4b
const/4 v6, 0x6
if-ne p2, v6, :cond_5a
iget-object v0, v0, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;
iget v0, v0, Lcom/google/android/gms/internal/lx$a$a$a;->amy:I
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_1b
:cond_5a
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Unexpected typeOfArrayList: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_73
return-object v3
.end method
.method private static a(Ljava/util/List;Lcom/google/android/gms/wearable/DataMap;Ljava/lang/String;Lcom/google/android/gms/internal/lx$a$a;)V
.registers 11
const/16 v6, 0xe
const/16 v5, 0x9
const/4 v4, 0x6
const/4 v3, 0x2
iget v0, p3, Lcom/google/android/gms/internal/lx$a$a;->type:I
if-ne v0, v6, :cond_f
const/4 v0, 0x0
invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V
:goto_e
return-void
:cond_f
iget-object v1, p3, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;
const/4 v2, 0x1
if-ne v0, v2, :cond_1a
iget-object v0, v1, Lcom/google/android/gms/internal/lx$a$a$a;->amt:[B
invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/DataMap;->putByteArray(Ljava/lang/String;[B)V
goto :goto_e
:cond_1a
const/16 v2, 0xb
if-ne v0, v2, :cond_24
iget-object v0, v1, Lcom/google/android/gms/internal/lx$a$a$a;->amD:[Ljava/lang/String;
invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/DataMap;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
goto :goto_e
:cond_24
const/16 v2, 0xc
if-ne v0, v2, :cond_2e
iget-object v0, v1, Lcom/google/android/gms/internal/lx$a$a$a;->amE:[J
invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/DataMap;->putLongArray(Ljava/lang/String;[J)V
goto :goto_e
:cond_2e
const/16 v2, 0xf
if-ne v0, v2, :cond_38
iget-object v0, v1, Lcom/google/android/gms/internal/lx$a$a$a;->amF:[F
invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/DataMap;->putFloatArray(Ljava/lang/String;[F)V
goto :goto_e
:cond_38
if-ne v0, v3, :cond_40
iget-object v0, v1, Lcom/google/android/gms/internal/lx$a$a$a;->amu:Ljava/lang/String;
invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/DataMap;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
:cond_40
const/4 v2, 0x3
if-ne v0, v2, :cond_49
iget-wide v0, v1, Lcom/google/android/gms/internal/lx$a$a$a;->amv:D
invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/wearable/DataMap;->putDouble(Ljava/lang/String;D)V
goto :goto_e
:cond_49
const/4 v2, 0x4
if-ne v0, v2, :cond_52
iget v0, v1, Lcom/google/android/gms/internal/lx$a$a$a;->amw:F
invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/DataMap;->putFloat(Ljava/lang/String;F)V
goto :goto_e
:cond_52
const/4 v2, 0x5
if-ne v0, v2, :cond_5b
iget-wide v0, v1, Lcom/google/android/gms/internal/lx$a$a$a;->amx:J
invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/wearable/DataMap;->putLong(Ljava/lang/String;J)V
goto :goto_e
:cond_5b
if-ne v0, v4, :cond_63
iget v0, v1, Lcom/google/android/gms/internal/lx$a$a$a;->amy:I
invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/DataMap;->putInt(Ljava/lang/String;I)V
goto :goto_e
:cond_63
const/4 v2, 0x7
if-ne v0, v2, :cond_6d
iget v0, v1, Lcom/google/android/gms/internal/lx$a$a$a;->amz:I
int-to-byte v0, v0
invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/DataMap;->putByte(Ljava/lang/String;B)V
goto :goto_e
:cond_6d
const/16 v2, 0x8
if-ne v0, v2, :cond_77
iget-boolean v0, v1, Lcom/google/android/gms/internal/lx$a$a$a;->amA:Z
invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/DataMap;->putBoolean(Ljava/lang/String;Z)V
goto :goto_e
:cond_77
const/16 v2, 0xd
if-ne v0, v2, :cond_a4
if-nez p0, :cond_96
new-instance v0, Ljava/lang/RuntimeException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "populateBundle: unexpected type for: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_96
iget-wide v0, v1, Lcom/google/android/gms/internal/lx$a$a$a;->amG:J
long-to-int v0, v0
invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/wearable/Asset;
invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wearable/DataMap;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)V
goto/16 :goto_e
:cond_a4
if-ne v0, v5, :cond_c2
new-instance v2, Lcom/google/android/gms/wearable/DataMap;
invoke-direct {v2}, Lcom/google/android/gms/wearable/DataMap;-><init>()V
iget-object v1, v1, Lcom/google/android/gms/internal/lx$a$a$a;->amB:[Lcom/google/android/gms/internal/lx$a;
array-length v3, v1
const/4 v0, 0x0
:goto_af
if-ge v0, v3, :cond_bd
aget-object v4, v1, v0
iget-object v5, v4, Lcom/google/android/gms/internal/lx$a;->name:Ljava/lang/String;
iget-object v4, v4, Lcom/google/android/gms/internal/lx$a;->amq:Lcom/google/android/gms/internal/lx$a$a;
invoke-static {p0, v2, v5, v4}, Lcom/google/android/gms/internal/lw;->a(Ljava/util/List;Lcom/google/android/gms/wearable/DataMap;Ljava/lang/String;Lcom/google/android/gms/internal/lx$a$a;)V
add-int/lit8 v0, v0, 0x1
goto :goto_af
:cond_bd
invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/wearable/DataMap;->putDataMap(Ljava/lang/String;Lcom/google/android/gms/wearable/DataMap;)V
goto/16 :goto_e
:cond_c2
const/16 v2, 0xa
if-ne v0, v2, :cond_105
iget-object v0, v1, Lcom/google/android/gms/internal/lx$a$a$a;->amC:[Lcom/google/android/gms/internal/lx$a$a;
invoke-static {p2, v0}, Lcom/google/android/gms/internal/lw;->a(Ljava/lang/String;[Lcom/google/android/gms/internal/lx$a$a;)I
move-result v0
invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/lw;->a(Ljava/util/List;Lcom/google/android/gms/internal/lx$a$a$a;I)Ljava/util/ArrayList;
move-result-object v1
if-ne v0, v6, :cond_d7
invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/wearable/DataMap;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
goto/16 :goto_e
:cond_d7
if-ne v0, v5, :cond_de
invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/wearable/DataMap;->putDataMapArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
goto/16 :goto_e
:cond_de
if-ne v0, v3, :cond_e5
invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/wearable/DataMap;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
goto/16 :goto_e
:cond_e5
if-ne v0, v4, :cond_ec
invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/wearable/DataMap;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
goto/16 :goto_e
:cond_ec
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Unexpected typeOfArrayList: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_105
new-instance v1, Ljava/lang/RuntimeException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "populateBundle: unexpected type "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method private static a(Lcom/google/android/gms/wearable/DataMap;Ljava/util/List;)[Lcom/google/android/gms/internal/lx$a;
.registers 8
invoke-virtual {p0}, Lcom/google/android/gms/wearable/DataMap;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->size()I
move-result v0
new-array v2, v0, [Lcom/google/android/gms/internal/lx$a;
const/4 v0, 0x0
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
move v1, v0
:goto_10
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_37
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/DataMap;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v4
new-instance v5, Lcom/google/android/gms/internal/lx$a;
invoke-direct {v5}, Lcom/google/android/gms/internal/lx$a;-><init>()V
aput-object v5, v2, v1
aget-object v5, v2, v1
iput-object v0, v5, Lcom/google/android/gms/internal/lx$a;->name:Ljava/lang/String;
aget-object v0, v2, v1
invoke-static {p1, v4}, Lcom/google/android/gms/internal/lw;->a(Ljava/util/List;Ljava/lang/Object;)Lcom/google/android/gms/internal/lx$a$a;
move-result-object v4
iput-object v4, v0, Lcom/google/android/gms/internal/lx$a;->amq:Lcom/google/android/gms/internal/lx$a$a;
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_10
:cond_37
return-object v2
.end method