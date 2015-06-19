.class public final enum Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;
.super Ljava/lang/Enum;
.source "AsyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/Camera360Lib/async/AsyncRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;

.field public static final enum FINISHED:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;

.field public static final enum PENDING:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;

.field public static final enum RUNNING:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;

    const-string/jumbo v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;->PENDING:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;

    new-instance v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;

    const-string/jumbo v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;->RUNNING:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;

    new-instance v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;

    const-string/jumbo v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;->FINISHED:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;

    sget-object v1, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;->PENDING:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;->RUNNING:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;->FINISHED:Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;->ENUM$VALUES:[Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;
    .registers 2

    const-class v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;

    return-object v0
.end method

.method public static values()[Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;->ENUM$VALUES:[Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;

    array-length v1, v0

    new-array v2, v1, [Lcom/pinguo/Camera360Lib/async/AsyncRequest$Status;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
