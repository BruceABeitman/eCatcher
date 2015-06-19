.class public Lcom/sun/mail/util/ASCIIUtility;
.super Ljava/lang/Object;
.source "SourceFile"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getBytes(Ljava/io/InputStream;)[B
.registers 7
const/4 v5, 0x0
const/16 v0, 0x400
instance-of v1, p0, Ljava/io/ByteArrayInputStream;
if-eqz v1, :cond_11
invoke-virtual {p0}, Ljava/io/InputStream;->available()I
move-result v1
new-array v0, v1, [B
invoke-virtual {p0, v0, v5, v1}, Ljava/io/InputStream;->read([BII)I
:goto_10
return-object v0
:cond_11
new-instance v1, Ljava/io/ByteArrayOutputStream;
invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
new-array v2, v0, [B
:goto_18
invoke-virtual {p0, v2, v5, v0}, Ljava/io/InputStream;->read([BII)I
move-result v3
const/4 v4, -0x1
if-ne v3, v4, :cond_24
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
goto :goto_10
:cond_24
invoke-virtual {v1, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
goto :goto_18
.end method
.method public static getBytes(Ljava/lang/String;)[B
.registers 7
invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C
move-result-object v2
array-length v3, v2
new-array v4, v3, [B
const/4 v0, 0x0
:goto_8
if-lt v0, v3, :cond_b
return-object v4
:cond_b
add-int/lit8 v1, v0, 0x1
aget-char v5, v2, v0
int-to-byte v5, v5
aput-byte v5, v4, v0
move v0, v1
goto :goto_8
.end method
.method public static parseInt([BII)I
.registers 4
const/16 v0, 0xa
invoke-static {p0, p1, p2, v0}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BIII)I
move-result v0
return v0
.end method
.method public static parseInt([BIII)I
.registers 12
const/4 v3, 0x0
if-nez p0, :cond_b
new-instance v0, Ljava/lang/NumberFormatException;
const-string v1, "null"
invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b
if-le p2, p1, :cond_7e
aget-byte v0, p0, p1
const/16 v1, 0x2d
if-ne v0, v1, :cond_40
const/4 v2, 0x1
const/high16 v0, -0x8000
add-int/lit8 v1, p1, 0x1
:goto_18
div-int v5, v0, p3
if-ge v1, p2, :cond_90
add-int/lit8 v3, v1, 0x1
aget-byte v1, p0, v1
int-to-char v1, v1
invoke-static {v1, p3}, Ljava/lang/Character;->digit(CI)I
move-result v1
if-gez v1, :cond_46
new-instance v0, Ljava/lang/NumberFormatException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "illegal number: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p0, p1, p2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V
throw v0
:cond_40
const v0, -0x7fffffff
move v1, p1
move v2, v3
goto :goto_18
:cond_46
neg-int v1, v1
:goto_47
if-lt v3, p2, :cond_51
if-eqz v2, :cond_8e
add-int/lit8 v0, p1, 0x1
if-le v3, v0, :cond_86
move v0, v1
:goto_50
return v0
:cond_51
add-int/lit8 v4, v3, 0x1
aget-byte v3, p0, v3
int-to-char v3, v3
invoke-static {v3, p3}, Ljava/lang/Character;->digit(CI)I
move-result v3
if-gez v3, :cond_64
new-instance v0, Ljava/lang/NumberFormatException;
const-string v1, "illegal number"
invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V
throw v0
:cond_64
if-ge v1, v5, :cond_6e
new-instance v0, Ljava/lang/NumberFormatException;
const-string v1, "illegal number"
invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V
throw v0
:cond_6e
mul-int/2addr v1, p3
add-int v6, v0, v3
if-ge v1, v6, :cond_7b
new-instance v0, Ljava/lang/NumberFormatException;
const-string v1, "illegal number"
invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V
throw v0
:cond_7b
sub-int/2addr v1, v3
move v3, v4
goto :goto_47
:cond_7e
new-instance v0, Ljava/lang/NumberFormatException;
const-string v1, "illegal number"
invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V
throw v0
:cond_86
new-instance v0, Ljava/lang/NumberFormatException;
const-string v1, "illegal number"
invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V
throw v0
:cond_8e
neg-int v0, v1
goto :goto_50
:cond_90
move v7, v1
move v1, v3
move v3, v7
goto :goto_47
.end method
.method public static parseLong([BII)J
.registers 5
const/16 v0, 0xa
invoke-static {p0, p1, p2, v0}, Lcom/sun/mail/util/ASCIIUtility;->parseLong([BIII)J
move-result-wide v0
return-wide v0
.end method
.method public static parseLong([BIII)J
.registers 18
if-nez p0, :cond_a
new-instance v1, Ljava/lang/NumberFormatException;
const-string v2, "null"
invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V
throw v1
:cond_a
const-wide/16 v5, 0x0
const/4 v3, 0x0
move/from16 v0, p2
if-le v0, p1, :cond_9b
aget-byte v1, p0, p1
const/16 v2, 0x2d
if-ne v1, v2, :cond_4b
const/4 v4, 0x1
const-wide/high16 v1, -0x8000
add-int/lit8 v3, p1, 0x1
:goto_1c
move/from16 v0, p3
int-to-long v7, v0
div-long v8, v1, v7
move/from16 v0, p2
if-ge v3, v0, :cond_58
add-int/lit8 v5, v3, 0x1
aget-byte v3, p0, v3
int-to-char v3, v3
move/from16 v0, p3
invoke-static {v3, v0}, Ljava/lang/Character;->digit(CI)I
move-result v3
if-gez v3, :cond_53
new-instance v1, Ljava/lang/NumberFormatException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "illegal number: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static/range {p0 .. p2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V
throw v1
:cond_4b
const-wide v1, -0x7fffffffffffffffL
move v4, v3
move v3, p1
goto :goto_1c
:cond_53
neg-int v3, v3
int-to-long v6, v3
move v3, v5
move-wide v12, v6
move-wide v5, v12
:goto_58
:cond_58
move/from16 v0, p2
if-lt v3, v0, :cond_64
if-eqz v4, :cond_ab
add-int/lit8 v1, p1, 0x1
if-le v3, v1, :cond_a3
move-wide v1, v5
:goto_63
return-wide v1
:cond_64
add-int/lit8 v7, v3, 0x1
aget-byte v3, p0, v3
int-to-char v3, v3
move/from16 v0, p3
invoke-static {v3, v0}, Ljava/lang/Character;->digit(CI)I
move-result v3
if-gez v3, :cond_79
new-instance v1, Ljava/lang/NumberFormatException;
const-string v2, "illegal number"
invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V
throw v1
:cond_79
cmp-long v10, v5, v8
if-gez v10, :cond_85
new-instance v1, Ljava/lang/NumberFormatException;
const-string v2, "illegal number"
invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V
throw v1
:cond_85
move/from16 v0, p3
int-to-long v10, v0
mul-long/2addr v5, v10
int-to-long v10, v3
add-long/2addr v10, v1
cmp-long v10, v5, v10
if-gez v10, :cond_97
new-instance v1, Ljava/lang/NumberFormatException;
const-string v2, "illegal number"
invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V
throw v1
:cond_97
int-to-long v10, v3
sub-long/2addr v5, v10
move v3, v7
goto :goto_58
:cond_9b
new-instance v1, Ljava/lang/NumberFormatException;
const-string v2, "illegal number"
invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V
throw v1
:cond_a3
new-instance v1, Ljava/lang/NumberFormatException;
const-string v2, "illegal number"
invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V
throw v1
:cond_ab
neg-long v1, v5
goto :goto_63
.end method
.method public static toString(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;
.registers 7
const/4 v0, 0x0
invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I
move-result v2
new-array v3, v2, [C
new-array v4, v2, [B
invoke-virtual {p0, v4, v0, v2}, Ljava/io/ByteArrayInputStream;->read([BII)I
:goto_c
if-lt v0, v2, :cond_14
new-instance v0, Ljava/lang/String;
invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V
return-object v0
:cond_14
add-int/lit8 v1, v0, 0x1
aget-byte v5, v4, v0
and-int/lit16 v5, v5, 0xff
int-to-char v5, v5
aput-char v5, v3, v0
move v0, v1
goto :goto_c
.end method
.method public static toString([BII)Ljava/lang/String;
.registers 9
sub-int v3, p2, p1
new-array v4, v3, [C
const/4 v0, 0x0
move v1, v0
:goto_6
if-lt v1, v3, :cond_e
new-instance v0, Ljava/lang/String;
invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V
return-object v0
:cond_e
add-int/lit8 v2, v1, 0x1
add-int/lit8 v0, p1, 0x1
aget-byte v5, p0, p1
and-int/lit16 v5, v5, 0xff
int-to-char v5, v5
aput-char v5, v4, v1
move p1, v0
move v1, v2
goto :goto_6
.end method