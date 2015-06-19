.class public Lcom/twidroid/net/b/f;
.super Lcom/twidroid/net/b/h;
.source "SourceFile"
.field private static final f:Ljava/lang/String; = "ImageFetcher"
.field private static final g:I = 0xa00000
.field private static final h:Ljava/lang/String; = "http"
.field private static final i:I = 0x2000
.field private static j:Lcom/twidroid/net/b/a/a;
.field private static final n:I
.field private k:Ljava/io/File;
.field private l:Z
.field private final m:Ljava/lang/Object;
.method public constructor <init>(Landroid/content/Context;I)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/twidroid/net/b/h;-><init>(Landroid/content/Context;I)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/net/b/f;->l:Z
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/twidroid/net/b/f;->m:Ljava/lang/Object;
invoke-direct {p0, p1}, Lcom/twidroid/net/b/f;->a(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;II)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/twidroid/net/b/h;-><init>(Landroid/content/Context;II)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/net/b/f;->l:Z
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/twidroid/net/b/f;->m:Ljava/lang/Object;
invoke-direct {p0, p1}, Lcom/twidroid/net/b/f;->a(Landroid/content/Context;)V
return-void
.end method
.method private a(Ljava/lang/String;Lcom/twidroid/net/b/c;)Landroid/graphics/Bitmap;
.registers 10
const/4 v2, 0x0
new-instance v0, Lcom/twidroid/net/b/c;
invoke-virtual {p2}, Lcom/twidroid/net/b/c;->b()Ljava/lang/String;
move-result-object v1
const/4 v3, -0x1
invoke-direct {v0, v1, v3}, Lcom/twidroid/net/b/c;-><init>(Ljava/lang/String;I)V
invoke-static {v0}, Lcom/twidroid/net/b/a;->c(Lcom/twidroid/net/b/c;)Ljava/lang/String;
move-result-object v1
iget-object v3, p0, Lcom/twidroid/net/b/f;->m:Ljava/lang/Object;
monitor-enter v3
:try_start_12
:goto_12
iget-boolean v0, p0, Lcom/twidroid/net/b/f;->l:Z
:try_end_14
.catchall {:try_start_12 .. :try_end_14} :catchall_fb
if-eqz v0, :cond_1e
:try_start_16
iget-object v0, p0, Lcom/twidroid/net/b/f;->m:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->wait()V
:try_end_1b
.catchall {:try_start_16 .. :try_end_1b} :catchall_fb
.catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_1c
goto :goto_12
:catch_1c
move-exception v0
goto :goto_12
:try_start_1e
:cond_1e
sget-object v0, Lcom/twidroid/net/b/f;->j:Lcom/twidroid/net/b/a/a;
:try_end_20
.catchall {:try_start_1e .. :try_end_20} :catchall_fb
if-eqz v0, :cond_15f
:try_start_22
sget-object v0, Lcom/twidroid/net/b/f;->j:Lcom/twidroid/net/b/a/a;
invoke-virtual {v0, v1}, Lcom/twidroid/net/b/a/a;->a(Ljava/lang/String;)Lcom/twidroid/net/b/a/e;
move-result-object v0
if-nez v0, :cond_46
sget-object v0, Lcom/twidroid/net/b/f;->j:Lcom/twidroid/net/b/a/a;
invoke-virtual {v0, v1}, Lcom/twidroid/net/b/a/a;->b(Ljava/lang/String;)Lcom/twidroid/net/b/a/b;
move-result-object v0
if-eqz v0, :cond_40
const/4 v4, 0x0
invoke-virtual {v0, v4}, Lcom/twidroid/net/b/a/b;->c(I)Ljava/io/OutputStream;
move-result-object v4
invoke-virtual {p0, p1, v4}, Lcom/twidroid/net/b/f;->a(Ljava/lang/String;Ljava/io/OutputStream;)Z
move-result v4
if-eqz v4, :cond_ac
invoke-virtual {v0}, Lcom/twidroid/net/b/a/b;->a()V
:goto_40
:cond_40
sget-object v0, Lcom/twidroid/net/b/f;->j:Lcom/twidroid/net/b/a/a;
invoke-virtual {v0, v1}, Lcom/twidroid/net/b/a/a;->a(Ljava/lang/String;)Lcom/twidroid/net/b/a/e;
move-result-object v0
:cond_46
if-eqz v0, :cond_15b
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/twidroid/net/b/a/e;->a(I)Ljava/io/InputStream;
move-result-object v0
check-cast v0, Ljava/io/FileInputStream;
:try_start_4f
:try_end_4f
.catchall {:try_start_22 .. :try_end_4f} :catchall_f1
.catch Ljava/io/IOException; {:try_start_22 .. :try_end_4f} :catch_b0
.catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_4f} :catch_c5
.catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_4f} :catch_da
invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
:try_end_52
.catchall {:try_start_4f .. :try_end_52} :catchall_140
.catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_152
.catch Ljava/lang/IllegalStateException; {:try_start_4f .. :try_end_52} :catch_14c
.catch Ljava/lang/NullPointerException; {:try_start_4f .. :try_end_52} :catch_147
move-result-object v1
move-object v6, v0
move-object v0, v1
move-object v1, v6
:goto_56
if-nez v0, :cond_5d
if-eqz v1, :cond_5d
:try_start_5a
invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
:try_end_5d
.catchall {:try_start_5a .. :try_end_5d} :catchall_fb
.catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_138
:goto_5d
:cond_5d
:try_start_5d
monitor-exit v3
:try_end_5e
.catchall {:try_start_5d .. :try_end_5e} :catchall_fb
if-eqz v0, :cond_a6
invoke-virtual {p2}, Lcom/twidroid/net/b/c;->a()Z
move-result v2
if-nez v2, :cond_fe
const-string v2, "ImageFetcher"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Decoding img from "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " as "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p2}, Lcom/twidroid/net/b/c;->d()I
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "x"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p2}, Lcom/twidroid/net/b/c;->c()I
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p2}, Lcom/twidroid/net/b/c;->d()I
move-result v2
invoke-virtual {p2}, Lcom/twidroid/net/b/c;->c()I
move-result v3
invoke-static {v0, v2, v3}, Lcom/twidroid/net/b/f;->a(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;
move-result-object v2
:goto_a6
:cond_a6
if-eqz v1, :cond_ab
:try_start_a8
invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
:try_end_ab
.catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_13d
:cond_ab
:goto_ab
return-object v2
:cond_ac
:try_start_ac
invoke-virtual {v0}, Lcom/twidroid/net/b/a/b;->b()V
:try_end_af
.catchall {:try_start_ac .. :try_end_af} :catchall_f1
.catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b0
.catch Ljava/lang/IllegalStateException; {:try_start_ac .. :try_end_af} :catch_c5
.catch Ljava/lang/NullPointerException; {:try_start_ac .. :try_end_af} :catch_da
goto :goto_40
:catch_b0
move-exception v0
move-object v1, v2
:try_start_b2
:goto_b2
const-string v4, "ImageFetcher"
const-string v5, "processBitmap: "
invoke-static {v4, v5, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_b9
.catchall {:try_start_b2 .. :try_end_b9} :catchall_145
if-nez v2, :cond_158
if-eqz v1, :cond_158
:try_start_bd
invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
:try_end_c0
.catchall {:try_start_bd .. :try_end_c0} :catchall_fb
.catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_c2
move-object v0, v2
goto :goto_5d
:catch_c2
move-exception v0
move-object v0, v2
goto :goto_5d
:catch_c5
move-exception v0
move-object v1, v2
:try_start_c7
:goto_c7
const-string v4, "ImageFetcher"
const-string v5, "processBitmap: "
invoke-static {v4, v5, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_ce
.catchall {:try_start_c7 .. :try_end_ce} :catchall_145
if-nez v2, :cond_158
if-eqz v1, :cond_158
:try_start_d2
invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
:try_end_d5
.catchall {:try_start_d2 .. :try_end_d5} :catchall_fb
.catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d5} :catch_d7
move-object v0, v2
goto :goto_5d
:catch_d7
move-exception v0
move-object v0, v2
goto :goto_5d
:catch_da
move-exception v0
move-object v1, v2
:goto_dc
:try_start_dc
const-string v4, "ImageFetcher"
const-string v5, "processBitmap: "
invoke-static {v4, v5, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_e3
.catchall {:try_start_dc .. :try_end_e3} :catchall_145
if-nez v2, :cond_158
if-eqz v1, :cond_158
:try_start_e7
invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
:try_end_ea
.catchall {:try_start_e7 .. :try_end_ea} :catchall_fb
.catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_ed
move-object v0, v2
goto/16 :goto_5d
:catch_ed
move-exception v0
move-object v0, v2
goto/16 :goto_5d
:catchall_f1
move-exception v0
move-object v1, v2
:goto_f3
if-nez v2, :cond_fa
if-eqz v1, :cond_fa
:try_start_f7
invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
:try_start_fa
:goto_fa
:cond_fa
:try_end_fa
.catchall {:try_start_f7 .. :try_end_fa} :catchall_fb
.catch Ljava/io/IOException; {:try_start_f7 .. :try_end_fa} :catch_13b
throw v0
:catchall_fb
move-exception v0
monitor-exit v3
:try_end_fd
.catchall {:try_start_fa .. :try_end_fd} :catchall_fb
throw v0
:cond_fe
const-string v2, "ImageFetcher"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Decoding img from "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " as default "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget v4, p0, Lcom/twidroid/net/b/f;->a:I
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "x"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget v4, p0, Lcom/twidroid/net/b/f;->b:I
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
iget v2, p0, Lcom/twidroid/net/b/f;->a:I
iget v3, p0, Lcom/twidroid/net/b/f;->b:I
invoke-static {v0, v2, v3}, Lcom/twidroid/net/b/f;->a(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;
move-result-object v2
goto/16 :goto_a6
:catch_138
move-exception v4
goto/16 :goto_5d
:catch_13b
move-exception v1
goto :goto_fa
:catch_13d
move-exception v0
goto/16 :goto_ab
:catchall_140
move-exception v1
move-object v6, v1
move-object v1, v0
move-object v0, v6
goto :goto_f3
:catchall_145
move-exception v0
goto :goto_f3
:catch_147
move-exception v1
move-object v6, v1
move-object v1, v0
move-object v0, v6
goto :goto_dc
:catch_14c
move-exception v1
move-object v6, v1
move-object v1, v0
move-object v0, v6
goto/16 :goto_c7
:catch_152
move-exception v1
move-object v6, v1
move-object v1, v0
move-object v0, v6
goto/16 :goto_b2
:cond_158
move-object v0, v2
goto/16 :goto_5d
:cond_15b
move-object v1, v2
move-object v0, v2
goto/16 :goto_56
:cond_15f
move-object v1, v2
move-object v0, v2
goto/16 :goto_5d
.end method
.method private a(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/net/b/f;->b(Landroid/content/Context;)V
const-string v0, "http"
invoke-static {p1, v0}, Lcom/twidroid/net/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/net/b/f;->k:Ljava/io/File;
return-void
.end method
.method private b(Landroid/content/Context;)V
.registers 4
const-string v0, "connectivity"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_14
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
move-result v0
if-nez v0, :cond_1b
:cond_14
const-string v0, "ImageFetcher"
const-string v1, "checkConnection - no connection found"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:cond_1b
return-void
.end method
.method public static e()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x8
if-ge v0, v1, :cond_d
const-string v0, "http.keepAlive"
const-string v1, "false"
invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:cond_d
return-void
.end method
.method private j()V
.registers 7
const-wide/32 v0, 0xa00000
iget-object v2, p0, Lcom/twidroid/net/b/f;->k:Ljava/io/File;
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v2
if-nez v2, :cond_10
iget-object v2, p0, Lcom/twidroid/net/b/f;->k:Ljava/io/File;
invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
:cond_10
iget-object v2, p0, Lcom/twidroid/net/b/f;->m:Ljava/lang/Object;
monitor-enter v2
:try_start_13
iget-object v3, p0, Lcom/twidroid/net/b/f;->k:Ljava/io/File;
invoke-static {v3}, Lcom/twidroid/net/b/a;->a(Ljava/io/File;)J
:try_end_18
.catchall {:try_start_13 .. :try_end_18} :catchall_49
move-result-wide v3
cmp-long v5, v3, v0
if-lez v5, :cond_3f
:goto_1d
const-wide/16 v3, 0x0
cmp-long v3, v0, v3
if-lez v3, :cond_31
:try_start_23
sget-object v3, Lcom/twidroid/net/b/f;->j:Lcom/twidroid/net/b/a/a;
if-nez v3, :cond_31
iget-object v3, p0, Lcom/twidroid/net/b/f;->k:Ljava/io/File;
const/4 v4, 0x1
const/4 v5, 0x1
invoke-static {v3, v4, v5, v0, v1}, Lcom/twidroid/net/b/a/a;->a(Ljava/io/File;IIJ)Lcom/twidroid/net/b/a/a;
move-result-object v0
sput-object v0, Lcom/twidroid/net/b/f;->j:Lcom/twidroid/net/b/a/a;
:cond_31
:try_end_31
.catchall {:try_start_23 .. :try_end_31} :catchall_49
.catch Ljava/io/IOException; {:try_start_23 .. :try_end_31} :catch_44
:goto_31
:try_start_31
sget-object v0, Lcom/twidroid/net/b/f;->j:Lcom/twidroid/net/b/a/a;
if-eqz v0, :cond_35
:cond_35
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/net/b/f;->l:Z
iget-object v0, p0, Lcom/twidroid/net/b/f;->m:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
monitor-exit v2
return-void
:cond_3f
const-wide/16 v0, 0x2
div-long v0, v3, v0
goto :goto_1d
:catch_44
move-exception v0
const/4 v0, 0x0
sput-object v0, Lcom/twidroid/net/b/f;->j:Lcom/twidroid/net/b/a/a;
goto :goto_31
:catchall_49
move-exception v0
monitor-exit v2
:try_end_4b
.catchall {:try_start_31 .. :try_end_4b} :catchall_49
throw v0
.end method
.method protected a(Ljava/lang/Object;)Landroid/graphics/Bitmap;
.registers 4
instance-of v0, p1, Lcom/twidroid/net/b/c;
if-eqz v0, :cond_f
check-cast p1, Lcom/twidroid/net/b/c;
invoke-virtual {p1}, Lcom/twidroid/net/b/c;->b()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0, p1}, Lcom/twidroid/net/b/f;->a(Ljava/lang/String;Lcom/twidroid/net/b/c;)Landroid/graphics/Bitmap;
move-result-object v0
:goto_e
return-object v0
:cond_f
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lcom/twidroid/net/b/f;->a(Ljava/lang/String;Lcom/twidroid/net/b/c;)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_e
.end method
.method protected a()V
.registers 1
invoke-super {p0}, Lcom/twidroid/net/b/h;->a()V
invoke-direct {p0}, Lcom/twidroid/net/b/f;->j()V
return-void
.end method
.method public a(Ljava/lang/String;IILandroid/widget/ImageView;)V
.registers 6
new-instance v0, Lcom/twidroid/net/b/c;
invoke-direct {v0, p1, p3, p2}, Lcom/twidroid/net/b/c;-><init>(Ljava/lang/String;II)V
invoke-virtual {p0, v0, p4}, Lcom/twidroid/net/b/f;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V
return-void
.end method
.method public a(Ljava/lang/String;ILandroid/widget/ImageView;)V
.registers 5
new-instance v0, Lcom/twidroid/net/b/c;
invoke-direct {v0, p1, p2, p2}, Lcom/twidroid/net/b/c;-><init>(Ljava/lang/String;II)V
invoke-virtual {p0, v0, p3}, Lcom/twidroid/net/b/f;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V
return-void
.end method
.method public a(Ljava/lang/String;Ljava/io/OutputStream;)Z
.registers 11
const/4 v1, 0x0
invoke-static {}, Lcom/twidroid/net/b/f;->e()V
:try_start_4
new-instance v0, Ljava/net/URL;
invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
new-instance v0, Lcom/ubermedia/net/b;
invoke-direct {v0, p1}, Lcom/ubermedia/net/b;-><init>(Ljava/lang/String;)V
const-string v2, "https://ton.twitter.com/1.1/ton/data/dm/"
invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_61
new-instance v2, Lcom/twidroid/net/a/c/g;
invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;
move-result-object v3
invoke-virtual {v3}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v3
invoke-virtual {v3}, Lcom/twidroid/net/a/c/c;->d()Lcom/ubermedia/net/b/c;
move-result-object v3
invoke-virtual {v3}, Lcom/ubermedia/net/b/c;->a()Ljava/lang/String;
move-result-object v3
invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;
move-result-object v4
invoke-virtual {v4}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v4
invoke-virtual {v4}, Lcom/twidroid/net/a/c/c;->d()Lcom/ubermedia/net/b/c;
move-result-object v4
invoke-virtual {v4}, Lcom/ubermedia/net/b/c;->b()Ljava/lang/String;
move-result-object v4
invoke-direct {v2, v3, v4}, Lcom/twidroid/net/a/c/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;
move-result-object v3
invoke-virtual {v3}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v3
invoke-virtual {v3}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;
move-result-object v3
invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->k()Ljava/lang/String;
move-result-object v3
invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;
move-result-object v4
invoke-virtual {v4}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v4
invoke-virtual {v4}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;
move-result-object v4
invoke-virtual {v4}, Lcom/twidroid/model/twitter/c;->l()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v3, v4}, Lcom/twidroid/net/a/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v2}, Lcom/ubermedia/net/b;->a(Ld/a/d;)V
:cond_61
invoke-virtual {v0}, Lcom/ubermedia/net/b;->a()Ljava/net/HttpURLConnection;
:try_end_64
.catchall {:try_start_4 .. :try_end_64} :catchall_c2
.catch Ljava/io/IOException; {:try_start_4 .. :try_end_64} :catch_ea
move-result-object v4
:try_start_65
new-instance v2, Ljava/io/BufferedInputStream;
invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v0
const/16 v3, 0x2000
invoke-direct {v2, v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
:try_end_70
.catchall {:try_start_65 .. :try_end_70} :catchall_d7
.catch Ljava/io/IOException; {:try_start_65 .. :try_end_70} :catch_ee
:try_start_70
new-instance v3, Ljava/io/BufferedOutputStream;
const/16 v0, 0x2000
invoke-direct {v3, p2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
:goto_77
:try_start_77
:try_end_77
.catchall {:try_start_70 .. :try_end_77} :catchall_db
.catch Ljava/io/IOException; {:try_start_70 .. :try_end_77} :catch_f2
invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I
move-result v0
const/4 v1, -0x1
if-eq v0, v1, :cond_af
invoke-virtual {v3, v0}, Ljava/io/BufferedOutputStream;->write(I)V
:try_end_81
.catchall {:try_start_77 .. :try_end_81} :catchall_e1
.catch Ljava/io/IOException; {:try_start_77 .. :try_end_81} :catch_82
goto :goto_77
:catch_82
move-exception v0
move-object v1, v2
move-object v2, v3
move-object v3, v4
:goto_86
:try_start_86
const-string v4, "ImageFetcher"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Error in downloadBitmap - "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:try_end_9e
.catchall {:try_start_86 .. :try_end_9e} :catchall_e6
if-eqz v3, :cond_a3
invoke-static {v3}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:cond_a3
if-eqz v2, :cond_a8
:try_start_a5
invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
:cond_a8
if-eqz v1, :cond_ad
invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
:cond_ad
:try_end_ad
.catch Ljava/io/IOException; {:try_start_a5 .. :try_end_ad} :catch_e8
:goto_ad
const/4 v0, 0x0
:cond_ae
:goto_ae
return v0
:cond_af
const/4 v0, 0x1
if-eqz v4, :cond_b5
invoke-static {v4}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:cond_b5
if-eqz v3, :cond_ba
:try_start_b7
invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
:cond_ba
if-eqz v2, :cond_ae
invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
:try_end_bf
.catch Ljava/io/IOException; {:try_start_b7 .. :try_end_bf} :catch_c0
goto :goto_ae
:catch_c0
move-exception v1
goto :goto_ae
:catchall_c2
move-exception v0
move-object v2, v1
move-object v3, v1
:goto_c5
if-eqz v3, :cond_ca
invoke-static {v3}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:cond_ca
if-eqz v2, :cond_cf
:try_start_cc
invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
:cond_cf
if-eqz v1, :cond_d4
invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
:try_end_d4
.catch Ljava/io/IOException; {:try_start_cc .. :try_end_d4} :catch_d5
:cond_d4
:goto_d4
throw v0
:catch_d5
move-exception v1
goto :goto_d4
:catchall_d7
move-exception v0
move-object v2, v1
move-object v3, v4
goto :goto_c5
:catchall_db
move-exception v0
move-object v3, v4
move-object v7, v1
move-object v1, v2
move-object v2, v7
goto :goto_c5
:catchall_e1
move-exception v0
move-object v1, v2
move-object v2, v3
move-object v3, v4
goto :goto_c5
:catchall_e6
move-exception v0
goto :goto_c5
:catch_e8
move-exception v0
goto :goto_ad
:catch_ea
move-exception v0
move-object v2, v1
move-object v3, v1
goto :goto_86
:catch_ee
move-exception v0
move-object v2, v1
move-object v3, v4
goto :goto_86
:catch_f2
move-exception v0
move-object v3, v4
move-object v7, v1
move-object v1, v2
move-object v2, v7
goto :goto_86
.end method
.method protected b()V
.registers 6
invoke-super {p0}, Lcom/twidroid/net/b/h;->b()V
iget-object v1, p0, Lcom/twidroid/net/b/f;->m:Ljava/lang/Object;
monitor-enter v1
:try_start_6
sget-object v0, Lcom/twidroid/net/b/f;->j:Lcom/twidroid/net/b/a/a;
if-eqz v0, :cond_20
sget-object v0, Lcom/twidroid/net/b/f;->j:Lcom/twidroid/net/b/a/a;
invoke-virtual {v0}, Lcom/twidroid/net/b/a/a;->d()Z
:try_end_f
.catchall {:try_start_6 .. :try_end_f} :catchall_3c
move-result v0
if-nez v0, :cond_20
:try_start_12
sget-object v0, Lcom/twidroid/net/b/f;->j:Lcom/twidroid/net/b/a/a;
invoke-virtual {v0}, Lcom/twidroid/net/b/a/a;->f()V
:goto_17
:try_end_17
.catchall {:try_start_12 .. :try_end_17} :catchall_3c
.catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_22
const/4 v0, 0x0
:try_start_18
sput-object v0, Lcom/twidroid/net/b/f;->j:Lcom/twidroid/net/b/a/a;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/net/b/f;->l:Z
invoke-direct {p0}, Lcom/twidroid/net/b/f;->j()V
:cond_20
monitor-exit v1
return-void
:catch_22
move-exception v0
const-string v2, "ImageFetcher"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "clearCacheInternal - "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_17
:catchall_3c
move-exception v0
monitor-exit v1
:try_end_3e
.catchall {:try_start_18 .. :try_end_3e} :catchall_3c
throw v0
.end method
.method protected c()V
.registers 6
invoke-super {p0}, Lcom/twidroid/net/b/h;->c()V
iget-object v1, p0, Lcom/twidroid/net/b/f;->m:Ljava/lang/Object;
monitor-enter v1
:try_start_6
sget-object v0, Lcom/twidroid/net/b/f;->j:Lcom/twidroid/net/b/a/a;
:try_end_8
.catchall {:try_start_6 .. :try_end_8} :catchall_2b
if-eqz v0, :cond_f
:try_start_a
sget-object v0, Lcom/twidroid/net/b/f;->j:Lcom/twidroid/net/b/a/a;
invoke-virtual {v0}, Lcom/twidroid/net/b/a/a;->e()V
:cond_f
:try_start_f
:goto_f
:try_end_f
.catchall {:try_start_a .. :try_end_f} :catchall_2b
.catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_11
monitor-exit v1
return-void
:catch_11
move-exception v0
const-string v2, "ImageFetcher"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "flush - "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_f
:catchall_2b
move-exception v0
monitor-exit v1
:try_end_2d
.catchall {:try_start_f .. :try_end_2d} :catchall_2b
throw v0
.end method
.method protected d()V
.registers 6
invoke-super {p0}, Lcom/twidroid/net/b/h;->d()V
iget-object v1, p0, Lcom/twidroid/net/b/f;->m:Ljava/lang/Object;
monitor-enter v1
:try_start_6
sget-object v0, Lcom/twidroid/net/b/f;->j:Lcom/twidroid/net/b/a/a;
:try_end_8
.catchall {:try_start_6 .. :try_end_8} :catchall_36
if-eqz v0, :cond_1a
:try_start_a
sget-object v0, Lcom/twidroid/net/b/f;->j:Lcom/twidroid/net/b/a/a;
invoke-virtual {v0}, Lcom/twidroid/net/b/a/a;->d()Z
move-result v0
if-nez v0, :cond_1a
sget-object v0, Lcom/twidroid/net/b/f;->j:Lcom/twidroid/net/b/a/a;
invoke-virtual {v0}, Lcom/twidroid/net/b/a/a;->close()V
const/4 v0, 0x0
sput-object v0, Lcom/twidroid/net/b/f;->j:Lcom/twidroid/net/b/a/a;
:try_start_1a
:try_end_1a
.catchall {:try_start_a .. :try_end_1a} :catchall_36
.catch Ljava/io/IOException; {:try_start_a .. :try_end_1a} :catch_1c
:goto_1a
:cond_1a
monitor-exit v1
return-void
:catch_1c
move-exception v0
const-string v2, "ImageFetcher"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "closeCacheInternal - "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_1a
:catchall_36
move-exception v0
monitor-exit v1
:try_end_38
.catchall {:try_start_1a .. :try_end_38} :catchall_36
throw v0
.end method