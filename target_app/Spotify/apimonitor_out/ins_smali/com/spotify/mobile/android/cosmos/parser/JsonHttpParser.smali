.class public Lcom/spotify/mobile/android/cosmos/parser/JsonHttpParser;
.super Lcom/spotify/mobile/android/cosmos/parser/JsonParser;
.source "SourceFile"
.method public constructor <init>(Ljava/lang/Class;)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/cosmos/parser/JsonParser;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/cosmos/parser/JsonParser;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
return-void
.end method
.method public parseResponse(Lcom/spotify/cosmos/router/Response;)Ljava/lang/Object;
.registers 3
invoke-static {p1}, Lcom/spotify/mobile/android/cosmos/HttpCallbackReceiver;->defaultVerifyResponse(Lcom/spotify/cosmos/router/Response;)V
invoke-super {p0, p1}, Lcom/spotify/mobile/android/cosmos/parser/JsonParser;->parseResponse(Lcom/spotify/cosmos/router/Response;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method