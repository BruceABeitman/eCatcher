.class public final Lqr/recognize/decoding/DecodeThread;
.super Ljava/lang/Thread;
.source "DecodeThread.java"
.field public static final BARCODE_BITMAP:Ljava/lang/String; = "barcode_bitmap"
.field private handler:Landroid/os/Handler;
.field private final handlerInitLatch:Ljava/util/concurrent/CountDownLatch;
.field private final hints:Ljava/util/Hashtable;
.field private mQRCamera:Lcom/pinguo/camera360/camera/controller/QRCamera;
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/QRCamera;Ljava/util/Vector;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
iput-object p1, p0, Lqr/recognize/decoding/DecodeThread;->mQRCamera:Lcom/pinguo/camera360/camera/controller/QRCamera;
new-instance v0, Ljava/util/concurrent/CountDownLatch;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
iput-object v0, p0, Lqr/recognize/decoding/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;
new-instance v0, Ljava/util/Hashtable;
const/4 v1, 0x3
invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V
iput-object v0, p0, Lqr/recognize/decoding/DecodeThread;->hints:Ljava/util/Hashtable;
if-eqz p2, :cond_1d
invoke-virtual {p2}, Ljava/util/Vector;->isEmpty()Z
move-result v0
if-eqz v0, :cond_31
:cond_1d
new-instance p2, Ljava/util/Vector;
invoke-direct {p2}, Ljava/util/Vector;-><init>()V
sget-object v0, Lqr/recognize/decoding/DecodeFormatManager;->ONE_D_FORMATS:Ljava/util/Vector;
invoke-virtual {p2, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z
sget-object v0, Lqr/recognize/decoding/DecodeFormatManager;->QR_CODE_FORMATS:Ljava/util/Vector;
invoke-virtual {p2, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z
sget-object v0, Lqr/recognize/decoding/DecodeFormatManager;->DATA_MATRIX_FORMATS:Ljava/util/Vector;
invoke-virtual {p2, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z
:cond_31
iget-object v0, p0, Lqr/recognize/decoding/DecodeThread;->hints:Ljava/util/Hashtable;
sget-object v1, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;
invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
if-eqz p3, :cond_41
iget-object v0, p0, Lqr/recognize/decoding/DecodeThread;->hints:Ljava/util/Hashtable;
sget-object v1, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;
invoke-virtual {v0, v1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_41
iget-object v0, p0, Lqr/recognize/decoding/DecodeThread;->hints:Ljava/util/Hashtable;
sget-object v1, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;
invoke-virtual {v0, v1, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public getHandler()Landroid/os/Handler;
.registers 2
:try_start_0
iget-object v0, p0, Lqr/recognize/decoding/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
:goto_5
:try_end_5
.catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_8
iget-object v0, p0, Lqr/recognize/decoding/DecodeThread;->handler:Landroid/os/Handler;
return-object v0
:catch_8
move-exception v0
goto :goto_5
.end method
.method public run()V
.registers 4
invoke-static {}, Landroid/os/Looper;->prepare()V
new-instance v0, Lqr/recognize/decoding/DecodeHandler;
iget-object v1, p0, Lqr/recognize/decoding/DecodeThread;->mQRCamera:Lcom/pinguo/camera360/camera/controller/QRCamera;
iget-object v2, p0, Lqr/recognize/decoding/DecodeThread;->hints:Ljava/util/Hashtable;
invoke-direct {v0, v1, v2}, Lqr/recognize/decoding/DecodeHandler;-><init>(Lcom/pinguo/camera360/camera/controller/QRCamera;Ljava/util/Hashtable;)V
iput-object v0, p0, Lqr/recognize/decoding/DecodeThread;->handler:Landroid/os/Handler;
iget-object v0, p0, Lqr/recognize/decoding/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
invoke-static {}, Landroid/os/Looper;->loop()V
return-void
.end method