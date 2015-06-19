.class public Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;
.super Ljava/lang/Object;
.source "ContentTypeParser.java"
.implements Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserConstants;
.field private static jj_la1_0:[I
.field private jj_expentries:Ljava/util/Vector;
.field private jj_expentry:[I
.field private jj_gen:I
.field  jj_input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
.field private jj_kind:I
.field private final jj_la1:[I
.field public jj_nt:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
.field private jj_ntk:I
.field private paramNames:Ljava/util/ArrayList;
.field private paramValues:Ljava/util/ArrayList;
.field private subtype:Ljava/lang/String;
.field public token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
.field public token_source:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;
.field private type:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 0
invoke-static {}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1_0()V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
.registers 10
const/4 v6, 0x3
const/4 v5, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramNames:Ljava/util/ArrayList;
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramValues:Ljava/util/ArrayList;
new-array v2, v6, [I
iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I
new-instance v2, Ljava/util/Vector;
invoke-direct {v2}, Ljava/util/Vector;-><init>()V
iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentries:Ljava/util/Vector;
iput v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_kind:I
:try_start_20
new-instance v2, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
const/4 v3, 0x1
const/4 v4, 0x1
invoke-direct {v2, p1, p2, v3, v4}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V
iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
:try_end_29
.catch Ljava/io/UnsupportedEncodingException; {:try_start_20 .. :try_end_29} :catch_48
new-instance v2, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;
iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;)V
iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;
new-instance v2, Lorg/apache/james/mime4j/field/contenttype/parser/Token;
invoke-direct {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/Token;-><init>()V
iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
iput v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I
const/4 v2, 0x0
iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I
const/4 v1, 0x0
:goto_3f
if-ge v1, v6, :cond_50
iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I
aput v5, v2, v1
add-int/lit8 v1, v1, 0x1
goto :goto_3f
:catch_48
move-exception v2
move-object v0, v2
new-instance v2, Ljava/lang/RuntimeException;
invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v2
:cond_50
return-void
.end method
.method public constructor <init>(Ljava/io/Reader;)V
.registers 7
const/4 v4, 0x3
const/4 v2, 0x1
const/4 v3, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramNames:Ljava/util/ArrayList;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramValues:Ljava/util/ArrayList;
new-array v1, v4, [I
iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I
new-instance v1, Ljava/util/Vector;
invoke-direct {v1}, Ljava/util/Vector;-><init>()V
iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentries:Ljava/util/Vector;
iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_kind:I
new-instance v1, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
invoke-direct {v1, p1, v2, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V
iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
new-instance v1, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;
iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;)V
iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;
new-instance v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;
invoke-direct {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/Token;-><init>()V
iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I
const/4 v1, 0x0
iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I
const/4 v0, 0x0
:goto_3e
if-ge v0, v4, :cond_47
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I
aput v3, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_3e
:cond_47
return-void
.end method
.method public constructor <init>(Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;)V
.registers 6
const/4 v3, 0x3
const/4 v2, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramNames:Ljava/util/ArrayList;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramValues:Ljava/util/ArrayList;
new-array v1, v3, [I
iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I
new-instance v1, Ljava/util/Vector;
invoke-direct {v1}, Ljava/util/Vector;-><init>()V
iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentries:Ljava/util/Vector;
iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_kind:I
iput-object p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;
new-instance v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;
invoke-direct {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/Token;-><init>()V
iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I
const/4 v1, 0x0
iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I
const/4 v0, 0x0
:goto_2f
if-ge v0, v3, :cond_38
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I
aput v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_2f
:cond_38
return-void
.end method
.method private final jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;
.registers 5
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
iget-object v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
if-eqz v1, :cond_1e
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
iget-object v1, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
:goto_c
const/4 v1, -0x1
iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
iget v1, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->kind:I
if-ne v1, p1, :cond_2b
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
return-object v1
:cond_1e
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;
invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/contenttype/parser/Token;
move-result-object v2
iput-object v2, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
goto :goto_c
:cond_2b
iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_kind:I
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->generateParseException()Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
move-result-object v1
throw v1
.end method
.method private static jj_la1_0()V
.registers 1
const/4 v0, 0x3
new-array v0, v0, [I
fill-array-data v0, :array_a
sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1_0:[I
return-void
nop
:array_a
.array-data 0x4
0x2t 0x0t 0x0t 0x0t
0x10t 0x0t 0x0t 0x0t
0x0t 0x0t 0x28t 0x0t
.end array-data
.end method
.method private final jj_ntk()I
.registers 3
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
iget-object v0, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_nt:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
if-nez v0, :cond_17
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;
invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/contenttype/parser/Token;
move-result-object v1
iput-object v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
iget v0, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->kind:I
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I
:goto_16
return v0
:cond_17
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_nt:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
iget v0, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->kind:I
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I
goto :goto_16
.end method
.method public static main([Ljava/lang/String;)V
.registers 4
:goto_0
:try_start_0
new-instance v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;
sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;
invoke-direct {v0, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;-><init>(Ljava/io/InputStream;)V
invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->parseLine()V
:try_end_a
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b
goto :goto_0
:catch_b
move-exception v2
move-object v1, v2
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
return-void
.end method
.method public ReInit(Ljava/io/InputStream;)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
return-void
.end method
.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
.registers 9
const/4 v5, -0x1
:try_start_1
iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
const/4 v3, 0x1
const/4 v4, 0x1
invoke-virtual {v2, p1, p2, v3, v4}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
:try_end_8
.catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_8} :catch_26
iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;
iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;)V
new-instance v2, Lorg/apache/james/mime4j/field/contenttype/parser/Token;
invoke-direct {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/Token;-><init>()V
iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
iput v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I
const/4 v2, 0x0
iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I
const/4 v1, 0x0
:goto_1c
const/4 v2, 0x3
if-ge v1, v2, :cond_2e
iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I
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
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
invoke-virtual {v1, p1, v2, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;
iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;
invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;)V
new-instance v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;
invoke-direct {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/Token;-><init>()V
iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I
const/4 v1, 0x0
iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I
const/4 v0, 0x0
:goto_1b
const/4 v1, 0x3
if-ge v0, v1, :cond_25
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I
aput v3, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_1b
:cond_25
return-void
.end method
.method public ReInit(Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;)V
.registers 5
const/4 v2, -0x1
iput-object p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;
new-instance v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;
invoke-direct {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/Token;-><init>()V
iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I
const/4 v1, 0x0
iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I
const/4 v0, 0x0
:goto_10
const/4 v1, 0x3
if-ge v0, v1, :cond_1a
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I
aput v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_10
:cond_1a
return-void
.end method
.method public final disable_tracing()V
.registers 1
return-void
.end method
.method public final enable_tracing()V
.registers 1
return-void
.end method
.method public generateParseException()Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
.registers 10
const/4 v8, 0x0
const/16 v7, 0x18
const/4 v6, 0x1
iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentries:Ljava/util/Vector;
invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V
new-array v3, v7, [Z
const/4 v1, 0x0
:goto_c
if-ge v1, v7, :cond_13
aput-boolean v8, v3, v1
add-int/lit8 v1, v1, 0x1
goto :goto_c
:cond_13
iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_kind:I
if-ltz v4, :cond_1e
iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_kind:I
aput-boolean v6, v3, v4
const/4 v4, -0x1
iput v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_kind:I
:cond_1e
const/4 v1, 0x0
:goto_1f
const/4 v4, 0x3
if-ge v1, v4, :cond_40
iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I
aget v4, v4, v1
iget v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I
if-ne v4, v5, :cond_3d
const/4 v2, 0x0
:goto_2b
const/16 v4, 0x20
if-ge v2, v4, :cond_3d
sget-object v4, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1_0:[I
aget v4, v4, v1
shl-int v5, v6, v2
and-int/2addr v4, v5
if-eqz v4, :cond_3a
aput-boolean v6, v3, v2
:cond_3a
add-int/lit8 v2, v2, 0x1
goto :goto_2b
:cond_3d
add-int/lit8 v1, v1, 0x1
goto :goto_1f
:cond_40
const/4 v1, 0x0
:goto_41
if-ge v1, v7, :cond_59
aget-boolean v4, v3, v1
if-eqz v4, :cond_56
new-array v4, v6, [I
iput-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentry:[I
iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentry:[I
aput v1, v4, v8
iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentries:Ljava/util/Vector;
iget-object v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentry:[I
invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:cond_56
add-int/lit8 v1, v1, 0x1
goto :goto_41
:cond_59
iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentries:Ljava/util/Vector;
invoke-virtual {v4}, Ljava/util/Vector;->size()I
move-result v4
new-array v0, v4, [[I
const/4 v1, 0x0
:goto_62
iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentries:Ljava/util/Vector;
invoke-virtual {v4}, Ljava/util/Vector;->size()I
move-result v4
if-ge v1, v4, :cond_79
iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_expentries:Ljava/util/Vector;
invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, [I
check-cast v4, [I
aput-object v4, v0, v1
add-int/lit8 v1, v1, 0x1
goto :goto_62
:cond_79
new-instance v4, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
iget-object v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
sget-object v6, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->tokenImage:[Ljava/lang/String;
invoke-direct {v4, v5, v0, v6}, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/contenttype/parser/Token;[[I[Ljava/lang/String;)V
return-object v4
.end method
.method public final getNextToken()Lorg/apache/james/mime4j/field/contenttype/parser/Token;
.registers 3
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
iget-object v0, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
if-eqz v0, :cond_18
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
iget-object v0, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
:goto_c
const/4 v0, -0x1
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I
iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
return-object v0
:cond_18
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;
invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/contenttype/parser/Token;
move-result-object v1
iput-object v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
iput-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
goto :goto_c
.end method
.method public getParamNames()Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramNames:Ljava/util/ArrayList;
return-object v0
.end method
.method public getParamValues()Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramValues:Ljava/util/ArrayList;
return-object v0
.end method
.method public getSubType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->subtype:Ljava/lang/String;
return-object v0
.end method
.method public final getToken(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;
.registers 6
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
const/4 v0, 0x0
move-object v2, v1
:goto_4
if-ge v0, p1, :cond_19
iget-object v3, v2, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
if-eqz v3, :cond_10
iget-object v1, v2, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
:goto_c
add-int/lit8 v0, v0, 0x1
move-object v2, v1
goto :goto_4
:cond_10
iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->token_source:Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;
invoke-virtual {v3}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/contenttype/parser/Token;
move-result-object v1
iput-object v1, v2, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;
goto :goto_c
:cond_19
return-object v2
.end method
.method public getType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->type:Ljava/lang/String;
return-object v0
.end method
.method public final parameter()V
.registers 5
const/16 v2, 0x15
invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;
move-result-object v0
const/4 v2, 0x5
invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->value()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramNames:Ljava/util/ArrayList;
iget-object v3, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->image:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->paramValues:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public final parse()V
.registers 6
const/16 v3, 0x15
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;
move-result-object v1
const/4 v2, 0x3
invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;
move-result-object v0
iget-object v2, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->image:Ljava/lang/String;
iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->type:Ljava/lang/String;
iget-object v2, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->image:Ljava/lang/String;
iput-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->subtype:Ljava/lang/String;
:goto_16
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I
const/4 v3, -0x1
if-ne v2, v3, :cond_2a
invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk()I
move-result v2
:goto_1f
packed-switch v2, :pswitch_data_36
iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I
const/4 v3, 0x1
iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I
aput v4, v2, v3
return-void
:cond_2a
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I
goto :goto_1f
:pswitch_2d
const/4 v2, 0x4
invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->parameter()V
goto :goto_16
nop
:pswitch_data_36
.packed-switch 0x4
:pswitch_2d
.end packed-switch
.end method
.method public final parseAll()V
.registers 2
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->parse()V
const/4 v0, 0x0
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;
return-void
.end method
.method public final parseLine()V
.registers 4
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->parse()V
iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I
const/4 v1, -0x1
if-ne v0, v1, :cond_1b
invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk()I
move-result v0
:goto_c
packed-switch v0, :pswitch_data_24
iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I
const/4 v1, 0x0
iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I
aput v2, v0, v1
:goto_16
const/4 v0, 0x2
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;
return-void
:cond_1b
iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I
goto :goto_c
:pswitch_1e
const/4 v0, 0x1
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;
goto :goto_16
nop
:pswitch_data_24
.packed-switch 0x1
:pswitch_1e
.end packed-switch
.end method
.method public final value()Ljava/lang/String;
.registers 6
const/4 v4, -0x1
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I
if-ne v1, v4, :cond_1c
invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk()I
move-result v1
:goto_9
packed-switch v1, :pswitch_data_30
:pswitch_c
iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_la1:[I
const/4 v2, 0x2
iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_gen:I
aput v3, v1, v2
invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;
new-instance v1, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
invoke-direct {v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;-><init>()V
throw v1
:cond_1c
iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_ntk:I
goto :goto_9
:pswitch_1f
const/16 v1, 0x15
invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;
move-result-object v0
:goto_25
iget-object v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->image:Ljava/lang/String;
return-object v1
:pswitch_28
const/16 v1, 0x13
invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;
move-result-object v0
goto :goto_25
nop
:pswitch_data_30
.packed-switch 0x13
:pswitch_28
:pswitch_c
:pswitch_1f
.end packed-switch
.end method