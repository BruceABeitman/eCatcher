.class public Lcom/pinguo/camera360/camera/event/UpdateThumbImageEvent;
.super Lcom/pinguo/lib/eventbus/BaseEvent;
.source "UpdateThumbImageEvent.java"


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/lib/eventbus/BaseEvent;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/camera/event/UpdateThumbImageEvent;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/event/UpdateThumbImageEvent;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
