.class public final Lcom/google/zxing/oned/CodaBarWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "CodaBarWriter.java"
.field private static final ALT_START_END_CHARS:[C
.field private static final CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C
.field private static final START_END_CHARS:[C
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x4
new-array v0, v1, [C
fill-array-data v0, :array_18
sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C
new-array v0, v1, [C
fill-array-data v0, :array_20
sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C
new-array v0, v1, [C
fill-array-data v0, :array_28
sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C
return-void
nop
:array_20
.array-data 0x2
0x54t 0x0t
0x4et 0x0t
0x2at 0x0t
0x45t 0x0t
.end array-data
:array_28
.array-data 0x2
0x2ft 0x0t
0x3at 0x0t
0x2bt 0x0t
0x2et 0x0t
.end array-data
:array_18
.array-data 0x2
0x41t 0x0t
0x42t 0x0t
0x43t 0x0t
0x44t 0x0t
.end array-data
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V
return-void
.end method
.method public encode(Ljava/lang/String;)[Z
.registers 20
invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
move-result v15
const/16 v16, 0x2
move/from16 v0, v16
if-ge v15, v0, :cond_13
new-instance v15, Ljava/lang/IllegalArgumentException;
const-string/jumbo v16, "Codabar should start/end with start/stop symbols"
invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v15
:cond_13
const/4 v15, 0x0
move-object/from16 v0, p1
invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C
move-result v15
invoke-static {v15}, Ljava/lang/Character;->toUpperCase(C)C
move-result v6
invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
move-result v15
add-int/lit8 v15, v15, -0x1
move-object/from16 v0, p1
invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C
move-result v15
invoke-static {v15}, Ljava/lang/Character;->toUpperCase(C)C
move-result v9
sget-object v15, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C
invoke-static {v15, v6}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z
move-result v15
if-eqz v15, :cond_85
sget-object v15, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C
invoke-static {v15, v9}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z
move-result v15
if-eqz v15, :cond_85
const/4 v14, 0x1
:goto_3f
sget-object v15, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C
invoke-static {v15, v6}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z
move-result v15
if-eqz v15, :cond_87
sget-object v15, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C
invoke-static {v15, v9}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z
move-result v15
if-eqz v15, :cond_87
const/4 v13, 0x1
:goto_50
if-nez v14, :cond_89
if-nez v13, :cond_89
new-instance v15, Ljava/lang/IllegalArgumentException;
new-instance v16, Ljava/lang/StringBuilder;
invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v17, "Codabar should start/end with "
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v16
sget-object v17, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C
invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;
move-result-object v17
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v16
const-string/jumbo v17, ", or start/end with "
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v16
sget-object v17, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C
invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;
move-result-object v17
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v16
invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v16
invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v15
:cond_85
const/4 v14, 0x0
goto :goto_3f
:cond_87
const/4 v13, 0x0
goto :goto_50
:cond_89
const/16 v12, 0x14
const/4 v7, 0x1
:goto_8c
invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
move-result v15
add-int/lit8 v15, v15, -0x1
if-ge v7, v15, :cond_f4
move-object/from16 v0, p1
invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C
move-result v15
invoke-static {v15}, Ljava/lang/Character;->isDigit(C)Z
move-result v15
if-nez v15, :cond_b8
move-object/from16 v0, p1
invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C
move-result v15
const/16 v16, 0x2d
move/from16 v0, v16
if-eq v15, v0, :cond_b8
move-object/from16 v0, p1
invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C
move-result v15
const/16 v16, 0x24
move/from16 v0, v16
if-ne v15, v0, :cond_bd
:cond_b8
add-int/lit8 v12, v12, 0x9
:goto_ba
add-int/lit8 v7, v7, 0x1
goto :goto_8c
:cond_bd
sget-object v15, Lcom/google/zxing/oned/CodaBarWriter;->CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C
move-object/from16 v0, p1
invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C
move-result v16
invoke-static/range {v15 .. v16}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z
move-result v15
if-eqz v15, :cond_ce
add-int/lit8 v12, v12, 0xa
goto :goto_ba
:cond_ce
new-instance v15, Ljava/lang/IllegalArgumentException;
new-instance v16, Ljava/lang/StringBuilder;
invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v17, "Cannot encode : \'"
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v16
move-object/from16 v0, p1
invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C
move-result v17
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v16
const/16 v17, 0x27
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v16
invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v16
invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v15
:cond_f4
invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
move-result v15
add-int/lit8 v15, v15, -0x1
add-int/2addr v12, v15
new-array v11, v12, [Z
const/4 v10, 0x0
const/4 v8, 0x0
:goto_ff
invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
move-result v15
if-ge v8, v15, :cond_16d
move-object/from16 v0, p1
invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C
move-result v15
invoke-static {v15}, Ljava/lang/Character;->toUpperCase(C)C
move-result v2
if-eqz v8, :cond_119
invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
move-result v15
add-int/lit8 v15, v15, -0x1
if-ne v8, v15, :cond_11c
:cond_119
sparse-switch v2, :sswitch_data_16e
:cond_11c
:goto_11c
const/4 v3, 0x0
const/4 v7, 0x0
:goto_11e
sget-object v15, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C
array-length v15, v15
if-ge v7, v15, :cond_12d
sget-object v15, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C
aget-char v15, v15, v7
if-ne v2, v15, :cond_155
sget-object v15, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I
aget v3, v15, v7
:cond_12d
const/4 v4, 0x1
const/4 v5, 0x0
const/4 v1, 0x0
:goto_130
const/4 v15, 0x7
if-ge v1, v15, :cond_15d
aput-boolean v4, v11, v10
add-int/lit8 v10, v10, 0x1
rsub-int/lit8 v15, v1, 0x6
shr-int v15, v3, v15
and-int/lit8 v15, v15, 0x1
if-eqz v15, :cond_142
const/4 v15, 0x1
if-ne v5, v15, :cond_15a
:cond_142
if-nez v4, :cond_158
const/4 v4, 0x1
:goto_145
add-int/lit8 v1, v1, 0x1
const/4 v5, 0x0
goto :goto_130
:sswitch_149
const/16 v2, 0x41
goto :goto_11c
:sswitch_14c
const/16 v2, 0x42
goto :goto_11c
:sswitch_14f
const/16 v2, 0x43
goto :goto_11c
:sswitch_152
const/16 v2, 0x44
goto :goto_11c
:cond_155
add-int/lit8 v7, v7, 0x1
goto :goto_11e
:cond_158
const/4 v4, 0x0
goto :goto_145
:cond_15a
add-int/lit8 v5, v5, 0x1
goto :goto_130
:cond_15d
invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
move-result v15
add-int/lit8 v15, v15, -0x1
if-ge v8, v15, :cond_16a
const/4 v15, 0x0
aput-boolean v15, v11, v10
add-int/lit8 v10, v10, 0x1
:cond_16a
add-int/lit8 v8, v8, 0x1
goto :goto_ff
:cond_16d
return-object v11
:sswitch_data_16e
.sparse-switch
0x2a -> :sswitch_14f
0x45 -> :sswitch_152
0x4e -> :sswitch_14c
0x54 -> :sswitch_149
.end sparse-switch
.end method