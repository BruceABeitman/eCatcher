.class public final enum Lcom/ford/syncV4/trace/enums/Mod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ford/syncV4/trace/enums/Mod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ford/syncV4/trace/enums/Mod;

.field public static final enum b:Lcom/ford/syncV4/trace/enums/Mod;

.field public static final enum c:Lcom/ford/syncV4/trace/enums/Mod;

.field public static final enum d:Lcom/ford/syncV4/trace/enums/Mod;

.field public static final enum e:Lcom/ford/syncV4/trace/enums/Mod;

.field public static final enum f:Lcom/ford/syncV4/trace/enums/Mod;

.field private static final synthetic g:[Lcom/ford/syncV4/trace/enums/Mod;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/ford/syncV4/trace/enums/Mod;

    const-string v1, "tran"

    invoke-direct {v0, v1, v3}, Lcom/ford/syncV4/trace/enums/Mod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/trace/enums/Mod;->a:Lcom/ford/syncV4/trace/enums/Mod;

    new-instance v0, Lcom/ford/syncV4/trace/enums/Mod;

    const-string v1, "proto"

    invoke-direct {v0, v1, v4}, Lcom/ford/syncV4/trace/enums/Mod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/trace/enums/Mod;->b:Lcom/ford/syncV4/trace/enums/Mod;

    new-instance v0, Lcom/ford/syncV4/trace/enums/Mod;

    const-string v1, "mar"

    invoke-direct {v0, v1, v5}, Lcom/ford/syncV4/trace/enums/Mod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/trace/enums/Mod;->c:Lcom/ford/syncV4/trace/enums/Mod;

    new-instance v0, Lcom/ford/syncV4/trace/enums/Mod;

    const-string v1, "rpc"

    invoke-direct {v0, v1, v6}, Lcom/ford/syncV4/trace/enums/Mod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/trace/enums/Mod;->d:Lcom/ford/syncV4/trace/enums/Mod;

    new-instance v0, Lcom/ford/syncV4/trace/enums/Mod;

    const-string v1, "app"

    invoke-direct {v0, v1, v7}, Lcom/ford/syncV4/trace/enums/Mod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/trace/enums/Mod;->e:Lcom/ford/syncV4/trace/enums/Mod;

    new-instance v0, Lcom/ford/syncV4/trace/enums/Mod;

    const-string v1, "proxy"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/trace/enums/Mod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ford/syncV4/trace/enums/Mod;->f:Lcom/ford/syncV4/trace/enums/Mod;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ford/syncV4/trace/enums/Mod;

    sget-object v1, Lcom/ford/syncV4/trace/enums/Mod;->a:Lcom/ford/syncV4/trace/enums/Mod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ford/syncV4/trace/enums/Mod;->b:Lcom/ford/syncV4/trace/enums/Mod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ford/syncV4/trace/enums/Mod;->c:Lcom/ford/syncV4/trace/enums/Mod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ford/syncV4/trace/enums/Mod;->d:Lcom/ford/syncV4/trace/enums/Mod;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ford/syncV4/trace/enums/Mod;->e:Lcom/ford/syncV4/trace/enums/Mod;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ford/syncV4/trace/enums/Mod;->f:Lcom/ford/syncV4/trace/enums/Mod;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ford/syncV4/trace/enums/Mod;->g:[Lcom/ford/syncV4/trace/enums/Mod;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ford/syncV4/trace/enums/Mod;
    .registers 2

    const-class v0, Lcom/ford/syncV4/trace/enums/Mod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ford/syncV4/trace/enums/Mod;

    return-object v0
.end method

.method public static values()[Lcom/ford/syncV4/trace/enums/Mod;
    .registers 1

    sget-object v0, Lcom/ford/syncV4/trace/enums/Mod;->g:[Lcom/ford/syncV4/trace/enums/Mod;

    invoke-virtual {v0}, [Lcom/ford/syncV4/trace/enums/Mod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ford/syncV4/trace/enums/Mod;

    return-object v0
.end method
