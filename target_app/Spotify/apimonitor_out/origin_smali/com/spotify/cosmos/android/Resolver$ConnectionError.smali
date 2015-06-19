.class public final enum Lcom/spotify/cosmos/android/Resolver$ConnectionError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spotify/cosmos/android/Resolver$ConnectionError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spotify/cosmos/android/Resolver$ConnectionError;

.field public static final enum BIND_SERVICE_FAILED:Lcom/spotify/cosmos/android/Resolver$ConnectionError;

.field public static final enum DESTROY_CALLBACK_THREAD_NOT_STARTED:Lcom/spotify/cosmos/android/Resolver$ConnectionError;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/spotify/cosmos/android/Resolver$ConnectionError;

    const-string v1, "BIND_SERVICE_FAILED"

    invoke-direct {v0, v1, v2}, Lcom/spotify/cosmos/android/Resolver$ConnectionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/cosmos/android/Resolver$ConnectionError;->BIND_SERVICE_FAILED:Lcom/spotify/cosmos/android/Resolver$ConnectionError;

    new-instance v0, Lcom/spotify/cosmos/android/Resolver$ConnectionError;

    const-string v1, "DESTROY_CALLBACK_THREAD_NOT_STARTED"

    invoke-direct {v0, v1, v3}, Lcom/spotify/cosmos/android/Resolver$ConnectionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/cosmos/android/Resolver$ConnectionError;->DESTROY_CALLBACK_THREAD_NOT_STARTED:Lcom/spotify/cosmos/android/Resolver$ConnectionError;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/spotify/cosmos/android/Resolver$ConnectionError;

    sget-object v1, Lcom/spotify/cosmos/android/Resolver$ConnectionError;->BIND_SERVICE_FAILED:Lcom/spotify/cosmos/android/Resolver$ConnectionError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/spotify/cosmos/android/Resolver$ConnectionError;->DESTROY_CALLBACK_THREAD_NOT_STARTED:Lcom/spotify/cosmos/android/Resolver$ConnectionError;

    aput-object v1, v0, v3

    sput-object v0, Lcom/spotify/cosmos/android/Resolver$ConnectionError;->$VALUES:[Lcom/spotify/cosmos/android/Resolver$ConnectionError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/spotify/cosmos/android/Resolver$ConnectionError;
    .registers 2

    const-class v0, Lcom/spotify/cosmos/android/Resolver$ConnectionError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spotify/cosmos/android/Resolver$ConnectionError;

    return-object v0
.end method

.method public static values()[Lcom/spotify/cosmos/android/Resolver$ConnectionError;
    .registers 1

    sget-object v0, Lcom/spotify/cosmos/android/Resolver$ConnectionError;->$VALUES:[Lcom/spotify/cosmos/android/Resolver$ConnectionError;

    invoke-virtual {v0}, [Lcom/spotify/cosmos/android/Resolver$ConnectionError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spotify/cosmos/android/Resolver$ConnectionError;

    return-object v0
.end method
