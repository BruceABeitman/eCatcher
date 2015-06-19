.class public final enum Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;

.field public static final enum b:Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;

.field public static final enum c:Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;

.field public static final enum d:Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;

.field private static final synthetic e:[Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;


# instance fields
.field internalName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;

    const-string v1, "HMI_FULL"

    const-string v2, "FULL"

    invoke-direct {v0, v1, v3, v2}, Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;->a:Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;

    const-string v1, "HMI_LIMITED"

    const-string v2, "LIMITED"

    invoke-direct {v0, v1, v4, v2}, Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;->b:Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;

    const-string v1, "HMI_BACKGROUND"

    const-string v2, "BACKGROUND"

    invoke-direct {v0, v1, v5, v2}, Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;->c:Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;

    new-instance v0, Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;

    const-string v1, "HMI_NONE"

    const-string v2, "NONE"

    invoke-direct {v0, v1, v6, v2}, Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;->d:Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;

    sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;->a:Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;->b:Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;->c:Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;->d:Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;->e:[Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;

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

    iput-object p3, p0, Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;->internalName:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;
    .registers 4

    const-class v0, Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;

    invoke-virtual {v0}, Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :goto_20
    return-object v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;
    .registers 2

    const-class v0, Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;

    return-object v0
.end method

.method public static values()[Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;
    .registers 1

    sget-object v0, Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;->e:[Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;

    invoke-virtual {v0}, [Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/enums/HMILevel;->internalName:Ljava/lang/String;

    return-object v0
.end method
