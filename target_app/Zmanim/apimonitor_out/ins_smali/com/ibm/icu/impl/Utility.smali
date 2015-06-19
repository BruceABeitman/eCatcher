.class public final Lcom/ibm/icu/impl/Utility;
.super Ljava/lang/Object;
.source "Utility.java"
.field private static final APOSTROPHE:C = '\''
.field private static final BACKSLASH:C = '\\'
.field static final DIGITS:[C = null
.field private static final ESCAPE:C = '\ua5a5'
.field static final ESCAPE_BYTE:B = -0x5bt
.field static final HEX_DIGIT:[C = null
.field private static final INT_CONST:[Ljava/lang/Integer; = null
.field public static LINE_SEPARATOR:Ljava/lang/String; = null
.field private static final MAGIC_UNSIGNED:I = -0x80000000
.field private static final MAX_INT_CONST:I = 0x40
.field private static final UNESCAPE_MAP:[C
.method static constructor <clinit>()V
.registers 4
const/16 v3, 0x40
const/16 v2, 0x10
const-string v1, "line.separator"
invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
sput-object v1, Lcom/ibm/icu/impl/Utility;->LINE_SEPARATOR:Ljava/lang/String;
new-array v1, v2, [C
fill-array-data v1, :array_38
sput-object v1, Lcom/ibm/icu/impl/Utility;->HEX_DIGIT:[C
new-array v1, v2, [C
fill-array-data v1, :array_4c
sput-object v1, Lcom/ibm/icu/impl/Utility;->UNESCAPE_MAP:[C
const/16 v1, 0x24
new-array v1, v1, [C
fill-array-data v1, :array_60
sput-object v1, Lcom/ibm/icu/impl/Utility;->DIGITS:[C
new-array v1, v3, [Ljava/lang/Integer;
sput-object v1, Lcom/ibm/icu/impl/Utility;->INT_CONST:[Ljava/lang/Integer;
const/4 v0, 0x0
:goto_28
if-ge v0, v3, :cond_36
sget-object v1, Lcom/ibm/icu/impl/Utility;->INT_CONST:[Ljava/lang/Integer;
new-instance v2, Ljava/lang/Integer;
invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V
aput-object v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_28
:cond_36
return-void
nop
:array_60
.array-data 0x2
0x30t 0x0t
0x31t 0x0t
0x32t 0x0t
0x33t 0x0t
0x34t 0x0t
0x35t 0x0t
0x36t 0x0t
0x37t 0x0t
0x38t 0x0t
0x39t 0x0t
0x41t 0x0t
0x42t 0x0t
0x43t 0x0t
0x44t 0x0t
0x45t 0x0t
0x46t 0x0t
0x47t 0x0t
0x48t 0x0t
0x49t 0x0t
0x4at 0x0t
0x4bt 0x0t
0x4ct 0x0t
0x4dt 0x0t
0x4et 0x0t
0x4ft 0x0t
0x50t 0x0t
0x51t 0x0t
0x52t 0x0t
0x53t 0x0t
0x54t 0x0t
0x55t 0x0t
0x56t 0x0t
0x57t 0x0t
0x58t 0x0t
0x59t 0x0t
0x5at 0x0t
.end array-data
:array_38
.array-data 0x2
0x30t 0x0t
0x31t 0x0t
0x32t 0x0t
0x33t 0x0t
0x34t 0x0t
0x35t 0x0t
0x36t 0x0t
0x37t 0x0t
0x38t 0x0t
0x39t 0x0t
0x41t 0x0t
0x42t 0x0t
0x43t 0x0t
0x44t 0x0t
0x45t 0x0t
0x46t 0x0t
.end array-data
:array_4c
.array-data 0x2
0x61t 0x0t
0x7t 0x0t
0x62t 0x0t
0x8t 0x0t
0x65t 0x0t
0x1bt 0x0t
0x66t 0x0t
0xct 0x0t
0x6et 0x0t
0xat 0x0t
0x72t 0x0t
0xdt 0x0t
0x74t 0x0t
0x9t 0x0t
0x76t 0x0t
0xbt 0x0t
.end array-data
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static final RLEStringToByteArray(Ljava/lang/String;)[B
.registers 16
const/16 v14, -0x5b
const/4 v12, 0x0
invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C
move-result v12
shl-int/lit8 v12, v12, 0x10
const/4 v13, 0x1
invoke-virtual {p0, v13}, Ljava/lang/String;->charAt(I)C
move-result v13
or-int v8, v12, v13
new-array v2, v8, [B
const/4 v9, 0x1
const/4 v4, 0x0
const/4 v10, 0x0
const/4 v11, 0x0
const/4 v5, 0x2
const/4 v0, 0x0
move v1, v0
move v6, v5
:goto_1a
if-ge v1, v8, :cond_5d
if-eqz v9, :cond_2f
add-int/lit8 v5, v6, 0x1
invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C
move-result v4
shr-int/lit8 v12, v4, 0x8
int-to-byte v3, v12
const/4 v9, 0x0
:goto_28
packed-switch v10, :pswitch_data_76
move v0, v1
:goto_2c
move v1, v0
move v6, v5
goto :goto_1a
:cond_2f
and-int/lit16 v12, v4, 0xff
int-to-byte v3, v12
const/4 v9, 0x1
move v5, v6
goto :goto_28
:pswitch_35
if-ne v3, v14, :cond_3a
const/4 v10, 0x1
move v0, v1
goto :goto_2c
:cond_3a
add-int/lit8 v0, v1, 0x1
aput-byte v3, v2, v1
goto :goto_2c
:pswitch_3f
if-ne v3, v14, :cond_47
add-int/lit8 v0, v1, 0x1
aput-byte v14, v2, v1
const/4 v10, 0x0
goto :goto_2c
:cond_47
move v11, v3
if-gez v11, :cond_4c
add-int/lit16 v11, v11, 0x100
:cond_4c
const/4 v10, 0x2
move v0, v1
goto :goto_2c
:pswitch_4f
const/4 v7, 0x0
:goto_50
if-ge v7, v11, :cond_5a
add-int/lit8 v0, v1, 0x1
aput-byte v3, v2, v1
add-int/lit8 v7, v7, 0x1
move v1, v0
goto :goto_50
:cond_5a
const/4 v10, 0x0
move v0, v1
goto :goto_2c
:cond_5d
if-eqz v10, :cond_67
new-instance v12, Ljava/lang/IllegalStateException;
const-string v13, "Bad run-length encoded byte array"
invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v12
:cond_67
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v12
if-eq v6, v12, :cond_75
new-instance v12, Ljava/lang/IllegalStateException;
const-string v13, "Excess data in RLE byte array string"
invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v12
:cond_75
return-object v2
:pswitch_data_76
.packed-switch 0x0
:pswitch_35
:pswitch_3f
:pswitch_4f
.end packed-switch
.end method
.method public static final RLEStringToCharArray(Ljava/lang/String;)[C
.registers 13
const v11, 0xa5a5
const/4 v9, 0x0
invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C
move-result v9
shl-int/lit8 v9, v9, 0x10
const/4 v10, 0x1
invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C
move-result v10
or-int v6, v9, v10
new-array v2, v6, [C
const/4 v0, 0x0
const/4 v4, 0x2
:goto_15
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v9
if-ge v4, v9, :cond_4c
invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C
move-result v3
if-ne v3, v11, :cond_46
add-int/lit8 v4, v4, 0x1
invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C
move-result v3
if-ne v3, v11, :cond_31
add-int/lit8 v1, v0, 0x1
aput-char v3, v2, v0
move v0, v1
:goto_2e
add-int/lit8 v4, v4, 0x1
goto :goto_15
:cond_31
move v7, v3
add-int/lit8 v4, v4, 0x1
invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C
move-result v8
const/4 v5, 0x0
move v1, v0
:goto_3a
if-ge v5, v7, :cond_44
add-int/lit8 v0, v1, 0x1
aput-char v8, v2, v1
add-int/lit8 v5, v5, 0x1
move v1, v0
goto :goto_3a
:cond_44
move v0, v1
goto :goto_2e
:cond_46
add-int/lit8 v1, v0, 0x1
aput-char v3, v2, v0
move v0, v1
goto :goto_2e
:cond_4c
if-eq v0, v6, :cond_56
new-instance v9, Ljava/lang/IllegalStateException;
const-string v10, "Bad run-length encoded short array"
invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v9
:cond_56
return-object v2
.end method
.method public static final RLEStringToIntArray(Ljava/lang/String;)[I
.registers 14
const v12, 0xa5a5
const/4 v11, 0x0
invoke-static {p0, v11}, Lcom/ibm/icu/impl/Utility;->getInt(Ljava/lang/String;I)I
move-result v7
new-array v2, v7, [I
const/4 v0, 0x0
const/4 v4, 0x1
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v11
div-int/lit8 v8, v11, 0x2
move v5, v4
move v1, v0
:goto_14
if-ge v1, v7, :cond_49
if-ge v5, v8, :cond_49
add-int/lit8 v4, v5, 0x1
invoke-static {p0, v5}, Lcom/ibm/icu/impl/Utility;->getInt(Ljava/lang/String;I)I
move-result v3
if-ne v3, v12, :cond_44
add-int/lit8 v5, v4, 0x1
invoke-static {p0, v4}, Lcom/ibm/icu/impl/Utility;->getInt(Ljava/lang/String;I)I
move-result v3
if-ne v3, v12, :cond_30
add-int/lit8 v0, v1, 0x1
aput v3, v2, v1
move v4, v5
:goto_2d
move v5, v4
move v1, v0
goto :goto_14
:cond_30
move v9, v3
add-int/lit8 v4, v5, 0x1
invoke-static {p0, v5}, Lcom/ibm/icu/impl/Utility;->getInt(Ljava/lang/String;I)I
move-result v10
const/4 v6, 0x0
:goto_38
if-ge v6, v9, :cond_42
add-int/lit8 v0, v1, 0x1
aput v10, v2, v1
add-int/lit8 v6, v6, 0x1
move v1, v0
goto :goto_38
:cond_42
move v0, v1
goto :goto_2d
:cond_44
add-int/lit8 v0, v1, 0x1
aput v3, v2, v1
goto :goto_2d
:cond_49
if-ne v1, v7, :cond_4d
if-eq v5, v8, :cond_55
:cond_4d
new-instance v11, Ljava/lang/IllegalStateException;
const-string v12, "Bad run-length encoded int array"
invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v11
:cond_55
return-object v2
.end method
.method public static final RLEStringToShortArray(Ljava/lang/String;)[S
.registers 13
const v11, 0xa5a5
const/4 v9, 0x0
invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C
move-result v9
shl-int/lit8 v9, v9, 0x10
const/4 v10, 0x1
invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C
move-result v10
or-int v6, v9, v10
new-array v2, v6, [S
const/4 v0, 0x0
const/4 v4, 0x2
:goto_15
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v9
if-ge v4, v9, :cond_4f
invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C
move-result v3
if-ne v3, v11, :cond_48
add-int/lit8 v4, v4, 0x1
invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C
move-result v3
if-ne v3, v11, :cond_32
add-int/lit8 v1, v0, 0x1
int-to-short v9, v3
aput-short v9, v2, v0
move v0, v1
:goto_2f
add-int/lit8 v4, v4, 0x1
goto :goto_15
:cond_32
move v7, v3
add-int/lit8 v4, v4, 0x1
invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C
move-result v9
int-to-short v8, v9
const/4 v5, 0x0
move v1, v0
:goto_3c
if-ge v5, v7, :cond_46
add-int/lit8 v0, v1, 0x1
aput-short v8, v2, v1
add-int/lit8 v5, v5, 0x1
move v1, v0
goto :goto_3c
:cond_46
move v0, v1
goto :goto_2f
:cond_48
add-int/lit8 v1, v0, 0x1
int-to-short v9, v3
aput-short v9, v2, v0
move v0, v1
goto :goto_2f
:cond_4f
if-eq v0, v6, :cond_59
new-instance v9, Ljava/lang/IllegalStateException;
const-string v10, "Bad run-length encoded short array"
invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v9
:cond_59
return-object v2
.end method
.method private static final appendEncodedByte(Ljava/lang/StringBuffer;B[B)V
.registers 7
const/4 v2, 0x1
const/4 v3, 0x0
aget-byte v1, p2, v3
if-eqz v1, :cond_14
aget-byte v1, p2, v2
shl-int/lit8 v1, v1, 0x8
and-int/lit16 v2, p1, 0xff
or-int/2addr v1, v2
int-to-char v0, v1
invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
aput-byte v3, p2, v3
:goto_13
return-void
:cond_14
aput-byte v2, p2, v3
aput-byte p1, p2, v2
goto :goto_13
.end method
.method private static final appendInt(Ljava/lang/StringBuffer;I)V
.registers 3
ushr-int/lit8 v0, p1, 0x10
int-to-char v0, v0
invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
const v0, 0xffff
and-int/2addr v0, p1
int-to-char v0, v0
invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
return-void
.end method
.method public static appendNumber(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
.registers 4
const/16 v0, 0xa
const/4 v1, 0x1
invoke-static {p0, p1, v0, v1}, Lcom/ibm/icu/impl/Utility;->appendNumber(Ljava/lang/StringBuffer;III)Ljava/lang/StringBuffer;
move-result-object v0
return-object v0
.end method
.method public static appendNumber(Ljava/lang/StringBuffer;III)Ljava/lang/StringBuffer;
.registers 8
const/4 v1, 0x2
if-lt p2, v1, :cond_7
const/16 v1, 0x24
if-le p2, v1, :cond_20
:cond_7
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Illegal radix "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_20
move v0, p1
if-gez p1, :cond_29
neg-int v0, p1
const-string v1, "-"
invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_29
invoke-static {p0, v0, p2, p3}, Lcom/ibm/icu/impl/Utility;->recursiveAppendNumber(Ljava/lang/StringBuffer;III)V
return-object p0
.end method
.method public static appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V
.registers 14
const/4 v8, 0x1
const/4 v7, 0x0
const/16 v6, 0x5c
const/4 v5, 0x2
const/16 v4, 0x27
if-nez p2, :cond_11
if-eqz p3, :cond_b1
invoke-static {p1}, Lcom/ibm/icu/impl/Utility;->isUnprintable(I)Z
move-result v3
if-eqz v3, :cond_b1
:cond_11
invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I
move-result v3
if-lez v3, :cond_88
:goto_17
invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I
move-result v3
if-lt v3, v5, :cond_34
invoke-virtual {p4, v7}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v3
if-ne v3, v4, :cond_34
invoke-virtual {p4, v8}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v3
if-ne v3, v4, :cond_34
invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-result-object v3
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-virtual {p4, v7, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
goto :goto_17
:cond_34
const/4 v1, 0x0
:goto_35
invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I
move-result v3
if-lt v3, v5, :cond_5c
invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I
move-result v3
sub-int/2addr v3, v5
invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v3
if-ne v3, v4, :cond_5c
invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I
move-result v3
sub-int/2addr v3, v8
invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v3
if-ne v3, v4, :cond_5c
invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I
move-result v3
sub-int/2addr v3, v5
invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->setLength(I)V
add-int/lit8 v1, v1, 0x1
goto :goto_35
:cond_5c
invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I
move-result v3
if-lez v3, :cond_72
invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
sget-boolean v3, Lcom/ibm/icu/impl/ICUDebug;->isJDK14OrHigher:Z
if-eqz v3, :cond_80
invoke-virtual {p0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
:goto_6c
invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-virtual {p4, v7}, Ljava/lang/StringBuffer;->setLength(I)V
:cond_72
move v2, v1
:goto_73
add-int/lit8 v1, v2, -0x1
if-lez v2, :cond_88
invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-result-object v3
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move v2, v1
goto :goto_73
:cond_80
invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_6c
:cond_88
const/4 v3, -0x1
if-eq p1, v3, :cond_a4
const/16 v3, 0x20
if-ne p1, v3, :cond_a5
invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I
move-result v0
if-lez v0, :cond_a4
sub-int v3, v0, v8
invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v3
const/16 v4, 0x20
if-eq v3, v4, :cond_a4
const/16 v3, 0x20
invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:goto_a4
:cond_a4
return-void
:cond_a5
if-eqz p3, :cond_ad
invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->escapeUnprintable(Ljava/lang/StringBuffer;I)Z
move-result v3
if-nez v3, :cond_a4
:cond_ad
invoke-static {p0, p1}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
goto :goto_a4
:cond_b1
invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I
move-result v3
if-nez v3, :cond_c4
if-eq p1, v4, :cond_bb
if-ne p1, v6, :cond_c4
:cond_bb
invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-result-object v3
int-to-char v4, p1
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_a4
:cond_c4
invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I
move-result v3
if-gtz v3, :cond_f0
const/16 v3, 0x21
if-lt p1, v3, :cond_ea
const/16 v3, 0x7e
if-gt p1, v3, :cond_ea
const/16 v3, 0x30
if-lt p1, v3, :cond_da
const/16 v3, 0x39
if-le p1, v3, :cond_ea
:cond_da
const/16 v3, 0x41
if-lt p1, v3, :cond_e2
const/16 v3, 0x5a
if-le p1, v3, :cond_ea
:cond_e2
const/16 v3, 0x61
if-lt p1, v3, :cond_f0
const/16 v3, 0x7a
if-gt p1, v3, :cond_f0
:cond_ea
invoke-static {p1}, Lcom/ibm/icu/impl/UCharacterProperty;->isRuleWhiteSpace(I)Z
move-result v3
if-eqz v3, :cond_fa
:cond_f0
invoke-static {p4, p1}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
if-ne p1, v4, :cond_a4
int-to-char v3, p1
invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_a4
:cond_fa
invoke-static {p0, p1}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
goto :goto_a4
.end method
.method public static appendToRule(Ljava/lang/StringBuffer;Lcom/ibm/icu/text/UnicodeMatcher;ZLjava/lang/StringBuffer;)V
.registers 6
if-eqz p1, :cond_a
invoke-interface {p1, p2}, Lcom/ibm/icu/text/UnicodeMatcher;->toPattern(Z)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x1
invoke-static {p0, v0, v1, p2, p3}, Lcom/ibm/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V
:cond_a
return-void
.end method
.method public static appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V
.registers 7
const/4 v0, 0x0
:goto_1
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
if-ge v0, v1, :cond_11
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v1
invoke-static {p0, v1, p2, p3, p4}, Lcom/ibm/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_11
return-void
.end method
.method public static final arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 3
if-nez p0, :cond_8
if-nez p1, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
:cond_8
instance-of v0, p0, [Ljava/lang/Object;
if-eqz v0, :cond_15
check-cast p0, [Ljava/lang/Object;
check-cast p0, [Ljava/lang/Object;
invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v0
goto :goto_5
:cond_15
instance-of v0, p0, [I
if-eqz v0, :cond_22
check-cast p0, [I
check-cast p0, [I
invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->arrayEquals([ILjava/lang/Object;)Z
move-result v0
goto :goto_5
:cond_22
instance-of v0, p0, [D
if-eqz v0, :cond_2f
check-cast p0, [I
check-cast p0, [I
invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->arrayEquals([ILjava/lang/Object;)Z
move-result v0
goto :goto_5
:cond_2f
instance-of v0, p0, [B
if-eqz v0, :cond_3c
check-cast p0, [B
check-cast p0, [B
invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->arrayEquals([BLjava/lang/Object;)Z
move-result v0
goto :goto_5
:cond_3c
invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_5
.end method
.method public static final arrayEquals([BLjava/lang/Object;)Z
.registers 8
const/4 v5, 0x1
const/4 v4, 0x0
if-nez p0, :cond_a
if-nez p1, :cond_8
move v2, v5
:goto_7
return v2
:cond_8
move v2, v4
goto :goto_7
:cond_a
instance-of v2, p1, [B
if-nez v2, :cond_10
move v2, v4
goto :goto_7
:cond_10
check-cast p1, [B
move-object v0, p1
check-cast v0, [B
move-object v1, v0
array-length v2, p0
array-length v3, v1
if-ne v2, v3, :cond_23
array-length v2, p0
invoke-static {p0, v4, v1, v4, v2}, Lcom/ibm/icu/impl/Utility;->arrayRegionMatches([BI[BII)Z
move-result v2
if-eqz v2, :cond_23
move v2, v5
goto :goto_7
:cond_23
move v2, v4
goto :goto_7
.end method
.method public static final arrayEquals([DLjava/lang/Object;)Z
.registers 8
const/4 v5, 0x1
const/4 v4, 0x0
if-nez p0, :cond_a
if-nez p1, :cond_8
move v2, v5
:goto_7
return v2
:cond_8
move v2, v4
goto :goto_7
:cond_a
instance-of v2, p1, [D
if-nez v2, :cond_10
move v2, v4
goto :goto_7
:cond_10
check-cast p1, [D
move-object v0, p1
check-cast v0, [D
move-object v1, v0
array-length v2, p0
array-length v3, v1
if-ne v2, v3, :cond_23
array-length v2, p0
invoke-static {p0, v4, v1, v4, v2}, Lcom/ibm/icu/impl/Utility;->arrayRegionMatches([DI[DII)Z
move-result v2
if-eqz v2, :cond_23
move v2, v5
goto :goto_7
:cond_23
move v2, v4
goto :goto_7
.end method
.method public static final arrayEquals([ILjava/lang/Object;)Z
.registers 8
const/4 v5, 0x1
const/4 v4, 0x0
if-nez p0, :cond_a
if-nez p1, :cond_8
move v2, v5
:goto_7
return v2
:cond_8
move v2, v4
goto :goto_7
:cond_a
instance-of v2, p1, [I
if-nez v2, :cond_10
move v2, v4
goto :goto_7
:cond_10
check-cast p1, [I
move-object v0, p1
check-cast v0, [I
move-object v1, v0
array-length v2, p0
array-length v3, v1
if-ne v2, v3, :cond_23
array-length v2, p0
invoke-static {p0, v4, v1, v4, v2}, Lcom/ibm/icu/impl/Utility;->arrayRegionMatches([II[III)Z
move-result v2
if-eqz v2, :cond_23
move v2, v5
goto :goto_7
:cond_23
move v2, v4
goto :goto_7
.end method
.method public static final arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 8
const/4 v5, 0x1
const/4 v4, 0x0
if-nez p0, :cond_a
if-nez p1, :cond_8
move v2, v5
:goto_7
return v2
:cond_8
move v2, v4
goto :goto_7
:cond_a
instance-of v2, p1, [Ljava/lang/Object;
if-nez v2, :cond_10
move v2, v4
goto :goto_7
:cond_10
check-cast p1, [Ljava/lang/Object;
move-object v0, p1
check-cast v0, [Ljava/lang/Object;
move-object v1, v0
array-length v2, p0
array-length v3, v1
if-ne v2, v3, :cond_23
array-length v2, p0
invoke-static {p0, v4, v1, v4, v2}, Lcom/ibm/icu/impl/Utility;->arrayRegionMatches([Ljava/lang/Object;I[Ljava/lang/Object;II)Z
move-result v2
if-eqz v2, :cond_23
move v2, v5
goto :goto_7
:cond_23
move v2, v4
goto :goto_7
.end method
.method public static final arrayRegionMatches([BI[BII)Z
.registers 10
add-int v2, p1, p4
sub-int v0, p3, p1
move v1, p1
:goto_5
if-ge v1, v2, :cond_14
aget-byte v3, p0, v1
add-int v4, v1, v0
aget-byte v4, p2, v4
if-eq v3, v4, :cond_11
const/4 v3, 0x0
:goto_10
return v3
:cond_11
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_14
const/4 v3, 0x1
goto :goto_10
.end method
.method public static final arrayRegionMatches([CI[CII)Z
.registers 10
add-int v2, p1, p4
sub-int v0, p3, p1
move v1, p1
:goto_5
if-ge v1, v2, :cond_14
aget-char v3, p0, v1
add-int v4, v1, v0
aget-char v4, p2, v4
if-eq v3, v4, :cond_11
const/4 v3, 0x0
:goto_10
return v3
:cond_11
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_14
const/4 v3, 0x1
goto :goto_10
.end method
.method public static final arrayRegionMatches([DI[DII)Z
.registers 12
add-int v2, p1, p4
sub-int v0, p3, p1
move v1, p1
:goto_5
if-ge v1, v2, :cond_16
aget-wide v3, p0, v1
add-int v5, v1, v0
aget-wide v5, p2, v5
cmpl-double v3, v3, v5
if-eqz v3, :cond_13
const/4 v3, 0x0
:goto_12
return v3
:cond_13
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_16
const/4 v3, 0x1
goto :goto_12
.end method
.method public static final arrayRegionMatches([II[III)Z
.registers 10
add-int v2, p1, p4
sub-int v0, p3, p1
move v1, p1
:goto_5
if-ge v1, v2, :cond_14
aget v3, p0, v1
add-int v4, v1, v0
aget v4, p2, v4
if-eq v3, v4, :cond_11
const/4 v3, 0x0
:goto_10
return v3
:cond_11
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_14
const/4 v3, 0x1
goto :goto_10
.end method
.method public static final arrayRegionMatches([Ljava/lang/Object;I[Ljava/lang/Object;II)Z
.registers 10
add-int v2, p1, p4
sub-int v0, p3, p1
move v1, p1
:goto_5
if-ge v1, v2, :cond_18
aget-object v3, p0, v1
add-int v4, v1, v0
aget-object v4, p2, v4
invoke-static {v3, v4}, Lcom/ibm/icu/impl/Utility;->arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_15
const/4 v3, 0x0
:goto_14
return v3
:cond_15
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_18
const/4 v3, 0x1
goto :goto_14
.end method
.method public static final arrayToRLEString([B)Ljava/lang/String;
.registers 9
const/4 v7, 0x0
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
array-length v6, p0
shr-int/lit8 v6, v6, 0x10
int-to-char v6, v6
invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
array-length v6, p0
int-to-char v6, v6
invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
aget-byte v4, p0, v7
const/4 v3, 0x1
const/4 v6, 0x2
new-array v5, v6, [B
const/4 v2, 0x1
:goto_19
array-length v6, p0
if-ge v2, v6, :cond_2f
aget-byte v0, p0, v2
if-ne v0, v4, :cond_29
const/16 v6, 0xff
if-ge v3, v6, :cond_29
add-int/lit8 v3, v3, 0x1
:goto_26
add-int/lit8 v2, v2, 0x1
goto :goto_19
:cond_29
invoke-static {v1, v4, v3, v5}, Lcom/ibm/icu/impl/Utility;->encodeRun(Ljava/lang/StringBuffer;BI[B)V
move v4, v0
const/4 v3, 0x1
goto :goto_26
:cond_2f
invoke-static {v1, v4, v3, v5}, Lcom/ibm/icu/impl/Utility;->encodeRun(Ljava/lang/StringBuffer;BI[B)V
aget-byte v6, v5, v7
if-eqz v6, :cond_39
invoke-static {v1, v7, v5}, Lcom/ibm/icu/impl/Utility;->appendEncodedByte(Ljava/lang/StringBuffer;B[B)V
:cond_39
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v6
return-object v6
.end method
.method public static final arrayToRLEString([C)Ljava/lang/String;
.registers 7
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
array-length v5, p0
shr-int/lit8 v5, v5, 0x10
int-to-char v5, v5
invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
array-length v5, p0
int-to-char v5, v5
invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
const/4 v5, 0x0
aget-char v3, p0, v5
const/4 v2, 0x1
const/4 v1, 0x1
:goto_16
array-length v5, p0
if-ge v1, v5, :cond_2e
aget-char v4, p0, v1
if-ne v4, v3, :cond_27
const v5, 0xffff
if-ge v2, v5, :cond_27
add-int/lit8 v2, v2, 0x1
:goto_24
add-int/lit8 v1, v1, 0x1
goto :goto_16
:cond_27
int-to-short v5, v3
invoke-static {v0, v5, v2}, Lcom/ibm/icu/impl/Utility;->encodeRun(Ljava/lang/StringBuffer;SI)V
move v3, v4
const/4 v2, 0x1
goto :goto_24
:cond_2e
int-to-short v5, v3
invoke-static {v0, v5, v2}, Lcom/ibm/icu/impl/Utility;->encodeRun(Ljava/lang/StringBuffer;SI)V
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v5
return-object v5
.end method
.method public static final arrayToRLEString([I)Ljava/lang/String;
.registers 7
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
array-length v5, p0
invoke-static {v0, v5}, Lcom/ibm/icu/impl/Utility;->appendInt(Ljava/lang/StringBuffer;I)V
const/4 v5, 0x0
aget v3, p0, v5
const/4 v2, 0x1
const/4 v1, 0x1
:goto_e
array-length v5, p0
if-ge v1, v5, :cond_25
aget v4, p0, v1
if-ne v4, v3, :cond_1f
const v5, 0xffff
if-ge v2, v5, :cond_1f
add-int/lit8 v2, v2, 0x1
:goto_1c
add-int/lit8 v1, v1, 0x1
goto :goto_e
:cond_1f
invoke-static {v0, v3, v2}, Lcom/ibm/icu/impl/Utility;->encodeRun(Ljava/lang/StringBuffer;II)V
move v3, v4
const/4 v2, 0x1
goto :goto_1c
:cond_25
invoke-static {v0, v3, v2}, Lcom/ibm/icu/impl/Utility;->encodeRun(Ljava/lang/StringBuffer;II)V
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v5
return-object v5
.end method
.method public static final arrayToRLEString([S)Ljava/lang/String;
.registers 7
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
array-length v5, p0
shr-int/lit8 v5, v5, 0x10
int-to-char v5, v5
invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
array-length v5, p0
int-to-char v5, v5
invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
const/4 v5, 0x0
aget-short v3, p0, v5
const/4 v2, 0x1
const/4 v1, 0x1
:goto_16
array-length v5, p0
if-ge v1, v5, :cond_2d
aget-short v4, p0, v1
if-ne v4, v3, :cond_27
const v5, 0xffff
if-ge v2, v5, :cond_27
add-int/lit8 v2, v2, 0x1
:goto_24
add-int/lit8 v1, v1, 0x1
goto :goto_16
:cond_27
invoke-static {v0, v3, v2}, Lcom/ibm/icu/impl/Utility;->encodeRun(Ljava/lang/StringBuffer;SI)V
move v3, v4
const/4 v2, 0x1
goto :goto_24
:cond_2d
invoke-static {v0, v3, v2}, Lcom/ibm/icu/impl/Utility;->encodeRun(Ljava/lang/StringBuffer;SI)V
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v5
return-object v5
.end method
.method public static arrayToString([Ljava/lang/Object;)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuffer;
const-string v2, "["
invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
const/4 v1, 0x0
:goto_8
array-length v2, p0
if-ge v1, v2, :cond_28
if-eqz v1, :cond_12
const-string v2, ", "
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_12
aget-object v2, p0, v1
if-nez v2, :cond_1e
const-string v2, "null"
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:goto_1b
add-int/lit8 v1, v1, 0x1
goto :goto_8
:cond_1e
aget-object v2, p0, v1
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_1b
:cond_28
const-string v2, "]"
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
return-object v2
.end method
.method public static final compareUnsigned(II)I
.registers 3
const/high16 v0, -0x8000
sub-int/2addr p0, v0
sub-int/2addr p1, v0
if-ge p0, p1, :cond_8
const/4 v0, -0x1
:goto_7
return v0
:cond_8
if-le p0, p1, :cond_c
const/4 v0, 0x1
goto :goto_7
:cond_c
const/4 v0, 0x0
goto :goto_7
.end method
.method public static deleteRuleWhiteSpace(Ljava/lang/String;)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const/4 v2, 0x0
:goto_6
:cond_6
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
if-ge v2, v3, :cond_1f
invoke-static {p0, v2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v1
invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v3
add-int/2addr v2, v3
invoke-static {v1}, Lcom/ibm/icu/impl/UCharacterProperty;->isRuleWhiteSpace(I)Z
move-result v3
if-nez v3, :cond_6
invoke-static {v0, v1}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
goto :goto_6
:cond_1f
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v3
return-object v3
.end method
.method private static final encodeRun(Ljava/lang/StringBuffer;BI[B)V
.registers 7
const/16 v2, -0x5b
const/4 v1, 0x4
if-ge p2, v1, :cond_13
const/4 v0, 0x0
:goto_6
if-ge v0, p2, :cond_29
if-ne p1, v2, :cond_d
invoke-static {p0, v2, p3}, Lcom/ibm/icu/impl/Utility;->appendEncodedByte(Ljava/lang/StringBuffer;B[B)V
:cond_d
invoke-static {p0, p1, p3}, Lcom/ibm/icu/impl/Utility;->appendEncodedByte(Ljava/lang/StringBuffer;B[B)V
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_13
if-ne p2, v2, :cond_1f
if-ne p1, v2, :cond_1a
invoke-static {p0, v2, p3}, Lcom/ibm/icu/impl/Utility;->appendEncodedByte(Ljava/lang/StringBuffer;B[B)V
:cond_1a
invoke-static {p0, p1, p3}, Lcom/ibm/icu/impl/Utility;->appendEncodedByte(Ljava/lang/StringBuffer;B[B)V
add-int/lit8 p2, p2, -0x1
:cond_1f
invoke-static {p0, v2, p3}, Lcom/ibm/icu/impl/Utility;->appendEncodedByte(Ljava/lang/StringBuffer;B[B)V
int-to-byte v1, p2
invoke-static {p0, v1, p3}, Lcom/ibm/icu/impl/Utility;->appendEncodedByte(Ljava/lang/StringBuffer;B[B)V
invoke-static {p0, p1, p3}, Lcom/ibm/icu/impl/Utility;->appendEncodedByte(Ljava/lang/StringBuffer;B[B)V
:cond_29
return-void
.end method
.method private static final encodeRun(Ljava/lang/StringBuffer;II)V
.registers 6
const v2, 0xa5a5
const/4 v1, 0x4
if-ge p2, v1, :cond_14
const/4 v0, 0x0
:goto_7
if-ge v0, p2, :cond_29
if-ne p1, v2, :cond_e
invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->appendInt(Ljava/lang/StringBuffer;I)V
:cond_e
invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->appendInt(Ljava/lang/StringBuffer;I)V
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_14
if-ne p2, v2, :cond_20
if-ne p1, v2, :cond_1b
invoke-static {p0, v2}, Lcom/ibm/icu/impl/Utility;->appendInt(Ljava/lang/StringBuffer;I)V
:cond_1b
invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->appendInt(Ljava/lang/StringBuffer;I)V
add-int/lit8 p2, p2, -0x1
:cond_20
invoke-static {p0, v2}, Lcom/ibm/icu/impl/Utility;->appendInt(Ljava/lang/StringBuffer;I)V
invoke-static {p0, p2}, Lcom/ibm/icu/impl/Utility;->appendInt(Ljava/lang/StringBuffer;I)V
invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->appendInt(Ljava/lang/StringBuffer;I)V
:cond_29
return-void
.end method
.method private static final encodeRun(Ljava/lang/StringBuffer;SI)V
.registers 6
const v2, 0xa5a5
const/4 v1, 0x4
if-ge p2, v1, :cond_15
const/4 v0, 0x0
:goto_7
if-ge v0, p2, :cond_2d
if-ne p1, v2, :cond_e
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:cond_e
int-to-char v1, p1
invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_15
if-ne p2, v2, :cond_22
if-ne p1, v2, :cond_1c
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:cond_1c
int-to-char v1, p1
invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
add-int/lit8 p2, p2, -0x1
:cond_22
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
int-to-char v1, p2
invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
int-to-char v1, p1
invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:cond_2d
return-void
.end method
.method public static final escape(Ljava/lang/String;)Ljava/lang/String;
.registers 6
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const/4 v3, 0x0
:goto_6
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v4
if-ge v3, v4, :cond_4a
invoke-static {p0, v3}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v1
invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v4
add-int/2addr v3, v4
const/16 v4, 0x20
if-lt v1, v4, :cond_2c
const/16 v4, 0x7f
if-gt v1, v4, :cond_2c
const/16 v4, 0x5c
if-ne v1, v4, :cond_27
const-string v4, "\\\\"
invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_6
:cond_27
int-to-char v4, v1
invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_6
:cond_2c
const v4, 0xffff
if-gt v1, v4, :cond_41
const/4 v4, 0x1
move v2, v4
:goto_33
if-eqz v2, :cond_44
const-string v4, "\\u"
:goto_37
invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
if-eqz v2, :cond_47
const/4 v4, 0x4
:goto_3d
invoke-static {v1, v4, v0}, Lcom/ibm/icu/impl/Utility;->hex(IILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
goto :goto_6
:cond_41
const/4 v4, 0x0
move v2, v4
goto :goto_33
:cond_44
const-string v4, "\\U"
goto :goto_37
:cond_47
const/16 v4, 0x8
goto :goto_3d
:cond_4a
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
return-object v4
.end method
.method public static escapeUnprintable(Ljava/lang/StringBuffer;I)Z
.registers 4
invoke-static {p1}, Lcom/ibm/icu/impl/Utility;->isUnprintable(I)Z
move-result v0
if-eqz v0, :cond_73
const/16 v0, 0x5c
invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
const/high16 v0, -0x1
and-int/2addr v0, p1
if-eqz v0, :cond_6d
const/16 v0, 0x55
invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
sget-object v0, Lcom/ibm/icu/impl/Utility;->DIGITS:[C
shr-int/lit8 v1, p1, 0x1c
and-int/lit8 v1, v1, 0xf
aget-char v0, v0, v1
invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
sget-object v0, Lcom/ibm/icu/impl/Utility;->DIGITS:[C
shr-int/lit8 v1, p1, 0x18
and-int/lit8 v1, v1, 0xf
aget-char v0, v0, v1
invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
sget-object v0, Lcom/ibm/icu/impl/Utility;->DIGITS:[C
shr-int/lit8 v1, p1, 0x14
and-int/lit8 v1, v1, 0xf
aget-char v0, v0, v1
invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
sget-object v0, Lcom/ibm/icu/impl/Utility;->DIGITS:[C
shr-int/lit8 v1, p1, 0x10
and-int/lit8 v1, v1, 0xf
aget-char v0, v0, v1
invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:goto_41
sget-object v0, Lcom/ibm/icu/impl/Utility;->DIGITS:[C
shr-int/lit8 v1, p1, 0xc
and-int/lit8 v1, v1, 0xf
aget-char v0, v0, v1
invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
sget-object v0, Lcom/ibm/icu/impl/Utility;->DIGITS:[C
shr-int/lit8 v1, p1, 0x8
and-int/lit8 v1, v1, 0xf
aget-char v0, v0, v1
invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
sget-object v0, Lcom/ibm/icu/impl/Utility;->DIGITS:[C
shr-int/lit8 v1, p1, 0x4
and-int/lit8 v1, v1, 0xf
aget-char v0, v0, v1
invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
sget-object v0, Lcom/ibm/icu/impl/Utility;->DIGITS:[C
and-int/lit8 v1, p1, 0xf
aget-char v0, v0, v1
invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
const/4 v0, 0x1
:goto_6c
return v0
:cond_6d
const/16 v0, 0x75
invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_41
:cond_73
const/4 v0, 0x0
goto :goto_6c
.end method
.method public static final format1ForSource(Ljava/lang/String;)Ljava/lang/String;
.registers 9
const/16 v7, 0x5c
const/16 v6, 0x22
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v4, "\""
invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const/4 v2, 0x0
:goto_f
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v4
if-ge v2, v4, :cond_9f
add-int/lit8 v3, v2, 0x1
invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C
move-result v1
const/16 v4, 0x20
if-lt v1, v4, :cond_23
if-eq v1, v6, :cond_23
if-ne v1, v7, :cond_65
:cond_23
const/16 v4, 0xa
if-ne v1, v4, :cond_2e
const-string v4, "\\n"
invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:goto_2c
move v2, v3
goto :goto_f
:cond_2e
const/16 v4, 0x9
if-ne v1, v4, :cond_38
const-string v4, "\\t"
invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_2c
:cond_38
const/16 v4, 0xd
if-ne v1, v4, :cond_42
const-string v4, "\\r"
invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_2c
:cond_42
invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
sget-object v4, Lcom/ibm/icu/impl/Utility;->HEX_DIGIT:[C
and-int/lit16 v5, v1, 0x1c0
shr-int/lit8 v5, v5, 0x6
aget-char v4, v4, v5
invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
sget-object v4, Lcom/ibm/icu/impl/Utility;->HEX_DIGIT:[C
and-int/lit8 v5, v1, 0x38
shr-int/lit8 v5, v5, 0x3
aget-char v4, v4, v5
invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
sget-object v4, Lcom/ibm/icu/impl/Utility;->HEX_DIGIT:[C
and-int/lit8 v5, v1, 0x7
aget-char v4, v4, v5
invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_2c
:cond_65
const/16 v4, 0x7e
if-gt v1, v4, :cond_6d
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_2c
:cond_6d
const-string v4, "\\u"
invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
sget-object v4, Lcom/ibm/icu/impl/Utility;->HEX_DIGIT:[C
const v5, 0xf000
and-int/2addr v5, v1
shr-int/lit8 v5, v5, 0xc
aget-char v4, v4, v5
invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
sget-object v4, Lcom/ibm/icu/impl/Utility;->HEX_DIGIT:[C
and-int/lit16 v5, v1, 0xf00
shr-int/lit8 v5, v5, 0x8
aget-char v4, v4, v5
invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
sget-object v4, Lcom/ibm/icu/impl/Utility;->HEX_DIGIT:[C
and-int/lit16 v5, v1, 0xf0
shr-int/lit8 v5, v5, 0x4
aget-char v4, v4, v5
invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
sget-object v4, Lcom/ibm/icu/impl/Utility;->HEX_DIGIT:[C
and-int/lit8 v5, v1, 0xf
aget-char v4, v4, v5
invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_2c
:cond_9f
invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
return-object v4
.end method
.method public static final formatForSource(Ljava/lang/String;)Ljava/lang/String;
.registers 10
const/16 v8, 0x5c
const/16 v7, 0x22
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const/4 v3, 0x0
:goto_a
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v5
if-ge v3, v5, :cond_c9
if-lez v3, :cond_1d
const/16 v5, 0x2b
invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-result-object v5
sget-object v6, Lcom/ibm/icu/impl/Utility;->LINE_SEPARATOR:Ljava/lang/String;
invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_1d
const-string v5, "        \""
invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const/16 v2, 0xb
:goto_24
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v5
if-ge v3, v5, :cond_c4
const/16 v5, 0x50
if-ge v2, v5, :cond_c4
add-int/lit8 v4, v3, 0x1
invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C
move-result v1
const/16 v5, 0x20
if-lt v1, v5, :cond_3c
if-eq v1, v7, :cond_3c
if-ne v1, v8, :cond_86
:cond_3c
const/16 v5, 0xa
if-ne v1, v5, :cond_49
const-string v5, "\\n"
invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v2, v2, 0x2
:goto_47
move v3, v4
goto :goto_24
:cond_49
const/16 v5, 0x9
if-ne v1, v5, :cond_55
const-string v5, "\\t"
invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v2, v2, 0x2
goto :goto_47
:cond_55
const/16 v5, 0xd
if-ne v1, v5, :cond_61
const-string v5, "\\r"
invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v2, v2, 0x2
goto :goto_47
:cond_61
invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
sget-object v5, Lcom/ibm/icu/impl/Utility;->HEX_DIGIT:[C
and-int/lit16 v6, v1, 0x1c0
shr-int/lit8 v6, v6, 0x6
aget-char v5, v5, v6
invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
sget-object v5, Lcom/ibm/icu/impl/Utility;->HEX_DIGIT:[C
and-int/lit8 v6, v1, 0x38
shr-int/lit8 v6, v6, 0x3
aget-char v5, v5, v6
invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
sget-object v5, Lcom/ibm/icu/impl/Utility;->HEX_DIGIT:[C
and-int/lit8 v6, v1, 0x7
aget-char v5, v5, v6
invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
add-int/lit8 v2, v2, 0x4
goto :goto_47
:cond_86
const/16 v5, 0x7e
if-gt v1, v5, :cond_90
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
add-int/lit8 v2, v2, 0x1
goto :goto_47
:cond_90
const-string v5, "\\u"
invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
sget-object v5, Lcom/ibm/icu/impl/Utility;->HEX_DIGIT:[C
const v6, 0xf000
and-int/2addr v6, v1
shr-int/lit8 v6, v6, 0xc
aget-char v5, v5, v6
invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
sget-object v5, Lcom/ibm/icu/impl/Utility;->HEX_DIGIT:[C
and-int/lit16 v6, v1, 0xf00
shr-int/lit8 v6, v6, 0x8
aget-char v5, v5, v6
invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
sget-object v5, Lcom/ibm/icu/impl/Utility;->HEX_DIGIT:[C
and-int/lit16 v6, v1, 0xf0
shr-int/lit8 v6, v6, 0x4
aget-char v5, v5, v6
invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
sget-object v5, Lcom/ibm/icu/impl/Utility;->HEX_DIGIT:[C
and-int/lit8 v6, v1, 0xf
aget-char v5, v5, v6
invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
add-int/lit8 v2, v2, 0x6
goto :goto_47
:cond_c4
invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto/16 :goto_a
:cond_c9
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v5
return-object v5
.end method
.method public static getChars(Ljava/lang/StringBuffer;II[CI)V
.registers 5
if-ne p1, p2, :cond_3
:goto_2
return-void
:cond_3
invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->getChars(II[CI)V
goto :goto_2
.end method
.method static final getInt(Ljava/lang/String;I)I
.registers 4
mul-int/lit8 v0, p1, 0x2
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v0
shl-int/lit8 v0, v0, 0x10
mul-int/lit8 v1, p1, 0x2
add-int/lit8 v1, v1, 0x1
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v1
or-int/2addr v0, v1
return v0
.end method
.method public static hex(C)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
invoke-static {p0, v0}, Lcom/ibm/icu/impl/Utility;->hex(CLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public static hex(II)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const/16 v1, 0x10
invoke-static {v0, p0, v1, p1}, Lcom/ibm/icu/impl/Utility;->appendNumber(Ljava/lang/StringBuffer;III)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public static hex(J)Ljava/lang/String;
.registers 3
const/4 v0, 0x4
invoke-static {p0, p1, v0}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static hex(JI)Ljava/lang/String;
.registers 8
const-wide/high16 v2, -0x8000
cmp-long v2, p0, v2
if-nez v2, :cond_9
const-string v2, "-8000000000000000"
:goto_8
return-object v2
:cond_9
const-wide/16 v2, 0x0
cmp-long v2, p0, v2
if-gez v2, :cond_55
const/4 v2, 0x1
move v0, v2
:goto_11
if-eqz v0, :cond_14
neg-long p0, p0
:cond_14
const/16 v2, 0x10
invoke-static {p0, p1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-ge v2, p2, :cond_3f
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "0000000000000000"
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v4
invoke-virtual {v3, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:cond_3f
if-eqz v0, :cond_58
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const/16 v3, 0x2d
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
goto :goto_8
:cond_55
const/4 v2, 0x0
move v0, v2
goto :goto_11
:cond_58
move-object v2, v1
goto :goto_8
.end method
.method public static hex(Ljava/lang/String;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
invoke-static {p0, v0}, Lcom/ibm/icu/impl/Utility;->hex(Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public static hex(Ljava/lang/StringBuffer;)Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/ibm/icu/impl/Utility;->hex(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static hex(CLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
.registers 4
const/16 v0, 0x10
const/4 v1, 0x4
invoke-static {p1, p0, v0, v1}, Lcom/ibm/icu/impl/Utility;->appendNumber(Ljava/lang/StringBuffer;III)Ljava/lang/StringBuffer;
move-result-object v0
return-object v0
.end method
.method public static hex(IILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
.registers 4
const/16 v0, 0x10
invoke-static {p2, p0, v0, p1}, Lcom/ibm/icu/impl/Utility;->appendNumber(Ljava/lang/StringBuffer;III)Ljava/lang/StringBuffer;
move-result-object v0
return-object v0
.end method
.method public static hex(Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
.registers 4
const/4 v0, 0x0
:goto_1
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
if-ge v0, v1, :cond_18
if-eqz v0, :cond_e
const/16 v1, 0x2c
invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:cond_e
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v1
invoke-static {v1, p1}, Lcom/ibm/icu/impl/Utility;->hex(CLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_18
return-object p1
.end method
.method public static final highBit(I)B
.registers 3
if-gtz p0, :cond_4
const/4 v1, -0x1
:goto_3
return v1
:cond_4
const/4 v0, 0x0
const/high16 v1, 0x1
if-lt p0, v1, :cond_e
shr-int/lit8 p0, p0, 0x10
add-int/lit8 v1, v0, 0x10
int-to-byte v0, v1
:cond_e
const/16 v1, 0x100
if-lt p0, v1, :cond_17
shr-int/lit8 p0, p0, 0x8
add-int/lit8 v1, v0, 0x8
int-to-byte v0, v1
:cond_17
const/16 v1, 0x10
if-lt p0, v1, :cond_20
shr-int/lit8 p0, p0, 0x4
add-int/lit8 v1, v0, 0x4
int-to-byte v0, v1
:cond_20
const/4 v1, 0x4
if-lt p0, v1, :cond_28
shr-int/lit8 p0, p0, 0x2
add-int/lit8 v1, v0, 0x2
int-to-byte v0, v1
:cond_28
const/4 v1, 0x2
if-lt p0, v1, :cond_30
shr-int/lit8 p0, p0, 0x1
add-int/lit8 v1, v0, 0x1
int-to-byte v0, v1
:cond_30
move v1, v0
goto :goto_3
.end method
.method public static indexOf(Ljava/lang/StringBuffer;Ljava/lang/String;)I
.registers 3
invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public static indexOf(Ljava/lang/StringBuffer;Ljava/lang/String;I)I
.registers 4
invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I
move-result v0
return v0
.end method
.method public static integerValueOf(I)Ljava/lang/Integer;
.registers 2
if-ltz p0, :cond_b
const/16 v0, 0x40
if-ge p0, v0, :cond_b
sget-object v0, Lcom/ibm/icu/impl/Utility;->INT_CONST:[Ljava/lang/Integer;
aget-object v0, v0, p0
:goto_a
return-object v0
:cond_b
new-instance v0, Ljava/lang/Integer;
invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V
goto :goto_a
.end method
.method public static isUnprintable(I)Z
.registers 2
const/16 v0, 0x20
if-lt p0, v0, :cond_8
const/16 v0, 0x7e
if-le p0, v0, :cond_a
:cond_8
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public static lastIndexOf(Ljava/lang/StringBuffer;Ljava/lang/String;)I
.registers 3
invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public static lastIndexOf(Ljava/lang/StringBuffer;Ljava/lang/String;I)I
.registers 4
invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;I)I
move-result v0
return v0
.end method
.method public static lookup(Ljava/lang/String;[Ljava/lang/String;)I
.registers 4
const/4 v0, 0x0
:goto_1
array-length v1, p1
if-ge v0, v1, :cond_11
aget-object v1, p1, v0
invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_e
move v1, v0
:goto_d
return v1
:cond_e
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_11
const/4 v1, -0x1
goto :goto_d
.end method
.method public static final objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 3
if-nez p0, :cond_8
if-nez p1, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
:cond_8
invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_5
.end method
.method public static parseChar(Ljava/lang/String;[IC)Z
.registers 7
const/4 v3, 0x0
aget v0, p1, v3
invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->skipWhitespace(Ljava/lang/String;[I)V
aget v1, p1, v3
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
if-eq v1, v2, :cond_16
aget v1, p1, v3
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v1
if-eq v1, p2, :cond_1a
:cond_16
aput v0, p1, v3
move v1, v3
:goto_19
return v1
:cond_1a
aget v1, p1, v3
add-int/lit8 v1, v1, 0x1
aput v1, p1, v3
const/4 v1, 0x1
goto :goto_19
.end method
.method public static parseInteger(Ljava/lang/String;[II)I
.registers 15
const/4 v4, 0x0
const/4 v6, 0x0
const/4 v11, 0x0
aget v2, p1, v4
const/16 v9, 0xa
const/4 v1, 0x1
const-string v3, "0x"
const/4 v5, 0x2
move-object v0, p0
invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z
move-result v0
if-eqz v0, :cond_2d
add-int/lit8 v2, v2, 0x2
const/16 v9, 0x10
move v8, v2
:goto_17
if-ge v8, p2, :cond_4b
add-int/lit8 v2, v8, 0x1
invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C
move-result v0
invoke-static {v0, v9}, Lcom/ibm/icu/lang/UCharacter;->digit(II)I
move-result v7
if-gez v7, :cond_3e
add-int/lit8 v2, v2, -0x1
:goto_27
if-lez v6, :cond_2b
aput v2, p1, v4
:cond_2b
move v0, v11
:goto_2c
return v0
:cond_2d
if-ge v2, p2, :cond_4d
invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v1, 0x30
if-ne v0, v1, :cond_4d
add-int/lit8 v2, v2, 0x1
const/4 v6, 0x1
const/16 v9, 0x8
move v8, v2
goto :goto_17
:cond_3e
add-int/lit8 v6, v6, 0x1
mul-int v0, v11, v9
add-int v10, v0, v7
if-gt v10, v11, :cond_48
move v0, v4
goto :goto_2c
:cond_48
move v11, v10
move v8, v2
goto :goto_17
:cond_4b
move v2, v8
goto :goto_27
:cond_4d
move v8, v2
goto :goto_17
.end method
.method public static parseNumber(Ljava/lang/String;[II)I
.registers 10
const/4 v6, -0x1
const/4 v5, 0x0
const/4 v2, 0x0
aget v3, p1, v5
:goto_5
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v4
if-ge v3, v4, :cond_15
invoke-static {p0, v3}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v0
invoke-static {v0, p2}, Lcom/ibm/icu/lang/UCharacter;->digit(II)I
move-result v1
if-gez v1, :cond_1b
:cond_15
aget v4, p1, v5
if-ne v3, v4, :cond_26
move v4, v6
:goto_1a
return v4
:cond_1b
mul-int v4, p2, v2
add-int v2, v4, v1
if-gez v2, :cond_23
move v4, v6
goto :goto_1a
:cond_23
add-int/lit8 v3, v3, 0x1
goto :goto_5
:cond_26
aput v3, p1, v5
move v4, v2
goto :goto_1a
.end method
.method public static parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I
.registers 15
const/4 v9, 0x0
const/4 v8, -0x1
const/4 v7, 0x1
new-array v5, v7, [I
const/4 v3, 0x0
const/4 v2, 0x0
:goto_7
invoke-virtual {p3}, Ljava/lang/String;->length()I
move-result v7
if-ge v2, v7, :cond_58
invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C
move-result v1
sparse-switch v1, :sswitch_data_5c
if-lt p1, p2, :cond_48
move v7, v8
:goto_17
return v7
:sswitch_18
if-lt p1, p2, :cond_1c
move v7, v8
goto :goto_17
:cond_1c
add-int/lit8 v6, p1, 0x1
invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C
move-result v0
invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->isRuleWhiteSpace(I)Z
move-result v7
if-nez v7, :cond_2b
move p1, v6
move v7, v8
goto :goto_17
:cond_2b
move p1, v6
:sswitch_2c
invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->skipWhitespace(Ljava/lang/String;I)I
move-result p1
:goto_30
add-int/lit8 v2, v2, 0x1
goto :goto_7
:sswitch_33
aput p1, v5, v9
add-int/lit8 v4, v3, 0x1
invoke-static {p0, v5, p2}, Lcom/ibm/icu/impl/Utility;->parseInteger(Ljava/lang/String;[II)I
move-result v7
aput v7, p4, v3
aget v7, v5, v9
if-ne v7, p1, :cond_44
move v3, v4
move v7, v8
goto :goto_17
:cond_44
aget p1, v5, v9
move v3, v4
goto :goto_30
:cond_48
add-int/lit8 v6, p1, 0x1
invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C
move-result v7
invoke-static {v7}, Lcom/ibm/icu/lang/UCharacter;->toLowerCase(I)I
move-result v7
int-to-char v0, v7
if-eq v0, v1, :cond_5a
move p1, v6
move v7, v8
goto :goto_17
:cond_58
move v7, p1
goto :goto_17
:cond_5a
move p1, v6
goto :goto_30
:sswitch_data_5c
.sparse-switch
0x20 -> :sswitch_18
0x23 -> :sswitch_33
0x7e -> :sswitch_2c
.end sparse-switch
.end method
.method public static parsePattern(Ljava/lang/String;Lcom/ibm/icu/text/Replaceable;II)I
.registers 10
const/4 v5, -0x1
const/4 v2, 0x0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v4
if-ne v2, v4, :cond_a
move v4, p2
:goto_9
return v4
:cond_a
invoke-static {p0, v2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v1
:goto_e
if-ge p2, p3, :cond_45
invoke-interface {p1, p2}, Lcom/ibm/icu/text/Replaceable;->char32At(I)I
move-result v0
const/16 v4, 0x7e
if-ne v1, v4, :cond_2e
invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->isRuleWhiteSpace(I)Z
move-result v4
if-eqz v4, :cond_24
invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v4
add-int/2addr p2, v4
goto :goto_e
:cond_24
add-int/lit8 v2, v2, 0x1
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v4
if-ne v2, v4, :cond_40
move v4, p2
goto :goto_9
:cond_2e
if-ne v0, v1, :cond_3e
invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v3
add-int/2addr p2, v3
add-int/2addr v2, v3
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v4
if-ne v2, v4, :cond_40
move v4, p2
goto :goto_9
:cond_3e
move v4, v5
goto :goto_9
:cond_40
invoke-static {p0, v2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v1
goto :goto_e
:cond_45
move v4, v5
goto :goto_9
.end method
.method public static parseUnicodeIdentifier(Ljava/lang/String;[I)Ljava/lang/String;
.registers 7
const/4 v4, 0x0
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
aget v2, p1, v4
:goto_8
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
if-ge v2, v3, :cond_33
invoke-static {p0, v2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v1
invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I
move-result v3
if-nez v3, :cond_29
invoke-static {v1}, Lcom/ibm/icu/lang/UCharacter;->isUnicodeIdentifierStart(I)Z
move-result v3
if-eqz v3, :cond_27
invoke-static {v0, v1}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
:goto_21
invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v3
add-int/2addr v2, v3
goto :goto_8
:cond_27
const/4 v3, 0x0
:goto_28
return-object v3
:cond_29
invoke-static {v1}, Lcom/ibm/icu/lang/UCharacter;->isUnicodeIdentifierPart(I)Z
move-result v3
if-eqz v3, :cond_33
invoke-static {v0, v1}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
goto :goto_21
:cond_33
aput v2, p1, v4
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v3
goto :goto_28
.end method
.method public static quotedIndexOf(Ljava/lang/String;IILjava/lang/String;)I
.registers 8
const/16 v3, 0x27
move v1, p1
:goto_3
if-ge v1, p2, :cond_27
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v2, 0x5c
if-ne v0, v2, :cond_12
add-int/lit8 v1, v1, 0x1
:cond_f
add-int/lit8 v1, v1, 0x1
goto :goto_3
:cond_12
if-ne v0, v3, :cond_1f
:goto_14
add-int/lit8 v1, v1, 0x1
if-ge v1, p2, :cond_f
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v2
if-eq v2, v3, :cond_f
goto :goto_14
:cond_1f
invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I
move-result v2
if-ltz v2, :cond_f
move v2, v1
:goto_26
return v2
:cond_27
const/4 v2, -0x1
goto :goto_26
.end method
.method private static recursiveAppendNumber(Ljava/lang/StringBuffer;III)V
.registers 7
const/4 v2, 0x1
rem-int v0, p1, p2
if-ge p1, p2, :cond_7
if-le p3, v2, :cond_e
:cond_7
div-int v1, p1, p2
sub-int v2, p3, v2
invoke-static {p0, v1, p2, v2}, Lcom/ibm/icu/impl/Utility;->recursiveAppendNumber(Ljava/lang/StringBuffer;III)V
:cond_e
sget-object v1, Lcom/ibm/icu/impl/Utility;->DIGITS:[C
aget-char v1, v1, v0
invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
return-void
.end method
.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
.registers 5
if-gtz p1, :cond_5
const-string v2, ""
:goto_4
return-object v2
:cond_5
const/4 v2, 0x1
if-ne p1, v2, :cond_a
move-object v2, p0
goto :goto_4
:cond_a
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const/4 v0, 0x0
:goto_10
if-ge v0, p1, :cond_18
invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v0, v0, 0x1
goto :goto_10
:cond_18
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
goto :goto_4
.end method
.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 4
invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 4
invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static skipWhitespace(Ljava/lang/String;I)I
.registers 4
:goto_0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
if-ge p1, v1, :cond_10
invoke-static {p0, p1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v0
invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->isRuleWhiteSpace(I)Z
move-result v1
if-nez v1, :cond_11
:cond_10
return p1
:cond_11
invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v1
add-int/2addr p1, v1
goto :goto_0
.end method
.method public static skipWhitespace(Ljava/lang/String;[I)V
.registers 4
const/4 v1, 0x0
aget v0, p1, v1
invoke-static {p0, v0}, Lcom/ibm/icu/impl/Utility;->skipWhitespace(Ljava/lang/String;I)I
move-result v0
aput v0, p1, v1
return-void
.end method
.method public static split(Ljava/lang/String;C[Ljava/lang/String;)V
.registers 8
const/4 v3, 0x0
const/4 v0, 0x0
const/4 v2, 0x0
:goto_3
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v4
if-ge v2, v4, :cond_1d
invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C
move-result v4
if-ne v4, p1, :cond_1a
add-int/lit8 v1, v0, 0x1
invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v4
aput-object v4, p2, v0
add-int/lit8 v3, v2, 0x1
move v0, v1
:cond_1a
add-int/lit8 v2, v2, 0x1
goto :goto_3
:cond_1d
add-int/lit8 v1, v0, 0x1
invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v4
aput-object v4, p2, v0
move v0, v1
:goto_26
array-length v4, p2
if-ge v0, v4, :cond_31
add-int/lit8 v1, v0, 0x1
const-string v4, ""
aput-object v4, p2, v0
move v0, v1
goto :goto_26
:cond_31
return-void
.end method
.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
.registers 6
const/4 v1, 0x0
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const/4 v0, 0x0
:goto_7
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
if-ge v0, v3, :cond_1f
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v3
if-ne v3, p1, :cond_1c
invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v1, v0, 0x1
:cond_1c
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_1f
invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v3
new-array v3, v3, [Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object p0
check-cast p0, [Ljava/lang/String;
check-cast p0, [Ljava/lang/String;
return-object p0
.end method
.method public static splitString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "\\Q"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\\E"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static splitWhitespace(Ljava/lang/String;)[Ljava/lang/String;
.registers 2
const-string v0, "\\s+"
invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static trim(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
.registers 4
const/4 v0, 0x0
:goto_1
invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I
move-result v1
if-ge v0, v1, :cond_14
invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v1
invoke-static {v1}, Lcom/ibm/icu/lang/UCharacter;->isWhitespace(I)Z
move-result v1
if-eqz v1, :cond_14
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_14
const/4 v1, 0x0
invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I
move-result v1
const/4 v2, 0x1
sub-int v0, v1, v2
:goto_1f
if-ltz v0, :cond_2e
invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v1
invoke-static {v1}, Lcom/ibm/icu/lang/UCharacter;->isWhitespace(I)Z
move-result v1
if-eqz v1, :cond_2e
add-int/lit8 v0, v0, -0x1
goto :goto_1f
:cond_2e
add-int/lit8 v1, v0, 0x1
invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I
move-result v2
invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
move-result-object v1
return-object v1
.end method
.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
.registers 12
const/4 v9, 0x1
const/4 v7, 0x0
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
new-array v5, v9, [I
const/4 v3, 0x0
:goto_a
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v6
if-ge v3, v6, :cond_56
add-int/lit8 v4, v3, 0x1
invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C
move-result v1
const/16 v6, 0x5c
if-ne v1, v6, :cond_51
aput v4, v5, v7
invoke-static {p0, v5}, Lcom/ibm/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I
move-result v2
if-gez v2, :cond_4b
new-instance v6, Ljava/lang/IllegalArgumentException;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Invalid escape sequence "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
sub-int v8, v4, v9
add-int/lit8 v9, v4, 0x8
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v10
invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I
move-result v9
invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v6
:cond_4b
invoke-static {v0, v2}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
aget v3, v5, v7
goto :goto_a
:cond_51
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move v3, v4
goto :goto_a
:cond_56
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v6
return-object v6
.end method
.method public static unescapeAt(Ljava/lang/String;[I)I
.registers 14
const/4 v9, 0x0
const/4 v7, 0x0
const/4 v6, 0x0
const/4 v5, 0x0
const/4 v0, 0x4
const/4 v1, 0x0
const/4 v2, 0x0
aget v2, p1, v2
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v4
if-ltz v2, :cond_11
if-lt v2, v4, :cond_1c
:cond_11
const/4 p0, -0x1
move v3, v2
move p1, v1
move v4, v9
move v1, v6
move v2, v7
move v11, v5
move v5, p0
move p0, v0
move v0, v11
:goto_1b
return v5
:cond_1c
invoke-static {p0, v2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v3
invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v8
add-int/2addr v8, v2
sparse-switch v3, :sswitch_data_158
const/16 v2, 0x8
invoke-static {v3, v2}, Lcom/ibm/icu/lang/UCharacter;->digit(II)I
move-result v2
if-ltz v2, :cond_153
const/4 v6, 0x1
const/4 v5, 0x3
const/4 v7, 0x1
const/4 v0, 0x3
move v2, v2
move v9, v2
move v2, v1
move v1, v0
:goto_38
if-eqz v6, :cond_f9
move v0, v3
:goto_3b
if-ge v8, v4, :cond_4e
if-ge v7, v5, :cond_4e
invoke-static {p0, v8}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v0
const/4 v3, 0x3
if-ne v1, v3, :cond_85
const/16 v3, 0x8
:goto_48
invoke-static {v0, v3}, Lcom/ibm/icu/lang/UCharacter;->digit(II)I
move-result v3
if-gez v3, :cond_88
:cond_4e
if-ge v7, v6, :cond_93
const/4 p0, -0x1
move v3, v8
move p1, v2
move v0, v5
move v4, v9
move v2, v7
move v5, p0
move p0, v1
move v1, v6
goto :goto_1b
:sswitch_5a
const/4 v2, 0x4
move v5, v2
move v6, v5
move v5, v2
move v2, v1
move v1, v0
goto :goto_38
:sswitch_61
const/16 v2, 0x8
move v5, v2
move v6, v5
move v5, v2
move v2, v1
move v1, v0
goto :goto_38
:sswitch_69
const/4 v5, 0x1
if-ge v8, v4, :cond_7f
invoke-static {p0, v8}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result v2
const/16 v6, 0x7b
if-ne v2, v6, :cond_7f
add-int/lit8 v6, v8, 0x1
const/4 v1, 0x1
const/16 v2, 0x8
move v8, v6
move v6, v5
move v5, v2
move v2, v1
move v1, v0
goto :goto_38
:cond_7f
const/4 v2, 0x2
move v6, v5
move v5, v2
move v2, v1
move v1, v0
goto :goto_38
:cond_85
const/16 v3, 0x10
goto :goto_48
:cond_88
shl-int/2addr v9, v1
or-int/2addr v9, v3
invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v3
add-int/2addr v8, v3
add-int/lit8 v3, v7, 0x1
move v7, v3
goto :goto_3b
:cond_93
if-eqz v2, :cond_a7
const/16 v3, 0x7d
if-eq v0, v3, :cond_a4
const/4 p0, -0x1
move v3, v8
move p1, v2
move v0, v5
move v4, v9
move v2, v7
move v5, p0
move p0, v1
move v1, v6
goto/16 :goto_1b
:cond_a4
add-int/lit8 v3, v8, 0x1
move v8, v3
:cond_a7
if-ltz v9, :cond_ad
const/high16 v3, 0x11
if-lt v9, v3, :cond_b8
:cond_ad
const/4 p0, -0x1
move v3, v8
move p1, v2
move v0, v5
move v4, v9
move v2, v7
move v5, p0
move p0, v1
move v1, v6
goto/16 :goto_1b
:cond_b8
if-ge v8, v4, :cond_14c
int-to-char v3, v9
invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z
move-result v3
if-eqz v3, :cond_14c
add-int/lit8 v0, v8, 0x1
invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C
move-result v3
const/16 v10, 0x5c
if-ne v3, v10, :cond_150
if-ge v0, v4, :cond_150
const/4 v3, 0x1
new-array v3, v3, [I
const/4 v4, 0x0
aput v0, v3, v4
invoke-static {p0, v3}, Lcom/ibm/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I
move-result v0
const/4 p0, 0x0
aget p0, v3, p0
:goto_da
int-to-char v3, v0
invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z
move-result v3
if-eqz v3, :cond_14c
move p0, p0
int-to-char v3, v9
int-to-char v4, v0
invoke-static {v3, v4}, Lcom/ibm/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I
move-result v3
move v11, p0
move p0, v0
move v0, v11
:goto_eb
const/4 p0, 0x0
aput v0, p1, p0
move p1, v2
move p0, v1
move v4, v3
move v1, v6
move v2, v7
move v11, v5
move v5, v3
move v3, v0
move v0, v11
goto/16 :goto_1b
:cond_f9
const/4 v0, 0x0
:goto_fa
sget-object v10, Lcom/ibm/icu/impl/Utility;->UNESCAPE_MAP:[C
array-length v10, v10
if-ge v0, v10, :cond_11e
sget-object v10, Lcom/ibm/icu/impl/Utility;->UNESCAPE_MAP:[C
aget-char v10, v10, v0
if-ne v3, v10, :cond_118
const/4 p0, 0x0
aput v8, p1, p0
sget-object p0, Lcom/ibm/icu/impl/Utility;->UNESCAPE_MAP:[C
add-int/lit8 p1, v0, 0x1
aget-char p0, p0, p1
move v3, v8
move p1, v2
move v0, v5
move v4, v9
move v2, v7
move v5, p0
move p0, v1
move v1, v6
goto/16 :goto_1b
:cond_118
sget-object v10, Lcom/ibm/icu/impl/Utility;->UNESCAPE_MAP:[C
aget-char v10, v10, v0
if-ge v3, v10, :cond_13c
:cond_11e
const/16 v0, 0x63
if-ne v3, v0, :cond_13f
if-ge v8, v4, :cond_13f
invoke-static {p0, v8}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I
move-result p0
const/4 v0, 0x0
invoke-static {p0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I
move-result v3
add-int/2addr v3, v8
aput v3, p1, v0
and-int/lit8 p0, p0, 0x1f
move v3, v8
move p1, v2
move v0, v5
move v4, v9
move v2, v7
move v5, p0
move p0, v1
move v1, v6
goto/16 :goto_1b
:cond_13c
add-int/lit8 v0, v0, 0x2
goto :goto_fa
:cond_13f
const/4 p0, 0x0
aput v8, p1, p0
move p1, v2
move p0, v1
move v0, v5
move v4, v9
move v1, v6
move v2, v7
move v5, v3
move v3, v8
goto/16 :goto_1b
:cond_14c
move v3, v9
move p0, v0
move v0, v8
goto :goto_eb
:cond_150
move p0, v0
move v0, v3
goto :goto_da
:cond_153
move v2, v1
move v1, v0
goto/16 :goto_38
nop
:sswitch_data_158
.sparse-switch
0x55 -> :sswitch_61
0x75 -> :sswitch_5a
0x78 -> :sswitch_69
.end sparse-switch
.end method
.method public static unescapeLeniently(Ljava/lang/String;)Ljava/lang/String;
.registers 9
const/4 v7, 0x0
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const/4 v6, 0x1
new-array v5, v6, [I
const/4 v3, 0x0
:goto_a
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v6
if-ge v3, v6, :cond_32
add-int/lit8 v4, v3, 0x1
invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C
move-result v1
const/16 v6, 0x5c
if-ne v1, v6, :cond_2d
aput v4, v5, v7
invoke-static {p0, v5}, Lcom/ibm/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I
move-result v2
if-gez v2, :cond_27
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move v3, v4
goto :goto_a
:cond_27
invoke-static {v0, v2}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
aget v3, v5, v7
goto :goto_a
:cond_2d
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move v3, v4
goto :goto_a
:cond_32
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v6
return-object v6
.end method
.method public static valueOf([I)Ljava/lang/String;
.registers 4
new-instance v1, Ljava/lang/StringBuffer;
array-length v2, p0
invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V
const/4 v0, 0x0
:goto_7
array-length v2, p0
if-ge v0, v2, :cond_12
aget v2, p0, v0
invoke-static {v1, v2}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_12
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
return-object v2
.end method