.class public Lcom/pinguo/camera360/camera/view/BigHeadView$DatouInfo;
.super Ljava/lang/Object;
.source "BigHeadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/view/BigHeadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatouInfo"
.end annotation


# static fields
.field public static final DEFAULT_DENSITY:F = 1.5f

.field public static final HEAD_CR:F = 109.0f

.field public static final HEAD_CX:F = 244.0f

.field public static final HEAD_CY:F = 284.0f

.field private static final HEAD_SCALE:I = 0xb9

.field private static PARAM:Ljava/lang/String; = null

.field public static final times:Ljava/lang/String; = "80"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static make(FFFII)Ljava/lang/String;
    .registers 6

    const-string/jumbo v0, "effect=avata,49,34,20,190,22,80;effect=enhance_class,0"

    return-object v0
.end method

.method public static makeParam(FFFII)Ljava/lang/String;
    .registers 6

    invoke-static {p0, p1, p2, p3, p4}, Lcom/pinguo/camera360/camera/view/BigHeadView$DatouInfo;->make(FFFII)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/camera/view/BigHeadView$DatouInfo;->PARAM:Ljava/lang/String;

    sget-object v0, Lcom/pinguo/camera360/camera/view/BigHeadView$DatouInfo;->PARAM:Ljava/lang/String;

    return-object v0
.end method
