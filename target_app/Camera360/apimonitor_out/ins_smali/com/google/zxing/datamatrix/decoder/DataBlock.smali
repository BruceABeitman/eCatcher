.class final Lcom/google/zxing/datamatrix/decoder/DataBlock;
.super Ljava/lang/Object;
.source "DataBlock.java"
.field private final codewords:[B
.field private final numDataCodewords:I
.method private constructor <init>(I[B)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I
iput-object p2, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B
return-void
.end method
.method static getDataBlocks([BLcom/google/zxing/datamatrix/decoder/Version;)[Lcom/google/zxing/datamatrix/decoder/DataBlock;
.registers 30
invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getECBlocks()Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
move-result-object v5
const/16 v24, 0x0
invoke-virtual {v5}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/datamatrix/decoder/Version$ECB;
move-result-object v4
move-object v2, v4
array-length v10, v2
const/4 v7, 0x0
:goto_d
if-ge v7, v10, :cond_1a
aget-object v3, v2, v7
invoke-virtual {v3}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I
move-result v25
add-int v24, v24, v25
add-int/lit8 v7, v7, 0x1
goto :goto_d
:cond_1a
move/from16 v0, v24
new-array v0, v0, [Lcom/google/zxing/datamatrix/decoder/DataBlock;
move-object/from16 v21, v0
const/16 v17, 0x0
move-object v2, v4
array-length v10, v2
const/4 v7, 0x0
:goto_25
if-ge v7, v10, :cond_55
aget-object v3, v2, v7
const/4 v6, 0x0
:goto_2a
invoke-virtual {v3}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I
move-result v25
move/from16 v0, v25
if-ge v6, v0, :cond_52
invoke-virtual {v3}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getDataCodewords()I
move-result v15
invoke-virtual {v5}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I
move-result v25
add-int v14, v25, v15
add-int/lit8 v18, v17, 0x1
new-instance v25, Lcom/google/zxing/datamatrix/decoder/DataBlock;
new-array v0, v14, [B
move-object/from16 v26, v0
move-object/from16 v0, v25
move-object/from16 v1, v26
invoke-direct {v0, v15, v1}, Lcom/google/zxing/datamatrix/decoder/DataBlock;-><init>(I[B)V
aput-object v25, v21, v17
add-int/lit8 v6, v6, 0x1
move/from16 v17, v18
goto :goto_2a
:cond_52
add-int/lit8 v7, v7, 0x1
goto :goto_25
:cond_55
const/16 v25, 0x0
aget-object v25, v21, v25
move-object/from16 v0, v25
iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B
move-object/from16 v25, v0
move-object/from16 v0, v25
array-length v12, v0
invoke-virtual {v5}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I
move-result v25
sub-int v11, v12, v25
add-int/lit8 v22, v11, -0x1
const/16 v19, 0x0
const/4 v6, 0x0
:goto_6d
move/from16 v0, v22
if-ge v6, v0, :cond_90
const/4 v9, 0x0
move/from16 v20, v19
:goto_74
move/from16 v0, v17
if-ge v9, v0, :cond_8b
aget-object v25, v21, v9
move-object/from16 v0, v25
iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B
move-object/from16 v25, v0
add-int/lit8 v19, v20, 0x1
aget-byte v26, p0, v20
aput-byte v26, v25, v6
add-int/lit8 v9, v9, 0x1
move/from16 v20, v19
goto :goto_74
:cond_8b
add-int/lit8 v6, v6, 0x1
move/from16 v19, v20
goto :goto_6d
:cond_90
invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getVersionNumber()I
move-result v25
const/16 v26, 0x18
move/from16 v0, v25
move/from16 v1, v26
if-ne v0, v1, :cond_be
const/16 v23, 0x1
:goto_9e
if-eqz v23, :cond_c1
const/16 v16, 0x8
:goto_a2
const/4 v9, 0x0
move/from16 v20, v19
:goto_a5
move/from16 v0, v16
if-ge v9, v0, :cond_c4
aget-object v25, v21, v9
move-object/from16 v0, v25
iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B
move-object/from16 v25, v0
add-int/lit8 v26, v11, -0x1
add-int/lit8 v19, v20, 0x1
aget-byte v27, p0, v20
aput-byte v27, v25, v26
add-int/lit8 v9, v9, 0x1
move/from16 v20, v19
goto :goto_a5
:cond_be
const/16 v23, 0x0
goto :goto_9e
:cond_c1
move/from16 v16, v17
goto :goto_a2
:cond_c4
const/16 v25, 0x0
aget-object v25, v21, v25
move-object/from16 v0, v25
iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B
move-object/from16 v25, v0
move-object/from16 v0, v25
array-length v13, v0
move v6, v11
move/from16 v19, v20
:goto_d4
if-ge v6, v13, :cond_101
const/4 v9, 0x0
move/from16 v20, v19
:goto_d9
move/from16 v0, v17
if-ge v9, v0, :cond_fc
if-eqz v23, :cond_fa
const/16 v25, 0x7
move/from16 v0, v25
if-le v9, v0, :cond_fa
add-int/lit8 v8, v6, -0x1
:goto_e7
aget-object v25, v21, v9
move-object/from16 v0, v25
iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B
move-object/from16 v25, v0
add-int/lit8 v19, v20, 0x1
aget-byte v26, p0, v20
aput-byte v26, v25, v8
add-int/lit8 v9, v9, 0x1
move/from16 v20, v19
goto :goto_d9
:cond_fa
move v8, v6
goto :goto_e7
:cond_fc
add-int/lit8 v6, v6, 0x1
move/from16 v19, v20
goto :goto_d4
:cond_101
move-object/from16 v0, p0
array-length v0, v0
move/from16 v25, v0
move/from16 v0, v19
move/from16 v1, v25
if-eq v0, v1, :cond_112
new-instance v25, Ljava/lang/IllegalArgumentException;
invoke-direct/range {v25 .. v25}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v25
:cond_112
return-object v21
.end method
.method  getCodewords()[B
.registers 2
iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B
return-object v0
.end method
.method  getNumDataCodewords()I
.registers 2
iget v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I
return v0
.end method