.class  Lcom/pinguo/camera360/save/ImageSaver$SaveRequest;
.super Ljava/lang/Object;
.source "ImageSaver.java"
.field  data:[B
.field  pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
.field  saveStrategy:Lcom/pinguo/camera360/save/IImageSaveStrategy;
.field final synthetic this$0:Lcom/pinguo/camera360/save/ImageSaver;
.method private constructor <init>(Lcom/pinguo/camera360/save/ImageSaver;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/save/ImageSaver$SaveRequest;->this$0:Lcom/pinguo/camera360/save/ImageSaver;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/save/ImageSaver;Lcom/pinguo/camera360/save/ImageSaver$SaveRequest;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/save/ImageSaver$SaveRequest;-><init>(Lcom/pinguo/camera360/save/ImageSaver;)V
return-void
.end method