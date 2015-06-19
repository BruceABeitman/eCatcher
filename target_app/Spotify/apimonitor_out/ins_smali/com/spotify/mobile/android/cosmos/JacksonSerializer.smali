.class public Lcom/spotify/mobile/android/cosmos/JacksonSerializer;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;
.field private static final sObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/cosmos/JacksonSerializer;->sObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
const-string v0, "UTF-8"
invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/cosmos/JacksonSerializer;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;
sget-object v0, Lcom/spotify/mobile/android/cosmos/JacksonSerializer;->sObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static toBytes(Lcom/spotify/mobile/android/cosmos/JacksonModel;)[B
.registers 2
const/4 v0, 0x0
invoke-static {p0, v0}, Lcom/spotify/mobile/android/cosmos/JacksonSerializer;->toBytes(Lcom/spotify/mobile/android/cosmos/JacksonModel;Lcom/fasterxml/jackson/databind/ObjectMapper;)[B
move-result-object v0
return-object v0
.end method
.method public static toBytes(Lcom/spotify/mobile/android/cosmos/JacksonModel;Lcom/fasterxml/jackson/databind/ObjectMapper;)[B
.registers 4
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "jacksonObject can\'t be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-nez p1, :cond_e
sget-object p1, Lcom/spotify/mobile/android/cosmos/JacksonSerializer;->sObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
:try_start_e
:cond_e
invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/cosmos/JacksonSerializer;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;
invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
:try_end_17
.catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_e .. :try_end_17} :catch_19
move-result-object v0
return-object v0
:catch_19
move-exception v0
new-instance v1, Lcom/spotify/mobile/android/cosmos/ParserException;
invoke-direct {v1, v0}, Lcom/spotify/mobile/android/cosmos/ParserException;-><init>(Ljava/lang/Exception;)V
throw v1
.end method