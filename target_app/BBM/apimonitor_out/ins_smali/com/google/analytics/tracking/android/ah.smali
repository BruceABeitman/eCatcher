.class final Lcom/google/analytics/tracking/android/ah;
.super Ljava/lang/Thread;
.source "GAThread.java"
.implements Lcom/google/analytics/tracking/android/h;
.field private static g:Lcom/google/analytics/tracking/android/ah;
.field private final a:Ljava/util/concurrent/LinkedBlockingQueue;
.field private volatile b:Z
.field private volatile c:Z
.field private volatile d:Ljava/util/List;
.field private volatile e:Ljava/lang/String;
.field private volatile f:Ljava/lang/String;
.field private volatile h:Lcom/google/analytics/tracking/android/bb;
.field private final i:Landroid/content/Context;
.method private constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x0
const-string v0, "GAThread"
invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V
new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;
invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V
iput-object v0, p0, Lcom/google/analytics/tracking/android/ah;->a:Ljava/util/concurrent/LinkedBlockingQueue;
iput-boolean v1, p0, Lcom/google/analytics/tracking/android/ah;->b:Z
iput-boolean v1, p0, Lcom/google/analytics/tracking/android/ah;->c:Z
if-eqz p1, :cond_1d
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/google/analytics/tracking/android/ah;->i:Landroid/content/Context;
:goto_19
invoke-virtual {p0}, Lcom/google/analytics/tracking/android/ah;->start()V
return-void
:cond_1d
iput-object p1, p0, Lcom/google/analytics/tracking/android/ah;->i:Landroid/content/Context;
goto :goto_19
.end method
.method static a(Landroid/content/Context;)Lcom/google/analytics/tracking/android/ah;
.registers 2
sget-object v0, Lcom/google/analytics/tracking/android/ah;->g:Lcom/google/analytics/tracking/android/ah;
if-nez v0, :cond_b
new-instance v0, Lcom/google/analytics/tracking/android/ah;
invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/ah;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/google/analytics/tracking/android/ah;->g:Lcom/google/analytics/tracking/android/ah;
:cond_b
sget-object v0, Lcom/google/analytics/tracking/android/ah;->g:Lcom/google/analytics/tracking/android/ah;
return-object v0
.end method
.method static synthetic a(Lcom/google/analytics/tracking/android/ah;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/analytics/tracking/android/ah;->f:Ljava/lang/String;
return-object v0
.end method
.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
new-instance v1, Ljava/io/PrintStream;
invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V
new-instance v1, Ljava/lang/String;
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
return-object v1
.end method
.method private a(Ljava/lang/Runnable;)V
.registers 3
iget-object v0, p0, Lcom/google/analytics/tracking/android/ah;->a:Ljava/util/concurrent/LinkedBlockingQueue;
invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
return-void
.end method
.method static synthetic b(Lcom/google/analytics/tracking/android/ah;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/google/analytics/tracking/android/ah;->i:Landroid/content/Context;
return-object v0
.end method
.method private static b(Landroid/content/Context;)Ljava/lang/String;
.registers 6
const/4 v0, 0x0
:try_start_1
const-string v1, "gaInstallData"
invoke-virtual {p0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
move-result-object v1
const/16 v2, 0x2000
new-array v2, v2, [B
const/4 v3, 0x0
const/16 v4, 0x2000
invoke-virtual {v1, v2, v3, v4}, Ljava/io/FileInputStream;->read([BII)I
move-result v3
invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I
move-result v4
if-lez v4, :cond_26
const-string v2, "Too much campaign data, ignoring it."
invoke-static {v2}, Lcom/google/analytics/tracking/android/aq;->a(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
const-string v1, "gaInstallData"
invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
:goto_25
return-object v0
:cond_26
invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
const-string v1, "gaInstallData"
invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
if-gtz v3, :cond_3d
const-string v1, "Campaign file is empty."
invoke-static {v1}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V
:try_end_35
.catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_35} :catch_36
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_35} :catch_57
goto :goto_25
:catch_36
move-exception v1
const-string v1, "No campaign data found."
invoke-static {v1}, Lcom/google/analytics/tracking/android/aq;->b(Ljava/lang/String;)V
goto :goto_25
:try_start_3d
:cond_3d
new-instance v1, Ljava/lang/String;
const/4 v4, 0x0
invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([BII)V
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Campaign found: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/google/analytics/tracking/android/aq;->b(Ljava/lang/String;)V
:try_end_55
.catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_55} :catch_36
.catch Ljava/io/IOException; {:try_start_3d .. :try_end_55} :catch_57
move-object v0, v1
goto :goto_25
:catch_57
move-exception v1
const-string v1, "Error reading campaign data."
invoke-static {v1}, Lcom/google/analytics/tracking/android/aq;->a(Ljava/lang/String;)V
const-string v1, "gaInstallData"
invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
goto :goto_25
.end method
.method static synthetic b(Ljava/util/Map;)Z
.registers 12
const-wide/high16 v9, 0x4059
const/4 v2, 0x1
const/4 v3, 0x0
const-string v0, "&sf"
invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_78
const-string v0, "&sf"
invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Lcom/google/analytics/tracking/android/bg;->b(Ljava/lang/String;)D
move-result-wide v5
cmpl-double v0, v5, v9
if-gez v0, :cond_78
const-string v0, "&cid"
invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_7a
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
add-int/lit8 v1, v1, -0x1
move v4, v1
move v1, v3
:goto_32
if-ltz v4, :cond_4d
invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C
move-result v7
shl-int/lit8 v1, v1, 0x6
const v8, 0xfffffff
and-int/2addr v1, v8
add-int/2addr v1, v7
shl-int/lit8 v7, v7, 0xe
add-int/2addr v1, v7
const/high16 v7, 0xfe0
and-int/2addr v7, v1
if-eqz v7, :cond_4a
shr-int/lit8 v7, v7, 0x15
xor-int/2addr v1, v7
:cond_4a
add-int/lit8 v4, v4, -0x1
goto :goto_32
:cond_4d
move v0, v1
:goto_4e
rem-int/lit16 v0, v0, 0x2710
int-to-double v0, v0
mul-double v4, v5, v9
cmpl-double v0, v0, v4
if-ltz v0, :cond_78
const-string v0, "&t"
invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_6f
const-string v0, "unknown"
:goto_61
const-string v1, "%s hit sampled out"
new-array v4, v2, [Ljava/lang/Object;
aput-object v0, v4, v3
invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V
:goto_6e
return v2
:cond_6f
const-string v0, "&t"
invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
goto :goto_61
:cond_78
move v2, v3
goto :goto_6e
:cond_7a
move v0, v2
goto :goto_4e
.end method
.method static synthetic c(Lcom/google/analytics/tracking/android/ah;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/analytics/tracking/android/ah;->e:Ljava/lang/String;
return-object v0
.end method
.method static synthetic c(Ljava/util/Map;)V
.registers 4
invoke-static {}, Lcom/google/analytics/tracking/android/i;->a()Lcom/google/analytics/tracking/android/i;
move-result-object v0
const-string v1, "&an"
const-string v2, "&an"
invoke-interface {v0, v2}, Lcom/google/analytics/tracking/android/n;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {p0, v1, v2}, Lcom/google/analytics/tracking/android/bg;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "&av"
const-string v2, "&av"
invoke-interface {v0, v2}, Lcom/google/analytics/tracking/android/n;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {p0, v1, v2}, Lcom/google/analytics/tracking/android/bg;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "&aid"
const-string v2, "&aid"
invoke-interface {v0, v2}, Lcom/google/analytics/tracking/android/n;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {p0, v1, v2}, Lcom/google/analytics/tracking/android/bg;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "&aiid"
const-string v2, "&aiid"
invoke-interface {v0, v2}, Lcom/google/analytics/tracking/android/n;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, v1, v0}, Lcom/google/analytics/tracking/android/bg;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "&v"
const-string v1, "1"
invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method static synthetic d(Lcom/google/analytics/tracking/android/ah;)Ljava/lang/String;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/analytics/tracking/android/ah;->e:Ljava/lang/String;
return-object v0
.end method
.method static synthetic d(Ljava/util/Map;)Ljava/lang/String;
.registers 2
const-string v0, "useSecure"
invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_19
const-string v0, "useSecure"
invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Lcom/google/analytics/tracking/android/bg;->c(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_19
const-string v0, "http:"
:goto_18
return-object v0
:cond_19
const-string v0, "https:"
goto :goto_18
.end method
.method static synthetic e(Lcom/google/analytics/tracking/android/ah;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/google/analytics/tracking/android/ah;->d:Ljava/util/List;
return-object v0
.end method
.method static synthetic f(Lcom/google/analytics/tracking/android/ah;)Lcom/google/analytics/tracking/android/bb;
.registers 2
iget-object v0, p0, Lcom/google/analytics/tracking/android/ah;->h:Lcom/google/analytics/tracking/android/bb;
return-object v0
.end method
.method public final a()V
.registers 2
new-instance v0, Lcom/google/analytics/tracking/android/aj;
invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/aj;-><init>(Lcom/google/analytics/tracking/android/ah;)V
invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/ah;->a(Ljava/lang/Runnable;)V
return-void
.end method
.method public final a(Ljava/util/Map;)V
.registers 6
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
const-string v0, "&ht"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_16
:try_start_f
invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
:cond_16
:goto_16
:try_end_16
.catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_16} :catch_2e
if-nez v0, :cond_25
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
const-string v0, "&ht"
invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_25
new-instance v0, Lcom/google/analytics/tracking/android/ai;
invoke-direct {v0, p0, v1}, Lcom/google/analytics/tracking/android/ai;-><init>(Lcom/google/analytics/tracking/android/ah;Ljava/util/Map;)V
invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/ah;->a(Ljava/lang/Runnable;)V
return-void
:catch_2e
move-exception v0
const/4 v0, 0x0
goto :goto_16
.end method
.method public final b()V
.registers 2
new-instance v0, Lcom/google/analytics/tracking/android/ak;
invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/ak;-><init>(Lcom/google/analytics/tracking/android/ah;)V
invoke-direct {p0, v0}, Lcom/google/analytics/tracking/android/ah;->a(Ljava/lang/Runnable;)V
return-void
.end method
.method public final c()Ljava/util/concurrent/LinkedBlockingQueue;
.registers 2
iget-object v0, p0, Lcom/google/analytics/tracking/android/ah;->a:Ljava/util/concurrent/LinkedBlockingQueue;
return-object v0
.end method
.method public final d()Ljava/lang/Thread;
.registers 1
return-object p0
.end method
.method public final run()V
.registers 8
const/4 v6, 0x0
const/4 v5, 0x1
const-wide/16 v0, 0x1388
:try_start_4
invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
:goto_7
:try_end_7
.catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_a8
iget-object v0, p0, Lcom/google/analytics/tracking/android/ah;->h:Lcom/google/analytics/tracking/android/bb;
if-nez v0, :cond_14
new-instance v0, Lcom/google/analytics/tracking/android/y;
iget-object v1, p0, Lcom/google/analytics/tracking/android/ah;->i:Landroid/content/Context;
invoke-direct {v0, v1, p0}, Lcom/google/analytics/tracking/android/y;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/h;)V
iput-object v0, p0, Lcom/google/analytics/tracking/android/ah;->h:Lcom/google/analytics/tracking/android/bb;
:cond_14
iget-object v0, p0, Lcom/google/analytics/tracking/android/ah;->h:Lcom/google/analytics/tracking/android/bb;
invoke-interface {v0}, Lcom/google/analytics/tracking/android/bb;->e()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/analytics/tracking/android/ah;->d:Ljava/util/List;
iget-object v0, p0, Lcom/google/analytics/tracking/android/ah;->d:Ljava/util/List;
new-instance v1, Lcom/google/android/gms/analytics/internal/Command;
const-string v2, "appendVersion"
const-string v3, "&_v"
invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
const-string v4, "ma3.0.0"
invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/analytics/internal/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/google/analytics/tracking/android/ah;->d:Ljava/util/List;
new-instance v1, Lcom/google/android/gms/analytics/internal/Command;
const-string v2, "appendQueueTime"
const-string v3, "&qt"
invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v2, v3, v6}, Lcom/google/android/gms/analytics/internal/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/google/analytics/tracking/android/ah;->d:Ljava/util/List;
new-instance v1, Lcom/google/android/gms/analytics/internal/Command;
const-string v2, "appendCacheBuster"
const-string v3, "&z"
invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v2, v3, v6}, Lcom/google/android/gms/analytics/internal/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_start_58
invoke-static {}, Lcom/google/analytics/tracking/android/j;->a()Lcom/google/analytics/tracking/android/j;
move-result-object v0
const-string v1, "&cid"
invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/j;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/analytics/tracking/android/ah;->f:Ljava/lang/String;
iget-object v0, p0, Lcom/google/analytics/tracking/android/ah;->i:Landroid/content/Context;
invoke-static {v0}, Lcom/google/analytics/tracking/android/ah;->b(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/analytics/tracking/android/ah;->e:Ljava/lang/String;
:goto_6c
:try_end_6c
.catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_6c} :catch_b0
:cond_6c
iget-boolean v0, p0, Lcom/google/analytics/tracking/android/ah;->c:Z
if-nez v0, :cond_cf
:try_start_70
iget-object v0, p0, Lcom/google/analytics/tracking/android/ah;->a:Ljava/util/concurrent/LinkedBlockingQueue;
invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Runnable;
iget-boolean v1, p0, Lcom/google/analytics/tracking/android/ah;->b:Z
if-nez v1, :cond_6c
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
:try_end_7f
.catch Ljava/lang/InterruptedException; {:try_start_70 .. :try_end_7f} :catch_80
.catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_7f} :catch_89
goto :goto_6c
:catch_80
move-exception v0
:try_start_81
invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->b(Ljava/lang/String;)V
:try_end_88
.catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_88} :catch_89
goto :goto_6c
:catch_89
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Error on GAThread: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lcom/google/analytics/tracking/android/ah;->a(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->a(Ljava/lang/String;)V
const-string v0, "Google Analytics is shutting down."
invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->a(Ljava/lang/String;)V
iput-boolean v5, p0, Lcom/google/analytics/tracking/android/ah;->b:Z
goto :goto_6c
:catch_a8
move-exception v0
const-string v0, "sleep interrupted in GAThread initialize"
invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->d(Ljava/lang/String;)V
goto/16 :goto_7
:catch_b0
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Error initializing the GAThread: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lcom/google/analytics/tracking/android/ah;->a(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->a(Ljava/lang/String;)V
const-string v0, "Google Analytics will not start up."
invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->a(Ljava/lang/String;)V
iput-boolean v5, p0, Lcom/google/analytics/tracking/android/ah;->b:Z
goto :goto_6c
:cond_cf
return-void
.end method