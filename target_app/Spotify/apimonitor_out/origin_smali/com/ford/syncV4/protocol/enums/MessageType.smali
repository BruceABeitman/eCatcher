.class public final enum Lcom/ford/syncV4/protocol/enums/MessageType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ford/syncV4/protocol/enums/MessageType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ford/syncV4/protocol/enums/MessageType;

.field public static final enum b:Lcom/ford/syncV4/protocol/enums/MessageType;

.field public static final enum c:Lcom/ford/syncV4/protocol/enums/MessageType;

.field private static final synthetic d:[Lcom/ford/syncV4/protocol/enums/MessageType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ford/syncV4/protocol/enums/MessageType;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/protocol/enums/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/protocol/enums/MessageType;->a:Lcom/ford/syncV4/protocol/enums/MessageType;

    new-instance v0, Lcom/ford/syncV4/protocol/enums/MessageType;

    const-string v1, "BULK"

    invoke-direct {v0, v1, v3}, Lcom/ford/syncV4/protocol/enums/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/protocol/enums/MessageType;->b:Lcom/ford/syncV4/protocol/enums/MessageType;

    new-instance v0, Lcom/ford/syncV4/protocol/enums/MessageType;

    const-string v1, "RPC"

    invoke-direct {v0, v1, v4}, Lcom/ford/syncV4/protocol/enums/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/protocol/enums/MessageType;->c:Lcom/ford/syncV4/protocol/enums/MessageType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ford/syncV4/protocol/enums/MessageType;

    sget-object v1, Lcom/ford/syncV4/protocol/enums/MessageType;->a:Lcom/ford/syncV4/protocol/enums/MessageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ford/syncV4/protocol/enums/MessageType;->b:Lcom/ford/syncV4/protocol/enums/MessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ford/syncV4/protocol/enums/MessageType;->c:Lcom/ford/syncV4/protocol/enums/MessageType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ford/syncV4/protocol/enums/MessageType;->d:[Lcom/ford/syncV4/protocol/enums/MessageType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ford/syncV4/protocol/enums/MessageType;
    .registers 2

    const-class v0, Lcom/ford/syncV4/protocol/enums/MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ford/syncV4/protocol/enums/MessageType;

    return-object v0
.end method

.method public static values()[Lcom/ford/syncV4/protocol/enums/MessageType;
    .registers 1

    sget-object v0, Lcom/ford/syncV4/protocol/enums/MessageType;->d:[Lcom/ford/syncV4/protocol/enums/MessageType;

    invoke-virtual {v0}, [Lcom/ford/syncV4/protocol/enums/MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ford/syncV4/protocol/enums/MessageType;

    return-object v0
.end method
