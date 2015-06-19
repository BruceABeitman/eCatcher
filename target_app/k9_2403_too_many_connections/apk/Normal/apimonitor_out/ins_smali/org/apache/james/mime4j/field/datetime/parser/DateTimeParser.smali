.class public Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;
.super Ljava/lang/Object;
.source "DateTimeParser.java"
.implements Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserConstants;
.field private static final ignoreMilitaryZoneOffset:Z = true
.field private static jj_la1_0:[I
.field private static jj_la1_1:[I
.field private jj_expentries:Ljava/util/Vector;
.field private jj_expentry:[I
.field private jj_gen:I
.field  jj_input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
.field private jj_kind:I
.field private final jj_la1:[I
.field public jj_nt:Lorg/apache/james/mime4j/field/datetime/parser/Token;
.field private jj_ntk:I
.field public token:Lorg/apache/james/mime4j/field/datetime/parser/Token;
.field public token_source:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;
.method static constructor <clinit>()V
.registers 0
invoke-static {}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_0()V
invoke-static {}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_1()V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
.registers 10
const/4 v6, 0x7
const/4 v5, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-array v2, v6, [I
iput-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I
new-instance v2, Ljava/util/Vector;
invoke-direct {v2}, Ljava/util/Vector;-><init>()V
iput-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;
iput v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I
:try_start_12
new-instance v2, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
const/4 v3, 0x1
const/4 v4, 0x1
invoke-direct {v2, p1, p2, v3, v4}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V
iput-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
:try_end_1b
.catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_1b} :catch_3a
new-instance v2, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;
iget-object v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V
iput-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;
new-instance v2, Lorg/apache/james/mime4j/field/datetime/parser/Token;
invoke-direct {v2}, Lorg/apache/james/mime4j/field/datetime/parser/Token;-><init>()V
iput-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;
iput v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I
const/4 v2, 0x0
iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I
const/4 v1, 0x0
:goto_31
if-ge v1, v6, :cond_42
iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I
aput v5, v2, v1
add-int/lit8 v1, v1, 0x1
goto :goto_31
:catch_3a
move-exception v2
move-object v0, v2
new-instance v2, Ljava/lang/RuntimeException;
invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v2
:cond_42
return-void
.end method
.method public constructor <init>(Ljava/io/Reader;)V
.registers 7
const/4 v4, 0x7
const/4 v2, 0x1
const/4 v3, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-array v1, v4, [I
iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I
new-instance v1, Ljava/util/Vector;
invoke-direct {v1}, Ljava/util/Vector;-><init>()V
iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;
iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I
new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
invoke-direct {v1, p1, v2, v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V
iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;
iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V
iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;
new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;
invoke-direct {v1}, Lorg/apache/james/mime4j/field/datetime/parser/Token;-><init>()V
iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;
iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I
const/4 v1, 0x0
iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I
const/4 v0, 0x0
:goto_30
if-ge v0, v4, :cond_39
iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I
aput v3, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_30
:cond_39
return-void
.end method
.method public constructor <init>(Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;)V
.registers 6
const/4 v3, 0x7
const/4 v2, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-array v1, v3, [I
iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I
new-instance v1, Ljava/util/Vector;
invoke-direct {v1}, Ljava/util/Vector;-><init>()V
iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;
iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I
iput-object p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;
new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;
invoke-direct {v1}, Lorg/apache/james/mime4j/field/datetime/parser/Token;-><init>()V
iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;
iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I
const/4 v1, 0x0
iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I
const/4 v0, 0x0
:goto_21
if-ge v0, v3, :cond_2a
iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I
aput v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_21
:cond_2a
return-void
.end method
.method private static getMilitaryZoneOffset(C)I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method private final jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
.registers 5
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;
iget-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;
if-eqz v1, :cond_1e
iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;
iget-object v1, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;
iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;
:goto_c
const/4 v1, -0x1
iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I
iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;
iget v1, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->kind:I
if-ne v1, p1, :cond_2b
iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I
iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;
return-object v1
:cond_1e
iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;
iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;
invoke-virtual {v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;
move-result-object v2
iput-object v2, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;
iput-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;
goto :goto_c
:cond_2b
iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;
iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->generateParseException()Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
move-result-object v1
throw v1
.end method
.method private static jj_la1_0()V
.registers 1
const/4 v0, 0x7
new-array v0, v0, [I
fill-array-data v0, :array_a
sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_0:[I
return-void
nop
:array_a
.array-data 0x4
0x2t 0x0t 0x0t 0x0t
0xf0t 0x7t 0x0t 0x0t
0xf0t 0x7t 0x0t 0x0t
0x0t 0xf8t 0x7ft 0x0t
0x0t 0x0t 0x80t 0x0t
0x0t 0x0t 0x0t 0xfft
0x0t 0x0t 0x0t 0xfet
.end array-data
.end method
.method private static jj_la1_1()V
.registers 1
const/4 v0, 0x7
new-array v0, v0, [I
fill-array-data v0, :array_a
sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_1:[I
return-void
nop
:array_a
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0xft 0x0t 0x0t 0x0t
0xft 0x0t 0x0t 0x0t
.end array-data
.end method
.method private final jj_ntk()I
.registers 3
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;
iget-object v0, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;
iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_nt:Lorg/apache/james/mime4j/field/datetime/parser/Token;
if-nez v0, :cond_17
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;
iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;
invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;
move-result-object v1
iput-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;
iget v0, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->kind:I
iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I
:goto_16
return v0
:cond_17
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_nt:Lorg/apache/james/mime4j/field/datetime/parser/Token;
iget v0, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->kind:I
iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I
goto :goto_16
.end method
.method public static main([Ljava/lang/String;)V
.registers 4
:goto_0
:try_start_0
new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;
sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;
invoke-direct {v0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;-><init>(Ljava/io/InputStream;)V
invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseLine()Lorg/apache/james/mime4j/field/datetime/DateTime;
:try_end_a
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b
goto :goto_0
:catch_b
move-exception v2
move-object v1, v2
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
return-void
.end method
.method private static parseDigits(Lorg/apache/james/mime4j/field/datetime/parser/Token;)I
.registers 3
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;
const/16 v1, 0xa
invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
move-result v0
return v0
.end method
.method public ReInit(Ljava/io/InputStream;)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
return-void
.end method
.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
.registers 9
const/4 v5, -0x1
:try_start_1
iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
const/4 v3, 0x1
const/4 v4, 0x1
invoke-virtual {v2, p1, p2, v3, v4}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
:try_end_8
.catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_8} :catch_26
iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;
iget-object v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V
new-instance v2, Lorg/apache/james/mime4j/field/datetime/parser/Token;
invoke-direct {v2}, Lorg/apache/james/mime4j/field/datetime/parser/Token;-><init>()V
iput-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;
iput v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I
const/4 v2, 0x0
iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I
const/4 v1, 0x0
:goto_1c
const/4 v2, 0x7
if-ge v1, v2, :cond_2e
iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I
aput v5, v2, v1
add-int/lit8 v1, v1, 0x1
goto :goto_1c
:catch_26
move-exception v2
move-object v0, v2
new-instance v2, Ljava/lang/RuntimeException;
invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v2
:cond_2e
return-void
.end method
.method public ReInit(Ljava/io/Reader;)V
.registers 6
const/4 v2, 0x1
const/4 v3, -0x1
iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
invoke-virtual {v1, p1, v2, v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V
iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;
iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;
invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V
new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;
invoke-direct {v1}, Lorg/apache/james/mime4j/field/datetime/parser/Token;-><init>()V
iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;
iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I
const/4 v1, 0x0
iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I
const/4 v0, 0x0
:goto_1b
const/4 v1, 0x7
if-ge v0, v1, :cond_25
iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I
aput v3, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_1b
:cond_25
return-void
.end method
.method public ReInit(Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;)V
.registers 5
const/4 v2, -0x1
iput-object p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;
new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;
invoke-direct {v1}, Lorg/apache/james/mime4j/field/datetime/parser/Token;-><init>()V
iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;
iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I
const/4 v1, 0x0
iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I
const/4 v0, 0x0
:goto_10
const/4 v1, 0x7
if-ge v0, v1, :cond_1a
iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I
aput v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_10
:cond_1a
return-void
.end method
.method public final date()Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;
.registers 5
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->day()I
move-result v0
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->month()I
move-result v1
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->year()Ljava/lang/String;
move-result-object v2
new-instance v3, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;
invoke-direct {v3, v2, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;-><init>(Ljava/lang/String;II)V
return-object v3
.end method
.method public final date_time()Lorg/apache/james/mime4j/field/datetime/DateTime;
.registers 11
iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I
const/4 v1, -0x1
if-ne v0, v1, :cond_3d
invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I
move-result v0
:goto_9
packed-switch v0, :pswitch_data_48
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I
const/4 v1, 0x1
iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I
aput v2, v0, v1
:goto_13
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->date()Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;
move-result-object v8
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->time()Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;
move-result-object v9
new-instance v0, Lorg/apache/james/mime4j/field/datetime/DateTime;
invoke-virtual {v8}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->getYear()Ljava/lang/String;
move-result-object v1
invoke-virtual {v8}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->getMonth()I
move-result v2
invoke-virtual {v8}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Date;->getDay()I
move-result v3
invoke-virtual {v9}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->getHour()I
move-result v4
invoke-virtual {v9}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->getMinute()I
move-result v5
invoke-virtual {v9}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->getSecond()I
move-result v6
invoke-virtual {v9}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;->getZone()I
move-result v7
invoke-direct/range {v0 .. v7}, Lorg/apache/james/mime4j/field/datetime/DateTime;-><init>(Ljava/lang/String;IIIIII)V
return-object v0
:cond_3d
iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I
goto :goto_9
:pswitch_40
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->day_of_week()Ljava/lang/String;
const/4 v0, 0x3
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
goto :goto_13
:pswitch_data_48
.packed-switch 0x4
:pswitch_40
:pswitch_40
:pswitch_40
:pswitch_40
:pswitch_40
:pswitch_40
:pswitch_40
.end packed-switch
.end method
.method public final day()I
.registers 3
const/16 v1, 0x2e
invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
move-result-object v0
invoke-static {v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseDigits(Lorg/apache/james/mime4j/field/datetime/parser/Token;)I
move-result v1
return v1
.end method
.method public final day_of_week()Ljava/lang/String;
.registers 5
const/4 v3, -0x1
iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I
if-ne v0, v3, :cond_1c
invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I
move-result v0
:goto_9
packed-switch v0, :pswitch_data_4a
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I
const/4 v1, 0x2
iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I
aput v2, v0, v1
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
invoke-direct {v0}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V
throw v0
:cond_1c
iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I
goto :goto_9
:pswitch_1f
const/4 v0, 0x4
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
:goto_23
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;
iget-object v0, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;
return-object v0
:pswitch_28
const/4 v0, 0x5
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
goto :goto_23
:pswitch_2d
const/4 v0, 0x6
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
goto :goto_23
:pswitch_32
const/4 v0, 0x7
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
goto :goto_23
:pswitch_37
const/16 v0, 0x8
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
goto :goto_23
:pswitch_3d
const/16 v0, 0x9
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
goto :goto_23
:pswitch_43
const/16 v0, 0xa
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
goto :goto_23
nop
:pswitch_data_4a
.packed-switch 0x4
:pswitch_1f
:pswitch_28
:pswitch_2d
:pswitch_32
:pswitch_37
:pswitch_3d
:pswitch_43
.end packed-switch
.end method
.method public final disable_tracing()V
.registers 1
return-void
.end method
.method public final enable_tracing()V
.registers 1
return-void
.end method
.method public generateParseException()Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
.registers 10
const/4 v8, 0x0
const/16 v7, 0x31
const/4 v6, 0x1
iget-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;
invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V
new-array v3, v7, [Z
const/4 v1, 0x0
:goto_c
if-ge v1, v7, :cond_13
aput-boolean v8, v3, v1
add-int/lit8 v1, v1, 0x1
goto :goto_c
:cond_13
iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I
if-ltz v4, :cond_1e
iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I
aput-boolean v6, v3, v4
const/4 v4, -0x1
iput v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I
:cond_1e
const/4 v1, 0x0
:goto_1f
const/4 v4, 0x7
if-ge v1, v4, :cond_4d
iget-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I
aget v4, v4, v1
iget v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I
if-ne v4, v5, :cond_4a
const/4 v2, 0x0
:goto_2b
const/16 v4, 0x20
if-ge v2, v4, :cond_4a
sget-object v4, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_0:[I
aget v4, v4, v1
shl-int v5, v6, v2
and-int/2addr v4, v5
if-eqz v4, :cond_3a
aput-boolean v6, v3, v2
:cond_3a
sget-object v4, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_1:[I
aget v4, v4, v1
shl-int v5, v6, v2
and-int/2addr v4, v5
if-eqz v4, :cond_47
add-int/lit8 v4, v2, 0x20
aput-boolean v6, v3, v4
:cond_47
add-int/lit8 v2, v2, 0x1
goto :goto_2b
:cond_4a
add-int/lit8 v1, v1, 0x1
goto :goto_1f
:cond_4d
const/4 v1, 0x0
:goto_4e
if-ge v1, v7, :cond_66
aget-boolean v4, v3, v1
if-eqz v4, :cond_63
new-array v4, v6, [I
iput-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentry:[I
iget-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentry:[I
aput v1, v4, v8
iget-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;
iget-object v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentry:[I
invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:cond_63
add-int/lit8 v1, v1, 0x1
goto :goto_4e
:cond_66
iget-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;
invoke-virtual {v4}, Ljava/util/Vector;->size()I
move-result v4
new-array v0, v4, [[I
const/4 v1, 0x0
:goto_6f
iget-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;
invoke-virtual {v4}, Ljava/util/Vector;->size()I
move-result v4
if-ge v1, v4, :cond_86
iget-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/Vector;
invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, [I
check-cast v4, [I
aput-object v4, v0, v1
add-int/lit8 v1, v1, 0x1
goto :goto_6f
:cond_86
new-instance v4, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
iget-object v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;
sget-object v6, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->tokenImage:[Ljava/lang/String;
invoke-direct {v4, v5, v0, v6}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/datetime/parser/Token;[[I[Ljava/lang/String;)V
return-object v4
.end method
.method public final getNextToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;
.registers 3
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;
iget-object v0, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;
if-eqz v0, :cond_18
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;
iget-object v0, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;
iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;
:goto_c
const/4 v0, -0x1
iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I
iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;
return-object v0
:cond_18
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;
iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;
invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;
move-result-object v1
iput-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;
iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;
goto :goto_c
.end method
.method public final getToken(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
.registers 6
iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;
const/4 v0, 0x0
move-object v2, v1
:goto_4
if-ge v0, p1, :cond_19
iget-object v3, v2, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;
if-eqz v3, :cond_10
iget-object v1, v2, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;
:goto_c
add-int/lit8 v0, v0, 0x1
move-object v2, v1
goto :goto_4
:cond_10
iget-object v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;
invoke-virtual {v3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;
move-result-object v1
iput-object v1, v2, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;
goto :goto_c
:cond_19
return-object v2
.end method
.method public final hour()I
.registers 3
const/16 v1, 0x2e
invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
move-result-object v0
invoke-static {v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseDigits(Lorg/apache/james/mime4j/field/datetime/parser/Token;)I
move-result v1
return v1
.end method
.method public final minute()I
.registers 3
const/16 v1, 0x2e
invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
move-result-object v0
invoke-static {v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseDigits(Lorg/apache/james/mime4j/field/datetime/parser/Token;)I
move-result v1
return v1
.end method
.method public final month()I
.registers 6
const/16 v4, 0xc
const/16 v1, 0xb
const/4 v3, 0x3
const/4 v2, -0x1
iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I
if-ne v0, v2, :cond_20
invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I
move-result v0
:goto_e
packed-switch v0, :pswitch_data_76
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I
iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I
aput v1, v0, v3
invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
invoke-direct {v0}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V
throw v0
:cond_20
iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I
goto :goto_e
:pswitch_23
invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
const/4 v0, 0x1
:goto_27
return v0
:pswitch_28
invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
const/4 v0, 0x2
goto :goto_27
:pswitch_2d
const/16 v0, 0xd
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
move v0, v3
goto :goto_27
:pswitch_34
const/16 v0, 0xe
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
const/4 v0, 0x4
goto :goto_27
:pswitch_3b
const/16 v0, 0xf
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
const/4 v0, 0x5
goto :goto_27
:pswitch_42
const/16 v0, 0x10
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
const/4 v0, 0x6
goto :goto_27
:pswitch_49
const/16 v0, 0x11
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
const/4 v0, 0x7
goto :goto_27
:pswitch_50
const/16 v0, 0x12
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
const/16 v0, 0x8
goto :goto_27
:pswitch_58
const/16 v0, 0x13
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
const/16 v0, 0x9
goto :goto_27
:pswitch_60
const/16 v0, 0x14
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
const/16 v0, 0xa
goto :goto_27
:pswitch_68
const/16 v0, 0x15
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
move v0, v1
goto :goto_27
:pswitch_6f
const/16 v0, 0x16
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
move v0, v4
goto :goto_27
:pswitch_data_76
.packed-switch 0xb
:pswitch_23
:pswitch_28
:pswitch_2d
:pswitch_34
:pswitch_3b
:pswitch_42
:pswitch_49
:pswitch_50
:pswitch_58
:pswitch_60
:pswitch_68
:pswitch_6f
.end packed-switch
.end method
.method public final obs_zone()I
.registers 7
const/4 v5, -0x1
iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I
if-ne v2, v5, :cond_1c
invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I
move-result v2
:goto_9
packed-switch v2, :pswitch_data_7a
iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I
const/4 v3, 0x6
iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I
aput v4, v2, v3
invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
new-instance v2, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
invoke-direct {v2}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V
throw v2
:cond_1c
iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I
goto :goto_9
:pswitch_1f
const/16 v2, 0x19
invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
const/4 v1, 0x0
:goto_25
mul-int/lit8 v2, v1, 0x64
return v2
:pswitch_28
const/16 v2, 0x1a
invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
const/4 v1, 0x0
goto :goto_25
:pswitch_2f
const/16 v2, 0x1b
invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
const/4 v1, -0x5
goto :goto_25
:pswitch_36
const/16 v2, 0x1c
invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
const/4 v1, -0x4
goto :goto_25
:pswitch_3d
const/16 v2, 0x1d
invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
const/4 v1, -0x6
goto :goto_25
:pswitch_44
const/16 v2, 0x1e
invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
const/4 v1, -0x5
goto :goto_25
:pswitch_4b
const/16 v2, 0x1f
invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
const/4 v1, -0x7
goto :goto_25
:pswitch_52
const/16 v2, 0x20
invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
const/4 v1, -0x6
goto :goto_25
:pswitch_59
const/16 v2, 0x21
invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
const/4 v1, -0x8
goto :goto_25
:pswitch_60
const/16 v2, 0x22
invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
const/4 v1, -0x7
goto :goto_25
:pswitch_67
const/16 v2, 0x23
invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
move-result-object v0
iget-object v2, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C
move-result v2
invoke-static {v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->getMilitaryZoneOffset(C)I
move-result v1
goto :goto_25
nop
:pswitch_data_7a
.packed-switch 0x19
:pswitch_1f
:pswitch_28
:pswitch_2f
:pswitch_36
:pswitch_3d
:pswitch_44
:pswitch_4b
:pswitch_52
:pswitch_59
:pswitch_60
:pswitch_67
.end packed-switch
.end method
.method public final parseAll()Lorg/apache/james/mime4j/field/datetime/DateTime;
.registers 3
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->date_time()Lorg/apache/james/mime4j/field/datetime/DateTime;
move-result-object v0
const/4 v1, 0x0
invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
return-object v0
.end method
.method public final parseLine()Lorg/apache/james/mime4j/field/datetime/DateTime;
.registers 5
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->date_time()Lorg/apache/james/mime4j/field/datetime/DateTime;
move-result-object v0
iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I
const/4 v2, -0x1
if-ne v1, v2, :cond_1c
invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I
move-result v1
:goto_d
packed-switch v1, :pswitch_data_24
iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I
const/4 v2, 0x0
iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I
aput v3, v1, v2
:goto_17
const/4 v1, 0x2
invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
return-object v0
:cond_1c
iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I
goto :goto_d
:pswitch_1f
const/4 v1, 0x1
invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
goto :goto_17
:pswitch_data_24
.packed-switch 0x1
:pswitch_1f
.end packed-switch
.end method
.method public final second()I
.registers 3
const/16 v1, 0x2e
invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
move-result-object v0
invoke-static {v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseDigits(Lorg/apache/james/mime4j/field/datetime/parser/Token;)I
move-result v1
return v1
.end method
.method public final time()Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;
.registers 8
const/16 v6, 0x17
const/4 v2, 0x0
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->hour()I
move-result v0
invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->minute()I
move-result v1
iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I
const/4 v5, -0x1
if-ne v4, v5, :cond_2b
invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I
move-result v4
:goto_17
packed-switch v4, :pswitch_data_36
iget-object v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I
const/4 v5, 0x4
iget v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I
aput v6, v4, v5
:goto_21
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->zone()I
move-result v3
new-instance v4, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;
invoke-direct {v4, v0, v1, v2, v3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser$Time;-><init>(IIII)V
return-object v4
:cond_2b
iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I
goto :goto_17
:pswitch_2e
invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->second()I
move-result v2
goto :goto_21
:pswitch_data_36
.packed-switch 0x17
:pswitch_2e
.end packed-switch
.end method
.method public final year()Ljava/lang/String;
.registers 3
const/16 v1, 0x2e
invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
move-result-object v0
iget-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;
return-object v1
.end method
.method public final zone()I
.registers 8
const/4 v6, -0x1
iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I
if-ne v3, v6, :cond_1c
invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I
move-result v3
:goto_9
packed-switch v3, :pswitch_data_44
iget-object v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I
const/4 v4, 0x5
iget v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I
aput v5, v3, v4
invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
new-instance v3, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
invoke-direct {v3}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V
throw v3
:cond_1c
iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I
goto :goto_9
:pswitch_1f
const/16 v3, 0x18
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
move-result-object v0
const/16 v3, 0x2e
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
move-result-object v1
invoke-static {v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseDigits(Lorg/apache/james/mime4j/field/datetime/parser/Token;)I
move-result v3
iget-object v4, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;
const-string v5, "-"
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_3d
move v4, v6
:goto_3a
mul-int v2, v3, v4
:goto_3c
return v2
:cond_3d
const/4 v4, 0x1
goto :goto_3a
:pswitch_3f
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->obs_zone()I
move-result v2
goto :goto_3c
:pswitch_data_44
.packed-switch 0x18
:pswitch_1f
:pswitch_3f
:pswitch_3f
:pswitch_3f
:pswitch_3f
:pswitch_3f
:pswitch_3f
:pswitch_3f
:pswitch_3f
:pswitch_3f
:pswitch_3f
:pswitch_3f
.end packed-switch
.end method