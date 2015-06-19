.class Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
.super Ljava/lang/Object;
.source "PGExifInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/lib/image/PGExifInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IDFEntry"
.end annotation


# instance fields
.field private dataFormat:I

.field private dataLen:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;",
            ">;"
        }
    .end annotation
.end field

.field private nComponent:I

.field private offsetValues:[B

.field private tagNum:I

.field private values:[B


# direct methods
.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->tagNum:I

    iput v0, p0, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataFormat:I

    iput v0, p0, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->nComponent:I

    iput v0, p0, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataLen:I

    iput-object v1, p0, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B

    iput-object v1, p0, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B

    iput-object v1, p0, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataFormat:I

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->nComponent:I

    return-void
.end method

.method static synthetic access$10(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataFormat:I

    return v0
.end method

.method static synthetic access$11(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->nComponent:I

    return v0
.end method

.method static synthetic access$12(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$13(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataLen:I

    return-void
.end method

.method static synthetic access$14(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataLen:I

    return v0
.end method

.method static synthetic access$2(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;[B)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B

    return-void
.end method

.method static synthetic access$3(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;[B)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B

    return-void
.end method

.method static synthetic access$4(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
    .registers 2

    iget-object v0, p0, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B

    return-object v0
.end method

.method static synthetic access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->tagNum:I

    return-void
.end method

.method static synthetic access$8(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
    .registers 2

    iget-object v0, p0, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B

    return-object v0
.end method

.method static synthetic access$9(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->tagNum:I

    return v0
.end method
