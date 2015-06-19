.class public final enum Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

.field public static final enum b:Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

.field public static final enum c:Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

.field public static final enum d:Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

.field public static final enum e:Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

.field private static final synthetic f:[Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

    const-string v1, "TIMEOUT"

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;->a:Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

    const-string v1, "PARSE_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;->b:Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

    const-string v1, "NOT_RESOLVED"

    invoke-direct {v0, v1, v4}, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;->c:Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

    const-string v1, "RESOLVER_NOT_READY"

    invoke-direct {v0, v1, v5}, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;->d:Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

    const-string v1, "UNKNOWN_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;->e:Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;->a:Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;->b:Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;->c:Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;->d:Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;->e:Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

    aput-object v1, v0, v6

    sput-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;->f:[Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

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

.method static a(Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$1;->a:[I

    invoke-virtual {p0}, Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;->e:Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

    :goto_d
    return-object v0

    :pswitch_e
    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;->c:Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

    goto :goto_d

    :pswitch_11
    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;->b:Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

    goto :goto_d

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;
    .registers 2

    const-class v0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

    return-object v0
.end method

.method public static values()[Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;->f:[Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

    invoke-virtual {v0}, [Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError;
    .registers 3

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError;

    invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError;-><init>(Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;Ljava/lang/Throwable;)V

    return-object v0
.end method
