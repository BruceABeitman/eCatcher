.class public Lcom/sun/mail/iap/ResponseInputStream;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final incrementSlop:I = 0x10
.field private static final maxIncrement:I = 0x40000
.field private static final minIncrement:I = 0x100
.field private bin:Ljava/io/BufferedInputStream;
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/io/BufferedInputStream;
const/16 v1, 0x800
invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
iput-object v0, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;
return-void
.end method
.method public readResponse()Lcom/sun/mail/iap/ByteArray;
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/sun/mail/iap/ResponseInputStream;->readResponse(Lcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/iap/ByteArray;
move-result-object v0
return-object v0
.end method
.method public readResponse(Lcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/iap/ByteArray;
.registers 12
const/high16 v4, 0x4
const/16 v5, 0x100
const/16 v2, 0x80
const/4 v9, -0x1
const/4 v1, 0x0
if-nez p1, :cond_11
new-instance p1, Lcom/sun/mail/iap/ByteArray;
new-array v0, v2, [B
invoke-direct {p1, v0, v1, v2}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V
:cond_11
invoke-virtual {p1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B
move-result-object v0
move-object v2, v0
move v0, v1
:cond_17
move v3, v1
move v6, v1
:goto_19
if-nez v3, :cond_23
iget-object v6, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;
invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I
move-result v6
if-ne v6, v9, :cond_2c
:cond_23
move v3, v6
if-ne v3, v9, :cond_50
new-instance v0, Ljava/io/IOException;
invoke-direct {v0}, Ljava/io/IOException;-><init>()V
throw v0
:cond_2c
packed-switch v6, :pswitch_data_9c
:goto_2f
:cond_2f
array-length v7, v2
if-lt v0, v7, :cond_3d
array-length v2, v2
if-le v2, v4, :cond_36
move v2, v4
:cond_36
invoke-virtual {p1, v2}, Lcom/sun/mail/iap/ByteArray;->grow(I)V
invoke-virtual {p1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B
move-result-object v2
:cond_3d
add-int/lit8 v7, v0, 0x1
int-to-byte v8, v6
aput-byte v8, v2, v0
move v0, v7
goto :goto_19
:pswitch_44
if-lez v0, :cond_2f
add-int/lit8 v7, v0, -0x1
aget-byte v7, v2, v7
const/16 v8, 0xd
if-ne v7, v8, :cond_2f
const/4 v3, 0x1
goto :goto_2f
:cond_50
const/4 v3, 0x5
if-lt v0, v3, :cond_5b
add-int/lit8 v3, v0, -0x3
aget-byte v3, v2, v3
const/16 v6, 0x7d
if-eq v3, v6, :cond_5f
:goto_5b
:cond_5b
invoke-virtual {p1, v0}, Lcom/sun/mail/iap/ByteArray;->setCount(I)V
return-object p1
:cond_5f
add-int/lit8 v3, v0, -0x4
:goto_61
if-gez v3, :cond_8d
:cond_63
if-ltz v3, :cond_5b
add-int/lit8 v3, v3, 0x1
add-int/lit8 v6, v0, -0x3
:try_start_69
invoke-static {v2, v3, v6}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BII)I
:try_end_6c
.catch Ljava/lang/NumberFormatException; {:try_start_69 .. :try_end_6c} :catch_9a
move-result v3
if-lez v3, :cond_17
array-length v6, v2
sub-int/2addr v6, v0
add-int/lit8 v7, v3, 0x10
if-le v7, v6, :cond_82
add-int/lit8 v2, v3, 0x10
sub-int/2addr v2, v6
if-le v5, v2, :cond_96
move v2, v5
:goto_7b
invoke-virtual {p1, v2}, Lcom/sun/mail/iap/ByteArray;->grow(I)V
invoke-virtual {p1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B
move-result-object v2
:goto_82
:cond_82
if-lez v3, :cond_17
iget-object v6, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;
invoke-virtual {v6, v2, v0, v3}, Ljava/io/BufferedInputStream;->read([BII)I
move-result v6
sub-int/2addr v3, v6
add-int/2addr v0, v6
goto :goto_82
:cond_8d
aget-byte v6, v2, v3
const/16 v7, 0x7b
if-eq v6, v7, :cond_63
add-int/lit8 v3, v3, -0x1
goto :goto_61
:cond_96
add-int/lit8 v2, v3, 0x10
sub-int/2addr v2, v6
goto :goto_7b
:catch_9a
move-exception v1
goto :goto_5b
:pswitch_data_9c
.packed-switch 0xa
:pswitch_44
.end packed-switch
.end method