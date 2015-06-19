.class  Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;
.super Ljava/lang/Object;
.source "CutoutComposeMethod.java"
.field public buffer:[I
.field public height:I
.field public path:Ljava/lang/String;
.field public width:I
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;)V
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;-><init>()V
return-void
.end method
.method  clear()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->path:Ljava/lang/String;
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->buffer:[I
return-void
.end method
.method  isEmpty()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->path:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->buffer:[I
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CutoutComposeMethod$PicInfo;->buffer:[I
array-length v0, v0
if-nez v0, :cond_13
:cond_11
const/4 v0, 0x1
:goto_12
return v0
:cond_13
const/4 v0, 0x0
goto :goto_12
.end method