.class public final enum Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
.super Ljava/lang/Enum;
.source "NbtfSendActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SenderState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONNECTED:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

.field public static final enum REQUEST_CONNECTING:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

.field public static final enum SENDING:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

.field public static final enum SEND_END:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

.field public static final enum STARTED:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

.field public static final enum STOPED:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

    const-string/jumbo v1, "STOPED"

    invoke-direct {v0, v1, v3}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->STOPED:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

    new-instance v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

    const-string/jumbo v1, "STARTED"

    invoke-direct {v0, v1, v4}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->STARTED:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

    new-instance v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

    const-string/jumbo v1, "REQUEST_CONNECTING"

    invoke-direct {v0, v1, v5}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->REQUEST_CONNECTING:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

    new-instance v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

    const-string/jumbo v1, "CONNECTED"

    invoke-direct {v0, v1, v6}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->CONNECTED:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

    new-instance v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

    const-string/jumbo v1, "SENDING"

    invoke-direct {v0, v1, v7}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->SENDING:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

    new-instance v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

    const-string/jumbo v1, "SEND_END"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->SEND_END:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

    sget-object v1, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->STOPED:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->STARTED:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->REQUEST_CONNECTING:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->CONNECTED:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->SENDING:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->SEND_END:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->ENUM$VALUES:[Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
    .registers 2

    const-class v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

    return-object v0
.end method

.method public static values()[Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->ENUM$VALUES:[Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

    array-length v1, v0

    new-array v2, v1, [Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
