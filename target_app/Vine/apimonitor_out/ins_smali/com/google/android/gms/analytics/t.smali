.class  Lcom/google/android/gms/analytics/t;
.super Ljava/lang/Thread;
.implements Lcom/google/android/gms/analytics/f;
.field private static uL:Lcom/google/android/gms/analytics/t;
.field private volatile mClosed:Z
.field private final mContext:Landroid/content/Context;
.field private final uH:Ljava/util/concurrent/LinkedBlockingQueue;
.field private volatile uI:Z
.field private volatile uJ:Ljava/util/List;
.field private volatile uK:Ljava/lang/String;
.field private volatile uM:Lcom/google/android/gms/analytics/ag;
.method private constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x0
const-string v0, "GAThread"
invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V
new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;
invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/analytics/t;->uH:Ljava/util/concurrent/LinkedBlockingQueue;
iput-boolean v1, p0, Lcom/google/android/gms/analytics/t;->uI:Z
iput-boolean v1, p0, Lcom/google/android/gms/analytics/t;->mClosed:Z
if-eqz p1, :cond_1d
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/analytics/t;->mContext:Landroid/content/Context;
:goto_19
invoke-virtual {p0}, Lcom/google/android/gms/analytics/t;->start()V
return-void
:cond_1d
iput-object p1, p0, Lcom/google/android/gms/analytics/t;->mContext:Landroid/content/Context;
goto :goto_19
.end method
.method static O(Ljava/lang/String;)I
.registers 6
const/4 v0, 0x1
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_2c
const/4 v1, 0x0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v4, v0
move v0, v1
move v1, v4
:goto_11
if-ltz v1, :cond_2c
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v2
shl-int/lit8 v0, v0, 0x6
const v3, 0xfffffff
and-int/2addr v0, v3
add-int/2addr v0, v2
shl-int/lit8 v2, v2, 0xe
add-int/2addr v0, v2
const/high16 v2, 0xfe0
and-int/2addr v2, v0
if-eqz v2, :cond_29
shr-int/lit8 v2, v2, 0x15
xor-int/2addr v0, v2
:cond_29
add-int/lit8 v1, v1, -0x1
goto :goto_11
:cond_2c
return v0
.end method
.method static synthetic a(Lcom/google/android/gms/analytics/t;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/t;->mContext:Landroid/content/Context;
return-object v0
.end method
.method static synthetic a(Lcom/google/android/gms/analytics/t;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/analytics/t;->uK:Ljava/lang/String;
return-object p1
.end method
.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
new-instance v1, Ljava/io/PrintStream;
invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V
new-instance v1, Ljava/lang/String;
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
return-object v1
.end method
.method static synthetic a(Lcom/google/android/gms/analytics/t;Ljava/util/Map;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/t;->s(Ljava/util/Map;)V
return-void
.end method
.method static synthetic b(Lcom/google/android/gms/analytics/t;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/t;->uK:Ljava/lang/String;
return-object v0
.end method
.method static synthetic b(Lcom/google/android/gms/analytics/t;Ljava/util/Map;)Z
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/t;->r(Ljava/util/Map;)Z
move-result v0
return v0
.end method
.method static synthetic c(Lcom/google/android/gms/analytics/t;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/t;->uJ:Ljava/util/List;
return-object v0
.end method
.method static synthetic c(Lcom/google/android/gms/analytics/t;Ljava/util/Map;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/t;->t(Ljava/util/Map;)V
return-void
.end method
.method static synthetic d(Lcom/google/android/gms/analytics/t;)Lcom/google/android/gms/analytics/ag;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/t;->uM:Lcom/google/android/gms/analytics/ag;
return-object v0
.end method
.method static synthetic d(Lcom/google/android/gms/analytics/t;Ljava/util/Map;)Ljava/lang/String;
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/t;->q(Ljava/util/Map;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private q(Ljava/util/Map;)Ljava/lang/String;
.registers 4
const-string v0, "useSecure"
invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1d
const-string v0, "useSecure"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/google/android/gms/analytics/ak;->d(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_1a
const-string v0, "https:"
:goto_19
return-object v0
:cond_1a
const-string v0, "http:"
goto :goto_19
:cond_1d
const-string v0, "https:"
goto :goto_19
.end method
.method private r(Ljava/util/Map;)Z
.registers 11
const/4 v2, 0x1
const-wide/high16 v7, 0x4059
const/4 v1, 0x0
const-string v0, "&sf"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_e
move v0, v1
:goto_d
return v0
:cond_e
const-string v0, "&sf"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0, v7, v8}, Lcom/google/android/gms/analytics/ak;->a(Ljava/lang/String;D)D
move-result-wide v3
cmpl-double v0, v3, v7
if-ltz v0, :cond_20
move v0, v1
goto :goto_d
:cond_20
const-string v0, "&cid"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Lcom/google/android/gms/analytics/t;->O(Ljava/lang/String;)I
move-result v0
rem-int/lit16 v0, v0, 0x2710
int-to-double v5, v0
mul-double/2addr v3, v7
cmpl-double v0, v5, v3
if-ltz v0, :cond_56
const-string v0, "&t"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_4d
const-string v0, "unknown"
:goto_3e
const-string v3, "%s hit sampled out"
new-array v4, v2, [Ljava/lang/Object;
aput-object v0, v4, v1
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V
move v0, v2
goto :goto_d
:cond_4d
const-string v0, "&t"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
goto :goto_3e
:cond_56
move v0, v1
goto :goto_d
.end method
.method private s(Ljava/util/Map;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/analytics/t;->mContext:Landroid/content/Context;
invoke-static {v0}, Lcom/google/android/gms/analytics/a;->p(Landroid/content/Context;)Lcom/google/android/gms/analytics/m;
move-result-object v0
const-string v1, "&adid"
const-string v2, "&adid"
invoke-interface {v0, v2}, Lcom/google/android/gms/analytics/m;->getValue(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/analytics/ak;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "&ate"
const-string v2, "&ate"
invoke-interface {v0, v2}, Lcom/google/android/gms/analytics/m;->getValue(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {p1, v1, v0}, Lcom/google/android/gms/analytics/ak;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private t(Ljava/util/Map;)V
.registers 5
invoke-static {}, Lcom/google/android/gms/analytics/g;->cp()Lcom/google/android/gms/analytics/g;
move-result-object v0
const-string v1, "&an"
const-string v2, "&an"
invoke-interface {v0, v2}, Lcom/google/android/gms/analytics/m;->getValue(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/analytics/ak;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "&av"
const-string v2, "&av"
invoke-interface {v0, v2}, Lcom/google/android/gms/analytics/m;->getValue(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/analytics/ak;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "&aid"
const-string v2, "&aid"
invoke-interface {v0, v2}, Lcom/google/android/gms/analytics/m;->getValue(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1, v2}, Lcom/google/android/gms/analytics/ak;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "&aiid"
const-string v2, "&aiid"
invoke-interface {v0, v2}, Lcom/google/android/gms/analytics/m;->getValue(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {p1, v1, v0}, Lcom/google/android/gms/analytics/ak;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "&v"
const-string v1, "1"
invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method static u(Landroid/content/Context;)Lcom/google/android/gms/analytics/t;
.registers 2
sget-object v0, Lcom/google/android/gms/analytics/t;->uL:Lcom/google/android/gms/analytics/t;
if-nez v0, :cond_b
new-instance v0, Lcom/google/android/gms/analytics/t;
invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/t;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/google/android/gms/analytics/t;->uL:Lcom/google/android/gms/analytics/t;
:cond_b
sget-object v0, Lcom/google/android/gms/analytics/t;->uL:Lcom/google/android/gms/analytics/t;
return-object v0
.end method
.method static v(Landroid/content/Context;)Ljava/lang/String;
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
invoke-static {v2}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V
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
invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V
:try_end_35
.catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_35} :catch_36
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_35} :catch_5b
goto :goto_25
:catch_36
move-exception v1
const-string v1, "No campaign data found."
invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->B(Ljava/lang/String;)V
goto :goto_25
:try_start_3d
:cond_3d
new-instance v1, Ljava/lang/String;
const/4 v4, 0x0
invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([BII)V
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Campaign found: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/google/android/gms/analytics/aa;->B(Ljava/lang/String;)V
:try_end_59
.catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_59} :catch_36
.catch Ljava/io/IOException; {:try_start_3d .. :try_end_59} :catch_5b
move-object v0, v1
goto :goto_25
:catch_5b
move-exception v1
const-string v1, "Error reading campaign data."
invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V
const-string v1, "gaInstallData"
invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
goto :goto_25
.end method
.method  a(Ljava/lang/Runnable;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/analytics/t;->uH:Ljava/util/concurrent/LinkedBlockingQueue;
invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public cg()V
.registers 2
new-instance v0, Lcom/google/android/gms/analytics/t$3;
invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/t$3;-><init>(Lcom/google/android/gms/analytics/t;)V
invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/t;->a(Ljava/lang/Runnable;)V
return-void
.end method
.method public cl()V
.registers 2
new-instance v0, Lcom/google/android/gms/analytics/t$2;
invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/t$2;-><init>(Lcom/google/android/gms/analytics/t;)V
invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/t;->a(Ljava/lang/Runnable;)V
return-void
.end method
.method public cn()V
.registers 2
new-instance v0, Lcom/google/android/gms/analytics/t$4;
invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/t$4;-><init>(Lcom/google/android/gms/analytics/t;)V
invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/t;->a(Ljava/lang/Runnable;)V
return-void
.end method
.method public co()Ljava/util/concurrent/LinkedBlockingQueue;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/t;->uH:Ljava/util/concurrent/LinkedBlockingQueue;
return-object v0
.end method
.method public getThread()Ljava/lang/Thread;
.registers 1
return-object p0
.end method
.method protected init()V
.registers 8
const/4 v6, 0x0
const/4 v5, 0x1
iget-object v0, p0, Lcom/google/android/gms/analytics/t;->uM:Lcom/google/android/gms/analytics/ag;
invoke-interface {v0}, Lcom/google/android/gms/analytics/ag;->cG()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/analytics/t;->uJ:Ljava/util/List;
iget-object v0, p0, Lcom/google/android/gms/analytics/t;->uJ:Ljava/util/List;
new-instance v1, Lcom/google/android/gms/internal/fe;
const-string v2, "appendVersion"
const-string v3, "&_v"
invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
const-string v4, "ma4.0.2"
invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/fe;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/google/android/gms/analytics/t;->uJ:Ljava/util/List;
new-instance v1, Lcom/google/android/gms/internal/fe;
const-string v2, "appendQueueTime"
const-string v3, "&qt"
invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v2, v3, v6}, Lcom/google/android/gms/internal/fe;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/google/android/gms/analytics/t;->uJ:Ljava/util/List;
new-instance v1, Lcom/google/android/gms/internal/fe;
const-string v2, "appendCacheBuster"
const-string v3, "&z"
invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v2, v3, v6}, Lcom/google/android/gms/internal/fe;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public p(Ljava/util/Map;)V
.registers 6
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
const-string v0, "&ht"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_12
:try_start_f
invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
:cond_12
:goto_12
:try_end_12
.catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_12} :catch_2a
if-nez v0, :cond_21
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
const-string v0, "&ht"
invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_21
new-instance v0, Lcom/google/android/gms/analytics/t$1;
invoke-direct {v0, p0, v1}, Lcom/google/android/gms/analytics/t$1;-><init>(Lcom/google/android/gms/analytics/t;Ljava/util/Map;)V
invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/t;->a(Ljava/lang/Runnable;)V
return-void
:catch_2a
move-exception v0
const/4 v0, 0x0
goto :goto_12
.end method
.method public run()V
.registers 5
const/4 v3, 0x1
const/16 v0, 0xa
invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
const-wide/16 v0, 0x1388
:try_start_8
invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
:goto_b
:try_start_b
:try_end_b
.catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_68
iget-object v0, p0, Lcom/google/android/gms/analytics/t;->uM:Lcom/google/android/gms/analytics/ag;
if-nez v0, :cond_18
new-instance v0, Lcom/google/android/gms/analytics/s;
iget-object v1, p0, Lcom/google/android/gms/analytics/t;->mContext:Landroid/content/Context;
invoke-direct {v0, v1, p0}, Lcom/google/android/gms/analytics/s;-><init>(Landroid/content/Context;Lcom/google/android/gms/analytics/f;)V
iput-object v0, p0, Lcom/google/android/gms/analytics/t;->uM:Lcom/google/android/gms/analytics/ag;
:cond_18
invoke-virtual {p0}, Lcom/google/android/gms/analytics/t;->init()V
iget-object v0, p0, Lcom/google/android/gms/analytics/t;->mContext:Landroid/content/Context;
invoke-static {v0}, Lcom/google/android/gms/analytics/t;->v(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/analytics/t;->uK:Ljava/lang/String;
const-string v0, "Initialized GA Thread"
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V
:cond_28
:goto_28
:try_end_28
.catch Ljava/lang/Throwable; {:try_start_b .. :try_end_28} :catch_6f
iget-boolean v0, p0, Lcom/google/android/gms/analytics/t;->mClosed:Z
if-nez v0, :cond_92
:try_start_2c
iget-object v0, p0, Lcom/google/android/gms/analytics/t;->uH:Ljava/util/concurrent/LinkedBlockingQueue;
invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Runnable;
iget-boolean v1, p0, Lcom/google/android/gms/analytics/t;->uI:Z
if-nez v1, :cond_28
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
:try_end_3b
.catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_3b} :catch_3c
.catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_3b} :catch_45
goto :goto_28
:catch_3c
move-exception v0
:try_start_3d
invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->B(Ljava/lang/String;)V
:try_end_44
.catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_44} :catch_45
goto :goto_28
:catch_45
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Error on GAThread: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/t;->a(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V
const-string v0, "Google Analytics is shutting down."
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V
iput-boolean v3, p0, Lcom/google/android/gms/analytics/t;->uI:Z
goto :goto_28
:catch_68
move-exception v0
const-string v0, "sleep interrupted in GAThread initialize"
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V
goto :goto_b
:catch_6f
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Error initializing the GAThread: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/t;->a(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V
const-string v0, "Google Analytics will not start up."
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V
iput-boolean v3, p0, Lcom/google/android/gms/analytics/t;->uI:Z
goto :goto_28
:cond_92
return-void
.end method