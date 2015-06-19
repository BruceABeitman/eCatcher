.class public final enum Lcom/pinguo/album/animations/StateTransAnim$Transition;
.super Ljava/lang/Enum;
.source "StateTransAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/animations/StateTransAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Transition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pinguo/album/animations/StateTransAnim$Transition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/album/animations/StateTransAnim$Transition;

.field public static final enum Incoming:Lcom/pinguo/album/animations/StateTransAnim$Transition;

.field public static final enum None:Lcom/pinguo/album/animations/StateTransAnim$Transition;

.field public static final enum Outgoing:Lcom/pinguo/album/animations/StateTransAnim$Transition;

.field public static final enum PhotoIncoming:Lcom/pinguo/album/animations/StateTransAnim$Transition;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/pinguo/album/animations/StateTransAnim$Transition;

    const-string/jumbo v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/pinguo/album/animations/StateTransAnim$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/album/animations/StateTransAnim$Transition;->None:Lcom/pinguo/album/animations/StateTransAnim$Transition;

    new-instance v0, Lcom/pinguo/album/animations/StateTransAnim$Transition;

    const-string/jumbo v1, "Outgoing"

    invoke-direct {v0, v1, v3}, Lcom/pinguo/album/animations/StateTransAnim$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/album/animations/StateTransAnim$Transition;->Outgoing:Lcom/pinguo/album/animations/StateTransAnim$Transition;

    new-instance v0, Lcom/pinguo/album/animations/StateTransAnim$Transition;

    const-string/jumbo v1, "Incoming"

    invoke-direct {v0, v1, v4}, Lcom/pinguo/album/animations/StateTransAnim$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/album/animations/StateTransAnim$Transition;->Incoming:Lcom/pinguo/album/animations/StateTransAnim$Transition;

    new-instance v0, Lcom/pinguo/album/animations/StateTransAnim$Transition;

    const-string/jumbo v1, "PhotoIncoming"

    invoke-direct {v0, v1, v5}, Lcom/pinguo/album/animations/StateTransAnim$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/album/animations/StateTransAnim$Transition;->PhotoIncoming:Lcom/pinguo/album/animations/StateTransAnim$Transition;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/pinguo/album/animations/StateTransAnim$Transition;

    sget-object v1, Lcom/pinguo/album/animations/StateTransAnim$Transition;->None:Lcom/pinguo/album/animations/StateTransAnim$Transition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pinguo/album/animations/StateTransAnim$Transition;->Outgoing:Lcom/pinguo/album/animations/StateTransAnim$Transition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pinguo/album/animations/StateTransAnim$Transition;->Incoming:Lcom/pinguo/album/animations/StateTransAnim$Transition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pinguo/album/animations/StateTransAnim$Transition;->PhotoIncoming:Lcom/pinguo/album/animations/StateTransAnim$Transition;

    aput-object v1, v0, v5

    sput-object v0, Lcom/pinguo/album/animations/StateTransAnim$Transition;->ENUM$VALUES:[Lcom/pinguo/album/animations/StateTransAnim$Transition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/album/animations/StateTransAnim$Transition;
    .registers 2

    const-class v0, Lcom/pinguo/album/animations/StateTransAnim$Transition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pinguo/album/animations/StateTransAnim$Transition;

    return-object v0
.end method

.method public static values()[Lcom/pinguo/album/animations/StateTransAnim$Transition;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/pinguo/album/animations/StateTransAnim$Transition;->ENUM$VALUES:[Lcom/pinguo/album/animations/StateTransAnim$Transition;

    array-length v1, v0

    new-array v2, v1, [Lcom/pinguo/album/animations/StateTransAnim$Transition;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
