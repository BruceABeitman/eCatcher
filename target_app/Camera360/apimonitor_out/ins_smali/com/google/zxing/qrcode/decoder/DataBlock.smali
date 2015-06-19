.class final Lcom/google/zxing/qrcode/decoder/DataBlock;
.super Ljava/lang/Object;
.source "DataBlock.java"
.field private final codewords:[B
.field private final numDataCodewords:I
.method private constructor <init>(I[B)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I
iput-object p2, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B
return-void
.end method
.method static getDataBlocks([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/DataBlock;
.registers 29
move-object/from16 v0, p0
array-length v0, v0
move/from16 v24, v0
invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I
move-result v25
move/from16 v0, v24
move/from16 v1, v25
if-eq v0, v1, :cond_15
new-instance v24, Ljava/lang/IllegalArgumentException;
invoke-direct/range {v24 .. v24}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v24
:cond_15
invoke-virtual/range {p1 .. p2}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
move-result-object v5
const/16 v23, 0x0
invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/qrcode/decoder/Version$ECB;
move-result-object v4
move-object v2, v4
array-length v10, v2
const/4 v7, 0x0
:goto_22
if-ge v7, v10, :cond_2f
aget-object v3, v2, v7
invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I
move-result v24
add-int v23, v23, v24
add-int/lit8 v7, v7, 0x1
goto :goto_22
:cond_2f
move/from16 v0, v23
new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/DataBlock;
move-object/from16 v20, v0
const/16 v16, 0x0
move-object v2, v4
array-length v10, v2
const/4 v7, 0x0
:goto_3a
if-ge v7, v10, :cond_6a
aget-object v3, v2, v7
const/4 v6, 0x0
:goto_3f
invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I
move-result v24
move/from16 v0, v24
if-ge v6, v0, :cond_67
invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getDataCodewords()I
move-result v15
invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I
move-result v24
add-int v13, v24, v15
add-int/lit8 v17, v16, 0x1
new-instance v24, Lcom/google/zxing/qrcode/decoder/DataBlock;
new-array v0, v13, [B
move-object/from16 v25, v0
move-object/from16 v0, v24
move-object/from16 v1, v25
invoke-direct {v0, v15, v1}, Lcom/google/zxing/qrcode/decoder/DataBlock;-><init>(I[B)V
aput-object v24, v20, v16
add-int/lit8 v6, v6, 0x1
move/from16 v16, v17
goto :goto_3f
:cond_67
add-int/lit8 v7, v7, 0x1
goto :goto_3a
:cond_6a
const/16 v24, 0x0
aget-object v24, v20, v24
move-object/from16 v0, v24
iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B
move-object/from16 v24, v0
move-object/from16 v0, v24
array-length v0, v0
move/from16 v22, v0
move-object/from16 v0, v20
array-length v0, v0
move/from16 v24, v0
add-int/lit8 v11, v24, -0x1
:goto_80
if-ltz v11, :cond_91
aget-object v24, v20, v11
move-object/from16 v0, v24
iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B
move-object/from16 v24, v0
move-object/from16 v0, v24
array-length v14, v0
move/from16 v0, v22
if-ne v14, v0, :cond_ba
:cond_91
add-int/lit8 v11, v11, 0x1
invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I
move-result v24
sub-int v21, v22, v24
const/16 v18, 0x0
const/4 v6, 0x0
:goto_9c
move/from16 v0, v21
if-ge v6, v0, :cond_c2
const/4 v9, 0x0
move/from16 v19, v18
:goto_a3
move/from16 v0, v16
if-ge v9, v0, :cond_bd
aget-object v24, v20, v9
move-object/from16 v0, v24
iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B
move-object/from16 v24, v0
add-int/lit8 v18, v19, 0x1
aget-byte v25, p0, v19
aput-byte v25, v24, v6
add-int/lit8 v9, v9, 0x1
move/from16 v19, v18
goto :goto_a3
:cond_ba
add-int/lit8 v11, v11, -0x1
goto :goto_80
:cond_bd
add-int/lit8 v6, v6, 0x1
move/from16 v18, v19
goto :goto_9c
:cond_c2
move v9, v11
move/from16 v19, v18
:goto_c5
move/from16 v0, v16
if-ge v9, v0, :cond_dc
aget-object v24, v20, v9
move-object/from16 v0, v24
iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B
move-object/from16 v24, v0
add-int/lit8 v18, v19, 0x1
aget-byte v25, p0, v19
aput-byte v25, v24, v21
add-int/lit8 v9, v9, 0x1
move/from16 v19, v18
goto :goto_c5
:cond_dc
const/16 v24, 0x0
aget-object v24, v20, v24
move-object/from16 v0, v24
iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B
move-object/from16 v24, v0
move-object/from16 v0, v24
array-length v12, v0
move/from16 v6, v21
move/from16 v18, v19
:goto_ed
if-ge v6, v12, :cond_114
const/4 v9, 0x0
move/from16 v19, v18
:goto_f2
move/from16 v0, v16
if-ge v9, v0, :cond_10f
if-ge v9, v11, :cond_10c
move v8, v6
:goto_f9
aget-object v24, v20, v9
move-object/from16 v0, v24
iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B
move-object/from16 v24, v0
add-int/lit8 v18, v19, 0x1
aget-byte v25, p0, v19
aput-byte v25, v24, v8
add-int/lit8 v9, v9, 0x1
move/from16 v19, v18
goto :goto_f2
:cond_10c
add-int/lit8 v8, v6, 0x1
goto :goto_f9
:cond_10f
add-int/lit8 v6, v6, 0x1
move/from16 v18, v19
goto :goto_ed
:cond_114
return-object v20
.end method
.method  getCodewords()[B
.registers 2
iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B
return-object v0
.end method
.method  getNumDataCodewords()I
.registers 2
iget v0, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I
return v0
.end method