.class public Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer$Payload;
.super Ljava/lang/Object;
.source "SonyLiveviewSlicer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Payload"
.end annotation


# instance fields
.field public final jpegData:[B

.field public final paddingData:[B


# direct methods
.method private constructor <init>([B[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer$Payload;->jpegData:[B

    iput-object p2, p0, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer$Payload;->paddingData:[B

    return-void
.end method

.method synthetic constructor <init>([B[BLcom/pinguo/camera360/sony/model/SonyLiveviewSlicer$Payload;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/sony/model/SonyLiveviewSlicer$Payload;-><init>([B[B)V

    return-void
.end method
