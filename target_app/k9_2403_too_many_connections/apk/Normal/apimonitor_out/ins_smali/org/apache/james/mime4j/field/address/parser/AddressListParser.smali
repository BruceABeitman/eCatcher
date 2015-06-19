.class public Lorg/apache/james/mime4j/field/address/parser/AddressListParser;
.super Ljava/lang/Object;
.source "AddressListParser.java"
.implements Lorg/apache/james/mime4j/field/address/parser/AddressListParserTreeConstants;
.implements Lorg/apache/james/mime4j/field/address/parser/AddressListParserConstants;
.field private static jj_la1_0:[I
.field private static jj_la1_1:[I
.field private final jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
.field private jj_endpos:I
.field private jj_expentries:Ljava/util/Vector;
.field private jj_expentry:[I
.field private jj_gc:I
.field private jj_gen:I
.field  jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;
.field private jj_kind:I
.field private jj_la:I
.field private final jj_la1:[I
.field private jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;
.field private jj_lasttokens:[I
.field private final jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
.field public jj_nt:Lorg/apache/james/mime4j/field/address/parser/Token;
.field private jj_ntk:I
.field private jj_rescan:Z
.field private jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;
.field private jj_semLA:Z
.field protected jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
.field public lookingAhead:Z
.field public token:Lorg/apache/james/mime4j/field/address/parser/Token;
.field public token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;
.method static constructor <clinit>()V
.registers 0
invoke-static {}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_0()V
invoke-static {}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_1()V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
.registers 11
const/16 v7, 0x16
const/4 v6, -0x1
const/4 v5, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v2, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;-><init>()V
iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
iput-boolean v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z
new-array v2, v7, [I
iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
const/4 v2, 0x2
new-array v2, v2, [Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
iput-boolean v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z
iput v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I
new-instance v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
const/4 v3, 0x0
invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;-><init>(Lorg/apache/james/mime4j/field/address/parser/AddressListParser$1;)V
iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
new-instance v2, Ljava/util/Vector;
invoke-direct {v2}, Ljava/util/Vector;-><init>()V
iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;
iput v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I
const/16 v2, 0x64
new-array v2, v2, [I
iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I
:try_start_34
new-instance v2, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;
const/4 v3, 0x1
const/4 v4, 0x1
invoke-direct {v2, p1, p2, v3, v4}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V
iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;
:try_end_3d
.catch Ljava/io/UnsupportedEncodingException; {:try_start_34 .. :try_end_3d} :catch_5b
new-instance v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;
invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V
iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;
new-instance v2, Lorg/apache/james/mime4j/field/address/parser/Token;
invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V
iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;
iput v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
iput v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
const/4 v1, 0x0
:goto_52
if-ge v1, v7, :cond_63
iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
aput v6, v2, v1
add-int/lit8 v1, v1, 0x1
goto :goto_52
:catch_5b
move-exception v2
move-object v0, v2
new-instance v2, Ljava/lang/RuntimeException;
invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v2
:cond_63
const/4 v1, 0x0
:goto_64
iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
array-length v2, v2
if-ge v1, v2, :cond_75
iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
new-instance v3, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V
aput-object v3, v2, v1
add-int/lit8 v1, v1, 0x1
goto :goto_64
:cond_75
return-void
.end method
.method public constructor <init>(Ljava/io/Reader;)V
.registers 9
const/16 v6, 0x16
const/4 v5, 0x1
const/4 v4, -0x1
const/4 v3, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v1, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;-><init>()V
iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
iput-boolean v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z
new-array v1, v6, [I
iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
const/4 v1, 0x2
new-array v1, v1, [Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
iput-boolean v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z
iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I
new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
const/4 v2, 0x0
invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;-><init>(Lorg/apache/james/mime4j/field/address/parser/AddressListParser$1;)V
iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
new-instance v1, Ljava/util/Vector;
invoke-direct {v1}, Ljava/util/Vector;-><init>()V
iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;
iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I
const/16 v1, 0x64
new-array v1, v1, [I
iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I
new-instance v1, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;
invoke-direct {v1, p1, v5, v5}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V
iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;
new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;
iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;
invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V
iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;
new-instance v1, Lorg/apache/james/mime4j/field/address/parser/Token;
invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V
iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;
iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
const/4 v0, 0x0
:goto_51
if-ge v0, v6, :cond_5a
iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
aput v4, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_51
:cond_5a
const/4 v0, 0x0
:goto_5b
iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
array-length v1, v1
if-ge v0, v1, :cond_6c
iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
new-instance v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V
aput-object v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_5b
:cond_6c
return-void
.end method
.method public constructor <init>(Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;)V
.registers 8
const/16 v5, 0x16
const/4 v4, -0x1
const/4 v3, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v1, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;-><init>()V
iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
iput-boolean v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z
new-array v1, v5, [I
iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
const/4 v1, 0x2
new-array v1, v1, [Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
iput-boolean v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z
iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I
new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
const/4 v2, 0x0
invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;-><init>(Lorg/apache/james/mime4j/field/address/parser/AddressListParser$1;)V
iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
new-instance v1, Ljava/util/Vector;
invoke-direct {v1}, Ljava/util/Vector;-><init>()V
iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;
iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I
const/16 v1, 0x64
new-array v1, v1, [I
iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I
iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;
new-instance v1, Lorg/apache/james/mime4j/field/address/parser/Token;
invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V
iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;
iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
const/4 v0, 0x0
:goto_42
if-ge v0, v5, :cond_4b
iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
aput v4, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_42
:cond_4b
const/4 v0, 0x0
:goto_4c
iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
array-length v1, v1
if-ge v0, v1, :cond_5d
iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
new-instance v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V
aput-object v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_4c
:cond_5d
return-void
.end method
.method private final jj_2_1(I)Z
.registers 6
const/4 v3, 0x1
const/4 v2, 0x0
iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I
iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;
iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;
iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;
:try_start_a
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_1()Z
:try_end_d
.catchall {:try_start_a .. :try_end_d} :catchall_1d
.catch Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_a .. :try_end_d} :catch_17
move-result v1
if-nez v1, :cond_15
move v1, v3
:goto_11
invoke-direct {p0, v2, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V
:goto_14
return v1
:cond_15
move v1, v2
goto :goto_11
:catch_17
move-exception v0
invoke-direct {p0, v2, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V
move v1, v3
goto :goto_14
:catchall_1d
move-exception v1
invoke-direct {p0, v2, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V
throw v1
.end method
.method private final jj_2_2(I)Z
.registers 5
const/4 v2, 0x1
iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I
iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;
iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;
iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;
:try_start_9
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_2()Z
:try_end_c
.catchall {:try_start_9 .. :try_end_c} :catchall_1c
.catch Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_16
move-result v1
if-nez v1, :cond_14
move v1, v2
:goto_10
invoke-direct {p0, v2, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V
:goto_13
return v1
:cond_14
const/4 v1, 0x0
goto :goto_10
:catch_16
move-exception v0
invoke-direct {p0, v2, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V
move v1, v2
goto :goto_13
:catchall_1c
move-exception v1
invoke-direct {p0, v2, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V
throw v1
.end method
.method private final jj_3R_10()Z
.registers 3
iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_12()Z
move-result v1
if-eqz v1, :cond_14
iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;
const/16 v1, 0x12
invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z
move-result v1
if-eqz v1, :cond_14
const/4 v1, 0x1
:goto_13
return v1
:cond_14
const/4 v1, 0x0
goto :goto_13
.end method
.method private final jj_3R_11()Z
.registers 3
iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;
const/16 v1, 0x9
invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z
move-result v1
if-eqz v1, :cond_c
iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;
:cond_c
iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;
const/16 v1, 0xe
invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z
move-result v1
if-eqz v1, :cond_22
iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;
const/16 v1, 0x1f
invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z
move-result v1
if-eqz v1, :cond_22
const/4 v1, 0x1
:goto_21
return v1
:cond_22
const/4 v1, 0x0
goto :goto_21
.end method
.method private final jj_3R_12()Z
.registers 3
const/16 v1, 0xe
invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z
move-result v1
if-eqz v1, :cond_a
const/4 v1, 0x1
:goto_9
return v1
:cond_a
iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_13()Z
move-result v1
if-eqz v1, :cond_a
iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;
const/4 v1, 0x0
goto :goto_9
.end method
.method private final jj_3R_13()Z
.registers 3
iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;
const/16 v1, 0x9
invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z
move-result v1
if-eqz v1, :cond_c
iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;
:cond_c
const/16 v1, 0xe
invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z
move-result v1
if-eqz v1, :cond_16
const/4 v1, 0x1
:goto_15
return v1
:cond_16
const/4 v1, 0x0
goto :goto_15
.end method
.method private final jj_3R_8()Z
.registers 3
const/4 v1, 0x1
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_9()Z
move-result v0
if-eqz v0, :cond_9
move v0, v1
:goto_8
return v0
:cond_9
const/16 v0, 0x8
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z
move-result v0
if-eqz v0, :cond_13
move v0, v1
goto :goto_8
:cond_13
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_10()Z
move-result v0
if-eqz v0, :cond_1b
move v0, v1
goto :goto_8
:cond_1b
const/4 v0, 0x0
goto :goto_8
.end method
.method private final jj_3R_9()Z
.registers 3
iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;
const/16 v1, 0xe
invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z
move-result v1
if-eqz v1, :cond_16
iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;
const/16 v1, 0x1f
invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z
move-result v1
if-eqz v1, :cond_16
const/4 v1, 0x1
:goto_15
return v1
:cond_16
iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_11()Z
move-result v1
if-eqz v1, :cond_16
iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;
const/4 v1, 0x0
goto :goto_15
.end method
.method private final jj_3_1()Z
.registers 2
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_8()Z
move-result v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private final jj_3_2()Z
.registers 2
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_8()Z
move-result v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private jj_add_error_token(II)V
.registers 11
const/16 v5, 0x64
if-lt p2, v5, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I
add-int/lit8 v5, v5, 0x1
if-ne p2, v5, :cond_16
iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I
iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I
add-int/lit8 v7, v6, 0x1
iput v7, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I
aput p1, v5, v6
goto :goto_4
:cond_16
iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I
if-eqz v5, :cond_4
iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I
new-array v5, v5, [I
iput-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I
const/4 v3, 0x0
:goto_21
iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I
if-ge v3, v5, :cond_30
iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I
iget-object v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I
aget v6, v6, v3
aput v6, v5, v3
add-int/lit8 v3, v3, 0x1
goto :goto_21
:cond_30
const/4 v2, 0x0
iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;
invoke-virtual {v5}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;
move-result-object v1
:cond_37
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v5
if-eqz v5, :cond_5f
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v5
check-cast v5, [I
move-object v0, v5
check-cast v0, [I
move-object v4, v0
array-length v5, v4
iget-object v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I
array-length v6, v6
if-ne v5, v6, :cond_37
const/4 v2, 0x1
const/4 v3, 0x0
:goto_4f
iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I
array-length v5, v5
if-ge v3, v5, :cond_5d
aget v5, v4, v3
iget-object v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I
aget v6, v6, v3
if-eq v5, v6, :cond_74
const/4 v2, 0x0
:cond_5d
if-eqz v2, :cond_37
:cond_5f
if-nez v2, :cond_68
iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;
iget-object v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I
invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:cond_68
if-eqz p2, :cond_4
iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I
iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I
const/4 v6, 0x1
sub-int v6, p2, v6
aput p1, v5, v6
goto :goto_4
:cond_74
add-int/lit8 v3, v3, 0x1
goto :goto_4f
.end method
.method private final jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
.registers 7
iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;
iget-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;
if-eqz v3, :cond_40
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;
iget-object v3, v3, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;
iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;
:goto_c
const/4 v3, -0x1
iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;
iget v3, v3, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I
if-ne v3, p1, :cond_53
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
add-int/lit8 v3, v3, 0x1
iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I
add-int/lit8 v3, v3, 0x1
iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I
const/16 v4, 0x64
if-le v3, v4, :cond_50
const/4 v3, 0x0
iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I
const/4 v1, 0x0
:goto_29
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
array-length v3, v3
if-ge v1, v3, :cond_50
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
aget-object v0, v3, v1
:goto_32
if-eqz v0, :cond_4d
iget v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I
iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
if-ge v3, v4, :cond_3d
const/4 v3, 0x0
iput-object v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->first:Lorg/apache/james/mime4j/field/address/parser/Token;
:cond_3d
iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
goto :goto_32
:cond_40
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;
iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;
invoke-virtual {v4}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;
move-result-object v4
iput-object v4, v3, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;
iput-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;
goto :goto_c
:cond_4d
add-int/lit8 v1, v1, 0x1
goto :goto_29
:cond_50
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;
return-object v3
:cond_53
iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;
iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->generateParseException()Lorg/apache/james/mime4j/field/address/parser/ParseException;
move-result-object v3
throw v3
.end method
.method private static jj_la1_0()V
.registers 1
const/16 v0, 0x16
new-array v0, v0, [I
fill-array-data v0, :array_a
sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_0:[I
return-void
:array_a
.array-data 0x4
0x2t 0x0t 0x0t 0x0t
0x40t 0x40t 0x0t 0x80t
0x8t 0x0t 0x0t 0x0t
0x40t 0x40t 0x0t 0x80t
0x50t 0x0t 0x0t 0x0t
0x40t 0x40t 0x0t 0x80t
0x40t 0x40t 0x0t 0x80t
0x40t 0x40t 0x0t 0x80t
0x8t 0x0t 0x0t 0x0t
0x40t 0x40t 0x0t 0x80t
0x0t 0x1t 0x0t 0x0t
0x8t 0x1t 0x0t 0x0t
0x8t 0x0t 0x0t 0x0t
0x0t 0x40t 0x0t 0x80t
0x0t 0x40t 0x0t 0x80t
0x0t 0x40t 0x0t 0x80t
0x0t 0x42t 0x0t 0x80t
0x0t 0x2t 0x0t 0x0t
0x0t 0x40t 0x0t 0x80t
0x0t 0x42t 0x0t 0x0t
0x0t 0x2t 0x0t 0x0t
0x0t 0x40t 0x4t 0x0t
.end array-data
.end method
.method private static jj_la1_1()V
.registers 1
const/16 v0, 0x16
new-array v0, v0, [I
fill-array-data v0, :array_a
sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_1:[I
return-void
:array_a
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
.end array-data
.end method
.method private final jj_ntk()I
.registers 3
iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;
iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;
iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_nt:Lorg/apache/james/mime4j/field/address/parser/Token;
if-nez v0, :cond_17
iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;
iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;
invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;
move-result-object v1
iput-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;
iget v0, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I
iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
:goto_16
return v0
:cond_17
iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_nt:Lorg/apache/james/mime4j/field/address/parser/Token;
iget v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I
iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
goto :goto_16
.end method
.method private final jj_rescan_token()V
.registers 5
const/4 v2, 0x1
iput-boolean v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z
const/4 v0, 0x0
:goto_4
const/4 v2, 0x2
if-ge v0, v2, :cond_2f
:try_start_7
iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
aget-object v1, v2, v0
:cond_b
iget v2, v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
if-le v2, v3, :cond_1e
iget v2, v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->arg:I
iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I
iget-object v2, v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->first:Lorg/apache/james/mime4j/field/address/parser/Token;
iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;
iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;
packed-switch v0, :pswitch_data_34
:goto_1e
:cond_1e
iget-object v1, v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
if-nez v1, :cond_b
:goto_22
add-int/lit8 v0, v0, 0x1
goto :goto_4
:pswitch_25
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_1()Z
goto :goto_1e
:catch_29
move-exception v2
goto :goto_22
:pswitch_2b
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_2()Z
:try_end_2e
.catch Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_7 .. :try_end_2e} :catch_29
goto :goto_1e
:cond_2f
const/4 v2, 0x0
iput-boolean v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z
return-void
nop
:pswitch_data_34
.packed-switch 0x0
:pswitch_25
:pswitch_2b
.end packed-switch
.end method
.method private final jj_save(II)V
.registers 7
iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
aget-object v0, v2, p1
:goto_4
iget v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
if-le v2, v3, :cond_16
iget-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
if-nez v2, :cond_25
new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V
iput-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
move-object v0, v1
:cond_16
iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
add-int/2addr v2, p2
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I
sub-int/2addr v2, v3
iput v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I
iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;
iput-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->first:Lorg/apache/james/mime4j/field/address/parser/Token;
iput p2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->arg:I
return-void
:cond_25
iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
goto :goto_4
.end method
.method private final jj_scan_token(I)Z
.registers 7
const/4 v4, 0x1
iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;
if-ne v2, v3, :cond_3b
iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I
sub-int/2addr v2, v4
iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I
iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;
iget-object v2, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;
if-nez v2, :cond_32
iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;
invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;
move-result-object v3
iput-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;
iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;
iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;
:goto_20
iget-boolean v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z
if-eqz v2, :cond_47
const/4 v0, 0x0
iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;
:goto_27
if-eqz v1, :cond_42
iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;
if-eq v1, v2, :cond_42
add-int/lit8 v0, v0, 0x1
iget-object v1, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;
goto :goto_27
:cond_32
iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;
iget-object v2, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;
iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;
iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;
goto :goto_20
:cond_3b
iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;
iget-object v2, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;
iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;
goto :goto_20
:cond_42
if-eqz v1, :cond_47
invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_add_error_token(II)V
:cond_47
iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;
iget v2, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I
if-eq v2, p1, :cond_4f
move v2, v4
:goto_4e
return v2
:cond_4f
iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I
if-nez v2, :cond_5c
iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;
if-ne v2, v3, :cond_5c
iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
throw v2
:cond_5c
const/4 v2, 0x0
goto :goto_4e
.end method
.method private static log(Ljava/lang/String;)V
.registers 2
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
return-void
.end method
.method public static main([Ljava/lang/String;)V
.registers 4
:goto_0
:try_start_0
new-instance v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;
sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;
invoke-direct {v0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;-><init>(Ljava/io/InputStream;)V
invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->parseLine()V
iget-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->rootNode()Lorg/apache/james/mime4j/field/address/parser/Node;
move-result-object p0
check-cast p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;
const-string v2, "> "
invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->dump(Ljava/lang/String;)V
:try_end_17
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18
goto :goto_0
:catch_18
move-exception v2
move-object v1, v2
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
return-void
.end method
.method public ReInit(Ljava/io/InputStream;)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
return-void
.end method
.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
.registers 9
const/4 v5, -0x1
:try_start_1
iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;
const/4 v3, 0x1
const/4 v4, 0x1
invoke-virtual {v2, p1, p2, v3, v4}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
:try_end_8
.catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_8} :catch_2c
iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;
invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V
new-instance v2, Lorg/apache/james/mime4j/field/address/parser/Token;
invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V
iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;
iput v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->reset()V
const/4 v2, 0x0
iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
const/4 v1, 0x0
:goto_21
const/16 v2, 0x16
if-ge v1, v2, :cond_34
iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
aput v5, v2, v1
add-int/lit8 v1, v1, 0x1
goto :goto_21
:catch_2c
move-exception v2
move-object v0, v2
new-instance v2, Ljava/lang/RuntimeException;
invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v2
:cond_34
const/4 v1, 0x0
:goto_35
iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
array-length v2, v2
if-ge v1, v2, :cond_46
iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
new-instance v3, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V
aput-object v3, v2, v1
add-int/lit8 v1, v1, 0x1
goto :goto_35
:cond_46
return-void
.end method
.method public ReInit(Ljava/io/Reader;)V
.registers 6
const/4 v2, 0x1
const/4 v3, -0x1
iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;
invoke-virtual {v1, p1, v2, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V
iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;
iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;
invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V
new-instance v1, Lorg/apache/james/mime4j/field/address/parser/Token;
invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V
iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;
iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->reset()V
const/4 v1, 0x0
iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
const/4 v0, 0x0
:goto_20
const/16 v1, 0x16
if-ge v0, v1, :cond_2b
iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
aput v3, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_20
:cond_2b
const/4 v0, 0x0
:goto_2c
iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
array-length v1, v1
if-ge v0, v1, :cond_3d
iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
new-instance v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V
aput-object v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_2c
:cond_3d
return-void
.end method
.method public ReInit(Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;)V
.registers 5
const/4 v2, -0x1
iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;
new-instance v1, Lorg/apache/james/mime4j/field/address/parser/Token;
invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V
iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;
iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->reset()V
const/4 v1, 0x0
iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
const/4 v0, 0x0
:goto_15
const/16 v1, 0x16
if-ge v0, v1, :cond_20
iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
aput v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_15
:cond_20
const/4 v0, 0x0
:goto_21
iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
array-length v1, v1
if-ge v0, v1, :cond_32
iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
new-instance v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V
aput-object v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_21
:cond_32
return-void
.end method
.method public final addr_spec()V
.registers 7
const/4 v5, 0x1
new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;
const/16 v3, 0x9
invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;-><init>(I)V
const/4 v0, 0x1
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
:try_start_11
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->local_part()V
const/16 v3, 0x8
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->domain()V
:try_end_1c
.catchall {:try_start_11 .. :try_end_1c} :catchall_38
.catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1c} :catch_27
if-eqz v0, :cond_26
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3, v2, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V
invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
:cond_26
return-void
:catch_27
move-exception v3
move-object v1, v3
if-eqz v0, :cond_44
:try_start_2b
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
const/4 v0, 0x0
:goto_31
instance-of v3, v1, Ljava/lang/RuntimeException;
if-eqz v3, :cond_4a
check-cast v1, Ljava/lang/RuntimeException;
throw v1
:catchall_38
:try_end_38
.catchall {:try_start_2b .. :try_end_38} :catchall_38
move-exception v3
if-eqz v0, :cond_43
iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v4, v2, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V
invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
:cond_43
throw v3
:cond_44
:try_start_44
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;
goto :goto_31
:cond_4a
instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;
if-eqz v3, :cond_51
check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;
throw v1
:cond_51
check-cast v1, Ljava/lang/Error;
throw v1
:try_end_54
.catchall {:try_start_44 .. :try_end_54} :catchall_38
.end method
.method public final address()V
.registers 8
const/4 v6, 0x1
const/4 v4, -0x1
new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTaddress;
const/4 v3, 0x2
invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTaddress;-><init>(I)V
const/4 v0, 0x1
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
const v3, 0x7fffffff
:try_start_14
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_1(I)Z
move-result v3
if-eqz v3, :cond_28
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->addr_spec()V
:try_end_1d
.catchall {:try_start_14 .. :try_end_1d} :catchall_55
.catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1d} :catch_44
:goto_1d
if-eqz v0, :cond_27
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V
invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
:cond_27
return-void
:cond_28
:try_start_28
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
if-ne v3, v4, :cond_61
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I
move-result v3
:goto_30
sparse-switch v3, :sswitch_data_a2
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
const/4 v4, 0x5
iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
aput v5, v3, v4
const/4 v3, -0x1
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;
invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V
throw v3
:try_end_44
.catchall {:try_start_28 .. :try_end_44} :catchall_55
.catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_44} :catch_44
:catch_44
move-exception v3
move-object v1, v3
if-eqz v0, :cond_92
:try_start_48
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
const/4 v0, 0x0
:goto_4e
instance-of v3, v1, Ljava/lang/RuntimeException;
if-eqz v3, :cond_98
check-cast v1, Ljava/lang/RuntimeException;
throw v1
:catchall_55
:try_end_55
.catchall {:try_start_48 .. :try_end_55} :catchall_55
move-exception v3
if-eqz v0, :cond_60
iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v4, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V
invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
:cond_60
throw v3
:cond_61
:try_start_61
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
goto :goto_30
:sswitch_64
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V
goto :goto_1d
:sswitch_68
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->phrase()V
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
if-ne v3, v4, :cond_87
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I
move-result v3
:goto_73
packed-switch v3, :pswitch_data_b0
:pswitch_76
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
const/4 v4, 0x4
iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
aput v5, v3, v4
const/4 v3, -0x1
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;
invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V
throw v3
:cond_87
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
goto :goto_73
:pswitch_8a
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->group_body()V
goto :goto_1d
:pswitch_8e
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V
:try_end_91
.catchall {:try_start_61 .. :try_end_91} :catchall_55
.catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_91} :catch_44
goto :goto_1d
:cond_92
:try_start_92
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;
goto :goto_4e
:cond_98
instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;
if-eqz v3, :cond_9f
check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;
throw v1
:cond_9f
check-cast v1, Ljava/lang/Error;
throw v1
:try_end_a2
.catchall {:try_start_92 .. :try_end_a2} :catchall_55
:pswitch_data_b0
.packed-switch 0x4
:pswitch_8a
:pswitch_76
:pswitch_8e
.end packed-switch
:sswitch_data_a2
.sparse-switch
0x6 -> :sswitch_64
0xe -> :sswitch_68
0x1f -> :sswitch_68
.end sparse-switch
.end method
.method public final address_list()V
.registers 9
const/4 v7, -0x1
const/4 v6, 0x1
new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;
invoke-direct {v2, v6}, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;-><init>(I)V
const/4 v0, 0x1
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
:try_start_10
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
if-ne v3, v7, :cond_3f
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I
move-result v3
:goto_18
sparse-switch v3, :sswitch_data_94
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
const/4 v4, 0x1
iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
aput v5, v3, v4
:goto_22
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
if-ne v3, v7, :cond_63
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I
move-result v3
:goto_2a
packed-switch v3, :pswitch_data_a2
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
const/4 v4, 0x2
iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
aput v5, v3, v4
:try_end_34
.catchall {:try_start_10 .. :try_end_34} :catchall_57
.catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_34} :catch_46
if-eqz v0, :cond_3e
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V
invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
:cond_3e
return-void
:try_start_3f
:cond_3f
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
goto :goto_18
:sswitch_42
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->address()V
:try_end_45
.catchall {:try_start_3f .. :try_end_45} :catchall_57
.catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_45} :catch_46
goto :goto_22
:catch_46
move-exception v3
move-object v1, v3
if-eqz v0, :cond_84
:try_start_4a
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
const/4 v0, 0x0
:goto_50
instance-of v3, v1, Ljava/lang/RuntimeException;
if-eqz v3, :cond_8a
check-cast v1, Ljava/lang/RuntimeException;
throw v1
:catchall_57
:try_end_57
.catchall {:try_start_4a .. :try_end_57} :catchall_57
move-exception v3
if-eqz v0, :cond_62
iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v4, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V
invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
:cond_62
throw v3
:cond_63
:try_start_63
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
goto :goto_2a
:pswitch_66
const/4 v3, 0x3
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
if-ne v3, v7, :cond_7d
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I
move-result v3
:goto_72
sparse-switch v3, :sswitch_data_a8
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
const/4 v4, 0x3
iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
aput v5, v3, v4
goto :goto_22
:cond_7d
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
goto :goto_72
:sswitch_80
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->address()V
:try_end_83
.catchall {:try_start_63 .. :try_end_83} :catchall_57
.catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_83} :catch_46
goto :goto_22
:cond_84
:try_start_84
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;
goto :goto_50
:cond_8a
instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;
if-eqz v3, :cond_91
check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;
throw v1
:cond_91
check-cast v1, Ljava/lang/Error;
throw v1
:sswitch_data_a8
.sparse-switch
0x6 -> :sswitch_80
0xe -> :sswitch_80
0x1f -> :sswitch_80
.end sparse-switch
:sswitch_data_94
.sparse-switch
0x6 -> :sswitch_42
0xe -> :sswitch_42
0x1f -> :sswitch_42
.end sparse-switch
:try_end_94
.catchall {:try_start_84 .. :try_end_94} :catchall_57
:pswitch_data_a2
.packed-switch 0x3
:pswitch_66
.end packed-switch
.end method
.method public final angle_addr()V
.registers 8
const/4 v3, 0x6
const/4 v6, 0x1
new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;
invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;-><init>(I)V
const/4 v0, 0x1
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
const/4 v3, 0x6
:try_start_11
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
const/4 v4, -0x1
if-ne v3, v4, :cond_3a
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I
move-result v3
:goto_1d
packed-switch v3, :pswitch_data_6e
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
const/16 v4, 0xa
iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
aput v5, v3, v4
:goto_28
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->addr_spec()V
const/4 v3, 0x7
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
:try_end_2f
.catchall {:try_start_11 .. :try_end_2f} :catchall_52
.catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_2f} :catch_41
if-eqz v0, :cond_39
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V
invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
:cond_39
return-void
:try_start_3a
:cond_3a
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
goto :goto_1d
:pswitch_3d
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->route()V
:try_end_40
.catchall {:try_start_3a .. :try_end_40} :catchall_52
.catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_40} :catch_41
goto :goto_28
:catch_41
move-exception v3
move-object v1, v3
if-eqz v0, :cond_5e
:try_start_45
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
const/4 v0, 0x0
:goto_4b
instance-of v3, v1, Ljava/lang/RuntimeException;
if-eqz v3, :cond_64
check-cast v1, Ljava/lang/RuntimeException;
throw v1
:catchall_52
:try_end_52
.catchall {:try_start_45 .. :try_end_52} :catchall_52
move-exception v3
if-eqz v0, :cond_5d
iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v4, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V
invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
:cond_5d
throw v3
:cond_5e
:try_start_5e
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;
goto :goto_4b
:cond_64
instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;
if-eqz v3, :cond_6b
check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;
throw v1
:cond_6b
check-cast v1, Ljava/lang/Error;
throw v1
:pswitch_data_6e
.packed-switch 0x8
:pswitch_3d
.end packed-switch
:try_end_6e
.catchall {:try_start_5e .. :try_end_6e} :catchall_52
.end method
.method public final disable_tracing()V
.registers 1
return-void
.end method
.method public final domain()V
.registers 9
const/4 v7, 0x1
const/4 v6, -0x1
new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;
const/16 v3, 0xb
invoke-direct {v1, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;-><init>(I)V
const/4 v0, 0x1
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3, v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
:try_start_12
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
if-ne v3, v6, :cond_3b
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I
move-result v3
:goto_1a
sparse-switch v3, :sswitch_data_a8
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
const/16 v4, 0x15
iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
aput v5, v3, v4
const/4 v3, -0x1
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;
invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V
throw v3
:catchall_2f
:try_end_2f
.catchall {:try_start_12 .. :try_end_2f} :catchall_2f
move-exception v3
if-eqz v0, :cond_3a
iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v4, v1, v7}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V
invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
:cond_3a
throw v3
:cond_3b
:try_start_3b
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
goto :goto_1a
:sswitch_3e
const/16 v3, 0xe
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
move-result-object v2
:goto_44
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
if-ne v3, v6, :cond_62
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I
move-result v3
:goto_4c
sparse-switch v3, :sswitch_data_b2
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
const/16 v4, 0x13
iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
aput v5, v3, v4
:goto_57
:try_end_57
.catchall {:try_start_3b .. :try_end_57} :catchall_2f
if-eqz v0, :cond_61
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3, v1, v7}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V
invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
:cond_61
return-void
:cond_62
:try_start_62
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
goto :goto_4c
:sswitch_65
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
if-ne v3, v6, :cond_91
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I
move-result v3
:goto_6d
packed-switch v3, :pswitch_data_bc
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
const/16 v4, 0x14
iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
aput v5, v3, v4
:goto_78
iget-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;
iget-object v4, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v4
sub-int/2addr v4, v7
invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C
move-result v3
const/16 v4, 0x2e
if-eq v3, v4, :cond_9b
new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;
const-string v4, "Atoms in domain names must be separated by \'.\'"
invoke-direct {v3, v4}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V
throw v3
:cond_91
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
goto :goto_6d
:pswitch_94
const/16 v3, 0x9
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
move-result-object v2
goto :goto_78
:cond_9b
const/16 v3, 0xe
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
move-result-object v2
goto :goto_44
:sswitch_a2
const/16 v3, 0x12
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
:try_end_a7
.catchall {:try_start_62 .. :try_end_a7} :catchall_2f
goto :goto_57
:sswitch_data_b2
.sparse-switch
0x9 -> :sswitch_65
0xe -> :sswitch_65
.end sparse-switch
:sswitch_data_a8
.sparse-switch
0xe -> :sswitch_3e
0x12 -> :sswitch_a2
.end sparse-switch
:pswitch_data_bc
.packed-switch 0x9
:pswitch_94
.end packed-switch
.end method
.method public final enable_tracing()V
.registers 1
return-void
.end method
.method public generateParseException()Lorg/apache/james/mime4j/field/address/parser/ParseException;
.registers 10
const/16 v8, 0x22
const/4 v7, 0x0
const/4 v6, 0x1
iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;
invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V
new-array v3, v8, [Z
const/4 v1, 0x0
:goto_c
if-ge v1, v8, :cond_13
aput-boolean v7, v3, v1
add-int/lit8 v1, v1, 0x1
goto :goto_c
:cond_13
iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I
if-ltz v4, :cond_1e
iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I
aput-boolean v6, v3, v4
const/4 v4, -0x1
iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I
:cond_1e
const/4 v1, 0x0
:goto_1f
const/16 v4, 0x16
if-ge v1, v4, :cond_4e
iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
aget v4, v4, v1
iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
if-ne v4, v5, :cond_4b
const/4 v2, 0x0
:goto_2c
const/16 v4, 0x20
if-ge v2, v4, :cond_4b
sget-object v4, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_0:[I
aget v4, v4, v1
shl-int v5, v6, v2
and-int/2addr v4, v5
if-eqz v4, :cond_3b
aput-boolean v6, v3, v2
:cond_3b
sget-object v4, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_1:[I
aget v4, v4, v1
shl-int v5, v6, v2
and-int/2addr v4, v5
if-eqz v4, :cond_48
add-int/lit8 v4, v2, 0x20
aput-boolean v6, v3, v4
:cond_48
add-int/lit8 v2, v2, 0x1
goto :goto_2c
:cond_4b
add-int/lit8 v1, v1, 0x1
goto :goto_1f
:cond_4e
const/4 v1, 0x0
:goto_4f
if-ge v1, v8, :cond_67
aget-boolean v4, v3, v1
if-eqz v4, :cond_64
new-array v4, v6, [I
iput-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I
iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I
aput v1, v4, v7
iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;
iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I
invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:cond_64
add-int/lit8 v1, v1, 0x1
goto :goto_4f
:cond_67
iput v7, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan_token()V
invoke-direct {p0, v7, v7}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_add_error_token(II)V
iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;
invoke-virtual {v4}, Ljava/util/Vector;->size()I
move-result v4
new-array v0, v4, [[I
const/4 v1, 0x0
:goto_78
iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;
invoke-virtual {v4}, Ljava/util/Vector;->size()I
move-result v4
if-ge v1, v4, :cond_8f
iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;
invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, [I
check-cast v4, [I
aput-object v4, v0, v1
add-int/lit8 v1, v1, 0x1
goto :goto_78
:cond_8f
new-instance v4, Lorg/apache/james/mime4j/field/address/parser/ParseException;
iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;
sget-object v6, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->tokenImage:[Ljava/lang/String;
invoke-direct {v4, v5, v0, v6}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/address/parser/Token;[[I[Ljava/lang/String;)V
return-object v4
.end method
.method public final getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;
.registers 3
iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;
iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;
if-eqz v0, :cond_18
iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;
iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;
iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;
:goto_c
const/4 v0, -0x1
iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;
return-object v0
:cond_18
iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;
iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;
invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;
move-result-object v1
iput-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;
iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;
goto :goto_c
.end method
.method public final getToken(I)Lorg/apache/james/mime4j/field/address/parser/Token;
.registers 6
iget-boolean v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z
if-eqz v3, :cond_15
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;
move-object v1, v3
:goto_7
const/4 v0, 0x0
move-object v2, v1
:goto_9
if-ge v0, p1, :cond_22
iget-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;
if-eqz v3, :cond_19
iget-object v1, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;
:goto_11
add-int/lit8 v0, v0, 0x1
move-object v2, v1
goto :goto_9
:cond_15
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;
move-object v1, v3
goto :goto_7
:cond_19
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;
invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;
move-result-object v1
iput-object v1, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;
goto :goto_11
:cond_22
return-object v2
.end method
.method public final group_body()V
.registers 9
const/4 v3, 0x5
const/4 v7, 0x1
const/4 v6, -0x1
new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;
invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;-><init>(I)V
const/4 v0, 0x1
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
const/4 v3, 0x4
:try_start_12
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
if-ne v3, v6, :cond_49
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I
move-result v3
:goto_1d
sparse-switch v3, :sswitch_data_a0
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
const/4 v4, 0x7
iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
aput v5, v3, v4
:goto_27
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
if-ne v3, v6, :cond_6d
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I
move-result v3
:goto_2f
packed-switch v3, :pswitch_data_ae
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
const/16 v4, 0x8
iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
aput v5, v3, v4
const/4 v3, 0x5
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
:try_end_3e
.catchall {:try_start_12 .. :try_end_3e} :catchall_61
.catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_3e} :catch_50
if-eqz v0, :cond_48
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3, v2, v7}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V
invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
:cond_48
return-void
:try_start_49
:cond_49
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
goto :goto_1d
:sswitch_4c
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->mailbox()V
:try_end_4f
.catchall {:try_start_49 .. :try_end_4f} :catchall_61
.catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_4f} :catch_50
goto :goto_27
:catch_50
move-exception v3
move-object v1, v3
if-eqz v0, :cond_8f
:try_start_54
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
const/4 v0, 0x0
:goto_5a
instance-of v3, v1, Ljava/lang/RuntimeException;
if-eqz v3, :cond_95
check-cast v1, Ljava/lang/RuntimeException;
throw v1
:try_end_61
.catchall {:try_start_54 .. :try_end_61} :catchall_61
:catchall_61
move-exception v3
if-eqz v0, :cond_6c
iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v4, v2, v7}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V
invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
:cond_6c
throw v3
:cond_6d
:try_start_6d
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
goto :goto_2f
:pswitch_70
const/4 v3, 0x3
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
if-ne v3, v6, :cond_88
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I
move-result v3
:goto_7c
sparse-switch v3, :sswitch_data_b4
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
const/16 v4, 0x9
iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
aput v5, v3, v4
goto :goto_27
:cond_88
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
goto :goto_7c
:sswitch_8b
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->mailbox()V
:try_end_8e
.catchall {:try_start_6d .. :try_end_8e} :catchall_61
.catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_8e} :catch_50
goto :goto_27
:cond_8f
:try_start_8f
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;
goto :goto_5a
:cond_95
instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;
if-eqz v3, :cond_9c
check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;
throw v1
:cond_9c
check-cast v1, Ljava/lang/Error;
throw v1
:try_end_9f
.catchall {:try_start_8f .. :try_end_9f} :catchall_61
nop
:sswitch_data_b4
.sparse-switch
0x6 -> :sswitch_8b
0xe -> :sswitch_8b
0x1f -> :sswitch_8b
.end sparse-switch
:pswitch_data_ae
.packed-switch 0x3
:pswitch_70
.end packed-switch
:sswitch_data_a0
.sparse-switch
0x6 -> :sswitch_4c
0xe -> :sswitch_4c
0x1f -> :sswitch_4c
.end sparse-switch
.end method
.method  jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
.registers 3
check-cast p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->getToken(I)Lorg/apache/james/mime4j/field/address/parser/Token;
move-result-object v0
iput-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/parser/Token;
return-void
.end method
.method  jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
.registers 3
check-cast p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->getToken(I)Lorg/apache/james/mime4j/field/address/parser/Token;
move-result-object v0
iput-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->firstToken:Lorg/apache/james/mime4j/field/address/parser/Token;
return-void
.end method
.method public final local_part()V
.registers 10
const/16 v8, 0x1f
const/4 v7, 0x1
const/4 v6, -0x1
new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ASTlocal_part;
const/16 v3, 0xa
invoke-direct {v1, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTlocal_part;-><init>(I)V
const/4 v0, 0x1
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3, v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
:try_start_14
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
if-ne v3, v6, :cond_3d
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I
move-result v3
:goto_1c
sparse-switch v3, :sswitch_data_d8
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
const/16 v4, 0xf
iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
aput v5, v3, v4
const/4 v3, -0x1
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;
invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V
throw v3
:catchall_31
:try_end_31
.catchall {:try_start_14 .. :try_end_31} :catchall_31
move-exception v3
if-eqz v0, :cond_3c
iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v4, v1, v7}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V
invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
:cond_3c
throw v3
:try_start_3d
:cond_3d
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
goto :goto_1c
:sswitch_40
const/16 v3, 0xe
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
move-result-object v2
:goto_46
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
if-ne v3, v6, :cond_6b
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I
move-result v3
:goto_4e
sparse-switch v3, :sswitch_data_e2
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
const/16 v4, 0x10
iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
aput v5, v3, v4
:try_end_59
.catchall {:try_start_3d .. :try_end_59} :catchall_31
if-eqz v0, :cond_63
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3, v1, v7}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V
invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
:cond_63
return-void
:sswitch_64
const/16 v3, 0x1f
:try_start_66
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
move-result-object v2
goto :goto_46
:cond_6b
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
goto :goto_4e
:sswitch_6e
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
if-ne v3, v6, :cond_9e
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I
move-result v3
:goto_76
packed-switch v3, :pswitch_data_f0
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
const/16 v4, 0x11
iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
aput v5, v3, v4
:goto_81
iget-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;
iget-object v4, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v4
sub-int/2addr v4, v7
invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C
move-result v3
const/16 v4, 0x2e
if-ne v3, v4, :cond_96
iget v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I
if-ne v3, v8, :cond_a8
:cond_96
new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;
const-string v4, "Words in local part must be separated by \'.\'"
invoke-direct {v3, v4}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V
throw v3
:cond_9e
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
goto :goto_76
:pswitch_a1
const/16 v3, 0x9
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
move-result-object v2
goto :goto_81
:cond_a8
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
if-ne v3, v6, :cond_c5
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I
move-result v3
:goto_b0
sparse-switch v3, :sswitch_data_f6
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
const/16 v4, 0x12
iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
aput v5, v3, v4
const/4 v3, -0x1
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;
invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V
throw v3
:cond_c5
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
goto :goto_b0
:sswitch_c8
const/16 v3, 0xe
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
move-result-object v2
goto/16 :goto_46
:sswitch_d0
const/16 v3, 0x1f
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
:try_end_d5
.catchall {:try_start_66 .. :try_end_d5} :catchall_31
move-result-object v2
goto/16 :goto_46
:sswitch_data_d8
.sparse-switch
0xe -> :sswitch_40
0x1f -> :sswitch_64
.end sparse-switch
:sswitch_data_f6
.sparse-switch
0xe -> :sswitch_c8
0x1f -> :sswitch_d0
.end sparse-switch
:pswitch_data_f0
.packed-switch 0x9
:pswitch_a1
.end packed-switch
:sswitch_data_e2
.sparse-switch
0x9 -> :sswitch_6e
0xe -> :sswitch_6e
0x1f -> :sswitch_6e
.end sparse-switch
.end method
.method public final mailbox()V
.registers 8
const/4 v6, 0x1
const/4 v4, -0x1
new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;
const/4 v3, 0x3
invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;-><init>(I)V
const/4 v0, 0x1
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
const v3, 0x7fffffff
:try_start_14
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_2(I)Z
move-result v3
if-eqz v3, :cond_28
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->addr_spec()V
:try_end_1d
.catchall {:try_start_14 .. :try_end_1d} :catchall_55
.catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1d} :catch_44
:goto_1d
if-eqz v0, :cond_27
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V
invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
:cond_27
return-void
:cond_28
:try_start_28
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
if-ne v3, v4, :cond_61
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I
move-result v3
:goto_30
sparse-switch v3, :sswitch_data_7c
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
const/4 v4, 0x6
iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
aput v5, v3, v4
const/4 v3, -0x1
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;
invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V
throw v3
:try_end_44
.catchall {:try_start_28 .. :try_end_44} :catchall_55
.catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_44} :catch_44
:catch_44
move-exception v3
move-object v1, v3
if-eqz v0, :cond_6c
:try_start_48
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
const/4 v0, 0x0
:goto_4e
instance-of v3, v1, Ljava/lang/RuntimeException;
if-eqz v3, :cond_72
check-cast v1, Ljava/lang/RuntimeException;
throw v1
:catchall_55
:try_end_55
.catchall {:try_start_48 .. :try_end_55} :catchall_55
move-exception v3
if-eqz v0, :cond_60
iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v4, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V
invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
:cond_60
throw v3
:cond_61
:try_start_61
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
goto :goto_30
:sswitch_64
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V
goto :goto_1d
:sswitch_68
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->name_addr()V
:try_end_6b
.catchall {:try_start_61 .. :try_end_6b} :catchall_55
.catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_6b} :catch_44
goto :goto_1d
:cond_6c
:try_start_6c
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;
goto :goto_4e
:cond_72
instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;
if-eqz v3, :cond_79
check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;
throw v1
:cond_79
check-cast v1, Ljava/lang/Error;
throw v1
:sswitch_data_7c
.sparse-switch
0x6 -> :sswitch_64
0xe -> :sswitch_68
0x1f -> :sswitch_68
.end sparse-switch
:try_end_7c
.catchall {:try_start_6c .. :try_end_7c} :catchall_55
.end method
.method public final name_addr()V
.registers 7
const/4 v5, 0x1
new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;
const/4 v3, 0x4
invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;-><init>(I)V
const/4 v0, 0x1
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
:try_start_10
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->phrase()V
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V
:try_end_16
.catchall {:try_start_10 .. :try_end_16} :catchall_32
.catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_16} :catch_21
if-eqz v0, :cond_20
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3, v2, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V
invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
:cond_20
return-void
:catch_21
move-exception v3
move-object v1, v3
if-eqz v0, :cond_3e
:try_start_25
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
const/4 v0, 0x0
:goto_2b
instance-of v3, v1, Ljava/lang/RuntimeException;
if-eqz v3, :cond_44
check-cast v1, Ljava/lang/RuntimeException;
throw v1
:catchall_32
:try_end_32
.catchall {:try_start_25 .. :try_end_32} :catchall_32
move-exception v3
if-eqz v0, :cond_3d
iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v4, v2, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V
invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
:cond_3d
throw v3
:cond_3e
:try_start_3e
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;
goto :goto_2b
:cond_44
instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;
if-eqz v3, :cond_4b
check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;
throw v1
:cond_4b
check-cast v1, Ljava/lang/Error;
throw v1
:try_end_4e
.catchall {:try_start_3e .. :try_end_4e} :catchall_32
.end method
.method public parse()Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;
.registers 4
:try_start_0
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->parseAll()V
iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->rootNode()Lorg/apache/james/mime4j/field/address/parser/Node;
move-result-object p0
check-cast p0, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;
:try_end_b
.catch Lorg/apache/james/mime4j/field/address/parser/TokenMgrError; {:try_start_0 .. :try_end_b} :catch_c
return-object p0
:catch_c
move-exception v1
move-object v0, v1
new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;
invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public final parseAll()V
.registers 2
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->address_list()V
const/4 v0, 0x0
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
return-void
.end method
.method public final parseLine()V
.registers 4
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->address_list()V
iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
const/4 v1, -0x1
if-ne v0, v1, :cond_1b
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I
move-result v0
:goto_c
packed-switch v0, :pswitch_data_24
iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
const/4 v1, 0x0
iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
aput v2, v0, v1
:goto_16
const/4 v0, 0x2
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
return-void
:cond_1b
iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
goto :goto_c
:pswitch_1e
const/4 v0, 0x1
invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
goto :goto_16
nop
:pswitch_data_24
.packed-switch 0x1
:pswitch_1e
.end packed-switch
.end method
.method public final phrase()V
.registers 7
const/4 v5, 0x1
const/4 v3, -0x1
new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;
const/16 v2, 0x8
invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;-><init>(I)V
const/4 v0, 0x1
iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v2, v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
:try_start_12
:sswitch_12
iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
if-ne v2, v3, :cond_3b
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I
move-result v2
:goto_1a
sparse-switch v2, :sswitch_data_6a
iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
const/16 v3, 0xd
iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
aput v4, v2, v3
const/4 v2, -0x1
invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ParseException;
invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V
throw v2
:try_end_2f
.catchall {:try_start_12 .. :try_end_2f} :catchall_2f
:catchall_2f
move-exception v2
if-eqz v0, :cond_3a
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3, v1, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V
invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
:cond_3a
throw v2
:try_start_3b
:cond_3b
iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
goto :goto_1a
:sswitch_3e
const/16 v2, 0xe
invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
:goto_43
iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
if-ne v2, v3, :cond_67
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I
move-result v2
:goto_4b
sparse-switch v2, :sswitch_data_74
iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
const/16 v3, 0xe
iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
aput v4, v2, v3
:try_end_56
.catchall {:try_start_3b .. :try_end_56} :catchall_2f
if-eqz v0, :cond_60
iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v2, v1, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V
invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
:cond_60
return-void
:sswitch_61
const/16 v2, 0x1f
:try_start_63
invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
goto :goto_43
:cond_67
iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
:try_end_69
.catchall {:try_start_63 .. :try_end_69} :catchall_2f
goto :goto_4b
:sswitch_data_74
.sparse-switch
0xe -> :sswitch_12
0x1f -> :sswitch_12
.end sparse-switch
:sswitch_data_6a
.sparse-switch
0xe -> :sswitch_3e
0x1f -> :sswitch_61
.end sparse-switch
.end method
.method public final route()V
.registers 9
const/4 v7, 0x1
const/4 v6, -0x1
new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTroute;
const/4 v3, 0x7
invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTroute;-><init>(I)V
const/4 v0, 0x1
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
const/16 v3, 0x8
:try_start_13
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->domain()V
:goto_19
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
if-ne v3, v6, :cond_3b
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I
move-result v3
:goto_21
sparse-switch v3, :sswitch_data_8e
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
const/16 v4, 0xb
iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
aput v5, v3, v4
const/4 v3, 0x4
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
:try_end_30
.catchall {:try_start_13 .. :try_end_30} :catchall_6f
.catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_30} :catch_5e
if-eqz v0, :cond_3a
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3, v2, v7}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V
invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
:cond_3a
return-void
:try_start_3b
:cond_3b
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
goto :goto_21
:pswitch_3e
const/4 v3, 0x3
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
:sswitch_42
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
if-ne v3, v6, :cond_7b
invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I
move-result v3
:goto_4a
packed-switch v3, :pswitch_data_98
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I
const/16 v4, 0xc
iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I
aput v5, v3, v4
const/16 v3, 0x8
invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->domain()V
:try_end_5d
.catchall {:try_start_3b .. :try_end_5d} :catchall_6f
.catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_5d} :catch_5e
goto :goto_19
:catch_5e
move-exception v3
move-object v1, v3
if-eqz v0, :cond_7e
:try_start_62
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
const/4 v0, 0x0
:goto_68
instance-of v3, v1, Ljava/lang/RuntimeException;
if-eqz v3, :cond_84
check-cast v1, Ljava/lang/RuntimeException;
throw v1
:catchall_6f
:try_end_6f
.catchall {:try_start_62 .. :try_end_6f} :catchall_6f
move-exception v3
if-eqz v0, :cond_7a
iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v4, v2, v7}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V
invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
:cond_7a
throw v3
:cond_7b
:try_start_7b
iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
:try_end_7d
.catchall {:try_start_7b .. :try_end_7d} :catchall_6f
.catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7d} :catch_5e
goto :goto_4a
:cond_7e
:try_start_7e
iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;
invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;
goto :goto_68
:cond_84
instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;
if-eqz v3, :cond_8b
check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;
throw v1
:cond_8b
check-cast v1, Ljava/lang/Error;
throw v1
:sswitch_data_8e
.sparse-switch
0x3 -> :sswitch_42
0x8 -> :sswitch_42
.end sparse-switch
:pswitch_data_98
.packed-switch 0x3
:pswitch_3e
.end packed-switch
:try_end_8e
.catchall {:try_start_7e .. :try_end_8e} :catchall_6f
.end method