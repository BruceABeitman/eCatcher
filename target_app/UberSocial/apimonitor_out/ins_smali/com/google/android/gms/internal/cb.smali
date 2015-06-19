.class public final Lcom/google/android/gms/internal/cb;
.super Lcom/google/android/gms/internal/dq;
.implements Lcom/google/android/gms/internal/cr;
.implements Lcom/google/android/gms/internal/eh;
.field private final a:Lcom/google/android/gms/internal/as;
.field private final b:Lcom/google/android/gms/internal/ca;
.field private final c:Lcom/google/android/gms/internal/ec;
.field private final d:Ljava/lang/Object;
.field private final e:Landroid/content/Context;
.field private final f:Ljava/lang/Object;
.field private final g:Lcom/google/android/gms/internal/cw;
.field private final h:Lcom/google/android/gms/internal/sw;
.field private i:Lcom/google/android/gms/internal/dq;
.field private j:Lcom/google/android/gms/internal/cf;
.field private k:Z
.field private l:Lcom/google/android/gms/internal/ag;
.field private m:Lcom/google/android/gms/internal/ai;
.field private n:Lcom/google/android/gms/internal/ao;
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cw;Lcom/google/android/gms/internal/sw;Lcom/google/android/gms/internal/ec;Lcom/google/android/gms/internal/as;Lcom/google/android/gms/internal/ca;)V
.registers 8
invoke-direct {p0}, Lcom/google/android/gms/internal/dq;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/cb;->d:Ljava/lang/Object;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/cb;->f:Ljava/lang/Object;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/cb;->k:Z
iput-object p5, p0, Lcom/google/android/gms/internal/cb;->a:Lcom/google/android/gms/internal/as;
iput-object p6, p0, Lcom/google/android/gms/internal/cb;->b:Lcom/google/android/gms/internal/ca;
iput-object p4, p0, Lcom/google/android/gms/internal/cb;->c:Lcom/google/android/gms/internal/ec;
iput-object p1, p0, Lcom/google/android/gms/internal/cb;->e:Landroid/content/Context;
iput-object p2, p0, Lcom/google/android/gms/internal/cb;->g:Lcom/google/android/gms/internal/cw;
iput-object p3, p0, Lcom/google/android/gms/internal/cb;->h:Lcom/google/android/gms/internal/sw;
return-void
.end method
.method private a(Lcom/google/android/gms/internal/cd;)Lcom/google/android/gms/internal/ab;
.registers 13
const/4 v3, 0x0
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->j:Lcom/google/android/gms/internal/cf;
iget-object v0, v0, Lcom/google/android/gms/internal/cf;->m:Ljava/lang/String;
if-nez v0, :cond_f
new-instance v0, Lcom/google/android/gms/internal/cc;
const-string v1, "The ad response must specify one of the supported ad sizes."
invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/cc;-><init>(Ljava/lang/String;I)V
throw v0
:cond_f
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->j:Lcom/google/android/gms/internal/cf;
iget-object v0, v0, Lcom/google/android/gms/internal/cf;->m:Ljava/lang/String;
const-string v1, "x"
invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
array-length v1, v0
const/4 v2, 0x2
if-eq v1, v2, :cond_3a
new-instance v0, Lcom/google/android/gms/internal/cc;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Could not parse the ad size from the ad response: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/cb;->j:Lcom/google/android/gms/internal/cf;
iget-object v2, v2, Lcom/google/android/gms/internal/cf;->m:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/cc;-><init>(Ljava/lang/String;I)V
throw v0
:cond_3a
const/4 v1, 0x0
:try_start_3b
aget-object v1, v0, v1
invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v4
const/4 v1, 0x1
aget-object v0, v0, v1
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_47
.catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_47} :catch_81
move-result v5
iget-object v0, p1, Lcom/google/android/gms/internal/cd;->d:Lcom/google/android/gms/internal/ab;
iget-object v6, v0, Lcom/google/android/gms/internal/ab;->h:[Lcom/google/android/gms/internal/ab;
array-length v7, v6
move v2, v3
:goto_4e
if-ge v2, v7, :cond_a9
aget-object v8, v6, v2
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->e:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v1, v0, Landroid/util/DisplayMetrics;->density:F
iget v0, v8, Lcom/google/android/gms/internal/ab;->f:I
const/4 v9, -0x1
if-ne v0, v9, :cond_9f
iget v0, v8, Lcom/google/android/gms/internal/ab;->g:I
int-to-float v0, v0
div-float/2addr v0, v1
float-to-int v0, v0
:goto_68
iget v9, v8, Lcom/google/android/gms/internal/ab;->c:I
const/4 v10, -0x2
if-ne v9, v10, :cond_a2
iget v9, v8, Lcom/google/android/gms/internal/ab;->d:I
int-to-float v9, v9
div-float v1, v9, v1
float-to-int v1, v1
:goto_73
if-ne v4, v0, :cond_a5
if-ne v5, v1, :cond_a5
new-instance v0, Lcom/google/android/gms/internal/ab;
iget-object v1, p1, Lcom/google/android/gms/internal/cd;->d:Lcom/google/android/gms/internal/ab;
iget-object v1, v1, Lcom/google/android/gms/internal/ab;->h:[Lcom/google/android/gms/internal/ab;
invoke-direct {v0, v8, v1}, Lcom/google/android/gms/internal/ab;-><init>(Lcom/google/android/gms/internal/ab;[Lcom/google/android/gms/internal/ab;)V
return-object v0
:catch_81
move-exception v0
new-instance v0, Lcom/google/android/gms/internal/cc;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Could not parse the ad size from the ad response: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/cb;->j:Lcom/google/android/gms/internal/cf;
iget-object v2, v2, Lcom/google/android/gms/internal/cf;->m:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/cc;-><init>(Ljava/lang/String;I)V
throw v0
:cond_9f
iget v0, v8, Lcom/google/android/gms/internal/ab;->f:I
goto :goto_68
:cond_a2
iget v1, v8, Lcom/google/android/gms/internal/ab;->c:I
goto :goto_73
:cond_a5
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_4e
:cond_a9
new-instance v0, Lcom/google/android/gms/internal/cc;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "The ad size from the ad response was not one of the requested sizes: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/cb;->j:Lcom/google/android/gms/internal/cf;
iget-object v2, v2, Lcom/google/android/gms/internal/cf;->m:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/cc;-><init>(Ljava/lang/String;I)V
throw v0
.end method
.method static synthetic a(Lcom/google/android/gms/internal/cb;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->f:Ljava/lang/Object;
return-object v0
.end method
.method private a(J)V
.registers 5
sget-object v0, Lcom/google/android/gms/internal/dx;->a:Landroid/os/Handler;
new-instance v1, Lcom/google/android/gms/internal/cb$3;
invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cb$3;-><init>(Lcom/google/android/gms/internal/cb;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cb;->c(J)V
return-void
.end method
.method private a(Lcom/google/android/gms/internal/cd;J)V
.registers 9
iget-object v1, p0, Lcom/google/android/gms/internal/cb;->d:Ljava/lang/Object;
monitor-enter v1
:try_start_3
new-instance v0, Lcom/google/android/gms/internal/ag;
iget-object v2, p0, Lcom/google/android/gms/internal/cb;->e:Landroid/content/Context;
iget-object v3, p0, Lcom/google/android/gms/internal/cb;->a:Lcom/google/android/gms/internal/as;
iget-object v4, p0, Lcom/google/android/gms/internal/cb;->m:Lcom/google/android/gms/internal/ai;
invoke-direct {v0, v2, p1, v3, v4}, Lcom/google/android/gms/internal/ag;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/as;Lcom/google/android/gms/internal/ai;)V
iput-object v0, p0, Lcom/google/android/gms/internal/cb;->l:Lcom/google/android/gms/internal/ag;
monitor-exit v1
:try_end_11
.catchall {:try_start_3 .. :try_end_11} :catchall_41
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->l:Lcom/google/android/gms/internal/ag;
const-wide/32 v1, 0xea60
invoke-virtual {v0, p2, p3, v1, v2}, Lcom/google/android/gms/internal/ag;->a(JJ)Lcom/google/android/gms/internal/ao;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/cb;->n:Lcom/google/android/gms/internal/ao;
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->n:Lcom/google/android/gms/internal/ao;
iget v0, v0, Lcom/google/android/gms/internal/ao;->a:I
packed-switch v0, :pswitch_data_4e
new-instance v0, Lcom/google/android/gms/internal/cc;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Unexpected mediation result: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/cb;->n:Lcom/google/android/gms/internal/ao;
iget v2, v2, Lcom/google/android/gms/internal/ao;->a:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cc;-><init>(Ljava/lang/String;I)V
throw v0
:catchall_41
move-exception v0
:try_start_42
monitor-exit v1
:try_end_43
.catchall {:try_start_42 .. :try_end_43} :catchall_41
throw v0
:pswitch_44
new-instance v0, Lcom/google/android/gms/internal/cc;
const-string v1, "No fill from any mediation ad networks."
const/4 v2, 0x3
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cc;-><init>(Ljava/lang/String;I)V
throw v0
:pswitch_4d
return-void
:pswitch_data_4e
.packed-switch 0x0
:pswitch_4d
:pswitch_44
.end packed-switch
.end method
.method static synthetic b(Lcom/google/android/gms/internal/cb;)Lcom/google/android/gms/internal/ca;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->b:Lcom/google/android/gms/internal/ca;
return-object v0
.end method
.method private b(J)V
.registers 6
:cond_0
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cb;->d(J)Z
move-result v0
if-nez v0, :cond_f
new-instance v0, Lcom/google/android/gms/internal/cc;
const-string v1, "Timed out waiting for ad response."
const/4 v2, 0x2
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cc;-><init>(Ljava/lang/String;I)V
throw v0
:cond_f
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->j:Lcom/google/android/gms/internal/cf;
if-eqz v0, :cond_0
iget-object v1, p0, Lcom/google/android/gms/internal/cb;->d:Ljava/lang/Object;
monitor-enter v1
const/4 v0, 0x0
:try_start_17
iput-object v0, p0, Lcom/google/android/gms/internal/cb;->i:Lcom/google/android/gms/internal/dq;
monitor-exit v1
:try_end_1a
.catchall {:try_start_17 .. :try_end_1a} :catchall_49
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->j:Lcom/google/android/gms/internal/cf;
iget v0, v0, Lcom/google/android/gms/internal/cf;->e:I
const/4 v1, -0x2
if-eq v0, v1, :cond_4c
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->j:Lcom/google/android/gms/internal/cf;
iget v0, v0, Lcom/google/android/gms/internal/cf;->e:I
const/4 v1, -0x3
if-eq v0, v1, :cond_4c
new-instance v0, Lcom/google/android/gms/internal/cc;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "There was a problem getting an ad response. ErrorCode: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/cb;->j:Lcom/google/android/gms/internal/cf;
iget v2, v2, Lcom/google/android/gms/internal/cf;->e:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/cb;->j:Lcom/google/android/gms/internal/cf;
iget v2, v2, Lcom/google/android/gms/internal/cf;->e:I
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cc;-><init>(Ljava/lang/String;I)V
throw v0
:catchall_49
move-exception v0
:try_start_4a
monitor-exit v1
:try_end_4b
.catchall {:try_start_4a .. :try_end_4b} :catchall_49
throw v0
:cond_4c
return-void
.end method
.method static synthetic c(Lcom/google/android/gms/internal/cb;)Lcom/google/android/gms/internal/cf;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->j:Lcom/google/android/gms/internal/cf;
return-object v0
.end method
.method private c()V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->j:Lcom/google/android/gms/internal/cf;
iget v0, v0, Lcom/google/android/gms/internal/cf;->e:I
const/4 v1, -0x3
if-ne v0, v1, :cond_8
:goto_7
:cond_7
return-void
:cond_8
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->j:Lcom/google/android/gms/internal/cf;
iget-object v0, v0, Lcom/google/android/gms/internal/cf;->c:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_1b
new-instance v0, Lcom/google/android/gms/internal/cc;
const-string v1, "No fill from ad server."
const/4 v2, 0x3
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cc;-><init>(Ljava/lang/String;I)V
throw v0
:cond_1b
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->j:Lcom/google/android/gms/internal/cf;
iget-boolean v0, v0, Lcom/google/android/gms/internal/cf;->h:Z
if-eqz v0, :cond_7
:try_start_21
new-instance v0, Lcom/google/android/gms/internal/ai;
iget-object v1, p0, Lcom/google/android/gms/internal/cb;->j:Lcom/google/android/gms/internal/cf;
iget-object v1, v1, Lcom/google/android/gms/internal/cf;->c:Ljava/lang/String;
invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ai;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/google/android/gms/internal/cb;->m:Lcom/google/android/gms/internal/ai;
:try_end_2c
.catch Lorg/json/JSONException; {:try_start_21 .. :try_end_2c} :catch_2d
goto :goto_7
:catch_2d
move-exception v0
new-instance v0, Lcom/google/android/gms/internal/cc;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Could not parse mediation config: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/cb;->j:Lcom/google/android/gms/internal/cf;
iget-object v2, v2, Lcom/google/android/gms/internal/cf;->c:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cc;-><init>(Ljava/lang/String;I)V
throw v0
.end method
.method private c(J)V
.registers 6
:cond_0
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cb;->d(J)Z
move-result v0
if-nez v0, :cond_f
new-instance v0, Lcom/google/android/gms/internal/cc;
const-string v1, "Timed out waiting for WebView to finish loading."
const/4 v2, 0x2
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cc;-><init>(Ljava/lang/String;I)V
throw v0
:cond_f
iget-boolean v0, p0, Lcom/google/android/gms/internal/cb;->k:Z
if-eqz v0, :cond_0
return-void
.end method
.method static synthetic d(Lcom/google/android/gms/internal/cb;)Lcom/google/android/gms/internal/ec;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->c:Lcom/google/android/gms/internal/ec;
return-object v0
.end method
.method private d(J)Z
.registers 7
const-wide/32 v0, 0xea60
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v2
sub-long/2addr v2, p1
sub-long/2addr v0, v2
const-wide/16 v2, 0x0
cmp-long v2, v0, v2
if-gtz v2, :cond_11
const/4 v0, 0x0
:goto_10
return v0
:try_start_11
:cond_11
iget-object v2, p0, Lcom/google/android/gms/internal/cb;->f:Ljava/lang/Object;
invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
:try_end_16
.catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_16} :catch_18
const/4 v0, 0x1
goto :goto_10
:catch_18
move-exception v0
new-instance v0, Lcom/google/android/gms/internal/cc;
const-string v1, "Ad request cancelled."
const/4 v2, -0x1
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cc;-><init>(Ljava/lang/String;I)V
throw v0
.end method
.method public a()V
.registers 30
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/android/gms/internal/cb;->f:Ljava/lang/Object;
move-object/from16 v28, v0
monitor-enter v28
:try_start_7
const-string v2, "AdLoaderBackgroundTask started."
invoke-static {v2}, Lcom/google/android/gms/internal/ea;->a(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/google/android/gms/internal/cb;->h:Lcom/google/android/gms/internal/sw;
invoke-virtual {v2}, Lcom/google/android/gms/internal/sw;->a()Lcom/google/android/gms/internal/oo;
move-result-object v2
move-object/from16 v0, p0
iget-object v3, v0, Lcom/google/android/gms/internal/cb;->e:Landroid/content/Context;
invoke-interface {v2, v3}, Lcom/google/android/gms/internal/oo;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
new-instance v12, Lcom/google/android/gms/internal/cd;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/google/android/gms/internal/cb;->g:Lcom/google/android/gms/internal/cw;
invoke-direct {v12, v3, v2}, Lcom/google/android/gms/internal/cd;-><init>(Lcom/google/android/gms/internal/cw;Ljava/lang/String;)V
:try_end_25
.catchall {:try_start_7 .. :try_end_25} :catchall_158
const/4 v5, 0x0
const/4 v6, -0x2
const-wide/16 v3, -0x1
:try_start_29
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v7
move-object/from16 v0, p0
iget-object v2, v0, Lcom/google/android/gms/internal/cb;->e:Landroid/content/Context;
move-object/from16 v0, p0
invoke-static {v2, v12, v0}, Lcom/google/android/gms/internal/cq;->a(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/cr;)Lcom/google/android/gms/internal/dq;
move-result-object v2
move-object/from16 v0, p0
iget-object v9, v0, Lcom/google/android/gms/internal/cb;->d:Ljava/lang/Object;
monitor-enter v9
:try_end_3c
.catchall {:try_start_29 .. :try_end_3c} :catchall_158
.catch Lcom/google/android/gms/internal/cc; {:try_start_29 .. :try_end_3c} :catch_52
:try_start_3c
move-object/from16 v0, p0
iput-object v2, v0, Lcom/google/android/gms/internal/cb;->i:Lcom/google/android/gms/internal/dq;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/google/android/gms/internal/cb;->i:Lcom/google/android/gms/internal/dq;
if-nez v2, :cond_126
new-instance v2, Lcom/google/android/gms/internal/cc;
const-string v6, "Could not start the ad request service."
const/4 v7, 0x0
invoke-direct {v2, v6, v7}, Lcom/google/android/gms/internal/cc;-><init>(Ljava/lang/String;I)V
throw v2
:catchall_4f
move-exception v2
monitor-exit v9
:try_start_51
:try_end_51
.catchall {:try_start_3c .. :try_end_51} :catchall_4f
throw v2
:try_end_52
.catchall {:try_start_51 .. :try_end_52} :catchall_158
.catch Lcom/google/android/gms/internal/cc; {:try_start_51 .. :try_end_52} :catch_52
:catch_52
move-exception v2
:try_start_53
invoke-virtual {v2}, Lcom/google/android/gms/internal/cc;->a()I
move-result v6
const/4 v7, 0x3
if-eq v6, v7, :cond_5d
const/4 v7, -0x1
if-ne v6, v7, :cond_15b
:cond_5d
invoke-virtual {v2}, Lcom/google/android/gms/internal/cc;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/google/android/gms/internal/ea;->c(Ljava/lang/String;)V
:goto_64
new-instance v2, Lcom/google/android/gms/internal/cf;
invoke-direct {v2, v6}, Lcom/google/android/gms/internal/cf;-><init>(I)V
move-object/from16 v0, p0
iput-object v2, v0, Lcom/google/android/gms/internal/cb;->j:Lcom/google/android/gms/internal/cf;
sget-object v2, Lcom/google/android/gms/internal/dx;->a:Landroid/os/Handler;
new-instance v7, Lcom/google/android/gms/internal/cb$1;
move-object/from16 v0, p0
invoke-direct {v7, v0}, Lcom/google/android/gms/internal/cb$1;-><init>(Lcom/google/android/gms/internal/cb;)V
invoke-virtual {v2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
move-wide/from16 v24, v3
move-object/from16 v21, v5
:goto_7d
new-instance v2, Lcom/google/android/gms/internal/dj;
iget-object v3, v12, Lcom/google/android/gms/internal/cd;->c:Lcom/google/android/gms/internal/z;
move-object/from16 v0, p0
iget-object v4, v0, Lcom/google/android/gms/internal/cb;->c:Lcom/google/android/gms/internal/ec;
move-object/from16 v0, p0
iget-object v5, v0, Lcom/google/android/gms/internal/cb;->j:Lcom/google/android/gms/internal/cf;
iget-object v5, v5, Lcom/google/android/gms/internal/cf;->d:Ljava/util/List;
move-object/from16 v0, p0
iget-object v7, v0, Lcom/google/android/gms/internal/cb;->j:Lcom/google/android/gms/internal/cf;
iget-object v7, v7, Lcom/google/android/gms/internal/cf;->f:Ljava/util/List;
move-object/from16 v0, p0
iget-object v8, v0, Lcom/google/android/gms/internal/cb;->j:Lcom/google/android/gms/internal/cf;
iget-object v8, v8, Lcom/google/android/gms/internal/cf;->j:Ljava/util/List;
move-object/from16 v0, p0
iget-object v9, v0, Lcom/google/android/gms/internal/cb;->j:Lcom/google/android/gms/internal/cf;
iget v9, v9, Lcom/google/android/gms/internal/cf;->l:I
move-object/from16 v0, p0
iget-object v10, v0, Lcom/google/android/gms/internal/cb;->j:Lcom/google/android/gms/internal/cf;
iget-wide v10, v10, Lcom/google/android/gms/internal/cf;->k:J
iget-object v12, v12, Lcom/google/android/gms/internal/cd;->i:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/android/gms/internal/cb;->j:Lcom/google/android/gms/internal/cf;
iget-boolean v13, v13, Lcom/google/android/gms/internal/cf;->h:Z
move-object/from16 v0, p0
iget-object v14, v0, Lcom/google/android/gms/internal/cb;->n:Lcom/google/android/gms/internal/ao;
if-eqz v14, :cond_164
move-object/from16 v0, p0
iget-object v14, v0, Lcom/google/android/gms/internal/cb;->n:Lcom/google/android/gms/internal/ao;
iget-object v14, v14, Lcom/google/android/gms/internal/ao;->b:Lcom/google/android/gms/internal/ah;
:goto_b7
move-object/from16 v0, p0
iget-object v15, v0, Lcom/google/android/gms/internal/cb;->n:Lcom/google/android/gms/internal/ao;
if-eqz v15, :cond_167
move-object/from16 v0, p0
iget-object v15, v0, Lcom/google/android/gms/internal/cb;->n:Lcom/google/android/gms/internal/ao;
iget-object v15, v15, Lcom/google/android/gms/internal/ao;->c:Lcom/google/android/gms/internal/av;
:goto_c3
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/android/gms/internal/cb;->n:Lcom/google/android/gms/internal/ao;
move-object/from16 v16, v0
if-eqz v16, :cond_16a
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/android/gms/internal/cb;->n:Lcom/google/android/gms/internal/ao;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/google/android/gms/internal/ao;->d:Ljava/lang/String;
move-object/from16 v16, v0
:goto_d7
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/android/gms/internal/cb;->m:Lcom/google/android/gms/internal/ai;
move-object/from16 v17, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/android/gms/internal/cb;->n:Lcom/google/android/gms/internal/ao;
move-object/from16 v18, v0
if-eqz v18, :cond_16e
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/android/gms/internal/cb;->n:Lcom/google/android/gms/internal/ao;
move-object/from16 v18, v0
move-object/from16 v0, v18
iget-object v0, v0, Lcom/google/android/gms/internal/ao;->e:Lcom/google/android/gms/internal/al;
move-object/from16 v18, v0
:goto_f1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/android/gms/internal/cb;->j:Lcom/google/android/gms/internal/cf;
move-object/from16 v19, v0
move-object/from16 v0, v19
iget-wide v0, v0, Lcom/google/android/gms/internal/cf;->i:J
move-wide/from16 v19, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/android/gms/internal/cb;->j:Lcom/google/android/gms/internal/cf;
move-object/from16 v22, v0
move-object/from16 v0, v22
iget-wide v0, v0, Lcom/google/android/gms/internal/cf;->g:J
move-wide/from16 v22, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/android/gms/internal/cb;->j:Lcom/google/android/gms/internal/cf;
move-object/from16 v26, v0
move-object/from16 v0, v26
iget-wide v0, v0, Lcom/google/android/gms/internal/cf;->n:J
move-wide/from16 v26, v0
invoke-direct/range {v2 .. v27}, Lcom/google/android/gms/internal/dj;-><init>(Lcom/google/android/gms/internal/z;Lcom/google/android/gms/internal/ec;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/ah;Lcom/google/android/gms/internal/av;Ljava/lang/String;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/al;JLcom/google/android/gms/internal/ab;JJJ)V
sget-object v3, Lcom/google/android/gms/internal/dx;->a:Landroid/os/Handler;
new-instance v4, Lcom/google/android/gms/internal/cb$2;
move-object/from16 v0, p0
invoke-direct {v4, v0, v2}, Lcom/google/android/gms/internal/cb$2;-><init>(Lcom/google/android/gms/internal/cb;Lcom/google/android/gms/internal/dj;)V
invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
monitor-exit v28
:try_end_125
.catchall {:try_start_53 .. :try_end_125} :catchall_158
return-void
:cond_126
:try_start_126
monitor-exit v9
:try_end_127
.catchall {:try_start_126 .. :try_end_127} :catchall_4f
:try_start_127
move-object/from16 v0, p0
invoke-direct {v0, v7, v8}, Lcom/google/android/gms/internal/cb;->b(J)V
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v3
invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/cb;->c()V
iget-object v2, v12, Lcom/google/android/gms/internal/cd;->d:Lcom/google/android/gms/internal/ab;
iget-object v2, v2, Lcom/google/android/gms/internal/ab;->h:[Lcom/google/android/gms/internal/ab;
if-eqz v2, :cond_13f
move-object/from16 v0, p0
invoke-direct {v0, v12}, Lcom/google/android/gms/internal/cb;->a(Lcom/google/android/gms/internal/cd;)Lcom/google/android/gms/internal/ab;
move-result-object v5
:cond_13f
move-object/from16 v0, p0
iget-object v2, v0, Lcom/google/android/gms/internal/cb;->j:Lcom/google/android/gms/internal/cf;
iget-boolean v2, v2, Lcom/google/android/gms/internal/cf;->h:Z
if-eqz v2, :cond_152
move-object/from16 v0, p0
invoke-direct {v0, v12, v7, v8}, Lcom/google/android/gms/internal/cb;->a(Lcom/google/android/gms/internal/cd;J)V
:goto_14c
move-wide/from16 v24, v3
move-object/from16 v21, v5
goto/16 :goto_7d
:cond_152
move-object/from16 v0, p0
invoke-direct {v0, v7, v8}, Lcom/google/android/gms/internal/cb;->a(J)V
:try_end_157
.catchall {:try_start_127 .. :try_end_157} :catchall_158
.catch Lcom/google/android/gms/internal/cc; {:try_start_127 .. :try_end_157} :catch_52
goto :goto_14c
:catchall_158
move-exception v2
:try_start_159
monitor-exit v28
:try_end_15a
.catchall {:try_start_159 .. :try_end_15a} :catchall_158
throw v2
:try_start_15b
:cond_15b
invoke-virtual {v2}, Lcom/google/android/gms/internal/cc;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V
:try_end_162
.catchall {:try_start_15b .. :try_end_162} :catchall_158
goto/16 :goto_64
:cond_164
const/4 v14, 0x0
goto/16 :goto_b7
:cond_167
const/4 v15, 0x0
goto/16 :goto_c3
:cond_16a
const/16 v16, 0x0
goto/16 :goto_d7
:cond_16e
const/16 v18, 0x0
goto :goto_f1
.end method
.method public a(Lcom/google/android/gms/internal/cf;)V
.registers 4
iget-object v1, p0, Lcom/google/android/gms/internal/cb;->f:Ljava/lang/Object;
monitor-enter v1
:try_start_3
const-string v0, "Received ad response."
invoke-static {v0}, Lcom/google/android/gms/internal/ea;->a(Ljava/lang/String;)V
iput-object p1, p0, Lcom/google/android/gms/internal/cb;->j:Lcom/google/android/gms/internal/cf;
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->f:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->notify()V
monitor-exit v1
return-void
:catchall_11
move-exception v0
monitor-exit v1
:try_end_13
.catchall {:try_start_3 .. :try_end_13} :catchall_11
throw v0
.end method
.method public a(Lcom/google/android/gms/internal/ec;)V
.registers 4
iget-object v1, p0, Lcom/google/android/gms/internal/cb;->f:Ljava/lang/Object;
monitor-enter v1
:try_start_3
const-string v0, "WebView finished loading."
invoke-static {v0}, Lcom/google/android/gms/internal/ea;->a(Ljava/lang/String;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/internal/cb;->k:Z
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->f:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->notify()V
monitor-exit v1
return-void
:catchall_12
move-exception v0
monitor-exit v1
:try_end_14
.catchall {:try_start_3 .. :try_end_14} :catchall_12
throw v0
.end method
.method public b()V
.registers 3
iget-object v1, p0, Lcom/google/android/gms/internal/cb;->d:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->i:Lcom/google/android/gms/internal/dq;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->i:Lcom/google/android/gms/internal/dq;
invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->f()V
:cond_c
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->c:Lcom/google/android/gms/internal/ec;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ec;->stopLoading()V
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->c:Lcom/google/android/gms/internal/ec;
invoke-static {v0}, Lcom/google/android/gms/internal/ds;->a(Landroid/webkit/WebView;)V
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->l:Lcom/google/android/gms/internal/ag;
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/google/android/gms/internal/cb;->l:Lcom/google/android/gms/internal/ag;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ag;->a()V
:cond_1f
monitor-exit v1
return-void
:catchall_21
move-exception v0
monitor-exit v1
:try_end_23
.catchall {:try_start_3 .. :try_end_23} :catchall_21
throw v0
.end method