.class public Lcom/facebook/cl;
.super Lcom/facebook/cm;
.source "SharedPreferencesTokenCachingStrategy.java"
.field private static final a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.field private c:Landroid/content/SharedPreferences;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/facebook/cl;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/facebook/cl;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/facebook/cl;-><init>(Landroid/content/Context;B)V
return-void
.end method
.method private constructor <init>(Landroid/content/Context;B)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0}, Lcom/facebook/cm;-><init>()V
const-string v1, "context"
invoke-static {p1, v1}, Lcom/facebook/g/u;->a(Ljava/lang/Object;Ljava/lang/String;)V
invoke-static {v0}, Lcom/facebook/g/t;->a(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_11
const-string v0, "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY"
:cond_11
iput-object v0, p0, Lcom/facebook/cl;->b:Ljava/lang/String;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
if-eqz v0, :cond_1a
move-object p1, v0
:cond_1a
iget-object v0, p0, Lcom/facebook/cl;->b:Ljava/lang/String;
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
iput-object v0, p0, Lcom/facebook/cl;->c:Landroid/content/SharedPreferences;
return-void
.end method
.method private a(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 10
const/4 v6, 0x1
const/4 v0, 0x0
iget-object v1, p0, Lcom/facebook/cl;->c:Landroid/content/SharedPreferences;
const-string v2, "{}"
invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v1, "valueType"
invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v3, "bool"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_27
const-string v0, "value"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v0
invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
:goto_26
:cond_26
return-void
:cond_27
const-string v3, "bool[]"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_4b
const-string v1, "value"
invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v1
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
move-result v2
new-array v2, v2, [Z
:goto_3b
array-length v3, v2
if-ge v0, v3, :cond_47
invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getBoolean(I)Z
move-result v3
aput-boolean v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_3b
:cond_47
invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V
goto :goto_26
:cond_4b
const-string v3, "byte"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_5e
const-string v0, "value"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
int-to-byte v0, v0
invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V
goto :goto_26
:cond_5e
const-string v3, "byte[]"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_83
const-string v1, "value"
invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v1
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
move-result v2
new-array v2, v2, [B
:goto_72
array-length v3, v2
if-ge v0, v3, :cond_7f
invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getInt(I)I
move-result v3
int-to-byte v3, v3
aput-byte v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_72
:cond_7f
invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
goto :goto_26
:cond_83
const-string v3, "short"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_96
const-string v0, "value"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
int-to-short v0, v0
invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V
goto :goto_26
:cond_96
const-string v3, "short[]"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_bc
const-string v1, "value"
invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v1
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
move-result v2
new-array v2, v2, [S
:goto_aa
array-length v3, v2
if-ge v0, v3, :cond_b7
invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getInt(I)I
move-result v3
int-to-short v3, v3
aput-short v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_aa
:cond_b7
invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V
goto/16 :goto_26
:cond_bc
const-string v3, "int"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_cf
const-string v0, "value"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
goto/16 :goto_26
:cond_cf
const-string v3, "int[]"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_f4
const-string v1, "value"
invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v1
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
move-result v2
new-array v2, v2, [I
:goto_e3
array-length v3, v2
if-ge v0, v3, :cond_ef
invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getInt(I)I
move-result v3
aput v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_e3
:cond_ef
invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V
goto/16 :goto_26
:cond_f4
const-string v3, "long"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_107
const-string v0, "value"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v0
invoke-virtual {p2, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
goto/16 :goto_26
:cond_107
const-string v3, "long[]"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_12c
const-string v1, "value"
invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v1
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
move-result v2
new-array v2, v2, [J
:goto_11b
array-length v3, v2
if-ge v0, v3, :cond_127
invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getLong(I)J
move-result-wide v3
aput-wide v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_11b
:cond_127
invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V
goto/16 :goto_26
:cond_12c
const-string v3, "float"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_140
const-string v0, "value"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
move-result-wide v0
double-to-float v0, v0
invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V
goto/16 :goto_26
:cond_140
const-string v3, "float[]"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_166
const-string v1, "value"
invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v1
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
move-result v2
new-array v2, v2, [F
:goto_154
array-length v3, v2
if-ge v0, v3, :cond_161
invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getDouble(I)D
move-result-wide v3
double-to-float v3, v3
aput v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_154
:cond_161
invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V
goto/16 :goto_26
:cond_166
const-string v3, "double"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_179
const-string v0, "value"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
move-result-wide v0
invoke-virtual {p2, p1, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
goto/16 :goto_26
:cond_179
const-string v3, "double[]"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_19e
const-string v1, "value"
invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v1
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
move-result v2
new-array v2, v2, [D
:goto_18d
array-length v3, v2
if-ge v0, v3, :cond_199
invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getDouble(I)D
move-result-wide v3
aput-wide v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_18d
:cond_199
invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V
goto/16 :goto_26
:cond_19e
const-string v3, "char"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_1bd
const-string v1, "value"
invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_26
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-ne v2, v6, :cond_26
invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C
move-result v0
invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V
goto/16 :goto_26
:cond_1bd
const-string v3, "char[]"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_1ef
const-string v1, "value"
invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v2
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v1
new-array v3, v1, [C
move v1, v0
:goto_1d2
array-length v4, v3
if-ge v1, v4, :cond_1ea
invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
move-result-object v4
if-eqz v4, :cond_1e7
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v5
if-ne v5, v6, :cond_1e7
invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C
move-result v4
aput-char v4, v3, v1
:cond_1e7
add-int/lit8 v1, v1, 0x1
goto :goto_1d2
:cond_1ea
invoke-virtual {p2, p1, v3}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V
goto/16 :goto_26
:cond_1ef
const-string v3, "string"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_202
const-string v0, "value"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_26
:cond_202
const-string v3, "stringList"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_234
const-string v1, "value"
invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v2
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v3
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V
move v1, v0
:goto_21a
if-ge v1, v3, :cond_22f
invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
move-result-object v0
sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
if-ne v0, v5, :cond_22c
const/4 v0, 0x0
:goto_225
invoke-virtual {v4, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_21a
:cond_22c
check-cast v0, Ljava/lang/String;
goto :goto_225
:cond_22f
invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
goto/16 :goto_26
:cond_234
const-string v0, "enum"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_26
:try_start_23c
const-string v0, "enumType"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
const-string v1, "value"
invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
:try_end_253
.catch Ljava/lang/ClassNotFoundException; {:try_start_23c .. :try_end_253} :catch_255
.catch Ljava/lang/IllegalArgumentException; {:try_start_23c .. :try_end_253} :catch_258
goto/16 :goto_26
:catch_255
move-exception v0
goto/16 :goto_26
:catch_258
move-exception v0
goto/16 :goto_26
.end method
.method private static a(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;)V
.registers 11
const/4 v1, 0x0
const/4 v3, 0x0
invoke-virtual {p1, p0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
new-instance v4, Lorg/json/JSONObject;
invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
instance-of v2, v0, Ljava/lang/Byte;
if-eqz v2, :cond_37
const-string v2, "byte"
const-string v3, "value"
check-cast v0, Ljava/lang/Byte;
invoke-virtual {v0}, Ljava/lang/Byte;->intValue()I
move-result v0
invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
move-object v0, v1
move-object v1, v2
:goto_21
if-eqz v1, :cond_8
const-string v2, "valueType"
invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
if-eqz v0, :cond_2f
const-string v1, "value"
invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_2f
invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
invoke-interface {p2, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
goto :goto_8
:cond_37
instance-of v2, v0, Ljava/lang/Short;
if-eqz v2, :cond_4b
const-string v2, "short"
const-string v3, "value"
check-cast v0, Ljava/lang/Short;
invoke-virtual {v0}, Ljava/lang/Short;->intValue()I
move-result v0
invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
move-object v0, v1
move-object v1, v2
goto :goto_21
:cond_4b
instance-of v2, v0, Ljava/lang/Integer;
if-eqz v2, :cond_5f
const-string v2, "int"
const-string v3, "value"
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
move-object v0, v1
move-object v1, v2
goto :goto_21
:cond_5f
instance-of v2, v0, Ljava/lang/Long;
if-eqz v2, :cond_73
const-string v2, "long"
const-string v3, "value"
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v5
invoke-virtual {v4, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
move-object v0, v1
move-object v1, v2
goto :goto_21
:cond_73
instance-of v2, v0, Ljava/lang/Float;
if-eqz v2, :cond_87
const-string v2, "float"
const-string v3, "value"
check-cast v0, Ljava/lang/Float;
invoke-virtual {v0}, Ljava/lang/Float;->doubleValue()D
move-result-wide v5
invoke-virtual {v4, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
move-object v0, v1
move-object v1, v2
goto :goto_21
:cond_87
instance-of v2, v0, Ljava/lang/Double;
if-eqz v2, :cond_9b
const-string v2, "double"
const-string v3, "value"
check-cast v0, Ljava/lang/Double;
invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
move-result-wide v5
invoke-virtual {v4, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
move-object v0, v1
move-object v1, v2
goto :goto_21
:cond_9b
instance-of v2, v0, Ljava/lang/Boolean;
if-eqz v2, :cond_b0
const-string v2, "bool"
const-string v3, "value"
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
move-object v0, v1
move-object v1, v2
goto/16 :goto_21
:cond_b0
instance-of v2, v0, Ljava/lang/Character;
if-eqz v2, :cond_c3
const-string v2, "char"
const-string v3, "value"
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
move-object v0, v1
move-object v1, v2
goto/16 :goto_21
:cond_c3
instance-of v2, v0, Ljava/lang/String;
if-eqz v2, :cond_d4
const-string v2, "string"
const-string v3, "value"
check-cast v0, Ljava/lang/String;
invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
move-object v0, v1
move-object v1, v2
goto/16 :goto_21
:cond_d4
instance-of v2, v0, Ljava/lang/Enum;
if-eqz v2, :cond_f4
const-string v2, "enum"
const-string v3, "value"
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "enumType"
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
move-object v0, v1
move-object v1, v2
goto/16 :goto_21
:cond_f4
new-instance v2, Lorg/json/JSONArray;
invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V
instance-of v5, v0, [B
if-eqz v5, :cond_111
const-string v1, "byte[]"
check-cast v0, [B
check-cast v0, [B
array-length v5, v0
:goto_104
if-ge v3, v5, :cond_10e
aget-byte v6, v0, v3
invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;
add-int/lit8 v3, v3, 0x1
goto :goto_104
:cond_10e
move-object v0, v2
goto/16 :goto_21
:cond_111
instance-of v5, v0, [S
if-eqz v5, :cond_129
const-string v1, "short[]"
check-cast v0, [S
check-cast v0, [S
array-length v5, v0
:goto_11c
if-ge v3, v5, :cond_126
aget-short v6, v0, v3
invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;
add-int/lit8 v3, v3, 0x1
goto :goto_11c
:cond_126
move-object v0, v2
goto/16 :goto_21
:cond_129
instance-of v5, v0, [I
if-eqz v5, :cond_141
const-string v1, "int[]"
check-cast v0, [I
check-cast v0, [I
array-length v5, v0
:goto_134
if-ge v3, v5, :cond_13e
aget v6, v0, v3
invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;
add-int/lit8 v3, v3, 0x1
goto :goto_134
:cond_13e
move-object v0, v2
goto/16 :goto_21
:cond_141
instance-of v5, v0, [J
if-eqz v5, :cond_159
const-string v1, "long[]"
check-cast v0, [J
check-cast v0, [J
array-length v5, v0
:goto_14c
if-ge v3, v5, :cond_156
aget-wide v6, v0, v3
invoke-virtual {v2, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;
add-int/lit8 v3, v3, 0x1
goto :goto_14c
:cond_156
move-object v0, v2
goto/16 :goto_21
:cond_159
instance-of v5, v0, [F
if-eqz v5, :cond_172
const-string v1, "float[]"
check-cast v0, [F
check-cast v0, [F
array-length v5, v0
:goto_164
if-ge v3, v5, :cond_16f
aget v6, v0, v3
float-to-double v6, v6
invoke-virtual {v2, v6, v7}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;
add-int/lit8 v3, v3, 0x1
goto :goto_164
:cond_16f
move-object v0, v2
goto/16 :goto_21
:cond_172
instance-of v5, v0, [D
if-eqz v5, :cond_18a
const-string v1, "double[]"
check-cast v0, [D
check-cast v0, [D
array-length v5, v0
:goto_17d
if-ge v3, v5, :cond_187
aget-wide v6, v0, v3
invoke-virtual {v2, v6, v7}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;
add-int/lit8 v3, v3, 0x1
goto :goto_17d
:cond_187
move-object v0, v2
goto/16 :goto_21
:cond_18a
instance-of v5, v0, [Z
if-eqz v5, :cond_1a2
const-string v1, "bool[]"
check-cast v0, [Z
check-cast v0, [Z
array-length v5, v0
:goto_195
if-ge v3, v5, :cond_19f
aget-boolean v6, v0, v3
invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;
add-int/lit8 v3, v3, 0x1
goto :goto_195
:cond_19f
move-object v0, v2
goto/16 :goto_21
:cond_1a2
instance-of v5, v0, [C
if-eqz v5, :cond_1be
const-string v1, "char[]"
check-cast v0, [C
check-cast v0, [C
array-length v5, v0
:goto_1ad
if-ge v3, v5, :cond_1bb
aget-char v6, v0, v3
invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;
move-result-object v6
invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
add-int/lit8 v3, v3, 0x1
goto :goto_1ad
:cond_1bb
move-object v0, v2
goto/16 :goto_21
:cond_1be
instance-of v3, v0, Ljava/util/List;
if-eqz v3, :cond_1e1
const-string v1, "stringList"
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_1ca
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1de
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-nez v0, :cond_1da
sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
:cond_1da
invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
goto :goto_1ca
:cond_1de
move-object v0, v2
goto/16 :goto_21
:cond_1e1
move-object v0, v1
goto/16 :goto_21
.end method
.method public final a()Landroid/os/Bundle;
.registers 8
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
iget-object v0, p0, Lcom/facebook/cl;->c:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_13
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_47
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:try_start_1f
invoke-direct {p0, v0, v1}, Lcom/facebook/cl;->a(Ljava/lang/String;Landroid/os/Bundle;)V
:try_end_22
.catch Lorg/json/JSONException; {:try_start_1f .. :try_end_22} :catch_23
goto :goto_13
:catch_23
move-exception v1
sget-object v2, Lcom/facebook/ak;->d:Lcom/facebook/ak;
const/4 v3, 0x5
sget-object v4, Lcom/facebook/cl;->a:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Error reading cached value for key: \'"
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v5, "\' -- "
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v3, v4, v0}, Lcom/facebook/g/n;->a(Lcom/facebook/ak;ILjava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
:goto_46
return-object v0
:cond_47
move-object v0, v1
goto :goto_46
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 9
const/4 v6, 0x5
const-string v0, "bundle"
invoke-static {p1, v0}, Lcom/facebook/g/u;->a(Ljava/lang/Object;Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/cl;->c:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_14
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_46
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:try_start_20
invoke-static {v0, p1, v1}, Lcom/facebook/cl;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;)V
:try_end_23
.catch Lorg/json/JSONException; {:try_start_20 .. :try_end_23} :catch_24
goto :goto_14
:catch_24
move-exception v1
sget-object v2, Lcom/facebook/ak;->d:Lcom/facebook/ak;
sget-object v3, Lcom/facebook/cl;->a:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Error processing value for key: \'"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v4, "\' -- "
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v6, v3, v0}, Lcom/facebook/g/n;->a(Lcom/facebook/ak;ILjava/lang/String;Ljava/lang/String;)V
:goto_45
:cond_45
return-void
:cond_46
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v0
if-nez v0, :cond_45
sget-object v0, Lcom/facebook/ak;->d:Lcom/facebook/ak;
sget-object v1, Lcom/facebook/cl;->a:Ljava/lang/String;
const-string v2, "SharedPreferences.Editor.commit() was not successful"
invoke-static {v0, v6, v1, v2}, Lcom/facebook/g/n;->a(Lcom/facebook/ak;ILjava/lang/String;Ljava/lang/String;)V
goto :goto_45
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/facebook/cl;->c:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method