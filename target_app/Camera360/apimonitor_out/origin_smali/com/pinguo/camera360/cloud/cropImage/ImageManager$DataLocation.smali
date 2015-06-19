.class public final enum Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;
.super Ljava/lang/Enum;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/cloud/cropImage/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALL:Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;

.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;

.field public static final enum EXTERNAL:Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;

.field public static final enum INTERNAL:Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;

.field public static final enum NONE:Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;->NONE:Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;

    new-instance v0, Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;

    const-string/jumbo v1, "INTERNAL"

    invoke-direct {v0, v1, v3}, Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;->INTERNAL:Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;

    new-instance v0, Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;

    const-string/jumbo v1, "EXTERNAL"

    invoke-direct {v0, v1, v4}, Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;->EXTERNAL:Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;

    new-instance v0, Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;

    const-string/jumbo v1, "ALL"

    invoke-direct {v0, v1, v5}, Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;->ALL:Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;

    sget-object v1, Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;->NONE:Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;->INTERNAL:Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;->EXTERNAL:Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;->ALL:Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;->ENUM$VALUES:[Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;
    .registers 2

    const-class v0, Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;

    return-object v0
.end method

.method public static values()[Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;->ENUM$VALUES:[Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;

    array-length v1, v0

    new-array v2, v1, [Lcom/pinguo/camera360/cloud/cropImage/ImageManager$DataLocation;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
