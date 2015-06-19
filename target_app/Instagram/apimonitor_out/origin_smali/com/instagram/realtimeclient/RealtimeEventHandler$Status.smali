.class public final enum Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;
.super Ljava/lang/Enum;
.source "RealtimeEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

.field public static final enum CONNECTED:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

.field public static final enum NOT_CONNECTED:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

.field public static final enum SUBSCRIBED:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

    const-string v1, "NOT_CONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;->NOT_CONNECTED:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

    new-instance v0, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;->CONNECTED:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

    new-instance v0, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

    const-string v1, "SUBSCRIBED"

    invoke-direct {v0, v1, v4}, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;->SUBSCRIBED:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

    sget-object v1, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;->NOT_CONNECTED:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;->CONNECTED:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;->SUBSCRIBED:Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;->$VALUES:[Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;
    .registers 2

    const-class v0, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

    return-object v0
.end method

.method public static values()[Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;
    .registers 1

    sget-object v0, Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;->$VALUES:[Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

    invoke-virtual {v0}, [Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;

    return-object v0
.end method
