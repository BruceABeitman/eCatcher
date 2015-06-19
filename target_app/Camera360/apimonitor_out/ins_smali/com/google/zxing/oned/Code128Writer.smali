.class public final Lcom/google/zxing/oned/Code128Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code128Writer.java"
.field private static final CODE_CODE_B:I = 0x64
.field private static final CODE_CODE_C:I = 0x63
.field private static final CODE_FNC_1:I = 0x66
.field private static final CODE_FNC_2:I = 0x61
.field private static final CODE_FNC_3:I = 0x60
.field private static final CODE_FNC_4_B:I = 0x64
.field private static final CODE_START_B:I = 0x68
.field private static final CODE_START_C:I = 0x69
.field private static final CODE_STOP:I = 0x6a
.field private static final ESCAPE_FNC_1:C = '\u00f1'
.field private static final ESCAPE_FNC_2:C = '\u00f2'
.field private static final ESCAPE_FNC_3:C = '\u00f3'
.field private static final ESCAPE_FNC_4:C = '\u00f4'
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V
return-void
.end method
.method private static isDigits(Ljava/lang/CharSequence;II)Z
.registers 9
const/4 v4, 0x0
add-int v1, p1, p2
invoke-interface {p0}, Ljava/lang/CharSequence;->length()I
move-result v3
move v2, p1
:goto_8
if-ge v2, v1, :cond_22
if-ge v2, v3, :cond_22
invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C
move-result v0
const/16 v5, 0x30
if-lt v0, v5, :cond_18
const/16 v5, 0x39
if-le v0, v5, :cond_1f
:cond_18
const/16 v5, 0xf1
if-eq v0, v5, :cond_1d
:goto_1c
:cond_1c
return v4
:cond_1d
add-int/lit8 v1, v1, 0x1
:cond_1f
add-int/lit8 v2, v2, 0x1
goto :goto_8
:cond_22
if-gt v1, v3, :cond_1c
const/4 v4, 0x1
goto :goto_1c
.end method
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
.registers 9
sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;
if-eq p2, v0, :cond_1e
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "Can only encode CODE_128, but got "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1e
invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
move-result-object v0
return-object v0
.end method
.method public encode(Ljava/lang/String;)[Z
.registers 28
invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
move-result v13
const/16 v23, 0x1
move/from16 v0, v23
if-lt v13, v0, :cond_10
const/16 v23, 0x50
move/from16 v0, v23
if-le v13, v0, :cond_2c
:cond_10
new-instance v23, Ljava/lang/IllegalArgumentException;
new-instance v24, Ljava/lang/StringBuilder;
invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v25, "Contents length should be between 1 and 80 characters, but got "
invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
move-object/from16 v0, v24
invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v24
invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v24
invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v23
:cond_2c
const/4 v9, 0x0
:goto_2d
if-ge v9, v13, :cond_63
move-object/from16 v0, p1
invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C
move-result v4
const/16 v23, 0x20
move/from16 v0, v23
if-lt v4, v0, :cond_41
const/16 v23, 0x7e
move/from16 v0, v23
if-le v4, v0, :cond_60
:cond_41
packed-switch v4, :pswitch_data_14e
new-instance v23, Ljava/lang/IllegalArgumentException;
new-instance v24, Ljava/lang/StringBuilder;
invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v25, "Bad character in input: "
invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v24
move-object/from16 v0, v24
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v24
invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v24
invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v23
:pswitch_60
:cond_60
add-int/lit8 v9, v9, 0x1
goto :goto_2d
:cond_63
new-instance v17, Ljava/util/ArrayList;
invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V
const/4 v5, 0x0
const/4 v6, 0x1
const/4 v7, 0x0
const/16 v19, 0x0
:goto_6d
:cond_6d
move/from16 v0, v19
if-ge v0, v13, :cond_f1
const/16 v23, 0x63
move/from16 v0, v23
if-ne v7, v0, :cond_ba
const/16 v20, 0x2
:goto_79
move-object/from16 v0, p1
move/from16 v1, v19
move/from16 v2, v20
invoke-static {v0, v1, v2}, Lcom/google/zxing/oned/Code128Writer;->isDigits(Ljava/lang/CharSequence;II)Z
move-result v23
if-eqz v23, :cond_bd
const/16 v14, 0x63
:goto_87
if-ne v14, v7, :cond_df
move-object/from16 v0, p1
move/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v23
packed-switch v23, :pswitch_data_15a
const/16 v23, 0x64
move/from16 v0, v23
if-ne v7, v0, :cond_cc
move-object/from16 v0, p1
move/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v23
add-int/lit8 v16, v23, -0x20
:goto_a4
add-int/lit8 v19, v19, 0x1
:goto_a6
sget-object v23, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I
aget-object v23, v23, v16
move-object/from16 v0, v17
move-object/from16 v1, v23
invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
mul-int v23, v16, v6
add-int v5, v5, v23
if-eqz v19, :cond_6d
add-int/lit8 v6, v6, 0x1
goto :goto_6d
:cond_ba
const/16 v20, 0x4
goto :goto_79
:cond_bd
const/16 v14, 0x64
goto :goto_87
:pswitch_c0
const/16 v16, 0x66
goto :goto_a4
:pswitch_c3
const/16 v16, 0x61
goto :goto_a4
:pswitch_c6
const/16 v16, 0x60
goto :goto_a4
:pswitch_c9
const/16 v16, 0x64
goto :goto_a4
:cond_cc
add-int/lit8 v23, v19, 0x2
move-object/from16 v0, p1
move/from16 v1, v19
move/from16 v2, v23
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v23
invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v16
add-int/lit8 v19, v19, 0x1
goto :goto_a4
:cond_df
if-nez v7, :cond_ee
const/16 v23, 0x64
move/from16 v0, v23
if-ne v14, v0, :cond_eb
const/16 v16, 0x68
:goto_e9
move v7, v14
goto :goto_a6
:cond_eb
const/16 v16, 0x69
goto :goto_e9
:cond_ee
move/from16 v16, v14
goto :goto_e9
:cond_f1
rem-int/lit8 v5, v5, 0x67
sget-object v23, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I
aget-object v23, v23, v5
move-object/from16 v0, v17
move-object/from16 v1, v23
invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
sget-object v23, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I
const/16 v24, 0x6a
aget-object v23, v23, v24
move-object/from16 v0, v17
move-object/from16 v1, v23
invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
const/4 v8, 0x0
invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v10
:cond_110
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v23
if-eqz v23, :cond_128
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v15
check-cast v15, [I
move-object v3, v15
array-length v12, v3
const/4 v11, 0x0
:goto_11f
if-ge v11, v12, :cond_110
aget v22, v3, v11
add-int v8, v8, v22
add-int/lit8 v11, v11, 0x1
goto :goto_11f
:cond_128
new-array v0, v8, [Z
move-object/from16 v21, v0
const/16 v18, 0x0
invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v10
:goto_132
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v23
if-eqz v23, :cond_14d
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v15
check-cast v15, [I
const/16 v23, 0x1
move-object/from16 v0, v21
move/from16 v1, v18
move/from16 v2, v23
invoke-static {v0, v1, v15, v2}, Lcom/google/zxing/oned/Code128Writer;->appendPattern([ZI[IZ)I
move-result v23
add-int v18, v18, v23
goto :goto_132
:cond_14d
return-object v21
:pswitch_data_15a
.packed-switch 0xf1
:pswitch_c0
:pswitch_c3
:pswitch_c6
:pswitch_c9
.end packed-switch
:pswitch_data_14e
.packed-switch 0xf1
:pswitch_60
:pswitch_60
:pswitch_60
:pswitch_60
.end packed-switch
.end method