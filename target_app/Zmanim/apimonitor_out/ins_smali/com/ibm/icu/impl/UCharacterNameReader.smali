.class final Lcom/ibm/icu/impl/UCharacterNameReader;
.super Ljava/lang/Object;
.source "UCharacterNameReader.java"
.implements Lcom/ibm/icu/impl/ICUBinary$Authenticate;
.field private static final ALG_INFO_SIZE_:I = 0xc
.field private static final DATA_FORMAT_ID_:[B = null
.field private static final DATA_FORMAT_VERSION_:[B = null
.field private static final GROUP_INFO_SIZE_:I = 0x3
.field private m_algnamesindex_:I
.field private m_dataInputStream_:Ljava/io/DataInputStream;
.field private m_groupindex_:I
.field private m_groupstringindex_:I
.field private m_tokenstringindex_:I
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x4
new-array v0, v1, [B
fill-array-data v0, :array_10
sput-object v0, Lcom/ibm/icu/impl/UCharacterNameReader;->DATA_FORMAT_VERSION_:[B
new-array v0, v1, [B
fill-array-data v0, :array_16
sput-object v0, Lcom/ibm/icu/impl/UCharacterNameReader;->DATA_FORMAT_ID_:[B
return-void
:array_16
.array-data 0x1
0x75t
0x6et
0x61t
0x6dt
.end array-data
:array_10
.array-data 0x1
0x1t
0x0t
0x0t
0x0t
.end array-data
.end method
.method protected constructor <init>(Ljava/io/InputStream;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/ibm/icu/impl/UCharacterNameReader;->DATA_FORMAT_ID_:[B
invoke-static {p1, v0, p0}, Lcom/ibm/icu/impl/ICUBinary;->readHeader(Ljava/io/InputStream;[BLcom/ibm/icu/impl/ICUBinary$Authenticate;)[B
new-instance v0, Ljava/io/DataInputStream;
invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_dataInputStream_:Ljava/io/DataInputStream;
return-void
.end method
.method private readAlg()Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;
.registers 13
new-instance v6, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;
invoke-direct {v6}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;-><init>()V
iget-object v11, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_dataInputStream_:Ljava/io/DataInputStream;
invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I
move-result v5
iget-object v11, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_dataInputStream_:Ljava/io/DataInputStream;
invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I
move-result v4
iget-object v11, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_dataInputStream_:Ljava/io/DataInputStream;
invoke-virtual {v11}, Ljava/io/DataInputStream;->readByte()B
move-result v9
iget-object v11, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_dataInputStream_:Ljava/io/DataInputStream;
invoke-virtual {v11}, Ljava/io/DataInputStream;->readByte()B
move-result v10
invoke-virtual {v6, v5, v4, v9, v10}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->setInfo(IIBB)Z
move-result v11
if-nez v11, :cond_25
const/4 v11, 0x0
:goto_24
return-object v11
:cond_25
iget-object v11, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_dataInputStream_:Ljava/io/DataInputStream;
invoke-virtual {v11}, Ljava/io/DataInputStream;->readChar()C
move-result v7
const/4 v11, 0x1
if-ne v9, v11, :cond_44
new-array v1, v10, [C
const/4 v2, 0x0
:goto_31
if-ge v2, v10, :cond_3e
iget-object v11, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_dataInputStream_:Ljava/io/DataInputStream;
invoke-virtual {v11}, Ljava/io/DataInputStream;->readChar()C
move-result v11
aput-char v11, v1, v2
add-int/lit8 v2, v2, 0x1
goto :goto_31
:cond_3e
invoke-virtual {v6, v1}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->setFactor([C)Z
shl-int/lit8 v11, v10, 0x1
sub-int/2addr v7, v11
:cond_44
new-instance v3, Ljava/lang/StringBuffer;
invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
iget-object v11, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_dataInputStream_:Ljava/io/DataInputStream;
invoke-virtual {v11}, Ljava/io/DataInputStream;->readByte()B
move-result v11
and-int/lit16 v11, v11, 0xff
int-to-char v0, v11
:goto_52
if-eqz v0, :cond_61
invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
iget-object v11, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_dataInputStream_:Ljava/io/DataInputStream;
invoke-virtual {v11}, Ljava/io/DataInputStream;->readByte()B
move-result v11
and-int/lit16 v11, v11, 0xff
int-to-char v0, v11
goto :goto_52
:cond_61
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v11
invoke-virtual {v6, v11}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->setPrefix(Ljava/lang/String;)Z
invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I
move-result v11
add-int/lit8 v11, v11, 0xc
add-int/lit8 v11, v11, 0x1
sub-int/2addr v7, v11
if-lez v7, :cond_7d
new-array v8, v7, [B
iget-object v11, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_dataInputStream_:Ljava/io/DataInputStream;
invoke-virtual {v11, v8}, Ljava/io/DataInputStream;->readFully([B)V
invoke-virtual {v6, v8}, Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;->setFactorString([B)Z
:cond_7d
move-object v11, v6
goto :goto_24
.end method
.method protected authenticate([B[B)Z
.registers 4
sget-object v0, Lcom/ibm/icu/impl/UCharacterNameReader;->DATA_FORMAT_ID_:[B
invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z
move-result v0
if-eqz v0, :cond_12
sget-object v0, Lcom/ibm/icu/impl/UCharacterNameReader;->DATA_FORMAT_VERSION_:[B
invoke-static {v0, p2}, Ljava/util/Arrays;->equals([B[B)Z
move-result v0
if-eqz v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public isDataVersionAcceptable([B)Z
.registers 5
const/4 v2, 0x0
aget-byte v0, p1, v2
sget-object v1, Lcom/ibm/icu/impl/UCharacterNameReader;->DATA_FORMAT_VERSION_:[B
aget-byte v1, v1, v2
if-ne v0, v1, :cond_b
const/4 v0, 0x1
:goto_a
return v0
:cond_b
move v0, v2
goto :goto_a
.end method
.method protected read(Lcom/ibm/icu/impl/UCharacterName;)V
.registers 13
iget-object v9, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_dataInputStream_:Ljava/io/DataInputStream;
invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I
move-result v9
iput v9, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_tokenstringindex_:I
iget-object v9, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_dataInputStream_:Ljava/io/DataInputStream;
invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I
move-result v9
iput v9, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_groupindex_:I
iget-object v9, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_dataInputStream_:Ljava/io/DataInputStream;
invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I
move-result v9
iput v9, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_groupstringindex_:I
iget-object v9, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_dataInputStream_:Ljava/io/DataInputStream;
invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I
move-result v9
iput v9, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_algnamesindex_:I
iget-object v9, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_dataInputStream_:Ljava/io/DataInputStream;
invoke-virtual {v9}, Ljava/io/DataInputStream;->readChar()C
move-result v2
new-array v7, v2, [C
const/4 v5, 0x0
:goto_29
if-ge v5, v2, :cond_37
iget-object v9, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_dataInputStream_:Ljava/io/DataInputStream;
invoke-virtual {v9}, Ljava/io/DataInputStream;->readChar()C
move-result v9
aput-char v9, v7, v5
add-int/lit8 v9, v5, 0x1
int-to-char v5, v9
goto :goto_29
:cond_37
iget v9, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_groupindex_:I
iget v10, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_tokenstringindex_:I
sub-int v6, v9, v10
new-array v8, v6, [B
iget-object v9, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_dataInputStream_:Ljava/io/DataInputStream;
invoke-virtual {v9, v8}, Ljava/io/DataInputStream;->readFully([B)V
invoke-virtual {p1, v7, v8}, Lcom/ibm/icu/impl/UCharacterName;->setToken([C[B)Z
iget-object v9, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_dataInputStream_:Ljava/io/DataInputStream;
invoke-virtual {v9}, Ljava/io/DataInputStream;->readChar()C
move-result v2
const/4 v9, 0x3
invoke-virtual {p1, v2, v9}, Lcom/ibm/icu/impl/UCharacterName;->setGroupCountSize(II)Z
mul-int/lit8 v2, v2, 0x3
new-array v3, v2, [C
const/4 v5, 0x0
:goto_56
if-ge v5, v2, :cond_63
iget-object v9, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_dataInputStream_:Ljava/io/DataInputStream;
invoke-virtual {v9}, Ljava/io/DataInputStream;->readChar()C
move-result v9
aput-char v9, v3, v5
add-int/lit8 v5, v5, 0x1
goto :goto_56
:cond_63
iget v9, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_algnamesindex_:I
iget v10, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_groupstringindex_:I
sub-int v6, v9, v10
new-array v4, v6, [B
iget-object v9, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_dataInputStream_:Ljava/io/DataInputStream;
invoke-virtual {v9, v4}, Ljava/io/DataInputStream;->readFully([B)V
invoke-virtual {p1, v3, v4}, Lcom/ibm/icu/impl/UCharacterName;->setGroup([C[B)Z
iget-object v9, p0, Lcom/ibm/icu/impl/UCharacterNameReader;->m_dataInputStream_:Ljava/io/DataInputStream;
invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I
move-result v2
new-array v0, v2, [Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;
const/4 v5, 0x0
:goto_7c
if-ge v5, v2, :cond_91
invoke-direct {p0}, Lcom/ibm/icu/impl/UCharacterNameReader;->readAlg()Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;
move-result-object v1
if-nez v1, :cond_8c
new-instance v9, Ljava/io/IOException;
const-string v10, "unames.icu read error: Algorithmic names creation error"
invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v9
:cond_8c
aput-object v1, v0, v5
add-int/lit8 v5, v5, 0x1
goto :goto_7c
:cond_91
invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/UCharacterName;->setAlgorithm([Lcom/ibm/icu/impl/UCharacterName$AlgorithmName;)Z
return-void
.end method