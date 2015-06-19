.class final enum Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;

.field public static final enum b:Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;

.field public static final enum c:Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;

.field public static final enum d:Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;

.field private static final synthetic e:[Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;->a:Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;

    new-instance v0, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;->b:Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;

    new-instance v0, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;->c:Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;

    new-instance v0, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;

    const-string v1, "DISCONNECTING"

    invoke-direct {v0, v1, v5}, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;->d:Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;

    sget-object v1, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;->a:Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;->b:Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;->c:Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;->d:Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;->e:[Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;
    .registers 2

    const-class v0, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;

    return-object v0
.end method

.method public static values()[Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;
    .registers 1

    sget-object v0, Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;->e:[Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;

    invoke-virtual {v0}, [Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ford/syncV4/transport/TCPTransport$TCPTransportState;

    return-object v0
.end method
