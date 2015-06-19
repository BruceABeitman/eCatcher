.class public final Lcom/google/zxing/c/b/a;
.super Ljava/lang/Object;
.source "Detector.java"
.field public final a:Lcom/google/zxing/b/b;
.field public final b:Lcom/google/zxing/b/a/b;
.method public constructor <init>(Lcom/google/zxing/b/b;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/zxing/c/b/a;->a:Lcom/google/zxing/b/b;
new-instance v0, Lcom/google/zxing/b/a/b;
invoke-direct {v0, p1}, Lcom/google/zxing/b/a/b;-><init>(Lcom/google/zxing/b/b;)V
iput-object v0, p0, Lcom/google/zxing/c/b/a;->b:Lcom/google/zxing/b/a/b;
return-void
.end method
.method public static a(Lcom/google/zxing/o;Lcom/google/zxing/o;)I
.registers 4
invoke-static {p0, p1}, Lcom/google/zxing/o;->a(Lcom/google/zxing/o;Lcom/google/zxing/o;)F
move-result v0
const/high16 v1, 0x3f00
add-float/2addr v0, v1
float-to-int v0, v0
return v0
.end method
.method public static a(Lcom/google/zxing/b/b;Lcom/google/zxing/o;Lcom/google/zxing/o;Lcom/google/zxing/o;Lcom/google/zxing/o;II)Lcom/google/zxing/b/b;
.registers 28
invoke-static {}, Lcom/google/zxing/b/i;->a()Lcom/google/zxing/b/i;
move-result-object v1
const/high16 v5, 0x3f00
const/high16 v6, 0x3f00
move/from16 v0, p5
int-to-float v2, v0
const/high16 v3, 0x3f00
sub-float v7, v2, v3
const/high16 v8, 0x3f00
move/from16 v0, p5
int-to-float v2, v0
const/high16 v3, 0x3f00
sub-float v9, v2, v3
move/from16 v0, p6
int-to-float v2, v0
const/high16 v3, 0x3f00
sub-float v10, v2, v3
const/high16 v11, 0x3f00
move/from16 v0, p6
int-to-float v2, v0
const/high16 v3, 0x3f00
sub-float v12, v2, v3
move-object/from16 v0, p1
iget v13, v0, Lcom/google/zxing/o;->a:F
move-object/from16 v0, p1
iget v14, v0, Lcom/google/zxing/o;->b:F
move-object/from16 v0, p4
iget v15, v0, Lcom/google/zxing/o;->a:F
move-object/from16 v0, p4
iget v0, v0, Lcom/google/zxing/o;->b:F
move/from16 v16, v0
move-object/from16 v0, p3
iget v0, v0, Lcom/google/zxing/o;->a:F
move/from16 v17, v0
move-object/from16 v0, p3
iget v0, v0, Lcom/google/zxing/o;->b:F
move/from16 v18, v0
move-object/from16 v0, p2
iget v0, v0, Lcom/google/zxing/o;->a:F
move/from16 v19, v0
move-object/from16 v0, p2
iget v0, v0, Lcom/google/zxing/o;->b:F
move/from16 v20, v0
move-object/from16 v2, p0
move/from16 v3, p5
move/from16 v4, p6
invoke-virtual/range {v1 .. v20}, Lcom/google/zxing/b/i;->a(Lcom/google/zxing/b/b;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/b/b;
move-result-object v1
return-object v1
.end method
.method public static a(Ljava/util/Map;Lcom/google/zxing/o;)V
.registers 3
invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
if-nez v0, :cond_11
const/4 v0, 0x1
:goto_9
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
:cond_11
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
add-int/lit8 v0, v0, 0x1
goto :goto_9
.end method
.method public final a(Lcom/google/zxing/o;)Z
.registers 5
const/4 v2, 0x0
iget v0, p1, Lcom/google/zxing/o;->a:F
cmpl-float v0, v0, v2
if-ltz v0, :cond_25
iget v0, p1, Lcom/google/zxing/o;->a:F
iget-object v1, p0, Lcom/google/zxing/c/b/a;->a:Lcom/google/zxing/b/b;
iget v1, v1, Lcom/google/zxing/b/b;->a:I
int-to-float v1, v1
cmpg-float v0, v0, v1
if-gez v0, :cond_25
iget v0, p1, Lcom/google/zxing/o;->b:F
cmpl-float v0, v0, v2
if-lez v0, :cond_25
iget v0, p1, Lcom/google/zxing/o;->b:F
iget-object v1, p0, Lcom/google/zxing/c/b/a;->a:Lcom/google/zxing/b/b;
iget v1, v1, Lcom/google/zxing/b/b;->b:I
int-to-float v1, v1
cmpg-float v0, v0, v1
if-gez v0, :cond_25
const/4 v0, 0x1
:goto_24
return v0
:cond_25
const/4 v0, 0x0
goto :goto_24
.end method
.method public final b(Lcom/google/zxing/o;Lcom/google/zxing/o;)Lcom/google/zxing/c/b/b;
.registers 22
move-object/from16 v0, p1
iget v2, v0, Lcom/google/zxing/o;->a:F
float-to-int v4, v2
move-object/from16 v0, p1
iget v2, v0, Lcom/google/zxing/o;->b:F
float-to-int v5, v2
move-object/from16 v0, p2
iget v2, v0, Lcom/google/zxing/o;->a:F
float-to-int v2, v2
move-object/from16 v0, p2
iget v3, v0, Lcom/google/zxing/o;->b:F
float-to-int v3, v3
sub-int v6, v3, v5
invoke-static {v6}, Ljava/lang/Math;->abs(I)I
move-result v6
sub-int v7, v2, v4
invoke-static {v7}, Ljava/lang/Math;->abs(I)I
move-result v7
if-le v6, v7, :cond_71
const/4 v6, 0x1
move v13, v6
:goto_24
if-eqz v13, :cond_8d
:goto_26
sub-int v6, v3, v5
invoke-static {v6}, Ljava/lang/Math;->abs(I)I
move-result v14
sub-int v6, v2, v4
invoke-static {v6}, Ljava/lang/Math;->abs(I)I
move-result v15
neg-int v6, v14
shr-int/lit8 v10, v6, 0x1
if-ge v4, v2, :cond_74
const/4 v6, 0x1
move v12, v6
:goto_39
if-ge v5, v3, :cond_77
const/4 v6, 0x1
:goto_3c
const/4 v8, 0x0
move-object/from16 v0, p0
iget-object v11, v0, Lcom/google/zxing/c/b/a;->a:Lcom/google/zxing/b/b;
if-eqz v13, :cond_79
move v9, v4
:goto_44
if-eqz v13, :cond_7b
move v7, v5
:goto_47
invoke-virtual {v11, v9, v7}, Lcom/google/zxing/b/b;->a(II)Z
move-result v9
move v11, v10
move v7, v4
:goto_4d
if-eq v5, v3, :cond_81
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/zxing/c/b/a;->a:Lcom/google/zxing/b/b;
move-object/from16 v16, v0
if-eqz v13, :cond_7d
move v10, v7
:goto_58
if-eqz v13, :cond_7f
move v4, v5
:goto_5b
move-object/from16 v0, v16
invoke-virtual {v0, v10, v4}, Lcom/google/zxing/b/b;->a(II)Z
move-result v4
if-eq v4, v9, :cond_66
add-int/lit8 v8, v8, 0x1
move v9, v4
:cond_66
add-int v4, v11, v15
if-lez v4, :cond_6e
if-eq v7, v2, :cond_81
add-int/2addr v7, v12
sub-int/2addr v4, v14
:cond_6e
add-int/2addr v5, v6
move v11, v4
goto :goto_4d
:cond_71
const/4 v6, 0x0
move v13, v6
goto :goto_24
:cond_74
const/4 v6, -0x1
move v12, v6
goto :goto_39
:cond_77
const/4 v6, -0x1
goto :goto_3c
:cond_79
move v9, v5
goto :goto_44
:cond_7b
move v7, v4
goto :goto_47
:cond_7d
move v10, v5
goto :goto_58
:cond_7f
move v4, v7
goto :goto_5b
:cond_81
move v2, v8
new-instance v3, Lcom/google/zxing/c/b/b;
const/4 v4, 0x0
move-object/from16 v0, p1
move-object/from16 v1, p2
invoke-direct {v3, v0, v1, v2, v4}, Lcom/google/zxing/c/b/b;-><init>(Lcom/google/zxing/o;Lcom/google/zxing/o;IB)V
return-object v3
:cond_8d
move/from16 v17, v3
move v3, v2
move/from16 v2, v17
move/from16 v18, v5
move v5, v4
move/from16 v4, v18
goto :goto_26
.end method