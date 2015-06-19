.class public Lcom/spotify/cosmos/router/Response;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_CHARSET:Ljava/nio/charset/Charset; = null

.field public static final RESPONSE_TOO_LARGE_CODE:I = 0x19d

.field public static final RESPONSE_TOO_LARGE_MESSAGE:Ljava/lang/String; = "Response too large"


# instance fields
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

.field private mStatus:I

.field private mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/spotify/cosmos/router/Response;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;[B)V
    .registers 5
    .annotation build Lcom/spotify/cosmos/annotations/CalledFromTestCases;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/spotify/cosmos/router/Response;->mStatus:I

    iput-object p2, p0, Lcom/spotify/cosmos/router/Response;->mUri:Ljava/lang/String;

    iput-object p3, p0, Lcom/spotify/cosmos/router/Response;->mHeaders:Ljava/util/Map;

    iput-object p4, p0, Lcom/spotify/cosmos/router/Response;->mBody:[B

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;[B[B)V
    .registers 6
    .annotation build Lcom/spotify/cosmos/annotations/UsedFromNativeCode;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/spotify/cosmos/router/Response;->mStatus:I

    iput-object p2, p0, Lcom/spotify/cosmos/router/Response;->mUri:Ljava/lang/String;

    invoke-static {p3}, Lcom/spotify/cosmos/router/NativeHelpers;->byteArrayToMap([B)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/cosmos/router/Response;->mHeaders:Ljava/util/Map;

    iput-object p4, p0, Lcom/spotify/cosmos/router/Response;->mBody:[B

    return-void
.end method


# virtual methods
.method public getBody()[B
    .registers 2

    iget-object v0, p0, Lcom/spotify/cosmos/router/Response;->mBody:[B

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

    iget-object v0, p0, Lcom/spotify/cosmos/router/Response;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    iget v0, p0, Lcom/spotify/cosmos/router/Response;->mStatus:I

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/cosmos/router/Response;->mUri:Ljava/lang/String;

    return-object v0
.end method
