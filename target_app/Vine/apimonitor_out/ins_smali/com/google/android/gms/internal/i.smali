.class public abstract Lcom/google/android/gms/internal/i;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/h;
.field protected jO:Landroid/view/MotionEvent;
.field protected jP:Landroid/util/DisplayMetrics;
.field protected jQ:Lcom/google/android/gms/internal/n;
.field private jR:Lcom/google/android/gms/internal/o;
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/n;Lcom/google/android/gms/internal/o;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/google/android/gms/internal/i;->jQ:Lcom/google/android/gms/internal/n;
iput-object p3, p0, Lcom/google/android/gms/internal/i;->jR:Lcom/google/android/gms/internal/o;
:try_start_7
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/i;->jP:Landroid/util/DisplayMetrics;
:try_end_11
.catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_11} :catch_12
:goto_11
return-void
:catch_12
move-exception v0
new-instance v0, Landroid/util/DisplayMetrics;
invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/i;->jP:Landroid/util/DisplayMetrics;
iget-object v0, p0, Lcom/google/android/gms/internal/i;->jP:Landroid/util/DisplayMetrics;
const/high16 v1, 0x3f80
iput v1, v0, Landroid/util/DisplayMetrics;->density:F
goto :goto_11
.end method
.method private a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
.registers 7
const/4 v2, 0x7
:try_start_1
monitor-enter p0
:try_end_2
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_2} :catch_1f
.catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_2} :catch_2a
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_2} :catch_30
:try_start_2
invoke-direct {p0}, Lcom/google/android/gms/internal/i;->t()V
if-eqz p3, :cond_18
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/i;->c(Landroid/content/Context;)V
:goto_a
invoke-direct {p0}, Lcom/google/android/gms/internal/i;->u()[B
move-result-object v0
monitor-exit p0
:try_end_f
.catchall {:try_start_2 .. :try_end_f} :catchall_1c
:try_start_f
array-length v1, v0
if-nez v1, :cond_25
const/4 v0, 0x5
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
:try_end_16
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_16} :catch_1f
.catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_16} :catch_2a
.catch Ljava/io/IOException; {:try_start_f .. :try_end_16} :catch_30
move-result-object v0
:goto_17
return-object v0
:cond_18
:try_start_18
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/i;->b(Landroid/content/Context;)V
goto :goto_a
:catchall_1c
move-exception v0
monitor-exit p0
:try_end_1e
.catchall {:try_start_18 .. :try_end_1e} :catchall_1c
:try_start_1e
throw v0
:catch_1f
:try_end_1f
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_1e .. :try_end_1f} :catch_1f
.catch Ljava/io/UnsupportedEncodingException; {:try_start_1e .. :try_end_1f} :catch_2a
.catch Ljava/io/IOException; {:try_start_1e .. :try_end_1f} :catch_30
move-exception v0
invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
goto :goto_17
:cond_25
:try_start_25
invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/i;->a([BLjava/lang/String;)Ljava/lang/String;
:try_end_28
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_25 .. :try_end_28} :catch_1f
.catch Ljava/io/UnsupportedEncodingException; {:try_start_25 .. :try_end_28} :catch_2a
.catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_30
move-result-object v0
goto :goto_17
:catch_2a
move-exception v0
invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
goto :goto_17
:catch_30
move-exception v0
const/4 v0, 0x3
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
goto :goto_17
.end method
.method private t()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/i;->jR:Lcom/google/android/gms/internal/o;
invoke-interface {v0}, Lcom/google/android/gms/internal/o;->reset()V
return-void
.end method
.method private u()[B
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/i;->jR:Lcom/google/android/gms/internal/o;
invoke-interface {v0}, Lcom/google/android/gms/internal/o;->z()[B
move-result-object v0
return-object v0
.end method
.method public a(Landroid/content/Context;)Ljava/lang/String;
.registers 4
const/4 v0, 0x0
const/4 v1, 0x0
invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/i;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.registers 4
const/4 v0, 0x1
invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/i;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method  a([BLjava/lang/String;)Ljava/lang/String;
.registers 9
const/16 v5, 0x100
const/16 v4, 0xf0
const/16 v3, 0xef
array-length v0, p1
if-le v0, v3, :cond_17
invoke-direct {p0}, Lcom/google/android/gms/internal/i;->t()V
const/16 v0, 0x14
const-wide/16 v1, 0x1
invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/i;->a(IJ)V
invoke-direct {p0}, Lcom/google/android/gms/internal/i;->u()[B
move-result-object p1
:cond_17
array-length v0, p1
if-ge v0, v3, :cond_77
array-length v0, p1
rsub-int v0, v0, 0xef
new-array v0, v0, [B
new-instance v1, Ljava/security/SecureRandom;
invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V
invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V
invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
move-result-object v1
array-length v2, p1
int-to-byte v2, v2
invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B
move-result-object v0
:goto_3d
const-string v1, "MD5"
invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V
invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
move-result-object v1
invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B
move-result-object v0
new-array v1, v5, [B
new-instance v2, Lcom/google/android/gms/internal/f;
invoke-direct {v2}, Lcom/google/android/gms/internal/f;-><init>()V
invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/f;->a([B[B)V
if-eqz p2, :cond_6f
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_6f
invoke-virtual {p0, p2, v1}, Lcom/google/android/gms/internal/i;->a(Ljava/lang/String;[B)V
:cond_6f
iget-object v0, p0, Lcom/google/android/gms/internal/i;->jQ:Lcom/google/android/gms/internal/n;
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/n;->a([BZ)Ljava/lang/String;
move-result-object v0
return-object v0
:cond_77
invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
move-result-object v0
array-length v1, p1
int-to-byte v1, v1
invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B
move-result-object v0
goto :goto_3d
.end method
.method public a(III)V
.registers 19
iget-object v1, p0, Lcom/google/android/gms/internal/i;->jO:Landroid/view/MotionEvent;
if-eqz v1, :cond_9
iget-object v1, p0, Lcom/google/android/gms/internal/i;->jO:Landroid/view/MotionEvent;
invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V
:cond_9
const-wide/16 v1, 0x0
move/from16 v0, p3
int-to-long v3, v0
const/4 v5, 0x1
move/from16 v0, p1
int-to-float v6, v0
iget-object v7, p0, Lcom/google/android/gms/internal/i;->jP:Landroid/util/DisplayMetrics;
iget v7, v7, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v6, v7
move/from16 v0, p2
int-to-float v7, v0
iget-object v8, p0, Lcom/google/android/gms/internal/i;->jP:Landroid/util/DisplayMetrics;
iget v8, v8, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v7, v8
const/4 v8, 0x0
const/4 v9, 0x0
const/4 v10, 0x0
const/4 v11, 0x0
const/4 v12, 0x0
const/4 v13, 0x0
const/4 v14, 0x0
invoke-static/range {v1 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;
move-result-object v1
iput-object v1, p0, Lcom/google/android/gms/internal/i;->jO:Landroid/view/MotionEvent;
return-void
.end method
.method protected a(IJ)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/i;->jR:Lcom/google/android/gms/internal/o;
invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/o;->b(IJ)V
return-void
.end method
.method protected a(ILjava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/i;->jR:Lcom/google/android/gms/internal/o;
invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/o;->b(ILjava/lang/String;)V
return-void
.end method
.method public a(Landroid/view/MotionEvent;)V
.registers 4
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_16
iget-object v0, p0, Lcom/google/android/gms/internal/i;->jO:Landroid/view/MotionEvent;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/google/android/gms/internal/i;->jO:Landroid/view/MotionEvent;
invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V
:cond_10
invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/i;->jO:Landroid/view/MotionEvent;
:cond_16
return-void
.end method
.method  a(Ljava/lang/String;[B)V
.registers 5
const/16 v1, 0x20
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-le v0, v1, :cond_d
const/4 v0, 0x0
invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object p1
:cond_d
const-string v0, "UTF-8"
invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
new-instance v1, Lcom/google/android/gms/internal/ly;
invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ly;-><init>([B)V
invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ly;->o([B)V
return-void
.end method
.method protected abstract b(Landroid/content/Context;)V
.end method
.method protected abstract c(Landroid/content/Context;)V
.end method