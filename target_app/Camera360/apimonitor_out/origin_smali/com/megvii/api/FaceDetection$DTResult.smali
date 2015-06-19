.class public final Lcom/megvii/api/FaceDetection$DTResult;
.super Ljava/lang/Object;
.source "FaceDetection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/megvii/api/FaceDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DTResult"
.end annotation


# instance fields
.field dtResult:I


# direct methods
.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/megvii/api/FaceDetection$DTResult;->dtResult:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/megvii/api/FaceDetection$DTResult;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/megvii/api/FaceDetection$DTResult;-><init>(I)V

    return-void
.end method
