.class public final Lcom/google/zxing/client/a/l;
.super Lcom/google/zxing/client/a/u;
.source "ExpandedProductResultParser.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/zxing/client/a/u;-><init>()V
return-void
.end method
.method private static a(ILjava/lang/String;)Ljava/lang/String;
.registers 8
const/4 v1, 0x0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v3, 0x28
if-eq v0, v3, :cond_10
move-object v0, v1
:goto_f
return-object v0
:cond_10
add-int/lit8 v0, p0, 0x1
invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
const/4 v0, 0x0
:goto_17
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v4
if-ge v0, v4, :cond_3a
invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C
move-result v4
const/16 v5, 0x29
if-ne v4, v5, :cond_2a
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_f
:cond_2a
const/16 v5, 0x30
if-lt v4, v5, :cond_38
const/16 v5, 0x39
if-gt v4, v5, :cond_38
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_17
:cond_38
move-object v0, v1
goto :goto_f
:cond_3a
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_f
.end method
.method private static b(ILjava/lang/String;)Ljava/lang/String;
.registers 7
const/16 v4, 0x28
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
const/4 v0, 0x0
:goto_c
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v3
if-ge v0, v3, :cond_28
invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C
move-result v3
if-ne v3, v4, :cond_24
invoke-static {v0, v2}, Lcom/google/zxing/client/a/l;->a(ILjava/lang/String;)Ljava/lang/String;
move-result-object v3
if-nez v3, :cond_28
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:goto_21
add-int/lit8 v0, v0, 0x1
goto :goto_c
:cond_24
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_21
:cond_28
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final synthetic a(Lcom/google/zxing/m;)Lcom/google/zxing/client/a/q;
.registers 24
move-object/from16 v0, p1
iget-object v3, v0, Lcom/google/zxing/m;->d:Lcom/google/zxing/a;
sget-object v4, Lcom/google/zxing/a;->n:Lcom/google/zxing/a;
if-eq v3, v4, :cond_a
const/4 v3, 0x0
:goto_9
return-object v3
:cond_a
invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/a/l;->b(Lcom/google/zxing/m;)Ljava/lang/String;
move-result-object v19
if-nez v19, :cond_12
const/4 v3, 0x0
goto :goto_9
:cond_12
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
const/4 v8, 0x0
const/4 v9, 0x0
const/4 v10, 0x0
const/4 v11, 0x0
const/4 v12, 0x0
const/4 v13, 0x0
const/4 v14, 0x0
const/4 v15, 0x0
const/16 v16, 0x0
new-instance v17, Ljava/util/HashMap;
invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V
const/4 v3, 0x0
:goto_26
invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I
move-result v18
move/from16 v0, v18
if-ge v3, v0, :cond_25b
move-object/from16 v0, v19
invoke-static {v3, v0}, Lcom/google/zxing/client/a/l;->a(ILjava/lang/String;)Ljava/lang/String;
move-result-object v20
if-nez v20, :cond_38
const/4 v3, 0x0
goto :goto_9
:cond_38
invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I
move-result v18
add-int/lit8 v18, v18, 0x2
add-int v3, v3, v18
move-object/from16 v0, v19
invoke-static {v3, v0}, Lcom/google/zxing/client/a/l;->b(ILjava/lang/String;)Ljava/lang/String;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I
move-result v21
add-int v3, v3, v21
const-string v21, "00"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-eqz v21, :cond_5b
move-object/from16 v5, v18
goto :goto_26
:cond_5b
const-string v21, "01"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-eqz v21, :cond_6a
move-object/from16 v4, v18
goto :goto_26
:cond_6a
const-string v21, "10"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-eqz v21, :cond_79
move-object/from16 v6, v18
goto :goto_26
:cond_79
const-string v21, "11"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-eqz v21, :cond_88
move-object/from16 v7, v18
goto :goto_26
:cond_88
const-string v21, "13"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-eqz v21, :cond_97
move-object/from16 v8, v18
goto :goto_26
:cond_97
const-string v21, "15"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-eqz v21, :cond_a6
move-object/from16 v9, v18
goto :goto_26
:cond_a6
const-string v21, "17"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-eqz v21, :cond_b6
move-object/from16 v10, v18
goto/16 :goto_26
:cond_b6
const-string v21, "3100"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-nez v21, :cond_12e
const-string v21, "3101"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-nez v21, :cond_12e
const-string v21, "3102"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-nez v21, :cond_12e
const-string v21, "3103"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-nez v21, :cond_12e
const-string v21, "3104"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-nez v21, :cond_12e
const-string v21, "3105"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-nez v21, :cond_12e
const-string v21, "3106"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-nez v21, :cond_12e
const-string v21, "3107"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-nez v21, :cond_12e
const-string v21, "3108"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-nez v21, :cond_12e
const-string v21, "3109"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-eqz v21, :cond_13b
:cond_12e
const-string v12, "KG"
const/4 v11, 0x3
move-object/from16 v0, v20
invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v13
move-object/from16 v11, v18
goto/16 :goto_26
:cond_13b
const-string v21, "3200"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-nez v21, :cond_1b3
const-string v21, "3201"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-nez v21, :cond_1b3
const-string v21, "3202"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-nez v21, :cond_1b3
const-string v21, "3203"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-nez v21, :cond_1b3
const-string v21, "3204"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-nez v21, :cond_1b3
const-string v21, "3205"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-nez v21, :cond_1b3
const-string v21, "3206"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-nez v21, :cond_1b3
const-string v21, "3207"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-nez v21, :cond_1b3
const-string v21, "3208"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-nez v21, :cond_1b3
const-string v21, "3209"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-eqz v21, :cond_1c0
:cond_1b3
const-string v12, "LB"
const/4 v11, 0x3
move-object/from16 v0, v20
invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v13
move-object/from16 v11, v18
goto/16 :goto_26
:cond_1c0
const-string v21, "3920"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-nez v21, :cond_1f0
const-string v21, "3921"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-nez v21, :cond_1f0
const-string v21, "3922"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-nez v21, :cond_1f0
const-string v21, "3923"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-eqz v21, :cond_1fb
:cond_1f0
const/4 v14, 0x3
move-object/from16 v0, v20
invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v15
move-object/from16 v14, v18
goto/16 :goto_26
:cond_1fb
const-string v21, "3930"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-nez v21, :cond_22b
const-string v21, "3931"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-nez v21, :cond_22b
const-string v21, "3932"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-nez v21, :cond_22b
const-string v21, "3933"
move-object/from16 v0, v21
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-eqz v21, :cond_250
:cond_22b
invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I
move-result v14
const/4 v15, 0x4
if-ge v14, v15, :cond_235
const/4 v3, 0x0
goto/16 :goto_9
:cond_235
const/4 v14, 0x3
move-object/from16 v0, v18
invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v14
const/4 v15, 0x0
const/16 v16, 0x3
move-object/from16 v0, v18
move/from16 v1, v16
invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v16
const/4 v15, 0x3
move-object/from16 v0, v20
invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v15
goto/16 :goto_26
:cond_250
move-object/from16 v0, v17
move-object/from16 v1, v20
move-object/from16 v2, v18
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_26
:cond_25b
new-instance v3, Lcom/google/zxing/client/a/k;
invoke-direct/range {v3 .. v17}, Lcom/google/zxing/client/a/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
goto/16 :goto_9
.end method