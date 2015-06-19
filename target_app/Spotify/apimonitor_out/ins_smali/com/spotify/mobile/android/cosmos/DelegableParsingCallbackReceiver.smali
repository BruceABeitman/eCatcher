.class public abstract Lcom/spotify/mobile/android/cosmos/DelegableParsingCallbackReceiver;
.super Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;
.source "SourceFile"
.field private final mParser:Lcom/spotify/mobile/android/cosmos/parser/ResponseParser;
.method public constructor <init>(Landroid/os/Handler;Lcom/spotify/mobile/android/cosmos/parser/ResponseParser;)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;-><init>(Landroid/os/Handler;)V
iput-object p2, p0, Lcom/spotify/mobile/android/cosmos/DelegableParsingCallbackReceiver;->mParser:Lcom/spotify/mobile/android/cosmos/parser/ResponseParser;
return-void
.end method
.method protected parseResponse(Lcom/spotify/cosmos/router/Response;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/cosmos/DelegableParsingCallbackReceiver;->mParser:Lcom/spotify/mobile/android/cosmos/parser/ResponseParser;
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/cosmos/parser/ResponseParser;->parseResponse(Lcom/spotify/cosmos/router/Response;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method