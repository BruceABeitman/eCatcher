.class Lcom/pinguo/camera360/gallery/data/DecodeUtils$DecodeCanceller;
.super Ljava/lang/Object;
.source "DecodeUtils.java"

# interfaces
.implements Lcom/pinguo/camera360/gallery/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/data/DecodeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecodeCanceller"
.end annotation


# instance fields
.field mOptions:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>(Landroid/graphics/BitmapFactory$Options;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/data/DecodeUtils$DecodeCanceller;->mOptions:Landroid/graphics/BitmapFactory$Options;

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/DecodeUtils$DecodeCanceller;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    return-void
.end method
