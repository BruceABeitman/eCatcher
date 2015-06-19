.class final enum Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

.field public static final enum b:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

.field public static final enum c:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

.field private static final synthetic d:[Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->a:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    const-string v1, "SAME_CONNECTION"

    invoke-direct {v0, v1, v3}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->b:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    const-string v1, "DIFFERENT_CONNECTION"

    invoke-direct {v0, v1, v4}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->c:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    sget-object v1, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->a:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->b:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->c:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    aput-object v1, v0, v4

    sput-object v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->d:[Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

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

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;
    .registers 2

    const-class v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    return-object v0
.end method

.method public static values()[Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;
    .registers 1

    sget-object v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->d:[Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    invoke-virtual {v0}, [Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    return-object v0
.end method
