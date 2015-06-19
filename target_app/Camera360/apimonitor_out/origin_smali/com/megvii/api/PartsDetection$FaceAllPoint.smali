.class public Lcom/megvii/api/PartsDetection$FaceAllPoint;
.super Ljava/lang/Object;
.source "PartsDetection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/megvii/api/PartsDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceAllPoint"
.end annotation


# static fields
.field public static final LANDKMARKSIZE:I = 0x17


# instance fields
.field allPoints:[Landroid/graphics/PointF;


# direct methods
.method public constructor <init>([I)V
    .registers 7

    const/16 v4, 0x17

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v2, v4, [Landroid/graphics/PointF;

    iput-object v2, p0, Lcom/megvii/api/PartsDetection$FaceAllPoint;->allPoints:[Landroid/graphics/PointF;

    const/4 v0, 0x0

    :goto_a
    if-lt v0, v4, :cond_d

    return-void

    :cond_d
    new-instance v1, Landroid/graphics/PointF;

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, p1, v2

    int-to-float v2, v2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x2

    aget v3, p1, v3

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v2, p0, Lcom/megvii/api/PartsDetection$FaceAllPoint;->allPoints:[Landroid/graphics/PointF;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method


# virtual methods
.method public getAllPoints()[Landroid/graphics/PointF;
    .registers 2

    iget-object v0, p0, Lcom/megvii/api/PartsDetection$FaceAllPoint;->allPoints:[Landroid/graphics/PointF;

    return-object v0
.end method
