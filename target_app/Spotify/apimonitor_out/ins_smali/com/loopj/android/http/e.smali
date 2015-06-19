.class public abstract Lcom/loopj/android/http/e;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/loopj/android/http/s;
.field private a:Ljava/lang/String;
.field private b:Landroid/os/Handler;
.field private c:Z
.field private d:Ljava/net/URI;
.field private e:[Lorg/apache/http/Header;
.field private f:Landroid/os/Looper;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/loopj/android/http/e;-><init>(B)V
return-void
.end method
.method private constructor <init>(B)V
.registers 6
const/4 v3, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "UTF-8"
iput-object v0, p0, Lcom/loopj/android/http/e;->a:Ljava/lang/String;
iput-object v3, p0, Lcom/loopj/android/http/e;->d:Ljava/net/URI;
iput-object v3, p0, Lcom/loopj/android/http/e;->e:[Lorg/apache/http/Header;
iput-object v3, p0, Lcom/loopj/android/http/e;->f:Landroid/os/Looper;
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v0
iput-object v0, p0, Lcom/loopj/android/http/e;->f:Landroid/os/Looper;
const/4 v0, 0x0
iget-object v1, p0, Lcom/loopj/android/http/e;->f:Landroid/os/Looper;
if-nez v1, :cond_21
const/4 v0, 0x1
const-string v1, "AsyncHttpResponseHandler"
const-string v2, "Current thread has not called Looper.prepare(). Forcing synchronous mode."
invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:cond_21
if-nez v0, :cond_33
iget-object v1, p0, Lcom/loopj/android/http/e;->b:Landroid/os/Handler;
if-nez v1, :cond_33
new-instance v1, Lcom/loopj/android/http/f;
iget-object v2, p0, Lcom/loopj/android/http/e;->f:Landroid/os/Looper;
invoke-direct {v1, p0, v2}, Lcom/loopj/android/http/f;-><init>(Lcom/loopj/android/http/e;Landroid/os/Looper;)V
iput-object v1, p0, Lcom/loopj/android/http/e;->b:Landroid/os/Handler;
:goto_30
:cond_30
iput-boolean v0, p0, Lcom/loopj/android/http/e;->c:Z
return-void
:cond_33
if-eqz v0, :cond_30
iget-object v1, p0, Lcom/loopj/android/http/e;->b:Landroid/os/Handler;
if-eqz v1, :cond_30
iput-object v3, p0, Lcom/loopj/android/http/e;->b:Landroid/os/Handler;
goto :goto_30
.end method
.method private a(ILjava/lang/Object;)Landroid/os/Message;
.registers 4
iget-object v0, p0, Lcom/loopj/android/http/e;->b:Landroid/os/Handler;
invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
return-object v0
.end method
.method private a(Lorg/apache/http/HttpEntity;)[B
.registers 12
const-wide/16 v8, 0x0
const/16 v0, 0x1000
const/4 v4, 0x0
const/4 v1, 0x0
if-eqz p1, :cond_75
invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v5
if-eqz v5, :cond_75
invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J
move-result-wide v2
const-wide/32 v6, 0x7fffffff
cmp-long v1, v2, v6
if-lez v1, :cond_21
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP entity too large to be buffered in memory"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_21
cmp-long v1, v2, v8
if-gtz v1, :cond_52
:goto_25
:try_start_25
new-instance v6, Lorg/apache/http/util/ByteArrayBuffer;
invoke-direct {v6, v0}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V
:try_end_2a
.catch Ljava/lang/OutOfMemoryError; {:try_start_25 .. :try_end_2a} :catch_69
const/16 v0, 0x1000
:try_start_2c
new-array v7, v0, [B
move v0, v4
:goto_2f
invoke-virtual {v5, v7}, Ljava/io/InputStream;->read([B)I
move-result v1
const/4 v4, -0x1
if-eq v1, v4, :cond_56
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z
move-result v4
if-nez v4, :cond_56
add-int v4, v0, v1
const/4 v0, 0x0
invoke-virtual {v6, v7, v0, v1}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
cmp-long v0, v2, v8
if-gtz v0, :cond_54
const-wide/16 v0, 0x1
:goto_4c
long-to-int v0, v0
invoke-virtual {p0, v4, v0}, Lcom/loopj/android/http/e;->a(II)V
:try_end_50
.catchall {:try_start_2c .. :try_end_50} :catchall_61
move v0, v4
goto :goto_2f
:cond_52
long-to-int v0, v2
goto :goto_25
:cond_54
move-wide v0, v2
goto :goto_4c
:cond_56
:try_start_56
invoke-static {v5}, Lcom/loopj/android/http/b;->a(Ljava/io/InputStream;)V
invoke-static {p1}, Lcom/loopj/android/http/b;->a(Lorg/apache/http/HttpEntity;)V
invoke-virtual {v6}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B
move-result-object v0
:goto_60
return-object v0
:catchall_61
move-exception v0
invoke-static {v5}, Lcom/loopj/android/http/b;->a(Ljava/io/InputStream;)V
invoke-static {p1}, Lcom/loopj/android/http/b;->a(Lorg/apache/http/HttpEntity;)V
throw v0
:try_end_69
.catch Ljava/lang/OutOfMemoryError; {:try_start_56 .. :try_end_69} :catch_69
:catch_69
move-exception v0
invoke-static {}, Ljava/lang/System;->gc()V
new-instance v0, Ljava/io/IOException;
const-string v1, "File too large to fit into available memory"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_75
move-object v0, v1
goto :goto_60
.end method
.method private b(Landroid/os/Message;)V
.registers 4
iget-boolean v0, p0, Lcom/loopj/android/http/e;->c:Z
if-nez v0, :cond_8
iget-object v0, p0, Lcom/loopj/android/http/e;->b:Landroid/os/Handler;
if-nez v0, :cond_c
:cond_8
invoke-virtual {p0, p1}, Lcom/loopj/android/http/e;->a(Landroid/os/Message;)V
:cond_b
:goto_b
return-void
:cond_c
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z
move-result v0
if-nez v0, :cond_b
iget-object v0, p0, Lcom/loopj/android/http/e;->b:Landroid/os/Handler;
if-eqz v0, :cond_26
const/4 v0, 0x1
:goto_1b
const-string v1, "handler should not be null!"
invoke-static {v0, v1}, Lcom/loopj/android/http/a;->a(ZLjava/lang/String;)V
iget-object v0, p0, Lcom/loopj/android/http/e;->b:Landroid/os/Handler;
invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
goto :goto_b
:cond_26
const/4 v0, 0x0
goto :goto_1b
.end method
.method public final a(I)V
.registers 6
const/4 v0, 0x5
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-direct {p0, v0, v1}, Lcom/loopj/android/http/e;->a(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-direct {p0, v0}, Lcom/loopj/android/http/e;->b(Landroid/os/Message;)V
return-void
.end method
.method public final a(II)V
.registers 7
const/4 v0, 0x4
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-direct {p0, v0, v1}, Lcom/loopj/android/http/e;->a(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-direct {p0, v0}, Lcom/loopj/android/http/e;->b(Landroid/os/Message;)V
return-void
.end method
.method public abstract a(I[Lorg/apache/http/Header;[B)V
.end method
.method public abstract a(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
.end method
.method protected final a(Landroid/os/Message;)V
.registers 12
const/4 v7, 0x3
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v4, 0x0
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_f4
:pswitch_9
:goto_9
return-void
:pswitch_a
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, [Ljava/lang/Object;
if-eqz v0, :cond_27
array-length v1, v0
if-lt v1, v7, :cond_27
aget-object v1, v0, v4
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v2
aget-object v1, v0, v5
check-cast v1, [Lorg/apache/http/Header;
aget-object v0, v0, v6
check-cast v0, [B
invoke-virtual {p0, v2, v1, v0}, Lcom/loopj/android/http/e;->a(I[Lorg/apache/http/Header;[B)V
goto :goto_9
:cond_27
const-string v0, "AsyncHttpResponseHandler"
const-string v1, "SUCCESS_MESSAGE didn\'t got enough params"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_9
:pswitch_2f
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, [Ljava/lang/Object;
if-eqz v0, :cond_51
array-length v1, v0
const/4 v2, 0x4
if-lt v1, v2, :cond_51
aget-object v1, v0, v4
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v3
aget-object v1, v0, v5
check-cast v1, [Lorg/apache/http/Header;
aget-object v2, v0, v6
check-cast v2, [B
aget-object v0, v0, v7
check-cast v0, Ljava/lang/Throwable;
invoke-virtual {p0, v3, v1, v2, v0}, Lcom/loopj/android/http/e;->a(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
goto :goto_9
:cond_51
const-string v0, "AsyncHttpResponseHandler"
const-string v1, "FAILURE_MESSAGE didn\'t got enough params"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_9
:pswitch_59
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, [Ljava/lang/Object;
if-eqz v0, :cond_b2
array-length v1, v0
if-lt v1, v6, :cond_b2
const/4 v1, 0x0
:try_start_63
aget-object v1, v0, v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
const/4 v2, 0x1
aget-object v0, v0, v2
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
const-string v2, "AsyncHttpResponseHandler"
const-string v3, "Progress %d from %d (%2.0f%%)"
const/4 v4, 0x3
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
const/4 v5, 0x1
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
const/4 v5, 0x2
if-lez v0, :cond_af
int-to-double v6, v1
const-wide/high16 v8, 0x3ff0
mul-double/2addr v6, v8
int-to-double v0, v0
div-double v0, v6, v0
const-wide/high16 v6, 0x4059
mul-double/2addr v0, v6
:goto_96
invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v0
aput-object v0, v4, v5
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:try_end_a3
.catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_a3} :catch_a5
goto/16 :goto_9
:catch_a5
move-exception v0
const-string v1, "AsyncHttpResponseHandler"
const-string v2, "custom onProgress contains an error"
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto/16 :goto_9
:cond_af
const-wide/high16 v0, -0x4010
goto :goto_96
:cond_b2
const-string v0, "AsyncHttpResponseHandler"
const-string v1, "PROGRESS_MESSAGE didn\'t got enough params"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto/16 :goto_9
:pswitch_bb
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, [Ljava/lang/Object;
if-eqz v0, :cond_e1
array-length v1, v0
if-ne v1, v5, :cond_e1
aget-object v0, v0, v4
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
const-string v1, "AsyncHttpResponseHandler"
const-string v2, "Request retry no. %d"
new-array v3, v5, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
goto/16 :goto_9
:cond_e1
const-string v0, "AsyncHttpResponseHandler"
const-string v1, "RETRY_MESSAGE didn\'t get enough params"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto/16 :goto_9
:pswitch_ea
const-string v0, "AsyncHttpResponseHandler"
const-string v1, "Request got cancelled"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
goto/16 :goto_9
nop
:pswitch_data_f4
.packed-switch 0x0
:pswitch_a
:pswitch_2f
:pswitch_9
:pswitch_9
:pswitch_59
:pswitch_bb
:pswitch_ea
.end packed-switch
.end method
.method protected final a(Ljava/lang/Runnable;)V
.registers 4
iget-boolean v0, p0, Lcom/loopj/android/http/e;->c:Z
if-nez v0, :cond_8
iget-object v0, p0, Lcom/loopj/android/http/e;->b:Landroid/os/Handler;
if-nez v0, :cond_c
:cond_8
invoke-interface {p1}, Ljava/lang/Runnable;->run()V
:goto_b
return-void
:cond_c
iget-object v0, p0, Lcom/loopj/android/http/e;->b:Landroid/os/Handler;
if-eqz v0, :cond_1c
const/4 v0, 0x1
:goto_11
const-string v1, "handler should not be null!"
invoke-static {v0, v1}, Lcom/loopj/android/http/a;->a(ZLjava/lang/String;)V
iget-object v0, p0, Lcom/loopj/android/http/e;->b:Landroid/os/Handler;
invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_b
:cond_1c
const/4 v0, 0x0
goto :goto_11
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/loopj/android/http/e;->a:Ljava/lang/String;
return-void
.end method
.method public final a(Ljava/net/URI;)V
.registers 2
iput-object p1, p0, Lcom/loopj/android/http/e;->d:Ljava/net/URI;
return-void
.end method
.method public final a(Lorg/apache/http/HttpResponse;)V
.registers 8
const/4 v4, 0x0
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z
move-result v0
if-nez v0, :cond_41
invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v0
invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v1
invoke-direct {p0, v1}, Lcom/loopj/android/http/e;->a(Lorg/apache/http/HttpEntity;)[B
move-result-object v1
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z
move-result v2
if-nez v2, :cond_41
invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v2
const/16 v3, 0x12c
if-lt v2, v3, :cond_42
invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v2
invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;
move-result-object v3
new-instance v4, Lorg/apache/http/client/HttpResponseException;
invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v5
invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;
move-result-object v0
invoke-direct {v4, v5, v0}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V
invoke-virtual {p0, v2, v3, v1, v4}, Lcom/loopj/android/http/e;->b(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
:goto_41
:cond_41
return-void
:cond_42
invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v0
invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;
move-result-object v2
const/4 v3, 0x3
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v3, v4
const/4 v0, 0x1
aput-object v2, v3, v0
const/4 v0, 0x2
aput-object v1, v3, v0
invoke-direct {p0, v4, v3}, Lcom/loopj/android/http/e;->a(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-direct {p0, v0}, Lcom/loopj/android/http/e;->b(Landroid/os/Message;)V
goto :goto_41
.end method
.method public final a([Lorg/apache/http/Header;)V
.registers 2
iput-object p1, p0, Lcom/loopj/android/http/e;->e:[Lorg/apache/http/Header;
return-void
.end method
.method public final a()Z
.registers 2
iget-boolean v0, p0, Lcom/loopj/android/http/e;->c:Z
return v0
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/loopj/android/http/e;->a:Ljava/lang/String;
if-nez v0, :cond_7
const-string v0, "UTF-8"
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/loopj/android/http/e;->a:Ljava/lang/String;
goto :goto_6
.end method
.method public final b(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
.registers 9
const/4 v3, 0x1
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
aput-object p2, v0, v3
const/4 v1, 0x2
aput-object p3, v0, v1
const/4 v1, 0x3
aput-object p4, v0, v1
invoke-direct {p0, v3, v0}, Lcom/loopj/android/http/e;->a(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-direct {p0, v0}, Lcom/loopj/android/http/e;->b(Landroid/os/Message;)V
return-void
.end method
.method public final c()V
.registers 3
const/4 v0, 0x2
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lcom/loopj/android/http/e;->a(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-direct {p0, v0}, Lcom/loopj/android/http/e;->b(Landroid/os/Message;)V
return-void
.end method
.method public final d()V
.registers 3
const/4 v0, 0x3
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lcom/loopj/android/http/e;->a(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-direct {p0, v0}, Lcom/loopj/android/http/e;->b(Landroid/os/Message;)V
return-void
.end method
.method public final e()V
.registers 3
const/4 v0, 0x6
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lcom/loopj/android/http/e;->a(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-direct {p0, v0}, Lcom/loopj/android/http/e;->b(Landroid/os/Message;)V
return-void
.end method