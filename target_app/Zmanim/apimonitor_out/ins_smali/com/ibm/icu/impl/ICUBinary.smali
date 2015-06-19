.class public final Lcom/ibm/icu/impl/ICUBinary;
.super Ljava/lang/Object;
.source "ICUBinary.java"
.field private static final BIG_ENDIAN_:B = 0x1t
.field private static final CHAR_SET_:B = 0x0t
.field private static final CHAR_SIZE_:B = 0x2t
.field private static final HEADER_AUTHENTICATION_FAILED_:Ljava/lang/String; = "ICU data file error: Header authentication failed, please check if you have a valid ICU data file"
.field private static final MAGIC1:B = -0x26t
.field private static final MAGIC2:B = 0x27t
.field private static final MAGIC_NUMBER_AUTHENTICATION_FAILED_:Ljava/lang/String; = "ICU data file error: Not an ICU data file"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static final readHeader(Ljava/io/InputStream;[BLcom/ibm/icu/impl/ICUBinary$Authenticate;)[B
.registers 16
const/4 v12, 0x4
new-instance v6, Ljava/io/DataInputStream;
invoke-direct {v6, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
invoke-virtual {v6}, Ljava/io/DataInputStream;->readChar()C
move-result v5
const/4 v9, 0x2
invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B
move-result v7
add-int/lit8 v9, v9, 0x1
invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B
move-result v8
add-int/lit8 v9, v9, 0x1
const/16 v11, -0x26
if-ne v7, v11, :cond_1f
const/16 v11, 0x27
if-eq v8, v11, :cond_27
:cond_1f
new-instance v11, Ljava/io/IOException;
const-string v12, "ICU data file error: Not an ICU data file"
invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v11
:cond_27
invoke-virtual {v6}, Ljava/io/DataInputStream;->readChar()C
add-int/lit8 v9, v9, 0x2
invoke-virtual {v6}, Ljava/io/DataInputStream;->readChar()C
add-int/lit8 v9, v9, 0x2
invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B
move-result v0
add-int/lit8 v9, v9, 0x1
invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B
move-result v1
add-int/lit8 v9, v9, 0x1
invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B
move-result v2
add-int/lit8 v9, v9, 0x1
invoke-virtual {v6}, Ljava/io/DataInputStream;->readByte()B
add-int/lit8 v9, v9, 0x1
new-array v3, v12, [B
invoke-virtual {v6, v3}, Ljava/io/DataInputStream;->readFully([B)V
add-int/lit8 v9, v9, 0x4
new-array v4, v12, [B
invoke-virtual {v6, v4}, Ljava/io/DataInputStream;->readFully([B)V
add-int/lit8 v9, v9, 0x4
new-array v10, v12, [B
invoke-virtual {v6, v10}, Ljava/io/DataInputStream;->readFully([B)V
add-int/lit8 v9, v9, 0x4
if-ge v5, v9, :cond_67
new-instance v11, Ljava/io/IOException;
const-string v12, "Internal Error: Header size error"
invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v11
:cond_67
sub-int v11, v5, v9
invoke-virtual {v6, v11}, Ljava/io/DataInputStream;->skipBytes(I)I
const/4 v11, 0x1
if-ne v0, v11, :cond_82
if-nez v1, :cond_82
const/4 v11, 0x2
if-ne v2, v11, :cond_82
invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z
move-result v11
if-eqz v11, :cond_82
if-eqz p2, :cond_8a
invoke-interface {p2, v4}, Lcom/ibm/icu/impl/ICUBinary$Authenticate;->isDataVersionAcceptable([B)Z
move-result v11
if-nez v11, :cond_8a
:cond_82
new-instance v11, Ljava/io/IOException;
const-string v12, "ICU data file error: Header authentication failed, please check if you have a valid ICU data file"
invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v11
:cond_8a
return-object v10
.end method