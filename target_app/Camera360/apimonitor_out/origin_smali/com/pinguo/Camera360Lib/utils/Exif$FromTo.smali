.class Lcom/pinguo/Camera360Lib/utils/Exif$FromTo;
.super Ljava/lang/Object;
.source "Exif.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/Camera360Lib/utils/Exif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FromTo"
.end annotation


# instance fields
.field private from:I

.field private length:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/Camera360Lib/utils/Exif$FromTo;)V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/Camera360Lib/utils/Exif$FromTo;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/Camera360Lib/utils/Exif$FromTo;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/Camera360Lib/utils/Exif$FromTo;->length:I

    return v0
.end method

.method static synthetic access$1(Lcom/pinguo/Camera360Lib/utils/Exif$FromTo;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/Camera360Lib/utils/Exif$FromTo;->from:I

    return v0
.end method

.method static synthetic access$3(Lcom/pinguo/Camera360Lib/utils/Exif$FromTo;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/Camera360Lib/utils/Exif$FromTo;->from:I

    return-void
.end method

.method static synthetic access$4(Lcom/pinguo/Camera360Lib/utils/Exif$FromTo;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/Camera360Lib/utils/Exif$FromTo;->length:I

    return-void
.end method
