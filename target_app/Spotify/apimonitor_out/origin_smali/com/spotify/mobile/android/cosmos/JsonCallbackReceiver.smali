.class public abstract Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;
.super Lcom/spotify/mobile/android/cosmos/DelegableParsingCallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/spotify/mobile/android/cosmos/DelegableParsingCallbackReceiver",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/spotify/mobile/android/cosmos/parser/JsonParser;

    invoke-direct {v0, p2, p3}, Lcom/spotify/mobile/android/cosmos/parser/JsonParser;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/cosmos/DelegableParsingCallbackReceiver;-><init>(Landroid/os/Handler;Lcom/spotify/mobile/android/cosmos/parser/ResponseParser;)V

    return-void
.end method
