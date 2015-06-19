.class public Lcom/facebook/SharedPreferencesTokenCachingStrategy;
.super Lcom/facebook/TokenCachingStrategy;
.source "SharedPreferencesTokenCachingStrategy.java"
.field private static final DEFAULT_CACHE_KEY:Ljava/lang/String; = "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY"
.field private static final JSON_VALUE:Ljava/lang/String; = "value"
.field private static final JSON_VALUE_ENUM_TYPE:Ljava/lang/String; = "enumType"
.field private static final JSON_VALUE_TYPE:Ljava/lang/String; = "valueType"
.field private static final TAG:Ljava/lang/String; = null
.field private static final TYPE_BOOLEAN:Ljava/lang/String; = "bool"
.field private static final TYPE_BOOLEAN_ARRAY:Ljava/lang/String; = "bool[]"
.field private static final TYPE_BYTE:Ljava/lang/String; = "byte"
.field private static final TYPE_BYTE_ARRAY:Ljava/lang/String; = "byte[]"
.field private static final TYPE_CHAR:Ljava/lang/String; = "char"
.field private static final TYPE_CHAR_ARRAY:Ljava/lang/String; = "char[]"
.field private static final TYPE_DOUBLE:Ljava/lang/String; = "double"
.field private static final TYPE_DOUBLE_ARRAY:Ljava/lang/String; = "double[]"
.field private static final TYPE_ENUM:Ljava/lang/String; = "enum"
.field private static final TYPE_FLOAT:Ljava/lang/String; = "float"
.field private static final TYPE_FLOAT_ARRAY:Ljava/lang/String; = "float[]"
.field private static final TYPE_INTEGER:Ljava/lang/String; = "int"
.field private static final TYPE_INTEGER_ARRAY:Ljava/lang/String; = "int[]"
.field private static final TYPE_LONG:Ljava/lang/String; = "long"
.field private static final TYPE_LONG_ARRAY:Ljava/lang/String; = "long[]"
.field private static final TYPE_SHORT:Ljava/lang/String; = "short"
.field private static final TYPE_SHORT_ARRAY:Ljava/lang/String; = "short[]"
.field private static final TYPE_STRING:Ljava/lang/String; = "string"
.field private static final TYPE_STRING_LIST:Ljava/lang/String; = "stringList"
.field private cache:Landroid/content/SharedPreferences;
.field private cacheKey:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;-><init>(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 6
invoke-direct {p0}, Lcom/facebook/TokenCachingStrategy;-><init>()V
const-string v1, "context"
invoke-static {p1, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V
invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_10
const-string p2, "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY"
:cond_10
iput-object p2, p0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->cacheKey:Ljava/lang/String;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
if-eqz v0, :cond_19
move-object p1, v0
:cond_19
iget-object v1, p0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->cacheKey:Ljava/lang/String;
const/4 v2, 0x0
invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v1
iput-object v1, p0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->cache:Landroid/content/SharedPreferences;
return-void
.end method
.method private deserializeKey(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 22
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->cache:Landroid/content/SharedPreferences;
move-object/from16 v17, v0
const-string v18, "{}"
move-object/from16 v0, v17
move-object/from16 v1, p1
move-object/from16 v2, v18
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
new-instance v10, Lorg/json/JSONObject;
invoke-direct {v10, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v17, "valueType"
move-object/from16 v0, v17
invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v16
const-string v17, "bool"
invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-eqz v17, :cond_39
const-string v17, "value"
move-object/from16 v0, v17
invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v17
move-object/from16 v0, p2
move-object/from16 v1, p1
move/from16 v2, v17
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
:cond_38
:goto_38
return-void
:cond_39
const-string v17, "bool[]"
invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-eqz v17, :cond_6a
const-string v17, "value"
move-object/from16 v0, v17
invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v11
invoke-virtual {v11}, Lorg/json/JSONArray;->length()I
move-result v17
move/from16 v0, v17
new-array v4, v0, [Z
const/4 v9, 0x0
:goto_52
array-length v0, v4
move/from16 v17, v0
move/from16 v0, v17
if-ge v9, v0, :cond_62
invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getBoolean(I)Z
move-result v17
aput-boolean v17, v4, v9
add-int/lit8 v9, v9, 0x1
goto :goto_52
:cond_62
move-object/from16 v0, p2
move-object/from16 v1, p1
invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V
goto :goto_38
:cond_6a
const-string v17, "byte"
invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-eqz v17, :cond_89
const-string v17, "value"
move-object/from16 v0, v17
invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v17
move/from16 v0, v17
int-to-byte v0, v0
move/from16 v17, v0
move-object/from16 v0, p2
move-object/from16 v1, p1
move/from16 v2, v17
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V
goto :goto_38
:cond_89
const-string v17, "byte[]"
invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-eqz v17, :cond_c0
const-string v17, "value"
move-object/from16 v0, v17
invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v11
invoke-virtual {v11}, Lorg/json/JSONArray;->length()I
move-result v17
move/from16 v0, v17
new-array v4, v0, [B
const/4 v9, 0x0
:goto_a2
array-length v0, v4
move/from16 v17, v0
move/from16 v0, v17
if-ge v9, v0, :cond_b7
invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getInt(I)I
move-result v17
move/from16 v0, v17
int-to-byte v0, v0
move/from16 v17, v0
aput-byte v17, v4, v9
add-int/lit8 v9, v9, 0x1
goto :goto_a2
:cond_b7
move-object/from16 v0, p2
move-object/from16 v1, p1
invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
goto/16 :goto_38
:cond_c0
const-string v17, "short"
invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-eqz v17, :cond_e0
const-string v17, "value"
move-object/from16 v0, v17
invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v17
move/from16 v0, v17
int-to-short v0, v0
move/from16 v17, v0
move-object/from16 v0, p2
move-object/from16 v1, p1
move/from16 v2, v17
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V
goto/16 :goto_38
:cond_e0
const-string v17, "short[]"
invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-eqz v17, :cond_117
const-string v17, "value"
move-object/from16 v0, v17
invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v11
invoke-virtual {v11}, Lorg/json/JSONArray;->length()I
move-result v17
move/from16 v0, v17
new-array v4, v0, [S
const/4 v9, 0x0
:goto_f9
array-length v0, v4
move/from16 v17, v0
move/from16 v0, v17
if-ge v9, v0, :cond_10e
invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getInt(I)I
move-result v17
move/from16 v0, v17
int-to-short v0, v0
move/from16 v17, v0
aput-short v17, v4, v9
add-int/lit8 v9, v9, 0x1
goto :goto_f9
:cond_10e
move-object/from16 v0, p2
move-object/from16 v1, p1
invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V
goto/16 :goto_38
:cond_117
const-string v17, "int"
invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-eqz v17, :cond_132
const-string v17, "value"
move-object/from16 v0, v17
invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v17
move-object/from16 v0, p2
move-object/from16 v1, p1
move/from16 v2, v17
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
goto/16 :goto_38
:cond_132
const-string v17, "int[]"
invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-eqz v17, :cond_164
const-string v17, "value"
move-object/from16 v0, v17
invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v11
invoke-virtual {v11}, Lorg/json/JSONArray;->length()I
move-result v17
move/from16 v0, v17
new-array v4, v0, [I
const/4 v9, 0x0
:goto_14b
array-length v0, v4
move/from16 v17, v0
move/from16 v0, v17
if-ge v9, v0, :cond_15b
invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getInt(I)I
move-result v17
aput v17, v4, v9
add-int/lit8 v9, v9, 0x1
goto :goto_14b
:cond_15b
move-object/from16 v0, p2
move-object/from16 v1, p1
invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V
goto/16 :goto_38
:cond_164
const-string v17, "long"
invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-eqz v17, :cond_17f
const-string v17, "value"
move-object/from16 v0, v17
invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v17
move-object/from16 v0, p2
move-object/from16 v1, p1
move-wide/from16 v2, v17
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
goto/16 :goto_38
:cond_17f
const-string v17, "long[]"
invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-eqz v17, :cond_1b1
const-string v17, "value"
move-object/from16 v0, v17
invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v11
invoke-virtual {v11}, Lorg/json/JSONArray;->length()I
move-result v17
move/from16 v0, v17
new-array v4, v0, [J
const/4 v9, 0x0
:goto_198
array-length v0, v4
move/from16 v17, v0
move/from16 v0, v17
if-ge v9, v0, :cond_1a8
invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getLong(I)J
move-result-wide v17
aput-wide v17, v4, v9
add-int/lit8 v9, v9, 0x1
goto :goto_198
:cond_1a8
move-object/from16 v0, p2
move-object/from16 v1, p1
invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V
goto/16 :goto_38
:cond_1b1
const-string v17, "float"
invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-eqz v17, :cond_1d1
const-string v17, "value"
move-object/from16 v0, v17
invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
move-result-wide v17
move-wide/from16 v0, v17
double-to-float v0, v0
move/from16 v17, v0
move-object/from16 v0, p2
move-object/from16 v1, p1
move/from16 v2, v17
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V
goto/16 :goto_38
:cond_1d1
const-string v17, "float[]"
invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-eqz v17, :cond_208
const-string v17, "value"
move-object/from16 v0, v17
invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v11
invoke-virtual {v11}, Lorg/json/JSONArray;->length()I
move-result v17
move/from16 v0, v17
new-array v4, v0, [F
const/4 v9, 0x0
:goto_1ea
array-length v0, v4
move/from16 v17, v0
move/from16 v0, v17
if-ge v9, v0, :cond_1ff
invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getDouble(I)D
move-result-wide v17
move-wide/from16 v0, v17
double-to-float v0, v0
move/from16 v17, v0
aput v17, v4, v9
add-int/lit8 v9, v9, 0x1
goto :goto_1ea
:cond_1ff
move-object/from16 v0, p2
move-object/from16 v1, p1
invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V
goto/16 :goto_38
:cond_208
const-string v17, "double"
invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-eqz v17, :cond_223
const-string v17, "value"
move-object/from16 v0, v17
invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
move-result-wide v17
move-object/from16 v0, p2
move-object/from16 v1, p1
move-wide/from16 v2, v17
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
goto/16 :goto_38
:cond_223
const-string v17, "double[]"
invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-eqz v17, :cond_255
const-string v17, "value"
move-object/from16 v0, v17
invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v11
invoke-virtual {v11}, Lorg/json/JSONArray;->length()I
move-result v17
move/from16 v0, v17
new-array v4, v0, [D
const/4 v9, 0x0
:goto_23c
array-length v0, v4
move/from16 v17, v0
move/from16 v0, v17
if-ge v9, v0, :cond_24c
invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getDouble(I)D
move-result-wide v17
aput-wide v17, v4, v9
add-int/lit8 v9, v9, 0x1
goto :goto_23c
:cond_24c
move-object/from16 v0, p2
move-object/from16 v1, p1
invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V
goto/16 :goto_38
:cond_255
const-string v17, "char"
invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-eqz v17, :cond_286
const-string v17, "value"
move-object/from16 v0, v17
invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
if-eqz v5, :cond_38
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v17
const/16 v18, 0x1
move/from16 v0, v17
move/from16 v1, v18
if-ne v0, v1, :cond_38
const/16 v17, 0x0
move/from16 v0, v17
invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C
move-result v17
move-object/from16 v0, p2
move-object/from16 v1, p1
move/from16 v2, v17
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V
goto/16 :goto_38
:cond_286
const-string v17, "char[]"
invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-eqz v17, :cond_2ce
const-string v17, "value"
move-object/from16 v0, v17
invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v11
invoke-virtual {v11}, Lorg/json/JSONArray;->length()I
move-result v17
move/from16 v0, v17
new-array v4, v0, [C
const/4 v9, 0x0
:goto_29f
array-length v0, v4
move/from16 v17, v0
move/from16 v0, v17
if-ge v9, v0, :cond_2c5
invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
move-result-object v5
if-eqz v5, :cond_2c2
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v17
const/16 v18, 0x1
move/from16 v0, v17
move/from16 v1, v18
if-ne v0, v1, :cond_2c2
const/16 v17, 0x0
move/from16 v0, v17
invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C
move-result v17
aput-char v17, v4, v9
:cond_2c2
add-int/lit8 v9, v9, 0x1
goto :goto_29f
:cond_2c5
move-object/from16 v0, p2
move-object/from16 v1, p1
invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V
goto/16 :goto_38
:cond_2ce
const-string v17, "string"
invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-eqz v17, :cond_2e9
const-string v17, "value"
move-object/from16 v0, v17
invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v17
move-object/from16 v0, p2
move-object/from16 v1, p1
move-object/from16 v2, v17
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_38
:cond_2e9
const-string v17, "stringList"
invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-eqz v17, :cond_322
const-string v17, "value"
move-object/from16 v0, v17
invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v11
invoke-virtual {v11}, Lorg/json/JSONArray;->length()I
move-result v14
new-instance v15, Ljava/util/ArrayList;
invoke-direct {v15, v14}, Ljava/util/ArrayList;-><init>(I)V
const/4 v9, 0x0
:goto_303
if-ge v9, v14, :cond_319
invoke-virtual {v11, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
move-result-object v13
sget-object v17, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
move-object/from16 v0, v17
if-ne v13, v0, :cond_316
const/4 v13, 0x0
:goto_310
invoke-virtual {v15, v9, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
add-int/lit8 v9, v9, 0x1
goto :goto_303
:cond_316
check-cast v13, Ljava/lang/String;
goto :goto_310
:cond_319
move-object/from16 v0, p2
move-object/from16 v1, p1
invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
goto/16 :goto_38
:cond_322
const-string v17, "enum"
invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v17
if-eqz v17, :cond_38
:try_start_32a
const-string v17, "enumType"
move-object/from16 v0, v17
invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v6
const-string v17, "value"
move-object/from16 v0, v17
invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v17
move-object/from16 v0, v17
invoke-static {v6, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v8
move-object/from16 v0, p2
move-object/from16 v1, p1
invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
:try_end_34b
.catch Ljava/lang/ClassNotFoundException; {:try_start_32a .. :try_end_34b} :catch_34d
.catch Ljava/lang/IllegalArgumentException; {:try_start_32a .. :try_end_34b} :catch_350
goto/16 :goto_38
:catch_34d
move-exception v17
goto/16 :goto_38
:catch_350
move-exception v17
goto/16 :goto_38
.end method
.method private serializeKey(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;)V
.registers 20
move-object/from16 v0, p2
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v12
if-nez v12, :cond_b
:cond_a
:goto_a
return-void
:cond_b
const/4 v9, 0x0
const/4 v5, 0x0
new-instance v4, Lorg/json/JSONObject;
invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
instance-of v13, v12, Ljava/lang/Byte;
if-eqz v13, :cond_3d
const-string v9, "byte"
const-string v13, "value"
check-cast v12, Ljava/lang/Byte;
invoke-virtual {v12}, Ljava/lang/Byte;->intValue()I
move-result v14
invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
:goto_23
:cond_23
if-eqz v9, :cond_a
const-string v13, "valueType"
invoke-virtual {v4, v13, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
if-eqz v5, :cond_31
const-string v13, "value"
invoke-virtual {v4, v13, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_31
invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v6
move-object/from16 v0, p3
move-object/from16 v1, p1
invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
goto :goto_a
:cond_3d
instance-of v13, v12, Ljava/lang/Short;
if-eqz v13, :cond_4f
const-string v9, "short"
const-string v13, "value"
check-cast v12, Ljava/lang/Short;
invoke-virtual {v12}, Ljava/lang/Short;->intValue()I
move-result v14
invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
goto :goto_23
:cond_4f
instance-of v13, v12, Ljava/lang/Integer;
if-eqz v13, :cond_61
const-string v9, "int"
const-string v13, "value"
check-cast v12, Ljava/lang/Integer;
invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I
move-result v14
invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
goto :goto_23
:cond_61
instance-of v13, v12, Ljava/lang/Long;
if-eqz v13, :cond_73
const-string v9, "long"
const-string v13, "value"
check-cast v12, Ljava/lang/Long;
invoke-virtual {v12}, Ljava/lang/Long;->longValue()J
move-result-wide v14
invoke-virtual {v4, v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
goto :goto_23
:cond_73
instance-of v13, v12, Ljava/lang/Float;
if-eqz v13, :cond_85
const-string v9, "float"
const-string v13, "value"
check-cast v12, Ljava/lang/Float;
invoke-virtual {v12}, Ljava/lang/Float;->doubleValue()D
move-result-wide v14
invoke-virtual {v4, v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
goto :goto_23
:cond_85
instance-of v13, v12, Ljava/lang/Double;
if-eqz v13, :cond_97
const-string v9, "double"
const-string v13, "value"
check-cast v12, Ljava/lang/Double;
invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D
move-result-wide v14
invoke-virtual {v4, v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
goto :goto_23
:cond_97
instance-of v13, v12, Ljava/lang/Boolean;
if-eqz v13, :cond_aa
const-string v9, "bool"
const-string v13, "value"
check-cast v12, Ljava/lang/Boolean;
invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z
move-result v14
invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
goto/16 :goto_23
:cond_aa
instance-of v13, v12, Ljava/lang/Character;
if-eqz v13, :cond_bb
const-string v9, "char"
const-string v13, "value"
invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v14
invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto/16 :goto_23
:cond_bb
instance-of v13, v12, Ljava/lang/String;
if-eqz v13, :cond_c8
const-string v9, "string"
const-string v13, "value"
invoke-virtual {v4, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto/16 :goto_23
:cond_c8
instance-of v13, v12, Ljava/lang/Enum;
if-eqz v13, :cond_e6
const-string v9, "enum"
const-string v13, "value"
invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v14
invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v13, "enumType"
invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v14
invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto/16 :goto_23
:cond_e6
new-instance v5, Lorg/json/JSONArray;
invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V
instance-of v13, v12, [B
if-eqz v13, :cond_102
const-string v9, "byte[]"
check-cast v12, [B
move-object v2, v12
check-cast v2, [B
array-length v7, v2
const/4 v3, 0x0
:goto_f8
if-ge v3, v7, :cond_23
aget-byte v10, v2, v3
invoke-virtual {v5, v10}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;
add-int/lit8 v3, v3, 0x1
goto :goto_f8
:cond_102
instance-of v13, v12, [S
if-eqz v13, :cond_119
const-string v9, "short[]"
check-cast v12, [S
move-object v2, v12
check-cast v2, [S
array-length v7, v2
const/4 v3, 0x0
:goto_10f
if-ge v3, v7, :cond_23
aget-short v10, v2, v3
invoke-virtual {v5, v10}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;
add-int/lit8 v3, v3, 0x1
goto :goto_10f
:cond_119
instance-of v13, v12, [I
if-eqz v13, :cond_130
const-string v9, "int[]"
check-cast v12, [I
move-object v2, v12
check-cast v2, [I
array-length v7, v2
const/4 v3, 0x0
:goto_126
if-ge v3, v7, :cond_23
aget v10, v2, v3
invoke-virtual {v5, v10}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;
add-int/lit8 v3, v3, 0x1
goto :goto_126
:cond_130
instance-of v13, v12, [J
if-eqz v13, :cond_147
const-string v9, "long[]"
check-cast v12, [J
move-object v2, v12
check-cast v2, [J
array-length v7, v2
const/4 v3, 0x0
:goto_13d
if-ge v3, v7, :cond_23
aget-wide v10, v2, v3
invoke-virtual {v5, v10, v11}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;
add-int/lit8 v3, v3, 0x1
goto :goto_13d
:cond_147
instance-of v13, v12, [F
if-eqz v13, :cond_15f
const-string v9, "float[]"
check-cast v12, [F
move-object v2, v12
check-cast v2, [F
array-length v7, v2
const/4 v3, 0x0
:goto_154
if-ge v3, v7, :cond_23
aget v10, v2, v3
float-to-double v13, v10
invoke-virtual {v5, v13, v14}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;
add-int/lit8 v3, v3, 0x1
goto :goto_154
:cond_15f
instance-of v13, v12, [D
if-eqz v13, :cond_176
const-string v9, "double[]"
check-cast v12, [D
move-object v2, v12
check-cast v2, [D
array-length v7, v2
const/4 v3, 0x0
:goto_16c
if-ge v3, v7, :cond_23
aget-wide v10, v2, v3
invoke-virtual {v5, v10, v11}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;
add-int/lit8 v3, v3, 0x1
goto :goto_16c
:cond_176
instance-of v13, v12, [Z
if-eqz v13, :cond_18d
const-string v9, "bool[]"
check-cast v12, [Z
move-object v2, v12
check-cast v2, [Z
array-length v7, v2
const/4 v3, 0x0
:goto_183
if-ge v3, v7, :cond_23
aget-boolean v10, v2, v3
invoke-virtual {v5, v10}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;
add-int/lit8 v3, v3, 0x1
goto :goto_183
:cond_18d
instance-of v13, v12, [C
if-eqz v13, :cond_1a8
const-string v9, "char[]"
check-cast v12, [C
move-object v2, v12
check-cast v2, [C
array-length v7, v2
const/4 v3, 0x0
:goto_19a
if-ge v3, v7, :cond_23
aget-char v10, v2, v3
invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;
move-result-object v13
invoke-virtual {v5, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
add-int/lit8 v3, v3, 0x1
goto :goto_19a
:cond_1a8
instance-of v13, v12, Ljava/util/List;
if-eqz v13, :cond_1c9
const-string v9, "stringList"
move-object v8, v12
check-cast v8, Ljava/util/List;
invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_1b5
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v13
if-eqz v13, :cond_23
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v10
check-cast v10, Ljava/lang/String;
if-nez v10, :cond_1c5
sget-object v10, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
:cond_1c5
invoke-virtual {v5, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
goto :goto_1b5
:cond_1c9
const/4 v5, 0x0
goto/16 :goto_23
.end method
.method public clear()V
.registers 2
iget-object v0, p0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->cache:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public load()Landroid/os/Bundle;
.registers 11
new-instance v4, Landroid/os/Bundle;
invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
iget-object v5, p0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->cache:Landroid/content/SharedPreferences;
invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v5
invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_13
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_4a
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
:try_start_1f
invoke-direct {p0, v3, v4}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->deserializeKey(Ljava/lang/String;Landroid/os/Bundle;)V
:try_end_22
.catch Lorg/json/JSONException; {:try_start_1f .. :try_end_22} :catch_23
goto :goto_13
:catch_23
move-exception v1
sget-object v5, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;
const/4 v6, 0x5
sget-object v7, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->TAG:Ljava/lang/String;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Error reading cached value for key: \'"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, "\' -- "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v5, v6, v7, v8}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V
const/4 v4, 0x0
:cond_4a
return-object v4
.end method
.method public save(Landroid/os/Bundle;)V
.registers 12
const/4 v9, 0x5
const-string v5, "bundle"
invoke-static {p1, v5}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V
iget-object v5, p0, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->cache:Landroid/content/SharedPreferences;
invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v5
invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_14
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_4a
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
:try_start_20
invoke-direct {p0, v3, p1, v1}, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->serializeKey(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;)V
:try_end_23
.catch Lorg/json/JSONException; {:try_start_20 .. :try_end_23} :catch_24
goto :goto_14
:catch_24
move-exception v0
sget-object v5, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;
sget-object v6, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->TAG:Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Error processing value for key: \'"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, "\' -- "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v5, v9, v6, v7}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V
:cond_49
:goto_49
return-void
:cond_4a
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v4
if-nez v4, :cond_49
sget-object v5, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;
sget-object v6, Lcom/facebook/SharedPreferencesTokenCachingStrategy;->TAG:Ljava/lang/String;
const-string v7, "SharedPreferences.Editor.commit() was not successful"
invoke-static {v5, v9, v6, v7}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V
goto :goto_49
.end method