.class public Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
.super Ljava/io/InputStream;
.source "QuotedPrintableInputStream.java"
.field private static log:Lorg/apache/commons/logging/Log;
.field  byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;
.field  pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;
.field private state:B
.field private stream:Ljava/io/InputStream;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
move-result-object v0
sput-object v0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 3
invoke-direct {p0}, Ljava/io/InputStream;-><init>()V
new-instance v0, Lorg/apache/james/mime4j/decoder/ByteQueue;
invoke-direct {v0}, Lorg/apache/james/mime4j/decoder/ByteQueue;-><init>()V
iput-object v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;
new-instance v0, Lorg/apache/james/mime4j/decoder/ByteQueue;
invoke-direct {v0}, Lorg/apache/james/mime4j/decoder/ByteQueue;-><init>()V
iput-object v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;
const/4 v0, 0x0
iput-byte v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B
iput-object p1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->stream:Ljava/io/InputStream;
return-void
.end method
.method private asciiCharToNumericValue(B)B
.registers 6
const/16 v3, 0x61
const/16 v2, 0x41
const/16 v1, 0x30
if-lt p1, v1, :cond_10
const/16 v0, 0x39
if-gt p1, v0, :cond_10
sub-int v0, p1, v1
int-to-byte v0, v0
:goto_f
return v0
:cond_10
if-lt p1, v2, :cond_1c
const/16 v0, 0x5a
if-gt p1, v0, :cond_1c
sub-int v0, p1, v2
add-int/lit8 v0, v0, 0xa
int-to-byte v0, v0
goto :goto_f
:cond_1c
if-lt p1, v3, :cond_28
const/16 v0, 0x7a
if-gt p1, v0, :cond_28
sub-int v0, p1, v3
add-int/lit8 v0, v0, 0xa
int-to-byte v0, v0
goto :goto_f
:cond_28
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
int-to-char v2, p1
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " is not a hexadecimal digit"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private fillBuffer()V
.registers 13
const/16 v11, 0x39
const/16 v10, 0x30
const/16 v9, 0xd
const/16 v8, 0x3d
const/4 v7, 0x0
const/4 v3, 0x0
:goto_a
iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;
invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/ByteQueue;->count()I
move-result v4
if-nez v4, :cond_25
iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;
invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/ByteQueue;->count()I
move-result v4
if-nez v4, :cond_26
invoke-direct {p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->populatePushbackQueue()V
iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;
invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/ByteQueue;->count()I
move-result v4
if-nez v4, :cond_26
:cond_25
return-void
:cond_26
iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;
invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/ByteQueue;->dequeue()B
move-result v0
iget-byte v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B
packed-switch v4, :pswitch_data_15c
sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Illegal state: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget-byte v6, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V
iput-byte v7, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B
iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;
invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V
goto :goto_a
:pswitch_53
if-eq v0, v8, :cond_5b
iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;
invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V
goto :goto_a
:cond_5b
const/4 v4, 0x1
iput-byte v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B
goto :goto_a
:pswitch_5f
if-ne v0, v9, :cond_65
const/4 v4, 0x2
iput-byte v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B
goto :goto_a
:cond_65
if-lt v0, v10, :cond_69
if-le v0, v11, :cond_79
:cond_69
const/16 v4, 0x41
if-lt v0, v4, :cond_71
const/16 v4, 0x46
if-le v0, v4, :cond_79
:cond_71
const/16 v4, 0x61
if-lt v0, v4, :cond_7e
const/16 v4, 0x66
if-gt v0, v4, :cond_7e
:cond_79
const/4 v4, 0x3
iput-byte v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B
move v3, v0
goto :goto_a
:cond_7e
if-ne v0, v8, :cond_96
sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;
invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z
move-result v4
if-eqz v4, :cond_8f
sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;
const-string v5, "Malformed MIME; got =="
invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
:cond_8f
iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;
invoke-virtual {v4, v8}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V
goto/16 :goto_a
:cond_96
sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;
invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z
move-result v4
if-eqz v4, :cond_b6
sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Malformed MIME; expected \\r or [0-9A-Z], got "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
:cond_b6
iput-byte v7, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B
iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;
invoke-virtual {v4, v8}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V
iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;
invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V
goto/16 :goto_a
:pswitch_c4
const/16 v4, 0xa
if-ne v0, v4, :cond_cc
iput-byte v7, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B
goto/16 :goto_a
:cond_cc
sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;
invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z
move-result v4
if-eqz v4, :cond_ec
sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Malformed MIME; expected 10, got "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
:cond_ec
iput-byte v7, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B
iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;
invoke-virtual {v4, v8}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V
iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;
invoke-virtual {v4, v9}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V
iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;
invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V
goto/16 :goto_a
:pswitch_ff
if-lt v0, v10, :cond_103
if-le v0, v11, :cond_113
:cond_103
const/16 v4, 0x41
if-lt v0, v4, :cond_10b
const/16 v4, 0x46
if-le v0, v4, :cond_113
:cond_10b
const/16 v4, 0x61
if-lt v0, v4, :cond_128
const/16 v4, 0x66
if-gt v0, v4, :cond_128
:cond_113
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->asciiCharToNumericValue(B)B
move-result v2
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->asciiCharToNumericValue(B)B
move-result v1
iput-byte v7, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B
iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;
shl-int/lit8 v5, v2, 0x4
or-int/2addr v5, v1
int-to-byte v5, v5
invoke-virtual {v4, v5}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V
goto/16 :goto_a
:cond_128
sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;
invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z
move-result v4
if-eqz v4, :cond_148
sget-object v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Malformed MIME; expected [0-9A-Z], got "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
:cond_148
iput-byte v7, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->state:B
iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;
invoke-virtual {v4, v8}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V
iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;
invoke-virtual {v4, v3}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V
iget-object v4, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;
invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V
goto/16 :goto_a
nop
:pswitch_data_15c
.packed-switch 0x0
:pswitch_53
:pswitch_5f
:pswitch_c4
:pswitch_ff
.end packed-switch
.end method
.method private populatePushbackQueue()V
.registers 4
iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;
invoke-virtual {v1}, Lorg/apache/james/mime4j/decoder/ByteQueue;->count()I
move-result v1
if-eqz v1, :cond_f
:goto_8
return-void
:sswitch_9
iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;
int-to-byte v2, v0
invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V
:cond_f
iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->stream:Ljava/io/InputStream;
invoke-virtual {v1}, Ljava/io/InputStream;->read()I
move-result v0
sparse-switch v0, :sswitch_data_32
iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;
int-to-byte v2, v0
invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V
goto :goto_8
:sswitch_1f
iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;
invoke-virtual {v1}, Lorg/apache/james/mime4j/decoder/ByteQueue;->clear()V
goto :goto_8
:sswitch_25
iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;
invoke-virtual {v1}, Lorg/apache/james/mime4j/decoder/ByteQueue;->clear()V
iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/decoder/ByteQueue;
int-to-byte v2, v0
invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/decoder/ByteQueue;->enqueue(B)V
goto :goto_8
nop
:sswitch_data_32
.sparse-switch
-0x1 -> :sswitch_1f
0x9 -> :sswitch_9
0xa -> :sswitch_25
0xd -> :sswitch_25
0x20 -> :sswitch_9
.end sparse-switch
.end method
.method public close()V
.registers 2
iget-object v0, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->stream:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
return-void
.end method
.method public read()I
.registers 3
invoke-direct {p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->fillBuffer()V
iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;
invoke-virtual {v1}, Lorg/apache/james/mime4j/decoder/ByteQueue;->count()I
move-result v1
if-nez v1, :cond_d
const/4 v1, -0x1
:goto_c
return v1
:cond_d
iget-object v1, p0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/decoder/ByteQueue;
invoke-virtual {v1}, Lorg/apache/james/mime4j/decoder/ByteQueue;->dequeue()B
move-result v0
if-ltz v0, :cond_17
move v1, v0
goto :goto_c
:cond_17
and-int/lit16 v1, v0, 0xff
goto :goto_c
.end method