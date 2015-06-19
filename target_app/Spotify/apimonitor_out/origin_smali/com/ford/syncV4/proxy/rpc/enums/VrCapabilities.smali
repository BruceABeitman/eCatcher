.class public final enum Lcom/ford/syncV4/proxy/rpc/enums/VrCapabilities;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ford/syncV4/proxy/rpc/enums/VrCapabilities;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ford/syncV4/proxy/rpc/enums/VrCapabilities;

.field private static final synthetic b:[Lcom/ford/syncV4/proxy/rpc/enums/VrCapabilities;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/VrCapabilities;

    const-string v1, "Text"

    invoke-direct {v0, v1}, Lcom/ford/syncV4/proxy/rpc/enums/VrCapabilities;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/VrCapabilities;->a:Lcom/ford/syncV4/proxy/rpc/enums/VrCapabilities;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/ford/syncV4/proxy/rpc/enums/VrCapabilities;

    const/4 v1, 0x0

    sget-object v2, Lcom/ford/syncV4/proxy/rpc/enums/VrCapabilities;->a:Lcom/ford/syncV4/proxy/rpc/enums/VrCapabilities;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/VrCapabilities;->b:[Lcom/ford/syncV4/proxy/rpc/enums/VrCapabilities;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/ford/syncV4/proxy/rpc/enums/VrCapabilities;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/VrCapabilities;->a:Lcom/ford/syncV4/proxy/rpc/enums/VrCapabilities;

    invoke-virtual {v1}, Lcom/ford/syncV4/proxy/rpc/enums/VrCapabilities;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/ford/syncV4/proxy/rpc/enums/VrCapabilities;->a:Lcom/ford/syncV4/proxy/rpc/enums/VrCapabilities;

    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ford/syncV4/proxy/rpc/enums/VrCapabilities;
    .registers 2

    const-class v0, Lcom/ford/syncV4/proxy/rpc/enums/VrCapabilities;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ford/syncV4/proxy/rpc/enums/VrCapabilities;

    return-object v0
.end method

.method public static values()[Lcom/ford/syncV4/proxy/rpc/enums/VrCapabilities;
    .registers 1

    sget-object v0, Lcom/ford/syncV4/proxy/rpc/enums/VrCapabilities;->b:[Lcom/ford/syncV4/proxy/rpc/enums/VrCapabilities;

    invoke-virtual {v0}, [Lcom/ford/syncV4/proxy/rpc/enums/VrCapabilities;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ford/syncV4/proxy/rpc/enums/VrCapabilities;

    return-object v0
.end method
