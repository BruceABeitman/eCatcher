.class public Lcom/spotify/cosmos/router/Request;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DELETE:Ljava/lang/String; = "DELETE"

.field public static final EMPTY_BODY:[B = null

.field public static final GET:Ljava/lang/String; = "GET"

.field public static final POST:Ljava/lang/String; = "POST"

.field public static final PUT:Ljava/lang/String; = "PUT"

.field public static final SUB:Ljava/lang/String; = "SUB"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mBody:[B

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/spotify/cosmos/router/Request;->EMPTY_BODY:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/spotify/cosmos/router/Request;->EMPTY_BODY:[B

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/spotify/cosmos/router/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    iput-object p3, p0, Lcom/spotify/cosmos/router/Request;->mHeaders:Ljava/util/Map;

    iput-object p1, p0, Lcom/spotify/cosmos/router/Request;->mAction:Ljava/lang/String;

    iput-object p2, p0, Lcom/spotify/cosmos/router/Request;->mUri:Ljava/lang/String;

    iput-object p4, p0, Lcom/spotify/cosmos/router/Request;->mBody:[B

    return-void
.end method

.method private getHeadersArray()[B
    .registers 2
    .annotation build Lcom/spotify/cosmos/annotations/UsedFromNativeCode;
    .end annotation

    iget-object v0, p0, Lcom/spotify/cosmos/router/Request;->mHeaders:Ljava/util/Map;

    invoke-static {v0}, Lcom/spotify/cosmos/router/NativeHelpers;->mapToByteArray(Ljava/util/Map;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/cosmos/router/Request;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()[B
    .registers 2

    iget-object v0, p0, Lcom/spotify/cosmos/router/Request;->mBody:[B

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/cosmos/router/Request;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/cosmos/router/Request;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/cosmos/router/Request;->mAction:Ljava/lang/String;

    return-void
.end method

.method public setBody([B)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/cosmos/router/Request;->mBody:[B

    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/spotify/cosmos/router/Request;->mHeaders:Ljava/util/Map;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/cosmos/router/Request;->mUri:Ljava/lang/String;

    return-void
.end method
