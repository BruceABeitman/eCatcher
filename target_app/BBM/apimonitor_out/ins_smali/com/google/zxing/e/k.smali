.class public abstract Lcom/google/zxing/e/k;
.super Ljava/lang/Object;
.source "OneDReader.java"
.implements Lcom/google/zxing/k;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a([I[II)I
.registers 12
const v0, 0x7fffffff
const/4 v1, 0x0
array-length v5, p0
move v2, v1
move v3, v1
move v4, v1
:goto_8
if-ge v2, v5, :cond_13
aget v6, p0, v2
add-int/2addr v4, v6
aget v6, p1, v2
add-int/2addr v3, v6
add-int/lit8 v2, v2, 0x1
goto :goto_8
:cond_13
if-ge v4, v3, :cond_16
:cond_15
:goto_15
return v0
:cond_16
shl-int/lit8 v2, v4, 0x8
div-int v6, v2, v3
mul-int v2, p2, v6
shr-int/lit8 v7, v2, 0x8
move v2, v1
move v3, v1
:goto_20
if-ge v2, v5, :cond_36
aget v1, p0, v2
shl-int/lit8 v1, v1, 0x8
aget v8, p1, v2
mul-int/2addr v8, v6
if-le v1, v8, :cond_33
sub-int/2addr v1, v8
:goto_2c
if-gt v1, v7, :cond_15
add-int/2addr v3, v1
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_20
:cond_33
sub-int v1, v8, v1
goto :goto_2c
:cond_36
div-int v0, v3, v4
goto :goto_15
.end method
.method public static a(Lcom/google/zxing/b/a;I[I)V
.registers 11
const/4 v1, 0x1
const/4 v2, 0x0
array-length v5, p2
invoke-static {p2, v2, v5, v2}, Ljava/util/Arrays;->fill([IIII)V
iget v6, p0, Lcom/google/zxing/b/a;->b:I
if-lt p1, v6, :cond_f
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
:cond_f
invoke-virtual {p0, p1}, Lcom/google/zxing/b/a;->a(I)Z
move-result v0
if-nez v0, :cond_2c
move v0, v1
:goto_16
move v4, v0
move v0, v2
:goto_18
if-ge p1, v6, :cond_3d
invoke-virtual {p0, p1}, Lcom/google/zxing/b/a;->a(I)Z
move-result v3
xor-int/2addr v3, v4
if-eqz v3, :cond_2e
aget v3, p2, v0
add-int/lit8 v3, v3, 0x1
aput v3, p2, v0
move v3, v4
:goto_28
add-int/lit8 p1, p1, 0x1
move v4, v3
goto :goto_18
:cond_2c
move v0, v2
goto :goto_16
:cond_2e
add-int/lit8 v3, v0, 0x1
if-eq v3, v5, :cond_3e
aput v1, p2, v3
if-nez v4, :cond_3b
move v0, v1
:goto_37
move v7, v3
move v3, v0
move v0, v7
goto :goto_28
:cond_3b
move v0, v2
goto :goto_37
:cond_3d
move v3, v0
:cond_3e
if-eq v3, v5, :cond_4b
add-int/lit8 v0, v5, -0x1
if-ne v3, v0, :cond_46
if-eq p1, v6, :cond_4b
:cond_46
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
:cond_4b
return-void
.end method
.method private b(Lcom/google/zxing/c;Ljava/util/Map;)Lcom/google/zxing/m;
.registers 20
move-object/from16 v0, p1
iget-object v1, v0, Lcom/google/zxing/c;->a:Lcom/google/zxing/b;
iget-object v1, v1, Lcom/google/zxing/b;->a:Lcom/google/zxing/g;
iget v8, v1, Lcom/google/zxing/g;->a:I
move-object/from16 v0, p1
iget-object v1, v0, Lcom/google/zxing/c;->a:Lcom/google/zxing/b;
iget-object v1, v1, Lcom/google/zxing/b;->a:Lcom/google/zxing/g;
iget v2, v1, Lcom/google/zxing/g;->b:I
new-instance v4, Lcom/google/zxing/b/a;
invoke-direct {v4, v8}, Lcom/google/zxing/b/a;-><init>(I)V
shr-int/lit8 v9, v2, 0x1
if-eqz p2, :cond_d8
sget-object v1, Lcom/google/zxing/e;->d:Lcom/google/zxing/e;
move-object/from16 v0, p2
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_d8
const/4 v1, 0x1
move v3, v1
:goto_25
const/4 v5, 0x1
if-eqz v3, :cond_dc
const/16 v1, 0x8
:goto_2a
shr-int v1, v2, v1
invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I
move-result v10
if-eqz v3, :cond_df
move v1, v2
:goto_33
const/4 v3, 0x0
move v7, v3
move-object v3, v4
move-object/from16 v4, p2
:goto_38
if-ge v7, v1, :cond_f5
add-int/lit8 v5, v7, 0x1
shr-int/lit8 v5, v5, 0x1
and-int/lit8 v6, v7, 0x1
if-nez v6, :cond_e3
const/4 v6, 0x1
:goto_43
if-eqz v6, :cond_e6
:goto_45
mul-int/2addr v5, v10
add-int v11, v9, v5
if-ltz v11, :cond_f5
if-ge v11, v2, :cond_f5
:try_start_4c
move-object/from16 v0, p1
iget-object v5, v0, Lcom/google/zxing/c;->a:Lcom/google/zxing/b;
invoke-virtual {v5, v11, v3}, Lcom/google/zxing/b;->a(ILcom/google/zxing/b/a;)Lcom/google/zxing/b/a;
:try_end_53
.catch Lcom/google/zxing/i; {:try_start_4c .. :try_end_53} :catch_ef
move-result-object v3
const/4 v5, 0x0
move v6, v5
:goto_56
const/4 v5, 0x2
if-ge v6, v5, :cond_f0
const/4 v5, 0x1
if-ne v6, v5, :cond_79
invoke-virtual {v3}, Lcom/google/zxing/b/a;->b()V
if-eqz v4, :cond_79
sget-object v5, Lcom/google/zxing/e;->h:Lcom/google/zxing/e;
invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_79
new-instance v5, Ljava/util/EnumMap;
const-class v12, Lcom/google/zxing/e;
invoke-direct {v5, v12}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V
invoke-interface {v5, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
sget-object v4, Lcom/google/zxing/e;->h:Lcom/google/zxing/e;
invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-object v4, v5
:cond_79
:try_start_79
move-object/from16 v0, p0
invoke-virtual {v0, v11, v3, v4}, Lcom/google/zxing/e/k;->a(ILcom/google/zxing/b/a;Ljava/util/Map;)Lcom/google/zxing/m;
move-result-object v5
const/4 v12, 0x1
if-ne v6, v12, :cond_d7
sget-object v12, Lcom/google/zxing/n;->b:Lcom/google/zxing/n;
const/16 v13, 0xb4
invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
invoke-virtual {v5, v12, v13}, Lcom/google/zxing/m;->a(Lcom/google/zxing/n;Ljava/lang/Object;)V
iget-object v12, v5, Lcom/google/zxing/m;->c:[Lcom/google/zxing/o;
if-eqz v12, :cond_d7
const/4 v13, 0x0
new-instance v14, Lcom/google/zxing/o;
int-to-float v15, v8
const/16 v16, 0x0
aget-object v16, v12, v16
move-object/from16 v0, v16
iget v0, v0, Lcom/google/zxing/o;->a:F
move/from16 v16, v0
sub-float v15, v15, v16
const/high16 v16, 0x3f80
sub-float v15, v15, v16
const/16 v16, 0x0
aget-object v16, v12, v16
move-object/from16 v0, v16
iget v0, v0, Lcom/google/zxing/o;->b:F
move/from16 v16, v0
invoke-direct/range {v14 .. v16}, Lcom/google/zxing/o;-><init>(FF)V
aput-object v14, v12, v13
const/4 v13, 0x1
new-instance v14, Lcom/google/zxing/o;
int-to-float v15, v8
const/16 v16, 0x1
aget-object v16, v12, v16
move-object/from16 v0, v16
iget v0, v0, Lcom/google/zxing/o;->a:F
move/from16 v16, v0
sub-float v15, v15, v16
const/high16 v16, 0x3f80
sub-float v15, v15, v16
const/16 v16, 0x1
aget-object v16, v12, v16
move-object/from16 v0, v16
iget v0, v0, Lcom/google/zxing/o;->b:F
move/from16 v16, v0
invoke-direct/range {v14 .. v16}, Lcom/google/zxing/o;-><init>(FF)V
aput-object v14, v12, v13
:try_end_d7
.catch Lcom/google/zxing/l; {:try_start_79 .. :try_end_d7} :catch_e9
:cond_d7
return-object v5
:cond_d8
const/4 v1, 0x0
move v3, v1
goto/16 :goto_25
:cond_dc
const/4 v1, 0x5
goto/16 :goto_2a
:cond_df
const/16 v1, 0xf
goto/16 :goto_33
:cond_e3
const/4 v6, 0x0
goto/16 :goto_43
:cond_e6
neg-int v5, v5
goto/16 :goto_45
:catch_e9
move-exception v5
add-int/lit8 v5, v6, 0x1
move v6, v5
goto/16 :goto_56
:catch_ef
move-exception v5
:cond_f0
add-int/lit8 v5, v7, 0x1
move v7, v5
goto/16 :goto_38
:cond_f5
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v1
throw v1
.end method
.method public static b(Lcom/google/zxing/b/a;I[I)V
.registers 6
array-length v1, p2
invoke-virtual {p0, p1}, Lcom/google/zxing/b/a;->a(I)Z
move-result v0
:cond_5
:goto_5
if-lez p1, :cond_19
if-ltz v1, :cond_19
add-int/lit8 p1, p1, -0x1
invoke-virtual {p0, p1}, Lcom/google/zxing/b/a;->a(I)Z
move-result v2
if-eq v2, v0, :cond_5
add-int/lit8 v1, v1, -0x1
if-nez v0, :cond_17
const/4 v0, 0x1
goto :goto_5
:cond_17
const/4 v0, 0x0
goto :goto_5
:cond_19
if-ltz v1, :cond_20
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
:cond_20
add-int/lit8 v0, p1, 0x1
invoke-static {p0, v0, p2}, Lcom/google/zxing/e/k;->a(Lcom/google/zxing/b/a;I[I)V
return-void
.end method
.method public abstract a(ILcom/google/zxing/b/a;Ljava/util/Map;)Lcom/google/zxing/m;
.end method
.method public a(Lcom/google/zxing/c;Ljava/util/Map;)Lcom/google/zxing/m;
.registers 5
:try_start_0
invoke-direct {p0, p1, p2}, Lcom/google/zxing/e/k;->b(Lcom/google/zxing/c;Ljava/util/Map;)Lcom/google/zxing/m;
:try_end_3
.catch Lcom/google/zxing/i; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v0
return-object v0
:catch_5
move-exception v1
if-eqz p2, :cond_18
sget-object v0, Lcom/google/zxing/e;->d:Lcom/google/zxing/e;
invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_18
const/4 v0, 0x1
:goto_11
if-eqz v0, :cond_17
iget-object v0, p1, Lcom/google/zxing/c;->a:Lcom/google/zxing/b;
iget-object v0, v0, Lcom/google/zxing/b;->a:Lcom/google/zxing/g;
:cond_17
throw v1
:cond_18
const/4 v0, 0x0
goto :goto_11
.end method
.method public a()V
.registers 1
return-void
.end method