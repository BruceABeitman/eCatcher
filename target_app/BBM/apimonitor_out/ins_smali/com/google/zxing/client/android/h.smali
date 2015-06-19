.class public final Lcom/google/zxing/client/android/h;
.super Landroid/os/Handler;
.source "DecodeHandler.java"
.field private static final a:Ljava/lang/String;
.field private final b:Lcom/google/zxing/client/android/CaptureActivity;
.field private final c:Lcom/google/zxing/h;
.field private d:Z
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/google/zxing/client/android/h;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/android/h;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/google/zxing/client/android/CaptureActivity;Ljava/util/Map;)V
.registers 4
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/zxing/client/android/h;->d:Z
new-instance v0, Lcom/google/zxing/h;
invoke-direct {v0}, Lcom/google/zxing/h;-><init>()V
iput-object v0, p0, Lcom/google/zxing/client/android/h;->c:Lcom/google/zxing/h;
iget-object v0, p0, Lcom/google/zxing/client/android/h;->c:Lcom/google/zxing/h;
invoke-virtual {v0, p2}, Lcom/google/zxing/h;->a(Ljava/util/Map;)V
iput-object p1, p0, Lcom/google/zxing/client/android/h;->b:Lcom/google/zxing/client/android/CaptureActivity;
return-void
.end method
.method private static a(Lcom/google/zxing/g;[I)Landroid/graphics/Bitmap;
.registers 11
iget v3, p0, Lcom/google/zxing/g;->a:I
iget v7, p0, Lcom/google/zxing/g;->b:I
const/4 v1, 0x0
:try_start_5
sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
:try_end_a
.catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_a} :catch_14
move-result-object v0
const/4 v2, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
move-object v1, p1
move v6, v3
:try_start_10
invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
:try_end_13
.catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_13} :catch_20
:goto_13
return-object v0
:catch_14
move-exception v0
move-object v8, v0
move-object v0, v1
move-object v1, v8
:goto_18
sget-object v2, Lcom/google/zxing/client/android/h;->a:Ljava/lang/String;
const-string v3, "Out of memory scanning barcode"
invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_13
:catch_20
move-exception v1
goto :goto_18
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 12
const/4 v2, 0x0
iget-boolean v0, p0, Lcom/google/zxing/client/android/h;->d:Z
if-nez v0, :cond_6
:goto_5
:cond_5
return-void
:cond_6
iget v0, p1, Landroid/os/Message;->what:I
sget v1, Lcom/google/zxing/client/android/w;->decode:I
if-ne v0, v1, :cond_c9
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, [B
check-cast v0, [B
iget v4, p1, Landroid/os/Message;->arg1:I
iget v5, p1, Landroid/os/Message;->arg2:I
if-eqz v0, :cond_5
array-length v1, v0
new-array v6, v1, [B
move v3, v2
:goto_1c
if-ge v3, v5, :cond_35
move v1, v2
:goto_1f
if-ge v1, v4, :cond_31
mul-int v7, v1, v5
add-int/2addr v7, v5
sub-int/2addr v7, v3
add-int/lit8 v7, v7, -0x1
mul-int v8, v3, v4
add-int/2addr v8, v1
aget-byte v8, v0, v8
aput-byte v8, v6, v7
add-int/lit8 v1, v1, 0x1
goto :goto_1f
:cond_31
add-int/lit8 v1, v3, 0x1
move v3, v1
goto :goto_1c
:cond_35
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
const/4 v0, 0x0
iget-object v3, p0, Lcom/google/zxing/client/android/h;->b:Lcom/google/zxing/client/android/CaptureActivity;
iget-object v3, v3, Lcom/google/zxing/client/android/CaptureActivity;->a:Lcom/google/zxing/client/android/a/e;
invoke-virtual {v3, v6, v5, v4}, Lcom/google/zxing/client/android/a/e;->a([BII)Lcom/google/zxing/j;
move-result-object v3
if-eqz v3, :cond_59
new-instance v4, Lcom/google/zxing/c;
new-instance v5, Lcom/google/zxing/b/j;
invoke-direct {v5, v3}, Lcom/google/zxing/b/j;-><init>(Lcom/google/zxing/g;)V
invoke-direct {v4, v5}, Lcom/google/zxing/c;-><init>(Lcom/google/zxing/b;)V
:try_start_4e
iget-object v5, p0, Lcom/google/zxing/client/android/h;->c:Lcom/google/zxing/h;
invoke-virtual {v5, v4}, Lcom/google/zxing/h;->a(Lcom/google/zxing/c;)Lcom/google/zxing/m;
:try_end_53
.catchall {:try_start_4e .. :try_end_53} :catchall_aa
.catch Lcom/google/zxing/l; {:try_start_4e .. :try_end_53} :catch_a3
move-result-object v0
iget-object v4, p0, Lcom/google/zxing/client/android/h;->c:Lcom/google/zxing/h;
invoke-virtual {v4}, Lcom/google/zxing/h;->a()V
:cond_59
:goto_59
iget-object v4, p0, Lcom/google/zxing/client/android/h;->b:Lcom/google/zxing/client/android/CaptureActivity;
iget-object v4, v4, Lcom/google/zxing/client/android/CaptureActivity;->b:Lcom/google/zxing/client/android/d;
if-eqz v0, :cond_bc
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
sget-object v7, Lcom/google/zxing/client/android/h;->a:Ljava/lang/String;
new-instance v8, Ljava/lang/StringBuilder;
const-string v9, "Found barcode in "
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sub-long v1, v5, v1
invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " ms"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
if-eqz v4, :cond_5
invoke-virtual {v3}, Lcom/google/zxing/j;->b()[I
move-result-object v1
invoke-static {v3, v1}, Lcom/google/zxing/client/android/h;->a(Lcom/google/zxing/g;[I)Landroid/graphics/Bitmap;
move-result-object v1
if-eqz v1, :cond_b1
sget v2, Lcom/google/zxing/client/android/w;->decode_succeeded:I
invoke-static {v4, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
new-instance v2, Landroid/os/Bundle;
invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
const-string v3, "barcode_bitmap"
invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
goto/16 :goto_5
:catch_a3
move-exception v4
iget-object v4, p0, Lcom/google/zxing/client/android/h;->c:Lcom/google/zxing/h;
invoke-virtual {v4}, Lcom/google/zxing/h;->a()V
goto :goto_59
:catchall_aa
move-exception v0
iget-object v1, p0, Lcom/google/zxing/client/android/h;->c:Lcom/google/zxing/h;
invoke-virtual {v1}, Lcom/google/zxing/h;->a()V
throw v0
:cond_b1
sget v0, Lcom/google/zxing/client/android/w;->decode_failed:I
invoke-static {v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
goto/16 :goto_5
:cond_bc
if-eqz v4, :cond_5
sget v0, Lcom/google/zxing/client/android/w;->decode_failed:I
invoke-static {v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
goto/16 :goto_5
:cond_c9
iget v0, p1, Landroid/os/Message;->what:I
sget v1, Lcom/google/zxing/client/android/w;->quit:I
if-ne v0, v1, :cond_5
iput-boolean v2, p0, Lcom/google/zxing/client/android/h;->d:Z
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Looper;->quit()V
goto/16 :goto_5
.end method