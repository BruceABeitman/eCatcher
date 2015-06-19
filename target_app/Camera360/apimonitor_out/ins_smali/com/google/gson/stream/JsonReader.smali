.class public Lcom/google/gson/stream/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"
.implements Ljava/io/Closeable;
.field private static final MIN_INCOMPLETE_INTEGER:J = -0xcccccccccccccccL
.field private static final NON_EXECUTE_PREFIX:[C = null
.field private static final NUMBER_CHAR_DECIMAL:I = 0x3
.field private static final NUMBER_CHAR_DIGIT:I = 0x2
.field private static final NUMBER_CHAR_EXP_DIGIT:I = 0x7
.field private static final NUMBER_CHAR_EXP_E:I = 0x5
.field private static final NUMBER_CHAR_EXP_SIGN:I = 0x6
.field private static final NUMBER_CHAR_FRACTION_DIGIT:I = 0x4
.field private static final NUMBER_CHAR_NONE:I = 0x0
.field private static final NUMBER_CHAR_SIGN:I = 0x1
.field private static final PEEKED_BEGIN_ARRAY:I = 0x3
.field private static final PEEKED_BEGIN_OBJECT:I = 0x1
.field private static final PEEKED_BUFFERED:I = 0xb
.field private static final PEEKED_DOUBLE_QUOTED:I = 0x9
.field private static final PEEKED_DOUBLE_QUOTED_NAME:I = 0xd
.field private static final PEEKED_END_ARRAY:I = 0x4
.field private static final PEEKED_END_OBJECT:I = 0x2
.field private static final PEEKED_EOF:I = 0x11
.field private static final PEEKED_FALSE:I = 0x6
.field private static final PEEKED_LONG:I = 0xf
.field private static final PEEKED_NONE:I = 0x0
.field private static final PEEKED_NULL:I = 0x7
.field private static final PEEKED_NUMBER:I = 0x10
.field private static final PEEKED_SINGLE_QUOTED:I = 0x8
.field private static final PEEKED_SINGLE_QUOTED_NAME:I = 0xc
.field private static final PEEKED_TRUE:I = 0x5
.field private static final PEEKED_UNQUOTED:I = 0xa
.field private static final PEEKED_UNQUOTED_NAME:I = 0xe
.field private final buffer:[C
.field private final in:Ljava/io/Reader;
.field private lenient:Z
.field private limit:I
.field private lineNumber:I
.field private lineStart:I
.field private peeked:I
.field private peekedLong:J
.field private peekedNumberLength:I
.field private peekedString:Ljava/lang/String;
.field private pos:I
.field private stack:[I
.field private stackSize:I
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, ")]}\'\n"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
sput-object v0, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C
new-instance v0, Lcom/google/gson/stream/JsonReader$1;
invoke-direct {v0}, Lcom/google/gson/stream/JsonReader$1;-><init>()V
sput-object v0, Lcom/google/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/google/gson/internal/JsonReaderInternalAccess;
return-void
.end method
.method public constructor <init>(Ljava/io/Reader;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z
const/16 v0, 0x400
new-array v0, v0, [C
iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C
iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I
iput v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I
iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I
iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I
iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
const/16 v0, 0x20
new-array v0, v0, [I
iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I
iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I
iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I
iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I
const/4 v2, 0x6
aput v2, v0, v1
if-nez p1, :cond_34
new-instance v0, Ljava/lang/NullPointerException;
const-string/jumbo v1, "in == null"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_34
iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;
return-void
.end method
.method static synthetic access$000(Lcom/google/gson/stream/JsonReader;)I
.registers 2
iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
return v0
.end method
.method static synthetic access$002(Lcom/google/gson/stream/JsonReader;I)I
.registers 2
iput p1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
return p1
.end method
.method static synthetic access$100(Lcom/google/gson/stream/JsonReader;)I
.registers 2
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I
move-result v0
return v0
.end method
.method static synthetic access$200(Lcom/google/gson/stream/JsonReader;)I
.registers 2
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I
move-result v0
return v0
.end method
.method static synthetic access$300(Lcom/google/gson/stream/JsonReader;)I
.registers 2
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I
move-result v0
return v0
.end method
.method private checkLenient()V
.registers 2
iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z
if-nez v0, :cond_c
const-string/jumbo v0, "Use JsonReader.setLenient(true) to accept malformed JSON"
invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;
move-result-object v0
throw v0
:cond_c
return-void
.end method
.method private consumeNonExecutePrefix()V
.registers 4
const/4 v1, 0x1
invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I
iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/lit8 v1, v1, -0x1
iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I
iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I
sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C
array-length v2, v2
add-int/2addr v1, v2
iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I
if-le v1, v2, :cond_1e
sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C
array-length v1, v1
invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z
move-result v1
if-nez v1, :cond_1e
:goto_1d
:cond_1d
return-void
:cond_1e
const/4 v0, 0x0
:goto_1f
sget-object v1, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C
array-length v1, v1
if-ge v0, v1, :cond_34
iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C
iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/2addr v2, v0
aget-char v1, v1, v2
sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C
aget-char v2, v2, v0
if-ne v1, v2, :cond_1d
add-int/lit8 v0, v0, 0x1
goto :goto_1f
:cond_34
iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I
sget-object v2, Lcom/google/gson/stream/JsonReader;->NON_EXECUTE_PREFIX:[C
array-length v2, v2
add-int/2addr v1, v2
iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I
goto :goto_1d
.end method
.method private doPeek()I
.registers 10
const/4 v5, 0x7
const/4 v8, 0x5
const/4 v2, 0x4
const/4 v3, 0x2
const/4 v4, 0x1
iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->stack:[I
iget v7, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I
add-int/lit8 v7, v7, -0x1
aget v1, v6, v7
if-ne v1, v4, :cond_32
iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->stack:[I
iget v7, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I
add-int/lit8 v7, v7, -0x1
aput v3, v6, v7
:cond_17
:goto_17
:sswitch_17
:pswitch_17
invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I
move-result v0
sparse-switch v0, :sswitch_data_188
iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/lit8 v3, v3, -0x1
iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I
iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I
if-ne v3, v4, :cond_2b
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V
:cond_2b
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekKeyword()I
move-result v2
if-eqz v2, :cond_164
:goto_31
:cond_31
return v2
:cond_32
if-ne v1, v3, :cond_4a
invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I
move-result v0
sparse-switch v0, :sswitch_data_1a6
const-string/jumbo v3, "Unterminated array"
invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;
move-result-object v3
throw v3
:sswitch_43
iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
goto :goto_31
:sswitch_46
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V
goto :goto_17
:cond_4a
const/4 v6, 0x3
if-eq v1, v6, :cond_4f
if-ne v1, v8, :cond_ae
:cond_4f
iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->stack:[I
iget v6, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I
add-int/lit8 v6, v6, -0x1
aput v2, v5, v6
if-ne v1, v8, :cond_6f
invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I
move-result v0
sparse-switch v0, :sswitch_data_1b4
const-string/jumbo v3, "Unterminated object"
invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;
move-result-object v3
throw v3
:sswitch_68
iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
move v2, v3
goto :goto_31
:sswitch_6c
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V
:cond_6f
:sswitch_6f
invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I
move-result v0
sparse-switch v0, :sswitch_data_1c2
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V
iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/lit8 v3, v3, -0x1
iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I
int-to-char v3, v0
invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z
move-result v3
if-eqz v3, :cond_a6
const/16 v2, 0xe
iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
goto :goto_31
:sswitch_8b
const/16 v2, 0xd
iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
goto :goto_31
:sswitch_90
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V
const/16 v2, 0xc
iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
goto :goto_31
:sswitch_98
if-eq v1, v8, :cond_9e
iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
move v2, v3
goto :goto_31
:cond_9e
const-string/jumbo v3, "Expected name"
invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;
move-result-object v3
throw v3
:cond_a6
const-string/jumbo v3, "Expected name"
invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;
move-result-object v3
throw v3
:cond_ae
if-ne v1, v2, :cond_e8
iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->stack:[I
iget v7, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I
add-int/lit8 v7, v7, -0x1
aput v8, v6, v7
invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I
move-result v0
packed-switch v0, :pswitch_data_1d0
:pswitch_bf
const-string/jumbo v3, "Expected \':\'"
invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;
move-result-object v3
throw v3
:pswitch_c7
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V
iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I
iget v7, p0, Lcom/google/gson/stream/JsonReader;->limit:I
if-lt v6, v7, :cond_d6
invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z
move-result v6
if-eqz v6, :cond_17
:cond_d6
iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C
iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I
aget-char v6, v6, v7
const/16 v7, 0x3e
if-ne v6, v7, :cond_17
iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/lit8 v6, v6, 0x1
iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I
goto/16 :goto_17
:cond_e8
const/4 v6, 0x6
if-ne v1, v6, :cond_fc
iget-boolean v6, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z
if-eqz v6, :cond_f2
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->consumeNonExecutePrefix()V
:cond_f2
iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->stack:[I
iget v7, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I
add-int/lit8 v7, v7, -0x1
aput v5, v6, v7
goto/16 :goto_17
:cond_fc
if-ne v1, v5, :cond_117
const/4 v6, 0x0
invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I
move-result v0
const/4 v6, -0x1
if-ne v0, v6, :cond_10c
const/16 v2, 0x11
iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
goto/16 :goto_31
:cond_10c
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V
iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/lit8 v6, v6, -0x1
iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I
goto/16 :goto_17
:cond_117
const/16 v6, 0x8
if-ne v1, v6, :cond_17
new-instance v3, Ljava/lang/IllegalStateException;
const-string/jumbo v4, "JsonReader is closed"
invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v3
:sswitch_124
if-ne v1, v4, :cond_12a
iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
goto/16 :goto_31
:sswitch_12a
:cond_12a
if-eq v1, v4, :cond_12e
if-ne v1, v3, :cond_13c
:cond_12e
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V
iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/lit8 v3, v3, -0x1
iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I
iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
move v2, v5
goto/16 :goto_31
:cond_13c
const-string/jumbo v3, "Unexpected value"
invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;
move-result-object v3
throw v3
:sswitch_144
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V
const/16 v2, 0x8
iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
goto/16 :goto_31
:sswitch_14d
iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I
if-ne v3, v4, :cond_154
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V
:cond_154
const/16 v2, 0x9
iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
goto/16 :goto_31
:sswitch_15a
const/4 v2, 0x3
iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
goto/16 :goto_31
:sswitch_15f
iput v4, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
move v2, v4
goto/16 :goto_31
:cond_164
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekNumber()I
move-result v2
if-nez v2, :cond_31
iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C
iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I
aget-char v3, v3, v4
invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z
move-result v3
if-nez v3, :cond_17e
const-string/jumbo v3, "Expected value"
invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;
move-result-object v3
throw v3
:cond_17e
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V
const/16 v2, 0xa
iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
goto/16 :goto_31
nop
:sswitch_data_1b4
.sparse-switch
0x2c -> :sswitch_6f
0x3b -> :sswitch_6c
0x7d -> :sswitch_68
.end sparse-switch
:sswitch_data_1a6
.sparse-switch
0x2c -> :sswitch_17
0x3b -> :sswitch_46
0x5d -> :sswitch_43
.end sparse-switch
:sswitch_data_188
.sparse-switch
0x22 -> :sswitch_14d
0x27 -> :sswitch_144
0x2c -> :sswitch_12a
0x3b -> :sswitch_12a
0x5b -> :sswitch_15a
0x5d -> :sswitch_124
0x7b -> :sswitch_15f
.end sparse-switch
:pswitch_data_1d0
.packed-switch 0x3a
:pswitch_17
:pswitch_bf
:pswitch_bf
:pswitch_c7
.end packed-switch
:sswitch_data_1c2
.sparse-switch
0x22 -> :sswitch_8b
0x27 -> :sswitch_90
0x7d -> :sswitch_98
.end sparse-switch
.end method
.method private fillBuffer(I)Z
.registers 9
const/4 v2, 0x0
iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C
iget v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I
iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I
sub-int/2addr v3, v4
iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I
iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I
iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I
if-eq v3, v4, :cond_5b
iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I
iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I
sub-int/2addr v3, v4
iput v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I
iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I
iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I
invoke-static {v0, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:goto_1e
iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I
:cond_20
iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;
iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I
array-length v5, v0
iget v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I
sub-int/2addr v5, v6
invoke-virtual {v3, v0, v4, v5}, Ljava/io/Reader;->read([CII)I
move-result v1
const/4 v3, -0x1
if-eq v1, v3, :cond_5a
iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I
add-int/2addr v3, v1
iput v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I
iget v3, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I
if-nez v3, :cond_55
iget v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I
if-nez v3, :cond_55
iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I
if-lez v3, :cond_55
aget-char v3, v0, v2
const v4, 0xfeff
if-ne v3, v4, :cond_55
iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/lit8 v3, v3, 0x1
iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I
iget v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I
add-int/lit8 v3, v3, 0x1
iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I
add-int/lit8 p1, p1, 0x1
:cond_55
iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I
if-lt v3, p1, :cond_20
const/4 v2, 0x1
:cond_5a
return v2
:cond_5b
iput v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I
goto :goto_1e
.end method
.method private getColumnNumber()I
.registers 3
iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I
iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I
sub-int/2addr v0, v1
add-int/lit8 v0, v0, 0x1
return v0
.end method
.method private getLineNumber()I
.registers 2
iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I
add-int/lit8 v0, v0, 0x1
return v0
.end method
.method private isLiteral(C)Z
.registers 3
sparse-switch p1, :sswitch_data_a
const/4 v0, 0x1
:goto_4
return v0
:sswitch_5
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V
:sswitch_8
const/4 v0, 0x0
goto :goto_4
:sswitch_data_a
.sparse-switch
0x9 -> :sswitch_8
0xa -> :sswitch_8
0xc -> :sswitch_8
0xd -> :sswitch_8
0x20 -> :sswitch_8
0x23 -> :sswitch_5
0x2c -> :sswitch_8
0x2f -> :sswitch_5
0x3a -> :sswitch_8
0x3b -> :sswitch_5
0x3d -> :sswitch_5
0x5b -> :sswitch_8
0x5c -> :sswitch_5
0x5d -> :sswitch_8
0x7b -> :sswitch_8
0x7d -> :sswitch_8
.end sparse-switch
.end method
.method private nextNonWhitespace(Z)I
.registers 12
iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C
iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I
iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I
:goto_6
if-ne v4, v3, :cond_44
iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I
const/4 v7, 0x1
invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z
move-result v7
if-nez v7, :cond_40
if-eqz p1, :cond_d1
new-instance v7, Ljava/io/EOFException;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v9, "End of input at line "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I
move-result v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, " column "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I
move-result v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V
throw v7
:cond_40
iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I
iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I
:cond_44
add-int/lit8 v5, v4, 0x1
aget-char v1, v0, v4
const/16 v7, 0xa
if-ne v1, v7, :cond_56
iget v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I
add-int/lit8 v7, v7, 0x1
iput v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I
iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I
move v4, v5
goto :goto_6
:cond_56
const/16 v7, 0x20
if-eq v1, v7, :cond_d3
const/16 v7, 0xd
if-eq v1, v7, :cond_d3
const/16 v7, 0x9
if-ne v1, v7, :cond_64
move v4, v5
goto :goto_6
:cond_64
const/16 v7, 0x2f
if-ne v1, v7, :cond_bb
iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I
if-ne v5, v3, :cond_81
iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/lit8 v7, v7, -0x1
iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I
const/4 v7, 0x2
invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z
move-result v2
iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/lit8 v7, v7, 0x1
iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I
if-nez v2, :cond_81
move v4, v5
:goto_80
return v1
:cond_81
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V
iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I
aget-char v6, v0, v7
sparse-switch v6, :sswitch_data_d6
move v4, v5
goto :goto_80
:sswitch_8d
iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/lit8 v7, v7, 0x1
iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I
const-string/jumbo v7, "*/"
invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->skipTo(Ljava/lang/String;)Z
move-result v7
if-nez v7, :cond_a4
const-string/jumbo v7, "Unterminated comment"
invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;
move-result-object v7
throw v7
:cond_a4
iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/lit8 v4, v7, 0x2
iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I
goto/16 :goto_6
:sswitch_ac
iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/lit8 v7, v7, 0x1
iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V
iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I
iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I
goto/16 :goto_6
:cond_bb
const/16 v7, 0x23
if-ne v1, v7, :cond_cd
iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V
iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I
iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I
goto/16 :goto_6
:cond_cd
iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I
move v4, v5
goto :goto_80
:cond_d1
const/4 v1, -0x1
goto :goto_80
:cond_d3
move v4, v5
goto/16 :goto_6
:sswitch_data_d6
.sparse-switch
0x2a -> :sswitch_8d
0x2f -> :sswitch_ac
.end sparse-switch
.end method
.method private nextQuotedValue(C)Ljava/lang/String;
.registers 10
iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
:cond_7
iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I
iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I
move v6, v4
move v5, v4
:goto_d
if-ge v5, v3, :cond_4b
add-int/lit8 v4, v5, 0x1
aget-char v2, v0, v5
if-ne v2, p1, :cond_23
iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I
sub-int v7, v4, v6
add-int/lit8 v7, v7, -0x1
invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
return-object v7
:cond_23
const/16 v7, 0x5c
if-ne v2, v7, :cond_3e
iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I
sub-int v7, v4, v6
add-int/lit8 v7, v7, -0x1
invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C
move-result v7
invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I
iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I
move v6, v4
:goto_3c
:cond_3c
move v5, v4
goto :goto_d
:cond_3e
const/16 v7, 0xa
if-ne v2, v7, :cond_3c
iget v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I
add-int/lit8 v7, v7, 0x1
iput v7, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I
iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I
goto :goto_3c
:cond_4b
sub-int v7, v5, v6
invoke-virtual {v1, v0, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I
const/4 v7, 0x1
invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z
move-result v7
if-nez v7, :cond_7
const-string/jumbo v7, "Unterminated string"
invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;
move-result-object v7
throw v7
.end method
.method private nextUnquotedValue()Ljava/lang/String;
.registers 6
const/4 v0, 0x0
const/4 v1, 0x0
:goto_2
:cond_2
iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/2addr v3, v1
iget v4, p0, Lcom/google/gson/stream/JsonReader;->limit:I
if-ge v3, v4, :cond_2a
iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C
iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/2addr v4, v1
aget-char v3, v3, v4
sparse-switch v3, :sswitch_data_60
add-int/lit8 v1, v1, 0x1
goto :goto_2
:sswitch_16
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V
:cond_19
:goto_19
:sswitch_19
if-nez v0, :cond_54
new-instance v2, Ljava/lang/String;
iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C
iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I
invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V
:goto_24
iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/2addr v3, v1
iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I
return-object v2
:cond_2a
iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C
array-length v3, v3
if-ge v1, v3, :cond_38
add-int/lit8 v3, v1, 0x1
invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z
move-result v3
if-eqz v3, :cond_19
goto :goto_2
:cond_38
if-nez v0, :cond_3f
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
:cond_3f
iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C
iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I
invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/2addr v3, v1
iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I
const/4 v1, 0x0
const/4 v3, 0x1
invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z
move-result v3
if-nez v3, :cond_2
goto :goto_19
:cond_54
iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C
iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I
invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
goto :goto_24
:sswitch_data_60
.sparse-switch
0x9 -> :sswitch_19
0xa -> :sswitch_19
0xc -> :sswitch_19
0xd -> :sswitch_19
0x20 -> :sswitch_19
0x23 -> :sswitch_16
0x2c -> :sswitch_19
0x2f -> :sswitch_16
0x3a -> :sswitch_19
0x3b -> :sswitch_16
0x3d -> :sswitch_16
0x5b -> :sswitch_19
0x5c -> :sswitch_16
0x5d -> :sswitch_19
0x7b -> :sswitch_19
0x7d -> :sswitch_19
.end sparse-switch
.end method
.method private peekKeyword()I
.registers 10
const/4 v6, 0x0
iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C
iget v8, p0, Lcom/google/gson/stream/JsonReader;->pos:I
aget-char v0, v7, v8
const/16 v7, 0x74
if-eq v0, v7, :cond_f
const/16 v7, 0x54
if-ne v0, v7, :cond_2e
:cond_f
const-string/jumbo v2, "true"
const-string/jumbo v3, "TRUE"
const/4 v5, 0x5
:goto_16
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v4
const/4 v1, 0x1
:goto_1b
if-ge v1, v4, :cond_68
iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/2addr v7, v1
iget v8, p0, Lcom/google/gson/stream/JsonReader;->limit:I
if-lt v7, v8, :cond_50
add-int/lit8 v7, v1, 0x1
invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z
move-result v7
if-nez v7, :cond_50
move v5, v6
:goto_2d
return v5
:cond_2e
const/16 v7, 0x66
if-eq v0, v7, :cond_36
const/16 v7, 0x46
if-ne v0, v7, :cond_3e
:cond_36
const-string/jumbo v2, "false"
const-string/jumbo v3, "FALSE"
const/4 v5, 0x6
goto :goto_16
:cond_3e
const/16 v7, 0x6e
if-eq v0, v7, :cond_46
const/16 v7, 0x4e
if-ne v0, v7, :cond_4e
:cond_46
const-string/jumbo v2, "null"
const-string/jumbo v3, "NULL"
const/4 v5, 0x7
goto :goto_16
:cond_4e
move v5, v6
goto :goto_2d
:cond_50
iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C
iget v8, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/2addr v8, v1
aget-char v0, v7, v8
invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C
move-result v7
if-eq v0, v7, :cond_65
invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C
move-result v7
if-eq v0, v7, :cond_65
move v5, v6
goto :goto_2d
:cond_65
add-int/lit8 v1, v1, 0x1
goto :goto_1b
:cond_68
iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/2addr v7, v4
iget v8, p0, Lcom/google/gson/stream/JsonReader;->limit:I
if-lt v7, v8, :cond_77
add-int/lit8 v7, v4, 0x1
invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z
move-result v7
if-eqz v7, :cond_86
:cond_77
iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C
iget v8, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/2addr v8, v4
aget-char v7, v7, v8
invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z
move-result v7
if-eqz v7, :cond_86
move v5, v6
goto :goto_2d
:cond_86
iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/2addr v6, v4
iput v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I
iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
goto :goto_2d
.end method
.method private peekNumber()I
.registers 18
move-object/from16 v0, p0
iget-object v1, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C
move-object/from16 v0, p0
iget v10, v0, Lcom/google/gson/stream/JsonReader;->pos:I
move-object/from16 v0, p0
iget v5, v0, Lcom/google/gson/stream/JsonReader;->limit:I
const-wide/16 v11, 0x0
const/4 v7, 0x0
const/4 v3, 0x1
const/4 v6, 0x0
const/4 v4, 0x0
:goto_12
add-int v13, v10, v4
if-ne v13, v5, :cond_50
array-length v13, v1
if-ne v4, v13, :cond_1b
const/4 v13, 0x0
:goto_1a
return v13
:cond_1b
add-int/lit8 v13, v4, 0x1
move-object/from16 v0, p0
invoke-direct {v0, v13}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z
move-result v13
if-nez v13, :cond_48
:cond_25
const/4 v13, 0x2
if-ne v6, v13, :cond_da
if-eqz v3, :cond_da
const-wide/high16 v13, -0x8000
cmp-long v13, v11, v13
if-nez v13, :cond_32
if-eqz v7, :cond_da
:cond_32
if-eqz v7, :cond_d7
:goto_34
move-object/from16 v0, p0
iput-wide v11, v0, Lcom/google/gson/stream/JsonReader;->peekedLong:J
move-object/from16 v0, p0
iget v13, v0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/2addr v13, v4
move-object/from16 v0, p0
iput v13, v0, Lcom/google/gson/stream/JsonReader;->pos:I
const/16 v13, 0xf
move-object/from16 v0, p0
iput v13, v0, Lcom/google/gson/stream/JsonReader;->peeked:I
goto :goto_1a
:cond_48
move-object/from16 v0, p0
iget v10, v0, Lcom/google/gson/stream/JsonReader;->pos:I
move-object/from16 v0, p0
iget v5, v0, Lcom/google/gson/stream/JsonReader;->limit:I
:cond_50
add-int v13, v10, v4
aget-char v2, v1, v13
sparse-switch v2, :sswitch_data_f2
const/16 v13, 0x30
if-lt v2, v13, :cond_5f
const/16 v13, 0x39
if-le v2, v13, :cond_8f
:cond_5f
move-object/from16 v0, p0
invoke-direct {v0, v2}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z
move-result v13
if-eqz v13, :cond_25
const/4 v13, 0x0
goto :goto_1a
:sswitch_69
if-nez v6, :cond_70
const/4 v7, 0x1
const/4 v6, 0x1
:goto_6d
:cond_6d
add-int/lit8 v4, v4, 0x1
goto :goto_12
:cond_70
const/4 v13, 0x5
if-ne v6, v13, :cond_75
const/4 v6, 0x6
goto :goto_6d
:cond_75
const/4 v13, 0x0
goto :goto_1a
:sswitch_77
const/4 v13, 0x5
if-ne v6, v13, :cond_7c
const/4 v6, 0x6
goto :goto_6d
:cond_7c
const/4 v13, 0x0
goto :goto_1a
:sswitch_7e
const/4 v13, 0x2
if-eq v6, v13, :cond_84
const/4 v13, 0x4
if-ne v6, v13, :cond_86
:cond_84
const/4 v6, 0x5
goto :goto_6d
:cond_86
const/4 v13, 0x0
goto :goto_1a
:sswitch_88
const/4 v13, 0x2
if-ne v6, v13, :cond_8d
const/4 v6, 0x3
goto :goto_6d
:cond_8d
const/4 v13, 0x0
goto :goto_1a
:cond_8f
const/4 v13, 0x1
if-eq v6, v13, :cond_94
if-nez v6, :cond_9a
:cond_94
add-int/lit8 v13, v2, -0x30
neg-int v13, v13
int-to-long v11, v13
const/4 v6, 0x2
goto :goto_6d
:cond_9a
const/4 v13, 0x2
if-ne v6, v13, :cond_ca
const-wide/16 v13, 0x0
cmp-long v13, v11, v13
if-nez v13, :cond_a6
const/4 v13, 0x0
goto/16 :goto_1a
:cond_a6
const-wide/16 v13, 0xa
mul-long/2addr v13, v11
add-int/lit8 v15, v2, -0x30
int-to-long v15, v15
sub-long v8, v13, v15
const-wide v13, -0xcccccccccccccccL
cmp-long v13, v11, v13
if-gtz v13, :cond_c4
const-wide v13, -0xcccccccccccccccL
cmp-long v13, v11, v13
if-nez v13, :cond_c8
cmp-long v13, v8, v11
if-gez v13, :cond_c8
:cond_c4
const/4 v13, 0x1
:goto_c5
and-int/2addr v3, v13
move-wide v11, v8
goto :goto_6d
:cond_c8
const/4 v13, 0x0
goto :goto_c5
:cond_ca
const/4 v13, 0x3
if-ne v6, v13, :cond_cf
const/4 v6, 0x4
goto :goto_6d
:cond_cf
const/4 v13, 0x5
if-eq v6, v13, :cond_d5
const/4 v13, 0x6
if-ne v6, v13, :cond_6d
:cond_d5
const/4 v6, 0x7
goto :goto_6d
:cond_d7
neg-long v11, v11
goto/16 :goto_34
:cond_da
const/4 v13, 0x2
if-eq v6, v13, :cond_e3
const/4 v13, 0x4
if-eq v6, v13, :cond_e3
const/4 v13, 0x7
if-ne v6, v13, :cond_ef
:cond_e3
move-object/from16 v0, p0
iput v4, v0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I
const/16 v13, 0x10
move-object/from16 v0, p0
iput v13, v0, Lcom/google/gson/stream/JsonReader;->peeked:I
goto/16 :goto_1a
:cond_ef
const/4 v13, 0x0
goto/16 :goto_1a
:sswitch_data_f2
.sparse-switch
0x2b -> :sswitch_77
0x2d -> :sswitch_69
0x2e -> :sswitch_88
0x45 -> :sswitch_7e
0x65 -> :sswitch_7e
.end sparse-switch
.end method
.method private push(I)V
.registers 6
const/4 v3, 0x0
iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I
iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->stack:[I
array-length v2, v2
if-ne v1, v2, :cond_17
iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I
mul-int/lit8 v1, v1, 0x2
new-array v0, v1, [I
iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I
iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I
:cond_17
iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I
iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I
aput p1, v1, v2
return-void
.end method
.method private readEscapeCharacter()C
.registers 12
const/4 v10, 0x4
iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I
iget v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I
if-ne v5, v6, :cond_16
const/4 v5, 0x1
invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z
move-result v5
if-nez v5, :cond_16
const-string/jumbo v5, "Unterminated escape sequence"
invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;
move-result-object v5
throw v5
:cond_16
iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C
iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/lit8 v7, v6, 0x1
iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I
aget-char v2, v5, v6
sparse-switch v2, :sswitch_data_c0
:goto_23
move v4, v2
:goto_24
return v4
:sswitch_25
iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/lit8 v5, v5, 0x4
iget v6, p0, Lcom/google/gson/stream/JsonReader;->limit:I
if-le v5, v6, :cond_3b
invoke-direct {p0, v10}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z
move-result v5
if-nez v5, :cond_3b
const-string/jumbo v5, "Unterminated escape sequence"
invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;
move-result-object v5
throw v5
:cond_3b
const/4 v4, 0x0
iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/lit8 v1, v3, 0x4
:goto_40
if-ge v3, v1, :cond_99
iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C
aget-char v0, v5, v3
shl-int/lit8 v5, v4, 0x4
int-to-char v4, v5
const/16 v5, 0x30
if-lt v0, v5, :cond_58
const/16 v5, 0x39
if-gt v0, v5, :cond_58
add-int/lit8 v5, v0, -0x30
add-int/2addr v5, v4
int-to-char v4, v5
:goto_55
add-int/lit8 v3, v3, 0x1
goto :goto_40
:cond_58
const/16 v5, 0x61
if-lt v0, v5, :cond_67
const/16 v5, 0x66
if-gt v0, v5, :cond_67
add-int/lit8 v5, v0, -0x61
add-int/lit8 v5, v5, 0xa
add-int/2addr v5, v4
int-to-char v4, v5
goto :goto_55
:cond_67
const/16 v5, 0x41
if-lt v0, v5, :cond_76
const/16 v5, 0x46
if-gt v0, v5, :cond_76
add-int/lit8 v5, v0, -0x41
add-int/lit8 v5, v5, 0xa
add-int/2addr v5, v4
int-to-char v4, v5
goto :goto_55
:cond_76
new-instance v5, Ljava/lang/NumberFormatException;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "\\u"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
new-instance v7, Ljava/lang/String;
iget-object v8, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C
iget v9, p0, Lcom/google/gson/stream/JsonReader;->pos:I
invoke-direct {v7, v8, v9, v10}, Ljava/lang/String;-><init>([CII)V
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V
throw v5
:cond_99
iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/lit8 v5, v5, 0x4
iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I
goto :goto_24
:sswitch_a0
const/16 v4, 0x9
goto :goto_24
:sswitch_a3
const/16 v4, 0x8
goto/16 :goto_24
:sswitch_a7
const/16 v4, 0xa
goto/16 :goto_24
:sswitch_ab
const/16 v4, 0xd
goto/16 :goto_24
:sswitch_af
const/16 v4, 0xc
goto/16 :goto_24
:sswitch_b3
iget v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I
add-int/lit8 v5, v5, 0x1
iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I
iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I
iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I
goto/16 :goto_23
nop
:sswitch_data_c0
.sparse-switch
0xa -> :sswitch_b3
0x62 -> :sswitch_a3
0x66 -> :sswitch_af
0x6e -> :sswitch_a7
0x72 -> :sswitch_ab
0x74 -> :sswitch_a0
0x75 -> :sswitch_25
.end sparse-switch
.end method
.method private skipQuotedValue(C)V
.registers 8
iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C
:cond_2
iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I
iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I
move v4, v3
:goto_7
if-ge v4, v2, :cond_2e
add-int/lit8 v3, v4, 0x1
aget-char v1, v0, v4
if-ne v1, p1, :cond_12
iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I
return-void
:cond_12
const/16 v5, 0x5c
if-ne v1, v5, :cond_21
iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C
iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I
iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I
:goto_1f
:cond_1f
move v4, v3
goto :goto_7
:cond_21
const/16 v5, 0xa
if-ne v1, v5, :cond_1f
iget v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I
add-int/lit8 v5, v5, 0x1
iput v5, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I
iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I
goto :goto_1f
:cond_2e
iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I
const/4 v5, 0x1
invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z
move-result v5
if-nez v5, :cond_2
const-string/jumbo v5, "Unterminated string"
invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;
move-result-object v5
throw v5
.end method
.method private skipTo(Ljava/lang/String;)Z
.registers 5
:goto_0
iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v2
add-int/2addr v1, v2
iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I
if-le v1, v2, :cond_15
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z
move-result v1
if-eqz v1, :cond_4b
:cond_15
iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C
iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I
aget-char v1, v1, v2
const/16 v2, 0xa
if-ne v1, v2, :cond_32
iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I
iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I
:cond_2b
iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I
goto :goto_0
:cond_32
const/4 v0, 0x0
:goto_33
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
if-ge v0, v1, :cond_49
iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C
iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/2addr v2, v0
aget-char v1, v1, v2
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v2
if-ne v1, v2, :cond_2b
add-int/lit8 v0, v0, 0x1
goto :goto_33
:cond_49
const/4 v1, 0x1
:goto_4a
return v1
:cond_4b
const/4 v1, 0x0
goto :goto_4a
.end method
.method private skipToEndOfLine()V
.registers 5
:cond_0
iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I
iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I
if-lt v1, v2, :cond_d
const/4 v1, 0x1
invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z
move-result v1
if-eqz v1, :cond_25
:cond_d
iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C
iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I
aget-char v0, v1, v2
const/16 v1, 0xa
if-ne v0, v1, :cond_26
iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I
iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I
iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I
:goto_25
:cond_25
return-void
:cond_26
const/16 v1, 0xd
if-ne v0, v1, :cond_0
goto :goto_25
.end method
.method private skipUnquotedValue()V
.registers 4
:cond_0
const/4 v0, 0x0
:goto_1
iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/2addr v1, v0
iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I
if-ge v1, v2, :cond_1e
iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C
iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/2addr v2, v0
aget-char v1, v1, v2
sparse-switch v1, :sswitch_data_2c
add-int/lit8 v0, v0, 0x1
goto :goto_1
:sswitch_15
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V
:sswitch_18
iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/2addr v1, v0
iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I
:goto_1d
return-void
:cond_1e
iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I
add-int/2addr v1, v0
iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I
const/4 v1, 0x1
invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z
move-result v1
if-nez v1, :cond_0
goto :goto_1d
nop
:sswitch_data_2c
.sparse-switch
0x9 -> :sswitch_18
0xa -> :sswitch_18
0xc -> :sswitch_18
0xd -> :sswitch_18
0x20 -> :sswitch_18
0x23 -> :sswitch_15
0x2c -> :sswitch_18
0x2f -> :sswitch_15
0x3a -> :sswitch_18
0x3b -> :sswitch_15
0x3d -> :sswitch_15
0x5b -> :sswitch_18
0x5c -> :sswitch_15
0x5d -> :sswitch_18
0x7b -> :sswitch_18
0x7d -> :sswitch_18
.end sparse-switch
.end method
.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
.registers 5
new-instance v0, Lcom/google/gson/stream/MalformedJsonException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " at line "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " column "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public beginArray()V
.registers 5
iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
if-nez v0, :cond_8
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I
move-result v0
:cond_8
const/4 v1, 0x3
if-ne v0, v1, :cond_13
const/4 v1, 0x1
invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->push(I)V
const/4 v1, 0x0
iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
return-void
:cond_13
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Expected BEGIN_ARRAY but was "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " at line "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " column "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public beginObject()V
.registers 5
iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
if-nez v0, :cond_8
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I
move-result v0
:cond_8
const/4 v1, 0x1
if-ne v0, v1, :cond_13
const/4 v1, 0x3
invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->push(I)V
const/4 v1, 0x0
iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
return-void
:cond_13
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Expected BEGIN_OBJECT but was "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " at line "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " column "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public close()V
.registers 4
const/4 v2, 0x0
iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I
const/16 v1, 0x8
aput v1, v0, v2
const/4 v0, 0x1
iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I
iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;
invoke-virtual {v0}, Ljava/io/Reader;->close()V
return-void
.end method
.method public endArray()V
.registers 5
iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
if-nez v0, :cond_8
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I
move-result v0
:cond_8
const/4 v1, 0x4
if-ne v0, v1, :cond_15
iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I
add-int/lit8 v1, v1, -0x1
iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I
const/4 v1, 0x0
iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
return-void
:cond_15
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Expected END_ARRAY but was "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " at line "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " column "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public endObject()V
.registers 5
iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
if-nez v0, :cond_8
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I
move-result v0
:cond_8
const/4 v1, 0x2
if-ne v0, v1, :cond_15
iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I
add-int/lit8 v1, v1, -0x1
iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I
const/4 v1, 0x0
iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
return-void
:cond_15
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Expected END_OBJECT but was "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " at line "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " column "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public hasNext()Z
.registers 3
iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
if-nez v0, :cond_8
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I
move-result v0
:cond_8
const/4 v1, 0x2
if-eq v0, v1, :cond_10
const/4 v1, 0x4
if-eq v0, v1, :cond_10
const/4 v1, 0x1
:goto_f
return v1
:cond_10
const/4 v1, 0x0
goto :goto_f
.end method
.method public final isLenient()Z
.registers 2
iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z
return v0
.end method
.method public nextBoolean()Z
.registers 5
const/4 v1, 0x0
iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
if-nez v0, :cond_9
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I
move-result v0
:cond_9
const/4 v2, 0x5
if-ne v0, v2, :cond_10
iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
const/4 v1, 0x1
:goto_f
return v1
:cond_10
const/4 v2, 0x6
if-ne v0, v2, :cond_16
iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
goto :goto_f
:cond_16
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Expected a boolean but was "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " at line "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " column "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public nextDouble()D
.registers 10
const/16 v8, 0xb
const/16 v4, 0x8
const/4 v7, 0x0
iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
if-nez v0, :cond_d
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I
move-result v0
:cond_d
const/16 v3, 0xf
if-ne v0, v3, :cond_17
iput v7, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
iget-wide v3, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J
long-to-double v1, v3
:goto_16
return-wide v1
:cond_17
const/16 v3, 0x10
if-ne v0, v3, :cond_7f
new-instance v3, Ljava/lang/String;
iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C
iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I
iget v6, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I
invoke-direct {v3, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V
iput-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;
iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I
iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I
add-int/2addr v3, v4
iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I
:goto_2f
:cond_2f
iput v8, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;
invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
move-result-wide v1
iget-boolean v3, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z
if-nez v3, :cond_dc
invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z
move-result v3
if-nez v3, :cond_47
invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z
move-result v3
if-eqz v3, :cond_dc
:cond_47
new-instance v3, Lcom/google/gson/stream/MalformedJsonException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "JSON forbids NaN and infinities: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, " at line "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, " column "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V
throw v3
:cond_7f
if-eq v0, v4, :cond_85
const/16 v3, 0x9
if-ne v0, v3, :cond_93
:cond_85
if-ne v0, v4, :cond_90
const/16 v3, 0x27
:goto_89
invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;
goto :goto_2f
:cond_90
const/16 v3, 0x22
goto :goto_89
:cond_93
const/16 v3, 0xa
if-ne v0, v3, :cond_9e
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;
goto :goto_2f
:cond_9e
if-eq v0, v8, :cond_2f
new-instance v3, Ljava/lang/IllegalStateException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "Expected a double but was "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, " at line "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, " column "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v3
:cond_dc
const/4 v3, 0x0
iput-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;
iput v7, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
goto/16 :goto_16
.end method
.method public nextInt()I
.registers 11
const/16 v6, 0x8
const/4 v9, 0x0
iget v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
if-nez v2, :cond_b
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I
move-result v2
:cond_b
const/16 v5, 0xf
if-ne v2, v5, :cond_57
iget-wide v5, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J
long-to-int v3, v5
iget-wide v5, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J
int-to-long v7, v3
cmp-long v5, v5, v7
if-eqz v5, :cond_53
new-instance v5, Ljava/lang/NumberFormatException;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "Expected an int but was "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
iget-wide v7, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J
invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, " at line "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I
move-result v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, " column "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I
move-result v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V
throw v5
:cond_53
iput v9, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
move v4, v3
:goto_56
return v4
:cond_57
const/16 v5, 0x10
if-ne v2, v5, :cond_b9
new-instance v5, Ljava/lang/String;
iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C
iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I
iget v8, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I
invoke-direct {v5, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V
iput-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;
iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I
iget v6, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I
add-int/2addr v5, v6
iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I
:goto_6f
const/16 v5, 0xb
iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;
invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
move-result-wide v0
double-to-int v3, v0
int-to-double v5, v3
cmpl-double v5, v5, v0
if-eqz v5, :cond_113
new-instance v5, Ljava/lang/NumberFormatException;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "Expected an int but was "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, " at line "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I
move-result v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, " column "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I
move-result v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V
throw v5
:cond_b9
if-eq v2, v6, :cond_bf
const/16 v5, 0x9
if-ne v2, v5, :cond_d7
:cond_bf
if-ne v2, v6, :cond_d4
const/16 v5, 0x27
:goto_c3
invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;
move-result-object v5
iput-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;
:try_start_c9
iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;
invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
const/4 v5, 0x0
iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
:try_end_d2
.catch Ljava/lang/NumberFormatException; {:try_start_c9 .. :try_end_d2} :catch_11b
move v4, v3
goto :goto_56
:cond_d4
const/16 v5, 0x22
goto :goto_c3
:cond_d7
new-instance v5, Ljava/lang/IllegalStateException;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "Expected an int but was "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, " at line "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I
move-result v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, " column "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I
move-result v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v5
:cond_113
const/4 v5, 0x0
iput-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;
iput v9, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
move v4, v3
goto/16 :goto_56
:catch_11b
move-exception v5
goto/16 :goto_6f
.end method
.method public nextLong()J
.registers 11
const/16 v6, 0x8
const/4 v9, 0x0
iget v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
if-nez v2, :cond_b
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I
move-result v2
:cond_b
const/16 v5, 0xf
if-ne v2, v5, :cond_14
iput v9, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
iget-wide v3, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J
:goto_13
return-wide v3
:cond_14
const/16 v5, 0x10
if-ne v2, v5, :cond_76
new-instance v5, Ljava/lang/String;
iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C
iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I
iget v8, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I
invoke-direct {v5, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V
iput-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;
iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I
iget v6, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I
add-int/2addr v5, v6
iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I
:goto_2c
const/16 v5, 0xb
iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;
invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
move-result-wide v0
double-to-long v3, v0
long-to-double v5, v3
cmpl-double v5, v5, v0
if-eqz v5, :cond_d1
new-instance v5, Ljava/lang/NumberFormatException;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "Expected a long but was "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, " at line "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I
move-result v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, " column "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I
move-result v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V
throw v5
:cond_76
if-eq v2, v6, :cond_7c
const/16 v5, 0x9
if-ne v2, v5, :cond_95
:cond_7c
if-ne v2, v6, :cond_92
const/16 v5, 0x27
:goto_80
invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;
move-result-object v5
iput-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;
:try_start_86
iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;
invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v3
const/4 v5, 0x0
iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
:try_end_8f
.catch Ljava/lang/NumberFormatException; {:try_start_86 .. :try_end_8f} :catch_90
goto :goto_13
:catch_90
move-exception v5
goto :goto_2c
:cond_92
const/16 v5, 0x22
goto :goto_80
:cond_95
new-instance v5, Ljava/lang/IllegalStateException;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "Expected a long but was "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, " at line "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I
move-result v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, " column "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I
move-result v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v5
:cond_d1
const/4 v5, 0x0
iput-object v5, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;
iput v9, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
goto/16 :goto_13
.end method
.method public nextName()Ljava/lang/String;
.registers 6
iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
if-nez v0, :cond_8
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I
move-result v0
:cond_8
const/16 v2, 0xe
if-ne v0, v2, :cond_14
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;
move-result-object v1
:goto_10
const/4 v2, 0x0
iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
return-object v1
:cond_14
const/16 v2, 0xc
if-ne v0, v2, :cond_1f
const/16 v2, 0x27
invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;
move-result-object v1
goto :goto_10
:cond_1f
const/16 v2, 0xd
if-ne v0, v2, :cond_2a
const/16 v2, 0x22
invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;
move-result-object v1
goto :goto_10
:cond_2a
new-instance v2, Ljava/lang/IllegalStateException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "Expected a name but was "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, " at line "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, " column "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v2
.end method
.method public nextNull()V
.registers 5
iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
if-nez v0, :cond_8
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I
move-result v0
:cond_8
const/4 v1, 0x7
if-ne v0, v1, :cond_f
const/4 v1, 0x0
iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
return-void
:cond_f
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Expected null but was "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " at line "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " column "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public nextString()Ljava/lang/String;
.registers 6
iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
if-nez v0, :cond_8
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I
move-result v0
:cond_8
const/16 v2, 0xa
if-ne v0, v2, :cond_14
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;
move-result-object v1
:goto_10
const/4 v2, 0x0
iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
return-object v1
:cond_14
const/16 v2, 0x8
if-ne v0, v2, :cond_1f
const/16 v2, 0x27
invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;
move-result-object v1
goto :goto_10
:cond_1f
const/16 v2, 0x9
if-ne v0, v2, :cond_2a
const/16 v2, 0x22
invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;
move-result-object v1
goto :goto_10
:cond_2a
const/16 v2, 0xb
if-ne v0, v2, :cond_34
iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;
const/4 v2, 0x0
iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;
goto :goto_10
:cond_34
const/16 v2, 0xf
if-ne v0, v2, :cond_3f
iget-wide v2, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J
invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v1
goto :goto_10
:cond_3f
const/16 v2, 0x10
if-ne v0, v2, :cond_56
new-instance v1, Ljava/lang/String;
iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C
iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I
iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I
invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V
iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I
iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I
add-int/2addr v2, v3
iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I
goto :goto_10
:cond_56
new-instance v2, Ljava/lang/IllegalStateException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "Expected a string but was "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, " at line "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, " column "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v2
.end method
.method public peek()Lcom/google/gson/stream/JsonToken;
.registers 3
iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
if-nez v0, :cond_8
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I
move-result v0
:cond_8
packed-switch v0, :pswitch_data_30
new-instance v1, Ljava/lang/AssertionError;
invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V
throw v1
:pswitch_11
sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;
:goto_13
return-object v1
:pswitch_14
sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;
goto :goto_13
:pswitch_17
sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;
goto :goto_13
:pswitch_1a
sget-object v1, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;
goto :goto_13
:pswitch_1d
sget-object v1, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;
goto :goto_13
:pswitch_20
sget-object v1, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;
goto :goto_13
:pswitch_23
sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;
goto :goto_13
:pswitch_26
sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;
goto :goto_13
:pswitch_29
sget-object v1, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;
goto :goto_13
:pswitch_2c
sget-object v1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;
goto :goto_13
nop
:pswitch_data_30
.packed-switch 0x1
:pswitch_11
:pswitch_14
:pswitch_17
:pswitch_1a
:pswitch_20
:pswitch_20
:pswitch_23
:pswitch_26
:pswitch_26
:pswitch_26
:pswitch_26
:pswitch_1d
:pswitch_1d
:pswitch_1d
:pswitch_29
:pswitch_29
:pswitch_2c
.end packed-switch
.end method
.method public final setLenient(Z)V
.registers 2
iput-boolean p1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z
return-void
.end method
.method public skipValue()V
.registers 7
const/4 v5, 0x3
const/4 v4, 0x1
const/4 v0, 0x0
:cond_3
iget v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
if-nez v1, :cond_b
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I
move-result v1
:cond_b
if-ne v1, v5, :cond_18
invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->push(I)V
add-int/lit8 v0, v0, 0x1
:cond_12
:goto_12
const/4 v2, 0x0
iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I
if-nez v0, :cond_3
return-void
:cond_18
if-ne v1, v4, :cond_20
invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->push(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_12
:cond_20
const/4 v2, 0x4
if-ne v1, v2, :cond_2c
iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I
add-int/lit8 v2, v2, -0x1
iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I
add-int/lit8 v0, v0, -0x1
goto :goto_12
:cond_2c
const/4 v2, 0x2
if-ne v1, v2, :cond_38
iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I
add-int/lit8 v2, v2, -0x1
iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I
add-int/lit8 v0, v0, -0x1
goto :goto_12
:cond_38
const/16 v2, 0xe
if-eq v1, v2, :cond_40
const/16 v2, 0xa
if-ne v1, v2, :cond_44
:cond_40
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipUnquotedValue()V
goto :goto_12
:cond_44
const/16 v2, 0x8
if-eq v1, v2, :cond_4c
const/16 v2, 0xc
if-ne v1, v2, :cond_52
:cond_4c
const/16 v2, 0x27
invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V
goto :goto_12
:cond_52
const/16 v2, 0x9
if-eq v1, v2, :cond_5a
const/16 v2, 0xd
if-ne v1, v2, :cond_60
:cond_5a
const/16 v2, 0x22
invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V
goto :goto_12
:cond_60
const/16 v2, 0x10
if-ne v1, v2, :cond_12
iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I
iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I
add-int/2addr v2, v3
iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I
goto :goto_12
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, " at line "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getLineNumber()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, " column "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->getColumnNumber()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method