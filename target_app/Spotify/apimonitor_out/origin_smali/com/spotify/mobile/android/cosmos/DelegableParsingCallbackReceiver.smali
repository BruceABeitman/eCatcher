.class public abstract Lcom/spotify/mobile/android/cosmos/DelegableParsingCallbackReceiver;
.super Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mParser:Lcom/spotify/mobile/android/cosmos/parser/ResponseParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/cosmos/parser/ResponseParser",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/spotify/mobile/android/cosmos/parser/ResponseParser;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/spotify/mobile/android/cosmos/parser/ResponseParser",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/spotify/mobile/android/cosmos/DelegableParsingCallbackReceiver;->mParser:Lcom/spotify/mobile/android/cosmos/parser/ResponseParser;

    return-void
.end method


# virtual methods
.method protected parseResponse(Lcom/spotify/cosmos/router/Response;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/cosmos/router/Response;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/cosmos/DelegableParsingCallbackReceiver;->mParser:Lcom/spotify/mobile/android/cosmos/parser/ResponseParser;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/cosmos/parser/ResponseParser;->parseResponse(Lcom/spotify/cosmos/router/Response;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
