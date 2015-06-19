.class public abstract Lcom/spotify/mobile/android/cosmos/HttpCallbackReceiver;
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


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static defaultVerifyResponse(Lcom/spotify/cosmos/router/Response;)V
    .registers 5

    invoke-virtual {p0}, Lcom/spotify/cosmos/router/Response;->getStatus()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_c

    const/16 v1, 0x12b

    if-le v0, v1, :cond_5b

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HTTP status code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spotify/cosmos/router/Response;->getBody()[B

    move-result-object v1

    if-eqz v1, :cond_4e

    invoke-virtual {p0}, Lcom/spotify/cosmos/router/Response;->getBody()[B

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_4e

    :try_start_28
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/spotify/cosmos/router/Response;->getBody()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", body: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_4d} :catch_54

    move-result-object v0

    :cond_4e
    new-instance v1, Lcom/spotify/mobile/android/cosmos/HttpCallbackReceiver$HttpException;

    invoke-direct {v1, v0}, Lcom/spotify/mobile/android/cosmos/HttpCallbackReceiver$HttpException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_54
    move-exception v1

    new-instance v1, Lcom/spotify/mobile/android/cosmos/HttpCallbackReceiver$HttpException;

    invoke-direct {v1, v0}, Lcom/spotify/mobile/android/cosmos/HttpCallbackReceiver$HttpException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5b
    return-void
.end method


# virtual methods
.method protected verifyResponse(Lcom/spotify/cosmos/router/Response;)V
    .registers 2

    invoke-static {p1}, Lcom/spotify/mobile/android/cosmos/HttpCallbackReceiver;->defaultVerifyResponse(Lcom/spotify/cosmos/router/Response;)V

    return-void
.end method
