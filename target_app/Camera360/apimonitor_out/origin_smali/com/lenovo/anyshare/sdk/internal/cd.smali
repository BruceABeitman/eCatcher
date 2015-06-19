.class public final enum Lcom/lenovo/anyshare/sdk/internal/cd;
.super Ljava/lang/Enum;
.source "NetworkStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/anyshare/sdk/internal/cd;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/lenovo/anyshare/sdk/internal/cd;

.field public static final enum b:Lcom/lenovo/anyshare/sdk/internal/cd;

.field public static final enum c:Lcom/lenovo/anyshare/sdk/internal/cd;

.field private static final synthetic e:[Lcom/lenovo/anyshare/sdk/internal/cd;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/cd;

    const-string/jumbo v1, "IDLE"

    const-string/jumbo v2, "idle"

    invoke-direct {v0, v1, v3, v2}, Lcom/lenovo/anyshare/sdk/internal/cd;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/anyshare/sdk/internal/cd;->a:Lcom/lenovo/anyshare/sdk/internal/cd;

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/cd;

    const-string/jumbo v1, "CLIENT"

    const-string/jumbo v2, "client"

    invoke-direct {v0, v1, v4, v2}, Lcom/lenovo/anyshare/sdk/internal/cd;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/anyshare/sdk/internal/cd;->b:Lcom/lenovo/anyshare/sdk/internal/cd;

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/cd;

    const-string/jumbo v1, "SERVER"

    const-string/jumbo v2, "server"

    invoke-direct {v0, v1, v5, v2}, Lcom/lenovo/anyshare/sdk/internal/cd;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lenovo/anyshare/sdk/internal/cd;->c:Lcom/lenovo/anyshare/sdk/internal/cd;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lenovo/anyshare/sdk/internal/cd;

    sget-object v1, Lcom/lenovo/anyshare/sdk/internal/cd;->a:Lcom/lenovo/anyshare/sdk/internal/cd;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/anyshare/sdk/internal/cd;->b:Lcom/lenovo/anyshare/sdk/internal/cd;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/anyshare/sdk/internal/cd;->c:Lcom/lenovo/anyshare/sdk/internal/cd;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lenovo/anyshare/sdk/internal/cd;->e:[Lcom/lenovo/anyshare/sdk/internal/cd;

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

    iput-object p3, p0, Lcom/lenovo/anyshare/sdk/internal/cd;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/cd;
    .registers 2

    const-class v0, Lcom/lenovo/anyshare/sdk/internal/cd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/anyshare/sdk/internal/cd;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/anyshare/sdk/internal/cd;
    .registers 1

    sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cd;->e:[Lcom/lenovo/anyshare/sdk/internal/cd;

    invoke-virtual {v0}, [Lcom/lenovo/anyshare/sdk/internal/cd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/anyshare/sdk/internal/cd;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cd;->d:Ljava/lang/String;

    return-object v0
.end method
