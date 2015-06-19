.class public final enum Lcom/ford/syncV4/proxy/rpc/enums/SyncConnectionState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ford/syncV4/proxy/rpc/enums/SyncConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ford/syncV4/proxy/rpc/enums/SyncConnectionState;

.field public static final enum b:Lcom/ford/syncV4/proxy/rpc/enums/SyncConnectionState;

.field private static final synthetic c:[Lcom/ford/syncV4/proxy/rpc/enums/SyncConnectionState;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/SyncConnectionState;

    const-string v1, "SYNC_CONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/proxy/rpc/enums/SyncConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/SyncConnectionState;->a:Lcom/ford/syncV4/proxy/rpc/enums/SyncConnectionState;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/SyncConnectionState;

    const-string v1, "SYNC_DISCONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/ford/syncV4/proxy/rpc/enums/SyncConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/SyncConnectionState;->b:Lcom/ford/syncV4/proxy/rpc/enums/SyncConnectionState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ford/syncV4/proxy/rpc/enums/SyncConnectionState;

    sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/SyncConnectionState;->a:Lcom/ford/syncV4/proxy/rpc/enums/SyncConnectionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/SyncConnectionState;->b:Lcom/ford/syncV4/proxy/rpc/enums/SyncConnectionState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/SyncConnectionState;->c:[Lcom/ford/syncV4/proxy/rpc/enums/SyncConnectionState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ford/syncV4/proxy/rpc/enums/SyncConnectionState;
    .registers 2

    const-class v0, Lcom/ford/syncV4/proxy/rpc/enums/SyncConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ford/syncV4/proxy/rpc/enums/SyncConnectionState;

    return-object v0
.end method

.method public static values()[Lcom/ford/syncV4/proxy/rpc/enums/SyncConnectionState;
    .registers 1

    sget-object v0, Lcom/ford/syncV4/proxy/rpc/enums/SyncConnectionState;->c:[Lcom/ford/syncV4/proxy/rpc/enums/SyncConnectionState;

    invoke-virtual {v0}, [Lcom/ford/syncV4/proxy/rpc/enums/SyncConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ford/syncV4/proxy/rpc/enums/SyncConnectionState;

    return-object v0
.end method
