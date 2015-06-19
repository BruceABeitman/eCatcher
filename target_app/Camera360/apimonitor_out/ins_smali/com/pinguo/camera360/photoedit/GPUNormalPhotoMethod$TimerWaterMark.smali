.class  Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;
.super Ljava/lang/Object;
.source "GPUNormalPhotoMethod.java"
.field private addTimerWaterMark:Z
.field private effectParam:Ljava/lang/String;
.field final synthetic this$0:Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;
.method private constructor <init>(Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;->this$0:Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;->addTimerWaterMark:Z
const-string/jumbo v0, "Effect=Normal"
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;->effectParam:Ljava/lang/String;
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;-><init>(Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod;)V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;->effectParam:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;->addTimerWaterMark:Z
return v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;->addTimerWaterMark:Z
return-void
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/photoedit/GPUNormalPhotoMethod$TimerWaterMark;->effectParam:Ljava/lang/String;
return-void
.end method