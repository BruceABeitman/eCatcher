.class final Lqr/recognize/decoding/DecodeHandler;
.super Landroid/os/Handler;
.source "DecodeHandler.java"
.field private static final TAG:Ljava/lang/String;
.field private mQRCamera:Lcom/pinguo/camera360/camera/controller/QRCamera;
.field private final multiFormatReader:Lcom/google/zxing/MultiFormatReader;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lqr/recognize/decoding/DecodeHandler;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lqr/recognize/decoding/DecodeHandler;->TAG:Ljava/lang/String;
return-void
.end method
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/QRCamera;Ljava/util/Hashtable;)V
.registers 4
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
new-instance v0, Lcom/google/zxing/MultiFormatReader;
invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V
iput-object v0, p0, Lqr/recognize/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;
iget-object v0, p0, Lqr/recognize/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;
invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V
iput-object p1, p0, Lqr/recognize/decoding/DecodeHandler;->mQRCamera:Lcom/pinguo/camera360/camera/controller/QRCamera;
return-void
.end method
.method private decode([BII)V
.registers 24
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v15
const/4 v13, 0x0
move-object/from16 v0, p1
array-length v2, v0
new-array v3, v2, [B
const/16 v19, 0x0
:goto_f
move/from16 v0, v19
move/from16 v1, p3
if-lt v0, v1, :cond_dc
move/from16 v17, p2
move/from16 p2, p3
move/from16 p3, v17
move-object/from16 v0, p0
iget-object v2, v0, Lqr/recognize/decoding/DecodeHandler;->mQRCamera:Lcom/pinguo/camera360/camera/controller/QRCamera;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/controller/QRCamera;->getDisplayPreviewSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v9
invoke-static {}, Lqr/recognize/camera/QRManager;->get()Lqr/recognize/camera/QRManager;
move-result-object v2
invoke-virtual {v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v6
invoke-virtual {v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v7
move/from16 v4, p2
move/from16 v5, p3
invoke-virtual/range {v2 .. v7}, Lqr/recognize/camera/QRManager;->buildLuminanceSource([BIIII)Lqr/recognize/camera/PlanarYUVLuminanceSource;
move-result-object v14
new-instance v8, Lcom/google/zxing/BinaryBitmap;
new-instance v2, Lcom/google/zxing/common/HybridBinarizer;
invoke-direct {v2, v14}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V
invoke-direct {v8, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V
if-eqz v8, :cond_93
sget-object v2, Lqr/recognize/decoding/DecodeHandler;->TAG:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "bitmap="
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8}, Lcom/google/zxing/BinaryBitmap;->getWidth()I
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, "/"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v8}, Lcom/google/zxing/BinaryBitmap;->getHeight()I
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, "data.length = "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object/from16 v0, p1
array-length v5, v0
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, " width = "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move/from16 v0, p2
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, "height = "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move/from16 v0, p3
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_93
:try_start_93
move-object/from16 v0, p0
iget-object v2, v0, Lqr/recognize/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;
invoke-virtual {v2, v8}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
:try_end_9a
.catchall {:try_start_93 .. :try_end_9a} :catchall_104
.catch Lcom/google/zxing/ReaderException; {:try_start_93 .. :try_end_9a} :catch_fb
move-result-object v13
move-object/from16 v0, p0
iget-object v2, v0, Lqr/recognize/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;
invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V
:goto_a2
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v10
sget-object v2, Lqr/recognize/decoding/DecodeHandler;->TAG:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "Found barcode ("
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sub-long v5, v10, v15
invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, " ms):\n"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v2, v4}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v2, v0, Lqr/recognize/decoding/DecodeHandler;->mQRCamera:Lcom/pinguo/camera360/camera/controller/QRCamera;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/controller/QRCamera;->getCaptureActivityHandler()Lqr/recognize/decoding/CaptureActivityHandler;
move-result-object v2
const v4, 0x7f0a0032
invoke-static {v2, v4, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
move-result-object v12
invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V
goto/16 :goto_2
:cond_dc
const/16 v18, 0x0
:goto_de
move/from16 v0, v18
move/from16 v1, p2
if-lt v0, v1, :cond_e8
add-int/lit8 v19, v19, 0x1
goto/16 :goto_f
:cond_e8
mul-int v2, v18, p3
add-int v2, v2, p3
sub-int v2, v2, v19
add-int/lit8 v2, v2, -0x1
mul-int v4, v19, p2
add-int v4, v4, v18
aget-byte v4, p1, v4
aput-byte v4, v3, v2
add-int/lit8 v18, v18, 0x1
goto :goto_de
:catch_fb
move-exception v2
move-object/from16 v0, p0
iget-object v2, v0, Lqr/recognize/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;
invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V
goto :goto_a2
:catchall_104
move-exception v2
move-object/from16 v0, p0
iget-object v4, v0, Lqr/recognize/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;
invoke-virtual {v4}, Lcom/google/zxing/MultiFormatReader;->reset()V
throw v2
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 5
iget v0, p1, Landroid/os/Message;->what:I
sparse-switch v0, :sswitch_data_32
:goto_5
return-void
:sswitch_6
sget-object v0, Lqr/recognize/decoding/DecodeHandler;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "handleMessage message"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p1, Landroid/os/Message;->what:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, [B
iget v1, p1, Landroid/os/Message;->arg1:I
iget v2, p1, Landroid/os/Message;->arg2:I
invoke-direct {p0, v0, v1, v2}, Lqr/recognize/decoding/DecodeHandler;->decode([BII)V
goto :goto_5
:sswitch_29
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Looper;->quit()V
goto :goto_5
nop
:sswitch_data_32
.sparse-switch
0x7f0a002a -> :sswitch_6
0x7f0a0030 -> :sswitch_29
.end sparse-switch
.end method