.class public Lcom/pinguo/camera360/camera/adapter/FillInColorAdapter;
.super Ljava/lang/Object;
.source "FillInColorAdapter.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final COLOR_GREEN:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final COLOR_PRINK:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final COLOR_PURPLE:I = 0x0

.field public static final POSITION_DISABLE:I = 0x3

.field public static final POSITION_GREEN:I = 0x1

.field public static final POSITION_PRINK:I = 0x0

.field public static final POSITION_PURPLE:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v3, 0xb3

    const/16 v2, 0xff

    const/16 v0, 0xda

    const/16 v1, 0xa5

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/pinguo/camera360/camera/adapter/FillInColorAdapter;->COLOR_PURPLE:I

    invoke-static {v2, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/pinguo/camera360/camera/adapter/FillInColorAdapter;->COLOR_PRINK:I

    const/16 v0, 0xa6

    const/16 v1, 0xa1

    invoke-static {v0, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/pinguo/camera360/camera/adapter/FillInColorAdapter;->COLOR_GREEN:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static nextPosition(I)I
    .registers 2

    add-int/lit8 p0, p0, 0x1

    const/4 v0, 0x3

    if-le p0, v0, :cond_6

    const/4 p0, 0x0

    :cond_6
    return p0
.end method

.method public static posToColor(I)I
    .registers 2

    packed-switch p0, :pswitch_data_10

    sget v0, Lcom/pinguo/camera360/camera/adapter/FillInColorAdapter;->COLOR_GREEN:I

    :goto_5
    return v0

    :pswitch_6
    sget v0, Lcom/pinguo/camera360/camera/adapter/FillInColorAdapter;->COLOR_PRINK:I

    goto :goto_5

    :pswitch_9
    sget v0, Lcom/pinguo/camera360/camera/adapter/FillInColorAdapter;->COLOR_GREEN:I

    goto :goto_5

    :pswitch_c
    sget v0, Lcom/pinguo/camera360/camera/adapter/FillInColorAdapter;->COLOR_PURPLE:I

    goto :goto_5

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method
