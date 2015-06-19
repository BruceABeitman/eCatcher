.class  Lcom/pinguo/album/data/utils/BitmapDecodeUtils$DecodeCanceller;
.super Ljava/lang/Object;
.source "BitmapDecodeUtils.java"
.implements Lcom/pinguo/album/AlbumThreadPool$CancelListener;
.field  mOptions:Landroid/graphics/BitmapFactory$Options;
.method public constructor <init>(Landroid/graphics/BitmapFactory$Options;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/album/data/utils/BitmapDecodeUtils$DecodeCanceller;->mOptions:Landroid/graphics/BitmapFactory$Options;
return-void
.end method
.method public onCancel()V
.registers 2
iget-object v0, p0, Lcom/pinguo/album/data/utils/BitmapDecodeUtils$DecodeCanceller;->mOptions:Landroid/graphics/BitmapFactory$Options;
invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V
return-void
.end method