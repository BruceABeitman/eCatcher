.class  Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory$1;
.super Ljava/lang/Thread;
.source "GPUImageSdkFactory.java"
.field private final synthetic val$data:[B
.field private final synthetic val$path:Ljava/lang/String;
.method constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
.registers 4
iput-object p2, p0, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory$1;->val$data:[B
iput-object p3, p0, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory$1;->val$path:Ljava/lang/String;
invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory$1;->val$data:[B
iget-object v1, p0, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory$1;->val$path:Ljava/lang/String;
#calls: Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->saveShader([BLjava/lang/String;)V
invoke-static {v0, v1}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->access$0([BLjava/lang/String;)V
return-void
.end method