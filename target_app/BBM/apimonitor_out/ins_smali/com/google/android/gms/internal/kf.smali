.class public final Lcom/google/android/gms/internal/kf;
.super Ljava/lang/Object;
.method private static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
.registers 15
const/4 v1, 0x0
if-eqz p1, :cond_f6
instance-of v0, p1, Lcom/google/android/gms/internal/ke;
if-eqz v0, :cond_f7
invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I
move-result v4
if-eqz p0, :cond_23
invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-static {p0}, Lcom/google/android/gms/internal/kf;->bR(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v2, " <\n"
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v0, "  "
invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_23
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;
move-result-object v6
array-length v7, v6
move v3, v1
:goto_2d
if-ge v3, v7, :cond_86
aget-object v0, v6, v3
invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I
move-result v2
invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
move-result-object v8
and-int/lit8 v9, v2, 0x1
const/4 v10, 0x1
if-ne v9, v10, :cond_82
and-int/lit8 v2, v2, 0x8
const/16 v9, 0x8
if-eq v2, v9, :cond_82
const-string v2, "_"
invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_82
const-string v2, "_"
invoke-virtual {v8, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_82
invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v9
invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z
move-result v0
if-eqz v0, :cond_7f
invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
move-result-object v0
sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;
if-eq v0, v2, :cond_7f
if-nez v9, :cond_7a
move v0, v1
:goto_6d
move v2, v1
:goto_6e
if-ge v2, v0, :cond_82
invoke-static {v9, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;
move-result-object v10
invoke-static {v8, v10, p2, p3}, Lcom/google/android/gms/internal/kf;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
add-int/lit8 v2, v2, 0x1
goto :goto_6e
:cond_7a
invoke-static {v9}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I
move-result v0
goto :goto_6d
:cond_7f
invoke-static {v8, v9, p2, p3}, Lcom/google/android/gms/internal/kf;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
:cond_82
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_2d
:cond_86
invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;
move-result-object v3
array-length v6, v3
move v2, v1
:goto_8c
if-ge v2, v6, :cond_e8
aget-object v0, v3, v2
invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v0
const-string v7, "set"
invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_e4
const/4 v7, 0x3
invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v7
:try_start_a1
new-instance v0, Ljava/lang/StringBuilder;
const-string v8, "has"
invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v8, 0x0
new-array v8, v8, [Ljava/lang/Class;
invoke-virtual {v5, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
:try_end_b6
.catch Ljava/lang/NoSuchMethodException; {:try_start_a1 .. :try_end_b6} :catch_139
move-result-object v0
new-array v8, v1, [Ljava/lang/Object;
invoke-virtual {v0, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_e4
:try_start_c5
new-instance v0, Ljava/lang/StringBuilder;
const-string v8, "get"
invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v8, 0x0
new-array v8, v8, [Ljava/lang/Class;
invoke-virtual {v5, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
:try_end_da
.catch Ljava/lang/NoSuchMethodException; {:try_start_c5 .. :try_end_da} :catch_137
move-result-object v0
new-array v8, v1, [Ljava/lang/Object;
invoke-virtual {v0, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-static {v7, v0, p2, p3}, Lcom/google/android/gms/internal/kf;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
:cond_e4
:goto_e4
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_8c
:cond_e8
if-eqz p0, :cond_f6
invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->setLength(I)V
invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, ">\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_f6
:goto_f6
return-void
:cond_f7
invoke-static {p0}, Lcom/google/android/gms/internal/kf;->bR(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, ": "
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
instance-of v0, p1, Ljava/lang/String;
if-eqz v0, :cond_127
check-cast p1, Ljava/lang/String;
invoke-static {p1}, Lcom/google/android/gms/internal/kf;->bS(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "\""
invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, "\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:goto_121
const-string v0, "\n"
invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_f6
:cond_127
instance-of v0, p1, [B
if-eqz v0, :cond_133
check-cast p1, [B
check-cast p1, [B
invoke-static {p1, p3}, Lcom/google/android/gms/internal/kf;->a([BLjava/lang/StringBuffer;)V
goto :goto_121
:cond_133
invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
goto :goto_121
:catch_137
move-exception v0
goto :goto_e4
:catch_139
move-exception v0
goto :goto_e4
.end method
.method private static a([BLjava/lang/StringBuffer;)V
.registers 9
const/16 v6, 0x5c
const/4 v1, 0x0
const/16 v5, 0x22
if-nez p0, :cond_d
const-string v0, "\"\""
invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:goto_c
return-void
:cond_d
invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move v0, v1
:goto_11
array-length v2, p0
if-ge v0, v2, :cond_45
aget-byte v2, p0, v0
if-eq v2, v6, :cond_1a
if-ne v2, v5, :cond_25
:cond_1a
invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-result-object v3
int-to-char v2, v2
invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:goto_22
add-int/lit8 v0, v0, 0x1
goto :goto_11
:cond_25
const/16 v3, 0x20
if-lt v2, v3, :cond_32
const/16 v3, 0x7f
if-ge v2, v3, :cond_32
int-to-char v2, v2
invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_22
:cond_32
const-string v3, "\\%03o"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v4, v1
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_22
:cond_45
invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_c
.end method
.method private static ap(Ljava/lang/String;)Ljava/lang/String;
.registers 8
const/4 v1, 0x0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V
move v0, v1
:goto_b
if-ge v0, v2, :cond_3a
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v4
const/16 v5, 0x20
if-lt v4, v5, :cond_27
const/16 v5, 0x7e
if-gt v4, v5, :cond_27
const/16 v5, 0x22
if-eq v4, v5, :cond_27
const/16 v5, 0x27
if-eq v4, v5, :cond_27
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:goto_24
add-int/lit8 v0, v0, 0x1
goto :goto_b
:cond_27
const-string v5, "\\u%04x"
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/Object;
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v6, v1
invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_24
:cond_3a
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static bR(Ljava/lang/String;)Ljava/lang/String;
.registers 5
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const/4 v0, 0x0
:goto_6
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
if-ge v0, v2, :cond_34
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v2
if-nez v0, :cond_1c
invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:goto_19
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_1c
invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z
move-result v3
if-eqz v3, :cond_30
const/16 v3, 0x5f
invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-result-object v3
invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C
move-result v2
invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_19
:cond_30
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_19
:cond_34
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static bS(Ljava/lang/String;)Ljava/lang/String;
.registers 4
const/16 v2, 0xc8
const-string v0, "http"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_28
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-le v0, v2, :cond_28
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const/4 v1, 0x0
invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "[...]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p0
:cond_28
invoke-static {p0}, Lcom/google/android/gms/internal/kf;->ap(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static e(Lcom/google/android/gms/internal/ke;)Ljava/lang/String;
.registers 4
if-nez p0, :cond_5
const-string v0, ""
:goto_4
return-object v0
:cond_5
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const/4 v1, 0x0
:try_start_b
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
invoke-static {v1, p0, v2, v0}, Lcom/google/android/gms/internal/kf;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
:try_end_13
.catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_13} :catch_18
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_13} :catch_2d
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_4
:catch_18
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Error printing proto: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_4
:catch_2d
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Error printing proto: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_4
.end method