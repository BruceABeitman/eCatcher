.class public final enum Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;

.field public static final enum b:Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;

.field public static final enum c:Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;

.field private static final synthetic d:[Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;

    const-string v1, "MANUAL_ONLY"

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;->a:Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;

    const-string v1, "VR_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;->b:Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v4}, Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;->c:Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;

    sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;->a:Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;->b:Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;->c:Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;->d:[Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;
    .registers 2

    const-class v0, Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;

    return-object v0
.end method

.method public static values()[Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;
    .registers 1

    sget-object v0, Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;->d:[Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;

    invoke-virtual {v0}, [Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ford/syncV4/proxy/rpc/enums/InteractionMode;

    return-object v0
.end method
