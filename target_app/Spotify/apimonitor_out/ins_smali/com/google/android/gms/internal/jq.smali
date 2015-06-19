.class public abstract Lcom/google/android/gms/internal/jq;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/jb;
.field protected a:Landroid/view/MotionEvent;
.field protected b:Landroid/util/DisplayMetrics;
.field protected c:Lcom/google/android/gms/internal/li;
.field private d:Lcom/google/android/gms/internal/lj;
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/li;Lcom/google/android/gms/internal/lj;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/google/android/gms/internal/jq;->c:Lcom/google/android/gms/internal/li;
iput-object p3, p0, Lcom/google/android/gms/internal/jq;->d:Lcom/google/android/gms/internal/lj;
:try_start_7
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/jq;->b:Landroid/util/DisplayMetrics;
:try_end_11
.catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_11} :catch_12
:goto_11
return-void
:catch_12
move-exception v0
new-instance v0, Landroid/util/DisplayMetrics;
invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/jq;->b:Landroid/util/DisplayMetrics;
iget-object v0, p0, Lcom/google/android/gms/internal/jq;->b:Landroid/util/DisplayMetrics;
const/high16 v1, 0x3f80
iput v1, v0, Landroid/util/DisplayMetrics;->density:F
goto :goto_11
.end method
.method private a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
.registers 10
const/16 v3, 0xef
const/16 v5, 0x20
const/4 v4, 0x7
:try_start_5
monitor-enter p0
:try_start_6
:try_end_6
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_6} :catch_23
.catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_6} :catch_cd
.catch Ljava/io/IOException; {:try_start_5 .. :try_end_6} :catch_d4
invoke-direct {p0}, Lcom/google/android/gms/internal/jq;->a()V
if-eqz p3, :cond_1c
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jq;->c(Landroid/content/Context;)V
:goto_e
invoke-direct {p0}, Lcom/google/android/gms/internal/jq;->b()[B
move-result-object v0
monitor-exit p0
:try_start_13
:try_end_13
.catchall {:try_start_6 .. :try_end_13} :catchall_20
array-length v1, v0
if-nez v1, :cond_29
const/4 v0, 0x5
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
:try_end_1a
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_13 .. :try_end_1a} :catch_23
.catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_1a} :catch_cd
.catch Ljava/io/IOException; {:try_start_13 .. :try_end_1a} :catch_d4
move-result-object v0
:goto_1b
return-object v0
:try_start_1c
:cond_1c
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jq;->b(Landroid/content/Context;)V
:try_end_1f
.catchall {:try_start_1c .. :try_end_1f} :catchall_20
goto :goto_e
:catchall_20
move-exception v0
:try_start_21
monitor-exit p0
throw v0
:try_end_23
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_21 .. :try_end_23} :catch_23
.catch Ljava/io/UnsupportedEncodingException; {:try_start_21 .. :try_end_23} :catch_cd
.catch Ljava/io/IOException; {:try_start_21 .. :try_end_23} :catch_d4
:catch_23
move-exception v0
invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
goto :goto_1b
:cond_29
:try_start_29
array-length v1, v0
if-le v1, v3, :cond_3a
invoke-direct {p0}, Lcom/google/android/gms/internal/jq;->a()V
const/16 v0, 0x14
const-wide/16 v1, 0x1
invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/jq;->a(IJ)V
invoke-direct {p0}, Lcom/google/android/gms/internal/jq;->b()[B
move-result-object v0
:cond_3a
array-length v1, v0
if-ge v1, v3, :cond_b8
array-length v1, v0
rsub-int v1, v1, 0xef
new-array v1, v1, [B
new-instance v2, Ljava/security/SecureRandom;
invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V
invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V
const/16 v2, 0xf0
invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
move-result-object v2
array-length v3, v0
int-to-byte v3, v3
invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B
move-result-object v0
:goto_62
const-string v1, "MD5"
invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V
invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
move-result-object v1
const/16 v2, 0x100
invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B
move-result-object v0
const/16 v1, 0x100
new-array v1, v1, [B
new-instance v2, Lcom/google/android/gms/internal/fd;
invoke-direct {v2}, Lcom/google/android/gms/internal/fd;-><init>()V
invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/fd;->a([B[B)V
if-eqz p2, :cond_b0
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_b0
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-le v0, v5, :cond_a2
const/4 v0, 0x0
const/16 v2, 0x20
invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object p2
:cond_a2
const-string v0, "UTF-8"
invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
new-instance v2, Lcom/google/android/gms/internal/la;
invoke-direct {v2, v0}, Lcom/google/android/gms/internal/la;-><init>([B)V
invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/la;->a([B)V
:cond_b0
iget-object v0, p0, Lcom/google/android/gms/internal/jq;->c:Lcom/google/android/gms/internal/li;
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/li;->a([B)Ljava/lang/String;
move-result-object v0
goto/16 :goto_1b
:cond_b8
const/16 v1, 0xf0
invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
move-result-object v1
array-length v2, v0
int-to-byte v2, v2
invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B
:try_end_cb
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_29 .. :try_end_cb} :catch_23
.catch Ljava/io/UnsupportedEncodingException; {:try_start_29 .. :try_end_cb} :catch_cd
.catch Ljava/io/IOException; {:try_start_29 .. :try_end_cb} :catch_d4
move-result-object v0
goto :goto_62
:catch_cd
move-exception v0
invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_1b
:catch_d4
move-exception v0
const/4 v0, 0x3
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_1b
.end method
.method private a()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/jq;->d:Lcom/google/android/gms/internal/lj;
invoke-interface {v0}, Lcom/google/android/gms/internal/lj;->a()V
return-void
.end method
.method private b()[B
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/jq;->d:Lcom/google/android/gms/internal/lj;
invoke-interface {v0}, Lcom/google/android/gms/internal/lj;->b()[B
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 4
const/4 v0, 0x0
const/4 v1, 0x0
invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/jq;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.registers 4
const/4 v0, 0x1
invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/jq;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(III)V
.registers 19
iget-object v1, p0, Lcom/google/android/gms/internal/jq;->a:Landroid/view/MotionEvent;
if-eqz v1, :cond_9
iget-object v1, p0, Lcom/google/android/gms/internal/jq;->a:Landroid/view/MotionEvent;
invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V
:cond_9
const-wide/16 v1, 0x0
move/from16 v0, p3
int-to-long v3, v0
const/4 v5, 0x1
move/from16 v0, p1
int-to-float v6, v0
iget-object v7, p0, Lcom/google/android/gms/internal/jq;->b:Landroid/util/DisplayMetrics;
iget v7, v7, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v6, v7
move/from16 v0, p2
int-to-float v7, v0
iget-object v8, p0, Lcom/google/android/gms/internal/jq;->b:Landroid/util/DisplayMetrics;
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
iput-object v1, p0, Lcom/google/android/gms/internal/jq;->a:Landroid/view/MotionEvent;
return-void
.end method
.method protected final a(IJ)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/jq;->d:Lcom/google/android/gms/internal/lj;
invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/lj;->a(IJ)V
return-void
.end method
.method protected final a(ILjava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/jq;->d:Lcom/google/android/gms/internal/lj;
invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/lj;->a(ILjava/lang/String;)V
return-void
.end method
.method public final a(Landroid/view/MotionEvent;)V
.registers 4
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_16
iget-object v0, p0, Lcom/google/android/gms/internal/jq;->a:Landroid/view/MotionEvent;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/google/android/gms/internal/jq;->a:Landroid/view/MotionEvent;
invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V
:cond_10
invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/jq;->a:Landroid/view/MotionEvent;
:cond_16
return-void
.end method
.method protected abstract b(Landroid/content/Context;)V
.end method
.method protected abstract c(Landroid/content/Context;)V
.end method