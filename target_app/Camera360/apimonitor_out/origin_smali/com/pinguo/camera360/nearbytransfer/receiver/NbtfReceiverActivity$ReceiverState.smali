.class public final enum Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;
.super Ljava/lang/Enum;
.source "NbtfReceiverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReceiverState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

.field public static final enum IF_ACCEPT:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

.field public static final enum RECEIVE_END:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

.field public static final enum RECEIVING:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

.field public static final enum START:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

.field public static final enum WAITTING_CONNECT:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    const-string/jumbo v1, "START"

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;->START:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    new-instance v0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    const-string/jumbo v1, "IF_ACCEPT"

    invoke-direct {v0, v1, v3}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;->IF_ACCEPT:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    new-instance v0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    const-string/jumbo v1, "WAITTING_CONNECT"

    invoke-direct {v0, v1, v4}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;->WAITTING_CONNECT:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    new-instance v0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    const-string/jumbo v1, "RECEIVING"

    invoke-direct {v0, v1, v5}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;->RECEIVING:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    new-instance v0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    const-string/jumbo v1, "RECEIVE_END"

    invoke-direct {v0, v1, v6}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;->RECEIVE_END:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    sget-object v1, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;->START:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;->IF_ACCEPT:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;->WAITTING_CONNECT:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;->RECEIVING:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;->RECEIVE_END:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;->ENUM$VALUES:[Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;
    .registers 2

    const-class v0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    return-object v0
.end method

.method public static values()[Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;->ENUM$VALUES:[Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    array-length v1, v0

    new-array v2, v1, [Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
