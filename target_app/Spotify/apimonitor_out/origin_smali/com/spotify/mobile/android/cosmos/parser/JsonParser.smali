.class public Lcom/spotify/mobile/android/cosmos/parser/JsonParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/cosmos/parser/ResponseParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/spotify/mobile/android/cosmos/parser/ResponseParser",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field private static final DEFAULT_OBJECT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;


# instance fields
.field private final mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/cosmos/parser/JsonParser;->DEFAULT_OBJECT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/cosmos/parser/JsonParser;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    sget-object v0, Lcom/spotify/mobile/android/cosmos/parser/JsonParser;->DEFAULT_OBJECT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/cosmos/parser/JsonParser;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/spotify/mobile/android/cosmos/parser/JsonParser;->mClazz:Ljava/lang/Class;

    if-eqz p2, :cond_10

    :goto_d
    iput-object p2, p0, Lcom/spotify/mobile/android/cosmos/parser/JsonParser;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void

    :cond_10
    sget-object p2, Lcom/spotify/mobile/android/cosmos/parser/JsonParser;->DEFAULT_OBJECT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    goto :goto_d
.end method


# virtual methods
.method public parseResponse(Lcom/spotify/cosmos/router/Response;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/cosmos/router/Response;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/spotify/cosmos/router/Response;->getBody()[B

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/cosmos/parser/JsonParser;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/cosmos/parser/JsonParser;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, p0, Lcom/spotify/mobile/android/cosmos/parser/JsonParser;->mClazz:Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v0

    return-object v0

    :catch_14
    move-exception v0

    new-instance v1, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ParserException;

    invoke-direct {v1, v0}, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
