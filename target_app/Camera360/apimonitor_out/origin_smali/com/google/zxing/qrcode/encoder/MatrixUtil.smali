.class final Lcom/google/zxing/qrcode/encoder/MatrixUtil;
.super Ljava/lang/Object;
.source "MatrixUtil.java"


# static fields
.field private static final POSITION_ADJUSTMENT_PATTERN:[[I = null

.field private static final POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I = null

.field private static final POSITION_DETECTION_PATTERN:[[I = null

.field private static final TYPE_INFO_COORDINATES:[[I = null

.field private static final TYPE_INFO_MASK_PATTERN:I = 0x5412

.field private static final TYPE_INFO_POLY:I = 0x537

.field private static final VERSION_INFO_POLY:I = 0x1f25


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x7

    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_248

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_25a

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_26c

    aput-object v1, v0, v4

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_27e

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_290

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2a2

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_2b4

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    new-array v0, v5, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_2c6

    aput-object v1, v0, v6

    new-array v1, v5, [I

    fill-array-data v1, :array_2d4

    aput-object v1, v0, v7

    new-array v1, v5, [I

    fill-array-data v1, :array_2e2

    aput-object v1, v0, v4

    const/4 v1, 0x3

    new-array v2, v5, [I

    fill-array-data v2, :array_2f0

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v5, [I

    fill-array-data v2, :array_2fe

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    const/16 v0, 0x28

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_30c

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_31e

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_330

    aput-object v1, v0, v4

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_342

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_354

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_366

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_378

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_38a

    aput-object v1, v0, v3

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_39c

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_3ae

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_3c0

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_3d2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_3e4

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_3f6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_408

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_41a

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_42c

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_43e

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_450

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_462

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_474

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_486

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_498

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_4aa

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_4bc

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_4ce

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [I

    fill-array-data v2, :array_4e0

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [I

    fill-array-data v2, :array_4f2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [I

    fill-array-data v2, :array_504

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [I

    fill-array-data v2, :array_516

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [I

    fill-array-data v2, :array_528

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [I

    fill-array-data v2, :array_53a

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [I

    fill-array-data v2, :array_54c

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [I

    fill-array-data v2, :array_55e

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [I

    fill-array-data v2, :array_570

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [I

    fill-array-data v2, :array_582

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [I

    fill-array-data v2, :array_594

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [I

    fill-array-data v2, :array_5a6

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [I

    fill-array-data v2, :array_5b8

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [I

    fill-array-data v2, :array_5ca

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    const/16 v0, 0xf

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_5dc

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_5e4

    aput-object v1, v0, v7

    new-array v1, v4, [I

    fill-array-data v1, :array_5ec

    aput-object v1, v0, v4

    const/4 v1, 0x3

    new-array v2, v4, [I

    fill-array-data v2, :array_5f4

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v4, [I

    fill-array-data v2, :array_5fc

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_604

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v2, v4, [I

    fill-array-data v2, :array_60c

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_614

    aput-object v1, v0, v3

    const/16 v1, 0x8

    new-array v2, v4, [I

    fill-array-data v2, :array_61c

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v4, [I

    fill-array-data v2, :array_624

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v4, [I

    fill-array-data v2, :array_62c

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v4, [I

    fill-array-data v2, :array_634

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v4, [I

    fill-array-data v2, :array_63c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v4, [I

    fill-array-data v2, :array_644

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v4, [I

    fill-array-data v2, :array_64c

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    return-void

    :array_248
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_25a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_26c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_27e
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_290
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_2a2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_2b4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_2c6
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_2d4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_2e2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_2f0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_2fe
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_30c
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_31e
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_330
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_342
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_354
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_366
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_378
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_38a
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_39c
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_3ae
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_3c0
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_3d2
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_3e4
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_3f6
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_408
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_41a
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x4at 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_42c
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_43e
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_450
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_462
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_474
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_486
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x4at 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_498
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_4aa
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_4bc
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_4ce
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_4e0
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_4f2
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x4at 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_504
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_516
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_528
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x86t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_53a
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x8at 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_54c
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x8et 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_55e
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
        0x92t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_570
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
    .end array-data

    :array_582
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x9at 0x0t 0x0t 0x0t
    .end array-data

    :array_594
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0x84t 0x0t 0x0t 0x0t
        0x9et 0x0t 0x0t 0x0t
    .end array-data

    :array_5a6
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x88t 0x0t 0x0t 0x0t
        0xa2t 0x0t 0x0t 0x0t
    .end array-data

    :array_5b8
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x8at 0x0t 0x0t 0x0t
        0xa6t 0x0t 0x0t 0x0t
    .end array-data

    :array_5ca
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x8et 0x0t 0x0t 0x0t
        0xaat 0x0t 0x0t 0x0t
    .end array-data

    :array_5dc
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_5e4
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_5ec
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_5f4
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_5fc
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_604
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_60c
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    :array_614
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_61c
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_624
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_62c
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_634
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_63c
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_644
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_64c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    invoke-static {p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->clearMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {p2, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedBasicPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {p1, p3, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedTypeInfo(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {p2, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->maybeEmbedVersionInfo(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {p0, p3, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedDataBits(Lcom/google/zxing/common/BitArray;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    return-void
.end method

.method static calculateBCHCode(II)I
    .registers 4

    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    shl-int/2addr p0, v1

    :goto_7
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    move-result v1

    if-lt v1, v0, :cond_16

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    move-result v1

    sub-int/2addr v1, v0

    shl-int v1, p1, v1

    xor-int/2addr p0, v1

    goto :goto_7

    :cond_16
    return p0
.end method

.method static clearMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->clear(B)V

    return-void
.end method

.method static embedBasicPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPatternsAndSeparators(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedDarkDotAtLeftBottomCorner(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {p0, p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->maybeEmbedPositionAdjustmentPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedTimingPatterns(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    return-void
.end method

.method private static embedDarkDotAtLeftBottomCorner(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p0, v2, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    :cond_14
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    return-void
.end method

.method static embedDataBits(Lcom/google/zxing/common/BitArray;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    :goto_e
    if-lez v4, :cond_57

    const/4 v7, 0x6

    if-ne v4, v7, :cond_15

    add-int/lit8 v4, v4, -0x1

    :cond_15
    :goto_15
    if-ltz v6, :cond_52

    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_52

    const/4 v3, 0x0

    :goto_1e
    const/4 v7, 0x2

    if-ge v3, v7, :cond_50

    sub-int v5, v4, v3

    invoke-virtual {p2, v5, v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v7

    invoke-static {v7}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v7

    if-nez v7, :cond_30

    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_30
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    if-ge v1, v7, :cond_4c

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    add-int/lit8 v1, v1, 0x1

    :goto_3c
    const/4 v7, -0x1

    if-eq p1, v7, :cond_48

    invoke-static {p1, v5, v6}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->getDataMaskBit(III)Z

    move-result v7

    if-eqz v7, :cond_48

    if-nez v0, :cond_4e

    const/4 v0, 0x1

    :cond_48
    :goto_48
    invoke-virtual {p2, v5, v6, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    goto :goto_2d

    :cond_4c
    const/4 v0, 0x0

    goto :goto_3c

    :cond_4e
    const/4 v0, 0x0

    goto :goto_48

    :cond_50
    add-int/2addr v6, v2

    goto :goto_15

    :cond_52
    neg-int v2, v2

    add-int/2addr v6, v2

    add-int/lit8 v4, v4, -0x2

    goto :goto_e

    :cond_57
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    if-eq v1, v7, :cond_85

    new-instance v7, Lcom/google/zxing/WriterException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Not all bits consumed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_85
    return-void
.end method

.method private static embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x8

    if-ge v0, v1, :cond_20

    add-int v1, p0, v0

    invoke-virtual {p2, v1, p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v1

    invoke-static {v1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v1

    if-nez v1, :cond_17

    new-instance v1, Lcom/google/zxing/WriterException;

    invoke-direct {v1}, Lcom/google/zxing/WriterException;-><init>()V

    throw v1

    :cond_17
    add-int v1, p0, v0

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_20
    return-void
.end method

.method private static embedPositionAdjustmentPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 9

    const/4 v5, 0x5

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v5, :cond_1a

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v5, :cond_17

    add-int v2, p0, v0

    add-int v3, p1, v1

    sget-object v4, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    aget-object v4, v4, v1

    aget v4, v4, v0

    invoke-virtual {p2, v2, v3, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1a
    return-void
.end method

.method private static embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 9

    const/4 v5, 0x7

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v5, :cond_1a

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v5, :cond_17

    add-int v2, p0, v0

    add-int v3, p1, v1

    sget-object v4, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    aget-object v4, v4, v1

    aget v4, v4, v0

    invoke-virtual {p2, v2, v3, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1a
    return-void
.end method

.method private static embedPositionDetectionPatternsAndSeparators(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v5, 0x7

    const/4 v4, 0x0

    sget-object v3, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    aget-object v3, v3, v4

    array-length v1, v3

    invoke-static {v4, v4, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v3, v4, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v4, v3, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    const/16 v0, 0x8

    invoke-static {v4, v5, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v3, v5, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v4, v3, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    const/4 v2, 0x7

    invoke-static {v2, v4, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, v4, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v2, v3, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    return-void
.end method

.method private static embedTimingPatterns(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 5

    const/4 v3, 0x6

    const/16 v1, 0x8

    :goto_3
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    if-ge v1, v2, :cond_2c

    add-int/lit8 v2, v1, 0x1

    rem-int/lit8 v0, v2, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {p0, v1, v3, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    :cond_1c
    invoke-virtual {p0, v3, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {p0, v3, v1, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2c
    return-void
.end method

.method static embedTypeInfo(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    new-instance v2, Lcom/google/zxing/common/BitArray;

    invoke-direct {v2}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-static {p0, p1, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->makeTypeInfoBits(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/common/BitArray;)V

    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    if-ge v1, v7, :cond_4e

    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v1

    invoke-virtual {v2, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    sget-object v7, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    aget-object v7, v7, v1

    const/4 v8, 0x0

    aget v3, v7, v8

    sget-object v7, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    aget-object v7, v7, v1

    const/4 v8, 0x1

    aget v5, v7, v8

    invoke-virtual {p2, v3, v5, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    const/16 v7, 0x8

    if-ge v1, v7, :cond_3e

    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v7

    sub-int/2addr v7, v1

    add-int/lit8 v4, v7, -0x1

    const/16 v6, 0x8

    invoke-virtual {p2, v4, v6, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_3e
    const/16 v4, 0x8

    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, -0x7

    add-int/lit8 v8, v1, -0x8

    add-int v6, v7, v8

    invoke-virtual {p2, v4, v6, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    goto :goto_3b

    :cond_4e
    return-void
.end method

.method private static embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1f

    add-int v1, p1, v0

    invoke-virtual {p2, p0, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v1

    invoke-static {v1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v1

    if-nez v1, :cond_16

    new-instance v1, Lcom/google/zxing/WriterException;

    invoke-direct {v1}, Lcom/google/zxing/WriterException;-><init>()V

    throw v1

    :cond_16
    add-int v1, p1, v0

    const/4 v2, 0x0

    invoke-virtual {p2, p0, v1, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    return-void
.end method

.method static findMSBSet(I)I
    .registers 2

    const/4 v0, 0x0

    :goto_1
    if-eqz p0, :cond_8

    ushr-int/lit8 p0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    return v0
.end method

.method private static isEmpty(I)Z
    .registers 2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method static makeTypeInfoBits(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/common/BitArray;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/16 v4, 0xf

    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/QRCode;->isValidMaskPattern(I)Z

    move-result v3

    if-nez v3, :cond_11

    new-instance v3, Lcom/google/zxing/WriterException;

    const-string/jumbo v4, "Invalid mask pattern"

    invoke-direct {v3, v4}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_11
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->getBits()I

    move-result v3

    shl-int/lit8 v3, v3, 0x3

    or-int v2, v3, p1

    const/4 v3, 0x5

    invoke-virtual {p2, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/16 v3, 0x537

    invoke-static {v2, v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->calculateBCHCode(II)I

    move-result v0

    const/16 v3, 0xa

    invoke-virtual {p2, v0, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    new-instance v1, Lcom/google/zxing/common/BitArray;

    invoke-direct {v1}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/16 v3, 0x5412

    invoke-virtual {v1, v3, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    invoke-virtual {p2, v1}, Lcom/google/zxing/common/BitArray;->xor(Lcom/google/zxing/common/BitArray;)V

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    if-eq v3, v4, :cond_59

    new-instance v3, Lcom/google/zxing/WriterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "should not happen but we got: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_59
    return-void
.end method

.method static makeVersionInfoBits(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/common/BitArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {p1, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v1

    const/16 v2, 0x1f25

    invoke-static {v1, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->calculateBCHCode(II)I

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_3d

    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "should not happen but we got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3d
    return-void
.end method

.method private static maybeEmbedPositionAdjustmentPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 12

    const/4 v9, -0x1

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_9

    :cond_8
    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    sget-object v7, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    aget-object v0, v7, v2

    sget-object v7, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    aget-object v7, v7, v2

    array-length v4, v7

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v4, :cond_8

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v4, :cond_3b

    aget v6, v0, v1

    aget v5, v0, v3

    if-eq v5, v9, :cond_26

    if-ne v6, v9, :cond_29

    :cond_26
    :goto_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_29
    invoke-virtual {p1, v5, v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v7

    invoke-static {v7}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v7

    if-eqz v7, :cond_26

    add-int/lit8 v7, v5, -0x2

    add-int/lit8 v8, v6, -0x2

    invoke-static {v7, v8, p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionAdjustmentPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    goto :goto_26

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_19
.end method

.method static maybeEmbedVersionInfo(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v5

    const/4 v6, 0x7

    if-ge v5, v6, :cond_8

    :cond_7
    return-void

    :cond_8
    new-instance v4, Lcom/google/zxing/common/BitArray;

    invoke-direct {v4}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-static {p0, v4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->makeVersionInfoBits(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/common/BitArray;)V

    const/16 v1, 0x11

    const/4 v2, 0x0

    :goto_13
    const/4 v5, 0x6

    if-ge v2, v5, :cond_7

    const/4 v3, 0x0

    :goto_17
    const/4 v5, 0x3

    if-ge v3, v5, :cond_37

    invoke-virtual {v4, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0xb

    add-int/2addr v5, v3

    invoke-virtual {p1, v2, v5, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0xb

    add-int/2addr v5, v3

    invoke-virtual {p1, v5, v2, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_13
.end method
