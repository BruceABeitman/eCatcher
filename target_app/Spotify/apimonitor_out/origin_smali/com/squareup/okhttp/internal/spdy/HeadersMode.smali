.class final enum Lcom/squareup/okhttp/internal/spdy/HeadersMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/squareup/okhttp/internal/spdy/HeadersMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

.field public static final enum b:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

.field public static final enum c:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

.field public static final enum d:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

.field private static final synthetic e:[Lcom/squareup/okhttp/internal/spdy/HeadersMode;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    const-string v1, "SPDY_SYN_STREAM"

    invoke-direct {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->a:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    const-string v1, "SPDY_REPLY"

    invoke-direct {v0, v1, v3}, Lcom/squareup/okhttp/internal/spdy/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->b:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    const-string v1, "SPDY_HEADERS"

    invoke-direct {v0, v1, v4}, Lcom/squareup/okhttp/internal/spdy/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->c:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    const-string v1, "HTTP_20_HEADERS"

    invoke-direct {v0, v1, v5}, Lcom/squareup/okhttp/internal/spdy/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->d:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->a:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->b:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->c:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->d:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->e:[Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/okhttp/internal/spdy/HeadersMode;
    .registers 2

    const-class v0, Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    return-object v0
.end method

.method public static values()[Lcom/squareup/okhttp/internal/spdy/HeadersMode;
    .registers 1

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->e:[Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    invoke-virtual {v0}, [Lcom/squareup/okhttp/internal/spdy/HeadersMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    return-object v0
.end method
