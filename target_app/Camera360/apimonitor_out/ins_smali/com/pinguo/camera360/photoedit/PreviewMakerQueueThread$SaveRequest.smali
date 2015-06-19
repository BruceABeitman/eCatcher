.class  Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;
.super Ljava/lang/Object;
.source "PreviewMakerQueueThread.java"
.field private callback:Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;
.field private data:[B
.field private info:Lcom/pinguo/camera360/photoedit/PictureInfo;
.field private needOrgPreview:Z
.field private reuseData:Z
.method private constructor <init>()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->info:Lcom/pinguo/camera360/photoedit/PictureInfo;
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->data:[B
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->callback:Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;
iput-boolean v1, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->reuseData:Z
iput-boolean v1, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->needOrgPreview:Z
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;)V
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;-><init>()V
return-void
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;Lcom/pinguo/camera360/photoedit/PictureInfo;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->info:Lcom/pinguo/camera360/photoedit/PictureInfo;
return-void
.end method
.method static synthetic access$10(Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->needOrgPreview:Z
return v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;[B)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->data:[B
return-void
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->callback:Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;
return-void
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->reuseData:Z
return-void
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->needOrgPreview:Z
return-void
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;)Lcom/pinguo/camera360/photoedit/PictureInfo;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->info:Lcom/pinguo/camera360/photoedit/PictureInfo;
return-object v0
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;)Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->callback:Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;
return-object v0
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;)[B
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->data:[B
return-object v0
.end method
.method static synthetic access$9(Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->reuseData:Z
return v0
.end method