.class final enum Lcom/facebook/AuthorizationClient$Result$Code;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/AuthorizationClient$Result$Code;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/AuthorizationClient$Result$Code;

.field public static final enum b:Lcom/facebook/AuthorizationClient$Result$Code;

.field public static final enum c:Lcom/facebook/AuthorizationClient$Result$Code;

.field private static final synthetic d:[Lcom/facebook/AuthorizationClient$Result$Code;


# instance fields
.field private final loggingValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/facebook/AuthorizationClient$Result$Code;

    const-string v1, "SUCCESS"

    const-string v2, "success"

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/AuthorizationClient$Result$Code;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/AuthorizationClient$Result$Code;->a:Lcom/facebook/AuthorizationClient$Result$Code;

    new-instance v0, Lcom/facebook/AuthorizationClient$Result$Code;

    const-string v1, "CANCEL"

    const-string v2, "cancel"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/AuthorizationClient$Result$Code;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/AuthorizationClient$Result$Code;->b:Lcom/facebook/AuthorizationClient$Result$Code;

    new-instance v0, Lcom/facebook/AuthorizationClient$Result$Code;

    const-string v1, "ERROR"

    const-string v2, "error"

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/AuthorizationClient$Result$Code;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/AuthorizationClient$Result$Code;->c:Lcom/facebook/AuthorizationClient$Result$Code;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/AuthorizationClient$Result$Code;

    sget-object v1, Lcom/facebook/AuthorizationClient$Result$Code;->a:Lcom/facebook/AuthorizationClient$Result$Code;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/AuthorizationClient$Result$Code;->b:Lcom/facebook/AuthorizationClient$Result$Code;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/AuthorizationClient$Result$Code;->c:Lcom/facebook/AuthorizationClient$Result$Code;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/AuthorizationClient$Result$Code;->d:[Lcom/facebook/AuthorizationClient$Result$Code;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/facebook/AuthorizationClient$Result$Code;->loggingValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result$Code;
    .registers 2

    const-class v0, Lcom/facebook/AuthorizationClient$Result$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/AuthorizationClient$Result$Code;

    return-object v0
.end method

.method public static values()[Lcom/facebook/AuthorizationClient$Result$Code;
    .registers 1

    sget-object v0, Lcom/facebook/AuthorizationClient$Result$Code;->d:[Lcom/facebook/AuthorizationClient$Result$Code;

    invoke-virtual {v0}, [Lcom/facebook/AuthorizationClient$Result$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/AuthorizationClient$Result$Code;

    return-object v0
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$Result$Code;->loggingValue:Ljava/lang/String;

    return-object v0
.end method
