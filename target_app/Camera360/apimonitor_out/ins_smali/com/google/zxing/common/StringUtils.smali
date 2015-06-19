.class public final Lcom/google/zxing/common/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"
.field private static final ASSUME_SHIFT_JIS:Z = false
.field private static final EUC_JP:Ljava/lang/String; = "EUC_JP"
.field public static final GB2312:Ljava/lang/String; = "GB2312"
.field private static final ISO88591:Ljava/lang/String; = "ISO8859_1"
.field private static final PLATFORM_DEFAULT_ENCODING:Ljava/lang/String; = null
.field public static final SHIFT_JIS:Ljava/lang/String; = "SJIS"
.field private static final UTF8:Ljava/lang/String; = "UTF8"
.method static constructor <clinit>()V
.registers 2
const-string/jumbo v0, "file.encoding"
invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;
const-string/jumbo v0, "SJIS"
sget-object v1, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1f
const-string/jumbo v0, "EUC_JP"
sget-object v1, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_23
:cond_1f
const/4 v0, 0x1
:goto_20
sput-boolean v0, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z
return-void
:cond_23
const/4 v0, 0x0
goto :goto_20
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static guessEncoding([BLjava/util/Map;)Ljava/lang/String;
.registers 25
if-eqz p1, :cond_11
sget-object v21, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;
move-object/from16 v0, p1
move-object/from16 v1, v21
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/lang/String;
if-eqz v5, :cond_11
:goto_10
return-object v5
:cond_11
move-object/from16 v0, p0
array-length v8, v0
const/4 v2, 0x1
const/4 v3, 0x1
const/4 v4, 0x1
const/16 v18, 0x0
const/4 v15, 0x0
const/16 v16, 0x0
const/16 v17, 0x0
const/4 v9, 0x0
const/4 v12, 0x0
const/4 v11, 0x0
const/4 v10, 0x0
const/4 v14, 0x0
const/4 v13, 0x0
const/4 v7, 0x0
move-object/from16 v0, p0
array-length v0, v0
move/from16 v21, v0
const/16 v22, 0x3
move/from16 v0, v21
move/from16 v1, v22
if-le v0, v1, :cond_a9
const/16 v21, 0x0
aget-byte v21, p0, v21
const/16 v22, -0x11
move/from16 v0, v21
move/from16 v1, v22
if-ne v0, v1, :cond_a9
const/16 v21, 0x1
aget-byte v21, p0, v21
const/16 v22, -0x45
move/from16 v0, v21
move/from16 v1, v22
if-ne v0, v1, :cond_a9
const/16 v21, 0x2
aget-byte v21, p0, v21
const/16 v22, -0x41
move/from16 v0, v21
move/from16 v1, v22
if-ne v0, v1, :cond_a9
const/16 v19, 0x1
:goto_58
const/4 v6, 0x0
:goto_59
if-ge v6, v8, :cond_14a
if-nez v2, :cond_61
if-nez v3, :cond_61
if-eqz v4, :cond_14a
:cond_61
aget-byte v21, p0, v6
move/from16 v0, v21
and-int/lit16 v0, v0, 0xff
move/from16 v20, v0
if-eqz v4, :cond_76
if-lez v18, :cond_af
move/from16 v0, v20
and-int/lit16 v0, v0, 0x80
move/from16 v21, v0
if-nez v21, :cond_ac
const/4 v4, 0x0
:goto_76
:cond_76
if-eqz v2, :cond_89
const/16 v21, 0x7f
move/from16 v0, v20
move/from16 v1, v21
if-le v0, v1, :cond_da
const/16 v21, 0xa0
move/from16 v0, v20
move/from16 v1, v21
if-ge v0, v1, :cond_da
const/4 v2, 0x0
:goto_89
:cond_89
if-eqz v3, :cond_a6
if-lez v9, :cond_100
const/16 v21, 0x40
move/from16 v0, v20
move/from16 v1, v21
if-lt v0, v1, :cond_a5
const/16 v21, 0x7f
move/from16 v0, v20
move/from16 v1, v21
if-eq v0, v1, :cond_a5
const/16 v21, 0xfc
move/from16 v0, v20
move/from16 v1, v21
if-le v0, v1, :cond_fd
:cond_a5
const/4 v3, 0x0
:goto_a6
:cond_a6
add-int/lit8 v6, v6, 0x1
goto :goto_59
:cond_a9
const/16 v19, 0x0
goto :goto_58
:cond_ac
add-int/lit8 v18, v18, -0x1
goto :goto_76
:cond_af
move/from16 v0, v20
and-int/lit16 v0, v0, 0x80
move/from16 v21, v0
if-eqz v21, :cond_76
and-int/lit8 v21, v20, 0x40
if-nez v21, :cond_bd
const/4 v4, 0x0
goto :goto_76
:cond_bd
add-int/lit8 v18, v18, 0x1
and-int/lit8 v21, v20, 0x20
if-nez v21, :cond_c6
add-int/lit8 v15, v15, 0x1
goto :goto_76
:cond_c6
add-int/lit8 v18, v18, 0x1
and-int/lit8 v21, v20, 0x10
if-nez v21, :cond_cf
add-int/lit8 v16, v16, 0x1
goto :goto_76
:cond_cf
add-int/lit8 v18, v18, 0x1
and-int/lit8 v21, v20, 0x8
if-nez v21, :cond_d8
add-int/lit8 v17, v17, 0x1
goto :goto_76
:cond_d8
const/4 v4, 0x0
goto :goto_76
:cond_da
const/16 v21, 0x9f
move/from16 v0, v20
move/from16 v1, v21
if-le v0, v1, :cond_89
const/16 v21, 0xc0
move/from16 v0, v20
move/from16 v1, v21
if-lt v0, v1, :cond_fa
const/16 v21, 0xd7
move/from16 v0, v20
move/from16 v1, v21
if-eq v0, v1, :cond_fa
const/16 v21, 0xf7
move/from16 v0, v20
move/from16 v1, v21
if-ne v0, v1, :cond_89
:cond_fa
add-int/lit8 v7, v7, 0x1
goto :goto_89
:cond_fd
add-int/lit8 v9, v9, -0x1
goto :goto_a6
:cond_100
const/16 v21, 0x80
move/from16 v0, v20
move/from16 v1, v21
if-eq v0, v1, :cond_118
const/16 v21, 0xa0
move/from16 v0, v20
move/from16 v1, v21
if-eq v0, v1, :cond_118
const/16 v21, 0xef
move/from16 v0, v20
move/from16 v1, v21
if-le v0, v1, :cond_11a
:cond_118
const/4 v3, 0x0
goto :goto_a6
:cond_11a
const/16 v21, 0xa0
move/from16 v0, v20
move/from16 v1, v21
if-le v0, v1, :cond_134
const/16 v21, 0xe0
move/from16 v0, v20
move/from16 v1, v21
if-ge v0, v1, :cond_134
add-int/lit8 v12, v12, 0x1
const/4 v10, 0x0
add-int/lit8 v11, v11, 0x1
if-le v11, v14, :cond_a6
move v14, v11
goto/16 :goto_a6
:cond_134
const/16 v21, 0x7f
move/from16 v0, v20
move/from16 v1, v21
if-le v0, v1, :cond_146
add-int/lit8 v9, v9, 0x1
const/4 v11, 0x0
add-int/lit8 v10, v10, 0x1
if-le v10, v13, :cond_a6
move v13, v10
goto/16 :goto_a6
:cond_146
const/4 v11, 0x0
const/4 v10, 0x0
goto/16 :goto_a6
:cond_14a
if-eqz v4, :cond_14f
if-lez v18, :cond_14f
const/4 v4, 0x0
:cond_14f
if-eqz v3, :cond_154
if-lez v9, :cond_154
const/4 v3, 0x0
:cond_154
if-eqz v4, :cond_163
if-nez v19, :cond_15e
add-int v21, v15, v16
add-int v21, v21, v17
if-lez v21, :cond_163
:cond_15e
const-string/jumbo v5, "UTF8"
goto/16 :goto_10
:cond_163
if-eqz v3, :cond_17a
sget-boolean v21, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z
if-nez v21, :cond_175
const/16 v21, 0x3
move/from16 v0, v21
if-ge v14, v0, :cond_175
const/16 v21, 0x3
move/from16 v0, v21
if-lt v13, v0, :cond_17a
:cond_175
const-string/jumbo v5, "SJIS"
goto/16 :goto_10
:cond_17a
if-eqz v2, :cond_19b
if-eqz v3, :cond_19b
const/16 v21, 0x2
move/from16 v0, v21
if-ne v14, v0, :cond_18a
const/16 v21, 0x2
move/from16 v0, v21
if-eq v12, v0, :cond_190
:cond_18a
mul-int/lit8 v21, v7, 0xa
move/from16 v0, v21
if-lt v0, v8, :cond_197
:cond_190
const-string/jumbo v21, "SJIS"
:goto_193
move-object/from16 v5, v21
goto/16 :goto_10
:cond_197
const-string/jumbo v21, "ISO8859_1"
goto :goto_193
:cond_19b
if-eqz v2, :cond_1a2
const-string/jumbo v5, "ISO8859_1"
goto/16 :goto_10
:cond_1a2
if-eqz v3, :cond_1a9
const-string/jumbo v5, "SJIS"
goto/16 :goto_10
:cond_1a9
if-eqz v4, :cond_1b0
const-string/jumbo v5, "UTF8"
goto/16 :goto_10
:cond_1b0
sget-object v5, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;
goto/16 :goto_10
.end method