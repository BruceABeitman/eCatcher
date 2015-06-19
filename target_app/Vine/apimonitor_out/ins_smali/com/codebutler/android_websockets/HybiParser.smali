.class public Lcom/codebutler/android_websockets/HybiParser;
.super Ljava/lang/Object;
.source "HybiParser.java"
.field private static final BYTE:I = 0xff
.field private static final FIN:I = 0x80
.field private static final FRAGMENTED_OPCODES:Ljava/util/List; = null
.field private static final LENGTH:I = 0x7f
.field private static final MASK:I = 0x80
.field private static final MODE_BINARY:I = 0x2
.field private static final MODE_TEXT:I = 0x1
.field private static final OPCODE:I = 0xf
.field private static final OPCODES:Ljava/util/List; = null
.field private static final OP_BINARY:I = 0x2
.field private static final OP_CLOSE:I = 0x8
.field private static final OP_CONTINUATION:I = 0x0
.field private static final OP_PING:I = 0x9
.field private static final OP_PONG:I = 0xa
.field private static final OP_TEXT:I = 0x1
.field private static final RSV1:I = 0x40
.field private static final RSV2:I = 0x20
.field private static final RSV3:I = 0x10
.field private static final TAG:Ljava/lang/String; = "HybiParser"
.field private mBuffer:Ljava/io/ByteArrayOutputStream;
.field private mClient:Lcom/codebutler/android_websockets/WebSocketClient;
.field private mClosed:Z
.field private mFinal:Z
.field private mLength:I
.field private mLengthSize:I
.field private mMask:[B
.field private mMasked:Z
.field private mMasking:Z
.field private mMode:I
.field private mOpcode:I
.field private mPayload:[B
.field private mStage:I
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
const/4 v0, 0x6
new-array v0, v0, [Ljava/lang/Integer;
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v0, v3
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v0, v4
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v0, v5
const/16 v1, 0x8
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v0, v6
const/4 v1, 0x4
const/16 v2, 0x9
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x5
const/16 v2, 0xa
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
sput-object v0, Lcom/codebutler/android_websockets/HybiParser;->OPCODES:Ljava/util/List;
new-array v0, v6, [Ljava/lang/Integer;
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v0, v3
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v0, v4
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v0, v5
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
sput-object v0, Lcom/codebutler/android_websockets/HybiParser;->FRAGMENTED_OPCODES:Ljava/util/List;
return-void
.end method
.method public constructor <init>(Lcom/codebutler/android_websockets/WebSocketClient;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/codebutler/android_websockets/HybiParser;->mMasking:Z
new-array v0, v1, [B
iput-object v0, p0, Lcom/codebutler/android_websockets/HybiParser;->mMask:[B
new-array v0, v1, [B
iput-object v0, p0, Lcom/codebutler/android_websockets/HybiParser;->mPayload:[B
iput-boolean v1, p0, Lcom/codebutler/android_websockets/HybiParser;->mClosed:Z
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
iput-object v0, p0, Lcom/codebutler/android_websockets/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;
iput-object p1, p0, Lcom/codebutler/android_websockets/HybiParser;->mClient:Lcom/codebutler/android_websockets/WebSocketClient;
return-void
.end method
.method private static byteArrayToLong([BII)J
.registers 9
array-length v4, p0
if-ge v4, p2, :cond_b
new-instance v4, Ljava/lang/IllegalArgumentException;
const-string v5, "length must be less than or equal to b.length"
invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v4
:cond_b
const-wide/16 v2, 0x0
const/4 v0, 0x0
:goto_e
if-ge v0, p2, :cond_21
add-int/lit8 v4, p2, -0x1
sub-int/2addr v4, v0
mul-int/lit8 v1, v4, 0x8
add-int v4, v0, p1
aget-byte v4, p0, v4
and-int/lit16 v4, v4, 0xff
shl-int/2addr v4, v1
int-to-long v4, v4
add-long/2addr v2, v4
add-int/lit8 v0, v0, 0x1
goto :goto_e
:cond_21
return-wide v2
.end method
.method private decode(Ljava/lang/String;)[B
.registers 4
:try_start_0
const-string v1, "UTF-8"
invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
:try_end_5
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7
move-result-object v1
return-object v1
:catch_7
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method private emitFrame()V
.registers 12
const/16 v10, 0xa
const/4 v0, 0x0
const/4 v9, 0x1
const/4 v8, 0x2
iget-object v6, p0, Lcom/codebutler/android_websockets/HybiParser;->mPayload:[B
iget-object v7, p0, Lcom/codebutler/android_websockets/HybiParser;->mMask:[B
invoke-static {v6, v7, v0}, Lcom/codebutler/android_websockets/HybiParser;->mask([B[BI)[B
move-result-object v4
iget v3, p0, Lcom/codebutler/android_websockets/HybiParser;->mOpcode:I
if-nez v3, :cond_4b
iget v6, p0, Lcom/codebutler/android_websockets/HybiParser;->mMode:I
if-nez v6, :cond_1d
new-instance v6, Lcom/codebutler/android_websockets/HybiParser$ProtocolError;
const-string v7, "Mode was not set."
invoke-direct {v6, v7}, Lcom/codebutler/android_websockets/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V
throw v6
:cond_1d
iget-object v6, p0, Lcom/codebutler/android_websockets/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v6, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
iget-boolean v6, p0, Lcom/codebutler/android_websockets/HybiParser;->mFinal:Z
if-eqz v6, :cond_40
iget-object v6, p0, Lcom/codebutler/android_websockets/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v1
iget v6, p0, Lcom/codebutler/android_websockets/HybiParser;->mMode:I
if-ne v6, v9, :cond_41
iget-object v6, p0, Lcom/codebutler/android_websockets/HybiParser;->mClient:Lcom/codebutler/android_websockets/WebSocketClient;
invoke-virtual {v6}, Lcom/codebutler/android_websockets/WebSocketClient;->getListener()Lcom/codebutler/android_websockets/WebSocketClient$Listener;
move-result-object v6
invoke-direct {p0, v1}, Lcom/codebutler/android_websockets/HybiParser;->encode([B)Ljava/lang/String;
move-result-object v7
invoke-interface {v6, v7}, Lcom/codebutler/android_websockets/WebSocketClient$Listener;->onMessage(Ljava/lang/String;)V
:goto_3d
invoke-direct {p0}, Lcom/codebutler/android_websockets/HybiParser;->reset()V
:cond_40
:goto_40
return-void
:cond_41
iget-object v6, p0, Lcom/codebutler/android_websockets/HybiParser;->mClient:Lcom/codebutler/android_websockets/WebSocketClient;
invoke-virtual {v6}, Lcom/codebutler/android_websockets/WebSocketClient;->getListener()Lcom/codebutler/android_websockets/WebSocketClient$Listener;
move-result-object v6
invoke-interface {v6, v1}, Lcom/codebutler/android_websockets/WebSocketClient$Listener;->onMessage([B)V
goto :goto_3d
:cond_4b
if-ne v3, v9, :cond_67
iget-boolean v6, p0, Lcom/codebutler/android_websockets/HybiParser;->mFinal:Z
if-eqz v6, :cond_5f
invoke-direct {p0, v4}, Lcom/codebutler/android_websockets/HybiParser;->encode([B)Ljava/lang/String;
move-result-object v2
iget-object v6, p0, Lcom/codebutler/android_websockets/HybiParser;->mClient:Lcom/codebutler/android_websockets/WebSocketClient;
invoke-virtual {v6}, Lcom/codebutler/android_websockets/WebSocketClient;->getListener()Lcom/codebutler/android_websockets/WebSocketClient$Listener;
move-result-object v6
invoke-interface {v6, v2}, Lcom/codebutler/android_websockets/WebSocketClient$Listener;->onMessage(Ljava/lang/String;)V
goto :goto_40
:cond_5f
iput v9, p0, Lcom/codebutler/android_websockets/HybiParser;->mMode:I
iget-object v6, p0, Lcom/codebutler/android_websockets/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v6, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
goto :goto_40
:cond_67
if-ne v3, v8, :cond_7f
iget-boolean v6, p0, Lcom/codebutler/android_websockets/HybiParser;->mFinal:Z
if-eqz v6, :cond_77
iget-object v6, p0, Lcom/codebutler/android_websockets/HybiParser;->mClient:Lcom/codebutler/android_websockets/WebSocketClient;
invoke-virtual {v6}, Lcom/codebutler/android_websockets/WebSocketClient;->getListener()Lcom/codebutler/android_websockets/WebSocketClient$Listener;
move-result-object v6
invoke-interface {v6, v4}, Lcom/codebutler/android_websockets/WebSocketClient$Listener;->onMessage([B)V
goto :goto_40
:cond_77
iput v8, p0, Lcom/codebutler/android_websockets/HybiParser;->mMode:I
iget-object v6, p0, Lcom/codebutler/android_websockets/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v6, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
goto :goto_40
:cond_7f
const/16 v6, 0x8
if-ne v3, v6, :cond_c8
array-length v6, v4
if-lt v6, v8, :cond_8e
aget-byte v6, v4, v0
mul-int/lit16 v6, v6, 0x100
aget-byte v7, v4, v9
add-int v0, v6, v7
:cond_8e
array-length v6, v4
if-le v6, v8, :cond_c6
invoke-direct {p0, v4, v8}, Lcom/codebutler/android_websockets/HybiParser;->slice([BI)[B
move-result-object v6
invoke-direct {p0, v6}, Lcom/codebutler/android_websockets/HybiParser;->encode([B)Ljava/lang/String;
move-result-object v5
:goto_99
const-string v6, "HybiParser"
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Got close op! "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, " "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
iget-object v6, p0, Lcom/codebutler/android_websockets/HybiParser;->mClient:Lcom/codebutler/android_websockets/WebSocketClient;
invoke-virtual {v6}, Lcom/codebutler/android_websockets/WebSocketClient;->getListener()Lcom/codebutler/android_websockets/WebSocketClient$Listener;
move-result-object v6
invoke-interface {v6, v0, v5}, Lcom/codebutler/android_websockets/WebSocketClient$Listener;->onDisconnect(ILjava/lang/String;)V
goto/16 :goto_40
:cond_c6
const/4 v5, 0x0
goto :goto_99
:cond_c8
const/16 v6, 0x9
if-ne v3, v6, :cond_ec
array-length v6, v4
const/16 v7, 0x7d
if-le v6, v7, :cond_d9
new-instance v6, Lcom/codebutler/android_websockets/HybiParser$ProtocolError;
const-string v7, "Ping payload too large"
invoke-direct {v6, v7}, Lcom/codebutler/android_websockets/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V
throw v6
:cond_d9
const-string v6, "HybiParser"
const-string v7, "Sending pong!!"
invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
iget-object v6, p0, Lcom/codebutler/android_websockets/HybiParser;->mClient:Lcom/codebutler/android_websockets/WebSocketClient;
const/4 v7, -0x1
invoke-direct {p0, v4, v10, v7}, Lcom/codebutler/android_websockets/HybiParser;->frame([BII)[B
move-result-object v7
invoke-virtual {v6, v7}, Lcom/codebutler/android_websockets/WebSocketClient;->sendFrame([B)V
goto/16 :goto_40
:cond_ec
if-ne v3, v10, :cond_40
invoke-direct {p0, v4}, Lcom/codebutler/android_websockets/HybiParser;->encode([B)Ljava/lang/String;
move-result-object v1
const-string v6, "HybiParser"
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Got pong! "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
goto/16 :goto_40
.end method
.method private encode([B)Ljava/lang/String;
.registers 5
:try_start_0
new-instance v1, Ljava/lang/String;
const-string v2, "UTF-8"
invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
:try_end_7
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_7} :catch_8
return-object v1
:catch_8
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method private frame(Ljava/lang/Object;II)[B
.registers 20
move-object/from16 v0, p0
iget-boolean v9, v0, Lcom/codebutler/android_websockets/HybiParser;->mClosed:Z
if-eqz v9, :cond_8
const/4 v2, 0x0
:goto_7
:cond_7
return-object v2
:cond_8
const-string v9, "HybiParser"
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "Creating frame for: "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
move-object/from16 v0, p1
invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
const-string v11, " op: "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
move/from16 v0, p2
invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v10
const-string v11, " err: "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
move/from16 v0, p3
invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
move-object/from16 v0, p1
instance-of v9, v0, Ljava/lang/String;
if-eqz v9, :cond_ed
check-cast p1, Ljava/lang/String;
invoke-direct/range {p0 .. p1}, Lcom/codebutler/android_websockets/HybiParser;->decode(Ljava/lang/String;)[B
move-result-object v1
:goto_46
if-lez p3, :cond_f5
const/4 v4, 0x2
:goto_49
array-length v9, v1
add-int v5, v9, v4
const/16 v9, 0x7d
if-gt v5, v9, :cond_f8
const/4 v3, 0x2
:goto_51
move-object/from16 v0, p0
iget-boolean v9, v0, Lcom/codebutler/android_websockets/HybiParser;->mMasking:Z
if-eqz v9, :cond_104
const/4 v9, 0x4
:goto_58
add-int v8, v3, v9
move-object/from16 v0, p0
iget-boolean v9, v0, Lcom/codebutler/android_websockets/HybiParser;->mMasking:Z
if-eqz v9, :cond_107
const/16 v7, 0x80
:goto_62
add-int v9, v5, v8
new-array v2, v9, [B
const/4 v9, 0x0
move/from16 v0, p2
int-to-byte v10, v0
or-int/lit8 v10, v10, -0x80
int-to-byte v10, v10
aput-byte v10, v2, v9
const/16 v9, 0x7d
if-gt v5, v9, :cond_10a
const/4 v9, 0x1
or-int v10, v7, v5
int-to-byte v10, v10
aput-byte v10, v2, v9
:goto_79
if-lez p3, :cond_93
move/from16 v0, p3
div-int/lit16 v9, v0, 0x100
int-to-double v9, v9
invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D
move-result-wide v9
double-to-int v9, v9
and-int/lit16 v9, v9, 0xff
int-to-byte v9, v9
aput-byte v9, v2, v8
add-int/lit8 v9, v8, 0x1
move/from16 v0, p3
and-int/lit16 v10, v0, 0xff
int-to-byte v10, v10
aput-byte v10, v2, v9
:cond_93
const/4 v9, 0x0
add-int v10, v8, v4
array-length v11, v1
invoke-static {v1, v9, v2, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
move-object/from16 v0, p0
iget-boolean v9, v0, Lcom/codebutler/android_websockets/HybiParser;->mMasking:Z
if-eqz v9, :cond_7
const/4 v9, 0x4
new-array v6, v9, [B
const/4 v9, 0x0
invoke-static {}, Ljava/lang/Math;->random()D
move-result-wide v10
const-wide/high16 v12, 0x4070
mul-double/2addr v10, v12
invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D
move-result-wide v10
double-to-int v10, v10
int-to-byte v10, v10
aput-byte v10, v6, v9
const/4 v9, 0x1
invoke-static {}, Ljava/lang/Math;->random()D
move-result-wide v10
const-wide/high16 v12, 0x4070
mul-double/2addr v10, v12
invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D
move-result-wide v10
double-to-int v10, v10
int-to-byte v10, v10
aput-byte v10, v6, v9
const/4 v9, 0x2
invoke-static {}, Ljava/lang/Math;->random()D
move-result-wide v10
const-wide/high16 v12, 0x4070
mul-double/2addr v10, v12
invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D
move-result-wide v10
double-to-int v10, v10
int-to-byte v10, v10
aput-byte v10, v6, v9
const/4 v9, 0x3
invoke-static {}, Ljava/lang/Math;->random()D
move-result-wide v10
const-wide/high16 v12, 0x4070
mul-double/2addr v10, v12
invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D
move-result-wide v10
double-to-int v10, v10
int-to-byte v10, v10
aput-byte v10, v6, v9
const/4 v9, 0x0
array-length v10, v6
invoke-static {v6, v9, v2, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
invoke-static {v2, v6, v8}, Lcom/codebutler/android_websockets/HybiParser;->mask([B[BI)[B
goto/16 :goto_7
:cond_ed
check-cast p1, [B
check-cast p1, [B
move-object/from16 v1, p1
goto/16 :goto_46
:cond_f5
const/4 v4, 0x0
goto/16 :goto_49
:cond_f8
const v9, 0xffff
if-gt v5, v9, :cond_100
const/4 v3, 0x4
goto/16 :goto_51
:cond_100
const/16 v3, 0xa
goto/16 :goto_51
:cond_104
const/4 v9, 0x0
goto/16 :goto_58
:cond_107
const/4 v7, 0x0
goto/16 :goto_62
:cond_10a
const v9, 0xffff
if-gt v5, v9, :cond_129
const/4 v9, 0x1
or-int/lit8 v10, v7, 0x7e
int-to-byte v10, v10
aput-byte v10, v2, v9
const/4 v9, 0x2
div-int/lit16 v10, v5, 0x100
int-to-double v10, v10
invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D
move-result-wide v10
double-to-int v10, v10
int-to-byte v10, v10
aput-byte v10, v2, v9
const/4 v9, 0x3
and-int/lit16 v10, v5, 0xff
int-to-byte v10, v10
aput-byte v10, v2, v9
goto/16 :goto_79
:cond_129
const/4 v9, 0x1
or-int/lit8 v10, v7, 0x7f
int-to-byte v10, v10
aput-byte v10, v2, v9
const/4 v9, 0x2
int-to-double v10, v5
const-wide/high16 v12, 0x4000
const-wide/high16 v14, 0x404c
invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D
move-result-wide v12
div-double/2addr v10, v12
invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D
move-result-wide v10
double-to-int v10, v10
and-int/lit16 v10, v10, 0xff
int-to-byte v10, v10
aput-byte v10, v2, v9
const/4 v9, 0x3
int-to-double v10, v5
const-wide/high16 v12, 0x4000
const-wide/high16 v14, 0x4048
invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D
move-result-wide v12
div-double/2addr v10, v12
invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D
move-result-wide v10
double-to-int v10, v10
and-int/lit16 v10, v10, 0xff
int-to-byte v10, v10
aput-byte v10, v2, v9
const/4 v9, 0x4
int-to-double v10, v5
const-wide/high16 v12, 0x4000
const-wide/high16 v14, 0x4044
invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D
move-result-wide v12
div-double/2addr v10, v12
invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D
move-result-wide v10
double-to-int v10, v10
and-int/lit16 v10, v10, 0xff
int-to-byte v10, v10
aput-byte v10, v2, v9
const/4 v9, 0x5
int-to-double v10, v5
const-wide/high16 v12, 0x4000
const-wide/high16 v14, 0x4040
invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D
move-result-wide v12
div-double/2addr v10, v12
invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D
move-result-wide v10
double-to-int v10, v10
and-int/lit16 v10, v10, 0xff
int-to-byte v10, v10
aput-byte v10, v2, v9
const/4 v9, 0x6
int-to-double v10, v5
const-wide/high16 v12, 0x4000
const-wide/high16 v14, 0x4038
invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D
move-result-wide v12
div-double/2addr v10, v12
invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D
move-result-wide v10
double-to-int v10, v10
and-int/lit16 v10, v10, 0xff
int-to-byte v10, v10
aput-byte v10, v2, v9
const/4 v9, 0x7
int-to-double v10, v5
const-wide/high16 v12, 0x4000
const-wide/high16 v14, 0x4030
invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D
move-result-wide v12
div-double/2addr v10, v12
invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D
move-result-wide v10
double-to-int v10, v10
and-int/lit16 v10, v10, 0xff
int-to-byte v10, v10
aput-byte v10, v2, v9
const/16 v9, 0x8
int-to-double v10, v5
const-wide/high16 v12, 0x4000
const-wide/high16 v14, 0x4020
invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D
move-result-wide v12
div-double/2addr v10, v12
invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D
move-result-wide v10
double-to-int v10, v10
and-int/lit16 v10, v10, 0xff
int-to-byte v10, v10
aput-byte v10, v2, v9
const/16 v9, 0x9
and-int/lit16 v10, v5, 0xff
int-to-byte v10, v10
aput-byte v10, v2, v9
goto/16 :goto_79
.end method
.method private frame(Ljava/lang/String;II)[B
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/codebutler/android_websockets/HybiParser;->frame(Ljava/lang/Object;II)[B
move-result-object v0
return-object v0
.end method
.method private frame([BII)[B
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/codebutler/android_websockets/HybiParser;->frame(Ljava/lang/Object;II)[B
move-result-object v0
return-object v0
.end method
.method private getInteger([B)I
.registers 7
const/4 v2, 0x0
array-length v3, p1
invoke-static {p1, v2, v3}, Lcom/codebutler/android_websockets/HybiParser;->byteArrayToLong([BII)J
move-result-wide v0
const-wide/16 v2, 0x0
cmp-long v2, v0, v2
if-ltz v2, :cond_13
const-wide/32 v2, 0x7fffffff
cmp-long v2, v0, v2
if-lez v2, :cond_2c
:cond_13
new-instance v2, Lcom/codebutler/android_websockets/HybiParser$ProtocolError;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Bad integer: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Lcom/codebutler/android_websockets/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V
throw v2
:cond_2c
long-to-int v2, v0
return v2
.end method
.method private static mask([B[BI)[B
.registers 7
array-length v1, p1
if-nez v1, :cond_4
:cond_3
return-object p0
:cond_4
const/4 v0, 0x0
:goto_5
array-length v1, p0
sub-int/2addr v1, p2
if-ge v0, v1, :cond_3
add-int v1, p2, v0
add-int v2, p2, v0
aget-byte v2, p0, v2
rem-int/lit8 v3, v0, 0x4
aget-byte v3, p1, v3
xor-int/2addr v2, v3
int-to-byte v2, v2
aput-byte v2, p0, v1
add-int/lit8 v0, v0, 0x1
goto :goto_5
.end method
.method private parseExtendedLength([B)V
.registers 3
invoke-direct {p0, p1}, Lcom/codebutler/android_websockets/HybiParser;->getInteger([B)I
move-result v0
iput v0, p0, Lcom/codebutler/android_websockets/HybiParser;->mLength:I
iget-boolean v0, p0, Lcom/codebutler/android_websockets/HybiParser;->mMasked:Z
if-eqz v0, :cond_e
const/4 v0, 0x3
:goto_b
iput v0, p0, Lcom/codebutler/android_websockets/HybiParser;->mStage:I
return-void
:cond_e
const/4 v0, 0x4
goto :goto_b
.end method
.method private parseLength(B)V
.registers 5
const/4 v1, 0x2
and-int/lit16 v0, p1, 0x80
const/16 v2, 0x80
if-ne v0, v2, :cond_20
const/4 v0, 0x1
:goto_8
iput-boolean v0, p0, Lcom/codebutler/android_websockets/HybiParser;->mMasked:Z
and-int/lit8 v0, p1, 0x7f
iput v0, p0, Lcom/codebutler/android_websockets/HybiParser;->mLength:I
iget v0, p0, Lcom/codebutler/android_websockets/HybiParser;->mLength:I
if-ltz v0, :cond_24
iget v0, p0, Lcom/codebutler/android_websockets/HybiParser;->mLength:I
const/16 v2, 0x7d
if-gt v0, v2, :cond_24
iget-boolean v0, p0, Lcom/codebutler/android_websockets/HybiParser;->mMasked:Z
if-eqz v0, :cond_22
const/4 v0, 0x3
:goto_1d
iput v0, p0, Lcom/codebutler/android_websockets/HybiParser;->mStage:I
:goto_1f
return-void
:cond_20
const/4 v0, 0x0
goto :goto_8
:cond_22
const/4 v0, 0x4
goto :goto_1d
:cond_24
iget v0, p0, Lcom/codebutler/android_websockets/HybiParser;->mLength:I
const/16 v2, 0x7e
if-ne v0, v2, :cond_30
move v0, v1
:goto_2b
iput v0, p0, Lcom/codebutler/android_websockets/HybiParser;->mLengthSize:I
iput v1, p0, Lcom/codebutler/android_websockets/HybiParser;->mStage:I
goto :goto_1f
:cond_30
const/16 v0, 0x8
goto :goto_2b
.end method
.method private parseOpcode(B)V
.registers 9
const/4 v4, 0x1
const/4 v5, 0x0
and-int/lit8 v3, p1, 0x40
const/16 v6, 0x40
if-ne v3, v6, :cond_25
move v0, v4
:goto_9
and-int/lit8 v3, p1, 0x20
const/16 v6, 0x20
if-ne v3, v6, :cond_27
move v1, v4
:goto_10
and-int/lit8 v3, p1, 0x10
const/16 v6, 0x10
if-ne v3, v6, :cond_29
move v2, v4
:goto_17
if-nez v0, :cond_1d
if-nez v1, :cond_1d
if-eqz v2, :cond_2b
:cond_1d
new-instance v3, Lcom/codebutler/android_websockets/HybiParser$ProtocolError;
const-string v4, "RSV not zero"
invoke-direct {v3, v4}, Lcom/codebutler/android_websockets/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V
throw v3
:cond_25
move v0, v5
goto :goto_9
:cond_27
move v1, v5
goto :goto_10
:cond_29
move v2, v5
goto :goto_17
:cond_2b
and-int/lit16 v3, p1, 0x80
const/16 v6, 0x80
if-ne v3, v6, :cond_56
move v3, v4
:goto_32
iput-boolean v3, p0, Lcom/codebutler/android_websockets/HybiParser;->mFinal:Z
and-int/lit8 v3, p1, 0xf
iput v3, p0, Lcom/codebutler/android_websockets/HybiParser;->mOpcode:I
new-array v3, v5, [B
iput-object v3, p0, Lcom/codebutler/android_websockets/HybiParser;->mMask:[B
new-array v3, v5, [B
iput-object v3, p0, Lcom/codebutler/android_websockets/HybiParser;->mPayload:[B
sget-object v3, Lcom/codebutler/android_websockets/HybiParser;->OPCODES:Ljava/util/List;
iget v5, p0, Lcom/codebutler/android_websockets/HybiParser;->mOpcode:I
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_58
new-instance v3, Lcom/codebutler/android_websockets/HybiParser$ProtocolError;
const-string v4, "Bad opcode"
invoke-direct {v3, v4}, Lcom/codebutler/android_websockets/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V
throw v3
:cond_56
move v3, v5
goto :goto_32
:cond_58
sget-object v3, Lcom/codebutler/android_websockets/HybiParser;->FRAGMENTED_OPCODES:Ljava/util/List;
iget v5, p0, Lcom/codebutler/android_websockets/HybiParser;->mOpcode:I
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_72
iget-boolean v3, p0, Lcom/codebutler/android_websockets/HybiParser;->mFinal:Z
if-nez v3, :cond_72
new-instance v3, Lcom/codebutler/android_websockets/HybiParser$ProtocolError;
const-string v4, "Expected non-final packet"
invoke-direct {v3, v4}, Lcom/codebutler/android_websockets/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V
throw v3
:cond_72
iput v4, p0, Lcom/codebutler/android_websockets/HybiParser;->mStage:I
return-void
.end method
.method private reset()V
.registers 2
const/4 v0, 0x0
iput v0, p0, Lcom/codebutler/android_websockets/HybiParser;->mMode:I
iget-object v0, p0, Lcom/codebutler/android_websockets/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V
return-void
.end method
.method private slice([BI)[B
.registers 4
array-length v0, p1
invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B
move-result-object v0
return-object v0
.end method
.method public close(ILjava/lang/String;)V
.registers 5
iget-boolean v0, p0, Lcom/codebutler/android_websockets/HybiParser;->mClosed:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/codebutler/android_websockets/HybiParser;->mClient:Lcom/codebutler/android_websockets/WebSocketClient;
const/16 v1, 0x8
invoke-direct {p0, p2, v1, p1}, Lcom/codebutler/android_websockets/HybiParser;->frame(Ljava/lang/String;II)[B
move-result-object v1
invoke-virtual {v0, v1}, Lcom/codebutler/android_websockets/WebSocketClient;->send([B)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/codebutler/android_websockets/HybiParser;->mClosed:Z
goto :goto_4
.end method
.method public frame(Ljava/lang/String;)[B
.registers 4
const/4 v0, 0x1
const/4 v1, -0x1
invoke-direct {p0, p1, v0, v1}, Lcom/codebutler/android_websockets/HybiParser;->frame(Ljava/lang/String;II)[B
move-result-object v0
return-object v0
.end method
.method public frame([B)[B
.registers 4
const/4 v0, 0x2
const/4 v1, -0x1
invoke-direct {p0, p1, v0, v1}, Lcom/codebutler/android_websockets/HybiParser;->frame([BII)[B
move-result-object v0
return-object v0
.end method
.method public ping(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/codebutler/android_websockets/HybiParser;->mClient:Lcom/codebutler/android_websockets/WebSocketClient;
const/16 v1, 0x9
const/4 v2, -0x1
invoke-direct {p0, p1, v1, v2}, Lcom/codebutler/android_websockets/HybiParser;->frame(Ljava/lang/String;II)[B
move-result-object v1
invoke-virtual {v0, v1}, Lcom/codebutler/android_websockets/WebSocketClient;->send([B)V
return-void
.end method
.method public start(Lcom/codebutler/android_websockets/HybiParser$HappyDataInputStream;)V
.registers 6
const/4 v3, 0x4
const/4 v2, 0x0
:goto_2
invoke-virtual {p1}, Lcom/codebutler/android_websockets/HybiParser$HappyDataInputStream;->available()I
move-result v0
const/4 v1, -0x1
if-ne v0, v1, :cond_15
iget-object v0, p0, Lcom/codebutler/android_websockets/HybiParser;->mClient:Lcom/codebutler/android_websockets/WebSocketClient;
invoke-virtual {v0}, Lcom/codebutler/android_websockets/WebSocketClient;->getListener()Lcom/codebutler/android_websockets/WebSocketClient$Listener;
move-result-object v0
const-string v1, "EOF"
invoke-interface {v0, v2, v1}, Lcom/codebutler/android_websockets/WebSocketClient$Listener;->onDisconnect(ILjava/lang/String;)V
return-void
:cond_15
iget v0, p0, Lcom/codebutler/android_websockets/HybiParser;->mStage:I
packed-switch v0, :pswitch_data_4c
goto :goto_2
:pswitch_1b
invoke-virtual {p1}, Lcom/codebutler/android_websockets/HybiParser$HappyDataInputStream;->readByte()B
move-result v0
invoke-direct {p0, v0}, Lcom/codebutler/android_websockets/HybiParser;->parseOpcode(B)V
goto :goto_2
:pswitch_23
invoke-virtual {p1}, Lcom/codebutler/android_websockets/HybiParser$HappyDataInputStream;->readByte()B
move-result v0
invoke-direct {p0, v0}, Lcom/codebutler/android_websockets/HybiParser;->parseLength(B)V
goto :goto_2
:pswitch_2b
iget v0, p0, Lcom/codebutler/android_websockets/HybiParser;->mLengthSize:I
invoke-virtual {p1, v0}, Lcom/codebutler/android_websockets/HybiParser$HappyDataInputStream;->readBytes(I)[B
move-result-object v0
invoke-direct {p0, v0}, Lcom/codebutler/android_websockets/HybiParser;->parseExtendedLength([B)V
goto :goto_2
:pswitch_35
invoke-virtual {p1, v3}, Lcom/codebutler/android_websockets/HybiParser$HappyDataInputStream;->readBytes(I)[B
move-result-object v0
iput-object v0, p0, Lcom/codebutler/android_websockets/HybiParser;->mMask:[B
iput v3, p0, Lcom/codebutler/android_websockets/HybiParser;->mStage:I
goto :goto_2
:pswitch_3e
iget v0, p0, Lcom/codebutler/android_websockets/HybiParser;->mLength:I
invoke-virtual {p1, v0}, Lcom/codebutler/android_websockets/HybiParser$HappyDataInputStream;->readBytes(I)[B
move-result-object v0
iput-object v0, p0, Lcom/codebutler/android_websockets/HybiParser;->mPayload:[B
invoke-direct {p0}, Lcom/codebutler/android_websockets/HybiParser;->emitFrame()V
iput v2, p0, Lcom/codebutler/android_websockets/HybiParser;->mStage:I
goto :goto_2
:pswitch_data_4c
.packed-switch 0x0
:pswitch_1b
:pswitch_23
:pswitch_2b
:pswitch_35
:pswitch_3e
.end packed-switch
.end method