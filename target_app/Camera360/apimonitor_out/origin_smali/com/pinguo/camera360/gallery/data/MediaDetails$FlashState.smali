.class public Lcom/pinguo/camera360/gallery/data/MediaDetails$FlashState;
.super Ljava/lang/Object;
.source "MediaDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/data/MediaDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlashState"
.end annotation


# static fields
.field private static FLASH_FIRED_MASK:I

.field private static FLASH_FUNCTION_MASK:I

.field private static FLASH_MODE_MASK:I

.field private static FLASH_RED_EYE_MASK:I

.field private static FLASH_RETURN_MASK:I


# instance fields
.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput v0, Lcom/pinguo/camera360/gallery/data/MediaDetails$FlashState;->FLASH_FIRED_MASK:I

    const/4 v0, 0x6

    sput v0, Lcom/pinguo/camera360/gallery/data/MediaDetails$FlashState;->FLASH_RETURN_MASK:I

    const/16 v0, 0x18

    sput v0, Lcom/pinguo/camera360/gallery/data/MediaDetails$FlashState;->FLASH_MODE_MASK:I

    const/16 v0, 0x20

    sput v0, Lcom/pinguo/camera360/gallery/data/MediaDetails$FlashState;->FLASH_FUNCTION_MASK:I

    const/16 v0, 0x40

    sput v0, Lcom/pinguo/camera360/gallery/data/MediaDetails$FlashState;->FLASH_RED_EYE_MASK:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/pinguo/camera360/gallery/data/MediaDetails$FlashState;->mState:I

    return-void
.end method


# virtual methods
.method public isFlashFired()Z
    .registers 3

    iget v0, p0, Lcom/pinguo/camera360/gallery/data/MediaDetails$FlashState;->mState:I

    sget v1, Lcom/pinguo/camera360/gallery/data/MediaDetails$FlashState;->FLASH_FIRED_MASK:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
