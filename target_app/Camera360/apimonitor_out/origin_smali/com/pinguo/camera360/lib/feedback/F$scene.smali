.class public final enum Lcom/pinguo/camera360/lib/feedback/F$scene;
.super Ljava/lang/Enum;
.source "F.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/lib/feedback/F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "scene"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pinguo/camera360/lib/feedback/F$scene;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/camera360/lib/feedback/F$scene;

.field public static final enum scene_template:Lcom/pinguo/camera360/lib/feedback/F$scene;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Lcom/pinguo/camera360/lib/feedback/F$scene;

    const-string/jumbo v1, "scene_template"

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/F$scene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/lib/feedback/F$scene;->scene_template:Lcom/pinguo/camera360/lib/feedback/F$scene;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/pinguo/camera360/lib/feedback/F$scene;

    sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$scene;->scene_template:Lcom/pinguo/camera360/lib/feedback/F$scene;

    aput-object v1, v0, v2

    sput-object v0, Lcom/pinguo/camera360/lib/feedback/F$scene;->ENUM$VALUES:[Lcom/pinguo/camera360/lib/feedback/F$scene;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/camera360/lib/feedback/F$scene;
    .registers 2

    const-class v0, Lcom/pinguo/camera360/lib/feedback/F$scene;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/lib/feedback/F$scene;

    return-object v0
.end method

.method public static values()[Lcom/pinguo/camera360/lib/feedback/F$scene;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$scene;->ENUM$VALUES:[Lcom/pinguo/camera360/lib/feedback/F$scene;

    array-length v1, v0

    new-array v2, v1, [Lcom/pinguo/camera360/lib/feedback/F$scene;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
