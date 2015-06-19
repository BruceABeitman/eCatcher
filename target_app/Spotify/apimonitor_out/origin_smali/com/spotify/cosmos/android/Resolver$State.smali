.class final enum Lcom/spotify/cosmos/android/Resolver$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spotify/cosmos/android/Resolver$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spotify/cosmos/android/Resolver$State;

.field public static final enum CONNECTED:Lcom/spotify/cosmos/android/Resolver$State;

.field public static final enum CONNECTING:Lcom/spotify/cosmos/android/Resolver$State;

.field public static final enum DISCONNECTED:Lcom/spotify/cosmos/android/Resolver$State;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/spotify/cosmos/android/Resolver$State;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/spotify/cosmos/android/Resolver$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/cosmos/android/Resolver$State;->CONNECTED:Lcom/spotify/cosmos/android/Resolver$State;

    new-instance v0, Lcom/spotify/cosmos/android/Resolver$State;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/spotify/cosmos/android/Resolver$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/cosmos/android/Resolver$State;->CONNECTING:Lcom/spotify/cosmos/android/Resolver$State;

    new-instance v0, Lcom/spotify/cosmos/android/Resolver$State;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/spotify/cosmos/android/Resolver$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/cosmos/android/Resolver$State;->DISCONNECTED:Lcom/spotify/cosmos/android/Resolver$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/spotify/cosmos/android/Resolver$State;

    sget-object v1, Lcom/spotify/cosmos/android/Resolver$State;->CONNECTED:Lcom/spotify/cosmos/android/Resolver$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/spotify/cosmos/android/Resolver$State;->CONNECTING:Lcom/spotify/cosmos/android/Resolver$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spotify/cosmos/android/Resolver$State;->DISCONNECTED:Lcom/spotify/cosmos/android/Resolver$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/spotify/cosmos/android/Resolver$State;->$VALUES:[Lcom/spotify/cosmos/android/Resolver$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/spotify/cosmos/android/Resolver$State;
    .registers 2

    const-class v0, Lcom/spotify/cosmos/android/Resolver$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spotify/cosmos/android/Resolver$State;

    return-object v0
.end method

.method public static values()[Lcom/spotify/cosmos/android/Resolver$State;
    .registers 1

    sget-object v0, Lcom/spotify/cosmos/android/Resolver$State;->$VALUES:[Lcom/spotify/cosmos/android/Resolver$State;

    invoke-virtual {v0}, [Lcom/spotify/cosmos/android/Resolver$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spotify/cosmos/android/Resolver$State;

    return-object v0
.end method
