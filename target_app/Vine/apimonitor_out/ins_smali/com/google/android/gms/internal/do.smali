.class public Lcom/google/android/gms/internal/do;
.super Lcom/google/android/gms/internal/en;
.implements Lcom/google/android/gms/internal/dq$a;
.implements Lcom/google/android/gms/internal/ez$a;
.field private final kz:Lcom/google/android/gms/internal/bu;
.field private final lL:Lcom/google/android/gms/internal/ey;
.field private final lq:Ljava/lang/Object;
.field private final mContext:Landroid/content/Context;
.field private nd:Lcom/google/android/gms/internal/bn;
.field private pA:Lcom/google/android/gms/internal/dv;
.field private pB:Z
.field private pC:Lcom/google/android/gms/internal/bl;
.field private pD:Lcom/google/android/gms/internal/br;
.field private final pv:Lcom/google/android/gms/internal/dn$a;
.field private final pw:Ljava/lang/Object;
.field private final px:Lcom/google/android/gms/internal/dt$a;
.field private final py:Lcom/google/android/gms/internal/l;
.field private pz:Lcom/google/android/gms/internal/en;
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/dt$a;Lcom/google/android/gms/internal/l;Lcom/google/android/gms/internal/ey;Lcom/google/android/gms/internal/bu;Lcom/google/android/gms/internal/dn$a;)V
.registers 8
invoke-direct {p0}, Lcom/google/android/gms/internal/en;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/do;->pw:Ljava/lang/Object;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/do;->lq:Ljava/lang/Object;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/do;->pB:Z
iput-object p5, p0, Lcom/google/android/gms/internal/do;->kz:Lcom/google/android/gms/internal/bu;
iput-object p6, p0, Lcom/google/android/gms/internal/do;->pv:Lcom/google/android/gms/internal/dn$a;
iput-object p4, p0, Lcom/google/android/gms/internal/do;->lL:Lcom/google/android/gms/internal/ey;
iput-object p1, p0, Lcom/google/android/gms/internal/do;->mContext:Landroid/content/Context;
iput-object p2, p0, Lcom/google/android/gms/internal/do;->px:Lcom/google/android/gms/internal/dt$a;
iput-object p3, p0, Lcom/google/android/gms/internal/do;->py:Lcom/google/android/gms/internal/l;
return-void
.end method
.method private a(Lcom/google/android/gms/internal/dt;)Lcom/google/android/gms/internal/am;
.registers 13
const/4 v3, 0x0
iget-object v0, p0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
iget-object v0, v0, Lcom/google/android/gms/internal/dv;->qg:Ljava/lang/String;
if-nez v0, :cond_f
new-instance v0, Lcom/google/android/gms/internal/do$a;
const-string v1, "The ad response must specify one of the supported ad sizes."
invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/do$a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_f
iget-object v0, p0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
iget-object v0, v0, Lcom/google/android/gms/internal/dv;->qg:Ljava/lang/String;
const-string v1, "x"
invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
array-length v1, v0
const/4 v2, 0x2
if-eq v1, v2, :cond_3a
new-instance v0, Lcom/google/android/gms/internal/do$a;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Could not parse the ad size from the ad response: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
iget-object v2, v2, Lcom/google/android/gms/internal/dv;->qg:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/do$a;-><init>(Ljava/lang/String;I)V
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
iget-object v0, p1, Lcom/google/android/gms/internal/dt;->kR:Lcom/google/android/gms/internal/am;
iget-object v6, v0, Lcom/google/android/gms/internal/am;->me:[Lcom/google/android/gms/internal/am;
array-length v7, v6
move v2, v3
:goto_4e
if-ge v2, v7, :cond_a9
aget-object v8, v6, v2
iget-object v0, p0, Lcom/google/android/gms/internal/do;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v1, v0, Landroid/util/DisplayMetrics;->density:F
iget v0, v8, Lcom/google/android/gms/internal/am;->width:I
const/4 v9, -0x1
if-ne v0, v9, :cond_9f
iget v0, v8, Lcom/google/android/gms/internal/am;->widthPixels:I
int-to-float v0, v0
div-float/2addr v0, v1
float-to-int v0, v0
:goto_68
iget v9, v8, Lcom/google/android/gms/internal/am;->height:I
const/4 v10, -0x2
if-ne v9, v10, :cond_a2
iget v9, v8, Lcom/google/android/gms/internal/am;->heightPixels:I
int-to-float v9, v9
div-float v1, v9, v1
float-to-int v1, v1
:goto_73
if-ne v4, v0, :cond_a5
if-ne v5, v1, :cond_a5
new-instance v0, Lcom/google/android/gms/internal/am;
iget-object v1, p1, Lcom/google/android/gms/internal/dt;->kR:Lcom/google/android/gms/internal/am;
iget-object v1, v1, Lcom/google/android/gms/internal/am;->me:[Lcom/google/android/gms/internal/am;
invoke-direct {v0, v8, v1}, Lcom/google/android/gms/internal/am;-><init>(Lcom/google/android/gms/internal/am;[Lcom/google/android/gms/internal/am;)V
return-object v0
:catch_81
move-exception v0
new-instance v0, Lcom/google/android/gms/internal/do$a;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Could not parse the ad size from the ad response: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
iget-object v2, v2, Lcom/google/android/gms/internal/dv;->qg:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/do$a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_9f
iget v0, v8, Lcom/google/android/gms/internal/am;->width:I
goto :goto_68
:cond_a2
iget v1, v8, Lcom/google/android/gms/internal/am;->height:I
goto :goto_73
:cond_a5
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_4e
:cond_a9
new-instance v0, Lcom/google/android/gms/internal/do$a;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "The ad size from the ad response was not one of the requested sizes: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
iget-object v2, v2, Lcom/google/android/gms/internal/dv;->qg:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/do$a;-><init>(Ljava/lang/String;I)V
throw v0
.end method
.method static synthetic a(Lcom/google/android/gms/internal/do;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/do;->lq:Ljava/lang/Object;
return-object v0
.end method
.method private a(Lcom/google/android/gms/internal/dt;J)V
.registers 9
iget-object v1, p0, Lcom/google/android/gms/internal/do;->pw:Ljava/lang/Object;
monitor-enter v1
:try_start_3
new-instance v0, Lcom/google/android/gms/internal/bl;
iget-object v2, p0, Lcom/google/android/gms/internal/do;->mContext:Landroid/content/Context;
iget-object v3, p0, Lcom/google/android/gms/internal/do;->kz:Lcom/google/android/gms/internal/bu;
iget-object v4, p0, Lcom/google/android/gms/internal/do;->nd:Lcom/google/android/gms/internal/bn;
invoke-direct {v0, v2, p1, v3, v4}, Lcom/google/android/gms/internal/bl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/bu;Lcom/google/android/gms/internal/bn;)V
iput-object v0, p0, Lcom/google/android/gms/internal/do;->pC:Lcom/google/android/gms/internal/bl;
monitor-exit v1
:try_end_11
.catchall {:try_start_3 .. :try_end_11} :catchall_41
iget-object v0, p0, Lcom/google/android/gms/internal/do;->pC:Lcom/google/android/gms/internal/bl;
const-wide/32 v1, 0xea60
invoke-virtual {v0, p2, p3, v1, v2}, Lcom/google/android/gms/internal/bl;->a(JJ)Lcom/google/android/gms/internal/br;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/do;->pD:Lcom/google/android/gms/internal/br;
iget-object v0, p0, Lcom/google/android/gms/internal/do;->pD:Lcom/google/android/gms/internal/br;
iget v0, v0, Lcom/google/android/gms/internal/br;->nJ:I
packed-switch v0, :pswitch_data_4e
new-instance v0, Lcom/google/android/gms/internal/do$a;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Unexpected mediation result: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/do;->pD:Lcom/google/android/gms/internal/br;
iget v2, v2, Lcom/google/android/gms/internal/br;->nJ:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/do$a;-><init>(Ljava/lang/String;I)V
throw v0
:catchall_41
move-exception v0
:try_start_42
monitor-exit v1
:try_end_43
.catchall {:try_start_42 .. :try_end_43} :catchall_41
throw v0
:pswitch_44
new-instance v0, Lcom/google/android/gms/internal/do$a;
const-string v1, "No fill from any mediation ad networks."
const/4 v2, 0x3
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/do$a;-><init>(Ljava/lang/String;I)V
throw v0
:pswitch_4d
return-void
:pswitch_data_4e
.packed-switch 0x0
:pswitch_4d
:pswitch_44
.end packed-switch
.end method
.method static synthetic b(Lcom/google/android/gms/internal/do;)Lcom/google/android/gms/internal/dn$a;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/do;->pv:Lcom/google/android/gms/internal/dn$a;
return-object v0
.end method
.method private bi()V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
iget v0, v0, Lcom/google/android/gms/internal/dv;->errorCode:I
const/4 v1, -0x3
if-ne v0, v1, :cond_8
:goto_7
:cond_7
return-void
:cond_8
iget-object v0, p0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
iget-object v0, v0, Lcom/google/android/gms/internal/dv;->qb:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_1b
new-instance v0, Lcom/google/android/gms/internal/do$a;
const-string v1, "No fill from ad server."
const/4 v2, 0x3
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/do$a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_1b
iget-object v0, p0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
iget-boolean v0, v0, Lcom/google/android/gms/internal/dv;->qd:Z
if-eqz v0, :cond_7
:try_start_21
new-instance v0, Lcom/google/android/gms/internal/bn;
iget-object v1, p0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
iget-object v1, v1, Lcom/google/android/gms/internal/dv;->qb:Ljava/lang/String;
invoke-direct {v0, v1}, Lcom/google/android/gms/internal/bn;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/google/android/gms/internal/do;->nd:Lcom/google/android/gms/internal/bn;
:try_end_2c
.catch Lorg/json/JSONException; {:try_start_21 .. :try_end_2c} :catch_2d
goto :goto_7
:catch_2d
move-exception v0
new-instance v0, Lcom/google/android/gms/internal/do$a;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Could not parse mediation config: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
iget-object v2, v2, Lcom/google/android/gms/internal/dv;->qb:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/do$a;-><init>(Ljava/lang/String;I)V
throw v0
.end method
.method static synthetic c(Lcom/google/android/gms/internal/do;)Lcom/google/android/gms/internal/dv;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
return-object v0
.end method
.method private c(J)Z
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
iget-object v2, p0, Lcom/google/android/gms/internal/do;->lq:Ljava/lang/Object;
invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
:try_end_16
.catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_16} :catch_18
const/4 v0, 0x1
goto :goto_10
:catch_18
move-exception v0
new-instance v0, Lcom/google/android/gms/internal/do$a;
const-string v1, "Ad request cancelled."
const/4 v2, -0x1
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/do$a;-><init>(Ljava/lang/String;I)V
throw v0
.end method
.method static synthetic d(Lcom/google/android/gms/internal/do;)Lcom/google/android/gms/internal/ey;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/do;->lL:Lcom/google/android/gms/internal/ey;
return-object v0
.end method
.method private e(J)V
.registers 5
sget-object v0, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;
new-instance v1, Lcom/google/android/gms/internal/do$3;
invoke-direct {v1, p0}, Lcom/google/android/gms/internal/do$3;-><init>(Lcom/google/android/gms/internal/do;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/do;->h(J)V
return-void
.end method
.method private g(J)V
.registers 6
:cond_0
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/do;->c(J)Z
move-result v0
if-nez v0, :cond_f
new-instance v0, Lcom/google/android/gms/internal/do$a;
const-string v1, "Timed out waiting for ad response."
const/4 v2, 0x2
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/do$a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_f
iget-object v0, p0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
if-eqz v0, :cond_0
iget-object v1, p0, Lcom/google/android/gms/internal/do;->pw:Ljava/lang/Object;
monitor-enter v1
const/4 v0, 0x0
:try_start_17
iput-object v0, p0, Lcom/google/android/gms/internal/do;->pz:Lcom/google/android/gms/internal/en;
monitor-exit v1
:try_end_1a
.catchall {:try_start_17 .. :try_end_1a} :catchall_49
iget-object v0, p0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
iget v0, v0, Lcom/google/android/gms/internal/dv;->errorCode:I
const/4 v1, -0x2
if-eq v0, v1, :cond_4c
iget-object v0, p0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
iget v0, v0, Lcom/google/android/gms/internal/dv;->errorCode:I
const/4 v1, -0x3
if-eq v0, v1, :cond_4c
new-instance v0, Lcom/google/android/gms/internal/do$a;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "There was a problem getting an ad response. ErrorCode: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
iget v2, v2, Lcom/google/android/gms/internal/dv;->errorCode:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
iget v2, v2, Lcom/google/android/gms/internal/dv;->errorCode:I
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/do$a;-><init>(Ljava/lang/String;I)V
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
.method private h(J)V
.registers 6
:cond_0
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/do;->c(J)Z
move-result v0
if-nez v0, :cond_f
new-instance v0, Lcom/google/android/gms/internal/do$a;
const-string v1, "Timed out waiting for WebView to finish loading."
const/4 v2, 0x2
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/do$a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_f
iget-boolean v0, p0, Lcom/google/android/gms/internal/do;->pB:Z
if-eqz v0, :cond_0
return-void
.end method
.method public a(Lcom/google/android/gms/internal/dv;)V
.registers 4
iget-object v1, p0, Lcom/google/android/gms/internal/do;->lq:Ljava/lang/Object;
monitor-enter v1
:try_start_3
const-string v0, "Received ad response."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
iput-object p1, p0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
iget-object v0, p0, Lcom/google/android/gms/internal/do;->lq:Ljava/lang/Object;
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
.method public a(Lcom/google/android/gms/internal/ey;)V
.registers 4
iget-object v1, p0, Lcom/google/android/gms/internal/do;->lq:Ljava/lang/Object;
monitor-enter v1
:try_start_3
const-string v0, "WebView finished loading."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/internal/do;->pB:Z
iget-object v0, p0, Lcom/google/android/gms/internal/do;->lq:Ljava/lang/Object;
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
.method public bc()V
.registers 32
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/android/gms/internal/do;->lq:Ljava/lang/Object;
move-object/from16 v30, v0
monitor-enter v30
:try_start_7
const-string v2, "AdLoaderBackgroundTask started."
invoke-static {v2}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/google/android/gms/internal/do;->py:Lcom/google/android/gms/internal/l;
invoke-virtual {v2}, Lcom/google/android/gms/internal/l;->y()Lcom/google/android/gms/internal/h;
move-result-object v2
move-object/from16 v0, p0
iget-object v3, v0, Lcom/google/android/gms/internal/do;->mContext:Landroid/content/Context;
invoke-interface {v2, v3}, Lcom/google/android/gms/internal/h;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
new-instance v12, Lcom/google/android/gms/internal/dt;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/google/android/gms/internal/do;->px:Lcom/google/android/gms/internal/dt$a;
invoke-direct {v12, v3, v2}, Lcom/google/android/gms/internal/dt;-><init>(Lcom/google/android/gms/internal/dt$a;Ljava/lang/String;)V
:try_end_25
.catchall {:try_start_7 .. :try_end_25} :catchall_18c
const/4 v5, 0x0
const/4 v6, -0x2
const-wide/16 v3, -0x1
:try_start_29
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v7
move-object/from16 v0, p0
iget-object v2, v0, Lcom/google/android/gms/internal/do;->mContext:Landroid/content/Context;
move-object/from16 v0, p0
invoke-static {v2, v12, v0}, Lcom/google/android/gms/internal/dq;->a(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/dq$a;)Lcom/google/android/gms/internal/en;
move-result-object v2
move-object/from16 v0, p0
iget-object v9, v0, Lcom/google/android/gms/internal/do;->pw:Ljava/lang/Object;
monitor-enter v9
:try_end_3c
.catchall {:try_start_29 .. :try_end_3c} :catchall_18c
.catch Lcom/google/android/gms/internal/do$a; {:try_start_29 .. :try_end_3c} :catch_52
:try_start_3c
move-object/from16 v0, p0
iput-object v2, v0, Lcom/google/android/gms/internal/do;->pz:Lcom/google/android/gms/internal/en;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/google/android/gms/internal/do;->pz:Lcom/google/android/gms/internal/en;
if-nez v2, :cond_152
new-instance v2, Lcom/google/android/gms/internal/do$a;
const-string v6, "Could not start the ad request service."
const/4 v7, 0x0
invoke-direct {v2, v6, v7}, Lcom/google/android/gms/internal/do$a;-><init>(Ljava/lang/String;I)V
throw v2
:catchall_4f
move-exception v2
monitor-exit v9
:try_start_51
:try_end_51
.catchall {:try_start_3c .. :try_end_51} :catchall_4f
throw v2
:try_end_52
.catchall {:try_start_51 .. :try_end_52} :catchall_18c
.catch Lcom/google/android/gms/internal/do$a; {:try_start_51 .. :try_end_52} :catch_52
:catch_52
move-exception v2
:try_start_53
invoke-virtual {v2}, Lcom/google/android/gms/internal/do$a;->getErrorCode()I
move-result v6
const/4 v7, 0x3
if-eq v6, v7, :cond_5d
const/4 v7, -0x1
if-ne v6, v7, :cond_195
:cond_5d
invoke-virtual {v2}, Lcom/google/android/gms/internal/do$a;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/google/android/gms/internal/ev;->B(Ljava/lang/String;)V
:goto_64
move-object/from16 v0, p0
iget-object v2, v0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
if-nez v2, :cond_19e
new-instance v2, Lcom/google/android/gms/internal/dv;
invoke-direct {v2, v6}, Lcom/google/android/gms/internal/dv;-><init>(I)V
move-object/from16 v0, p0
iput-object v2, v0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
:goto_73
sget-object v2, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;
new-instance v7, Lcom/google/android/gms/internal/do$1;
move-object/from16 v0, p0
invoke-direct {v7, v0}, Lcom/google/android/gms/internal/do$1;-><init>(Lcom/google/android/gms/internal/do;)V
invoke-virtual {v2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
move-wide/from16 v24, v3
move-object/from16 v21, v5
:goto_83
const/4 v3, 0x0
move-object/from16 v0, p0
iget-object v2, v0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
iget-object v2, v2, Lcom/google/android/gms/internal/dv;->ql:Ljava/lang/String;
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
:try_end_8d
.catchall {:try_start_53 .. :try_end_8d} :catchall_18c
move-result v2
if-nez v2, :cond_1b5
:try_start_90
new-instance v29, Lorg/json/JSONObject;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
iget-object v2, v2, Lcom/google/android/gms/internal/dv;->ql:Ljava/lang/String;
move-object/from16 v0, v29
invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
:goto_9d
:try_end_9d
.catchall {:try_start_90 .. :try_end_9d} :catchall_18c
.catch Ljava/lang/Exception; {:try_start_90 .. :try_end_9d} :catch_1af
:try_start_9d
new-instance v2, Lcom/google/android/gms/internal/eg;
iget-object v3, v12, Lcom/google/android/gms/internal/dt;->pV:Lcom/google/android/gms/internal/aj;
move-object/from16 v0, p0
iget-object v4, v0, Lcom/google/android/gms/internal/do;->lL:Lcom/google/android/gms/internal/ey;
move-object/from16 v0, p0
iget-object v5, v0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
iget-object v5, v5, Lcom/google/android/gms/internal/dv;->nr:Ljava/util/List;
move-object/from16 v0, p0
iget-object v7, v0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
iget-object v7, v7, Lcom/google/android/gms/internal/dv;->ns:Ljava/util/List;
move-object/from16 v0, p0
iget-object v8, v0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
iget-object v8, v8, Lcom/google/android/gms/internal/dv;->qf:Ljava/util/List;
move-object/from16 v0, p0
iget-object v9, v0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
iget v9, v9, Lcom/google/android/gms/internal/dv;->orientation:I
move-object/from16 v0, p0
iget-object v10, v0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
iget-wide v10, v10, Lcom/google/android/gms/internal/dv;->nv:J
iget-object v12, v12, Lcom/google/android/gms/internal/dt;->pY:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
iget-boolean v13, v13, Lcom/google/android/gms/internal/dv;->qd:Z
move-object/from16 v0, p0
iget-object v14, v0, Lcom/google/android/gms/internal/do;->pD:Lcom/google/android/gms/internal/br;
if-eqz v14, :cond_1b9
move-object/from16 v0, p0
iget-object v14, v0, Lcom/google/android/gms/internal/do;->pD:Lcom/google/android/gms/internal/br;
iget-object v14, v14, Lcom/google/android/gms/internal/br;->nK:Lcom/google/android/gms/internal/bm;
:goto_d7
move-object/from16 v0, p0
iget-object v15, v0, Lcom/google/android/gms/internal/do;->pD:Lcom/google/android/gms/internal/br;
if-eqz v15, :cond_1bc
move-object/from16 v0, p0
iget-object v15, v0, Lcom/google/android/gms/internal/do;->pD:Lcom/google/android/gms/internal/br;
iget-object v15, v15, Lcom/google/android/gms/internal/br;->nL:Lcom/google/android/gms/internal/bv;
:goto_e3
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/android/gms/internal/do;->pD:Lcom/google/android/gms/internal/br;
move-object/from16 v16, v0
if-eqz v16, :cond_1bf
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/android/gms/internal/do;->pD:Lcom/google/android/gms/internal/br;
move-object/from16 v16, v0
move-object/from16 v0, v16
iget-object v0, v0, Lcom/google/android/gms/internal/br;->nM:Ljava/lang/String;
move-object/from16 v16, v0
:goto_f7
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/android/gms/internal/do;->nd:Lcom/google/android/gms/internal/bn;
move-object/from16 v17, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/android/gms/internal/do;->pD:Lcom/google/android/gms/internal/br;
move-object/from16 v18, v0
if-eqz v18, :cond_1c3
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/android/gms/internal/do;->pD:Lcom/google/android/gms/internal/br;
move-object/from16 v18, v0
move-object/from16 v0, v18
iget-object v0, v0, Lcom/google/android/gms/internal/br;->nN:Lcom/google/android/gms/internal/bp;
move-object/from16 v18, v0
:goto_111
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
move-object/from16 v19, v0
move-object/from16 v0, v19
iget-wide v0, v0, Lcom/google/android/gms/internal/dv;->qe:J
move-wide/from16 v19, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
move-object/from16 v22, v0
move-object/from16 v0, v22
iget-wide v0, v0, Lcom/google/android/gms/internal/dv;->qc:J
move-wide/from16 v22, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
move-object/from16 v26, v0
move-object/from16 v0, v26
iget-wide v0, v0, Lcom/google/android/gms/internal/dv;->qh:J
move-wide/from16 v26, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
move-object/from16 v28, v0
move-object/from16 v0, v28
iget-object v0, v0, Lcom/google/android/gms/internal/dv;->qi:Ljava/lang/String;
move-object/from16 v28, v0
invoke-direct/range {v2 .. v29}, Lcom/google/android/gms/internal/eg;-><init>(Lcom/google/android/gms/internal/aj;Lcom/google/android/gms/internal/ey;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/bm;Lcom/google/android/gms/internal/bv;Ljava/lang/String;Lcom/google/android/gms/internal/bn;Lcom/google/android/gms/internal/bp;JLcom/google/android/gms/internal/am;JJJLjava/lang/String;Lorg/json/JSONObject;)V
sget-object v3, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;
new-instance v4, Lcom/google/android/gms/internal/do$2;
move-object/from16 v0, p0
invoke-direct {v4, v0, v2}, Lcom/google/android/gms/internal/do$2;-><init>(Lcom/google/android/gms/internal/do;Lcom/google/android/gms/internal/eg;)V
invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
monitor-exit v30
:try_end_151
.catchall {:try_start_9d .. :try_end_151} :catchall_18c
return-void
:try_start_152
:cond_152
monitor-exit v9
:try_end_153
.catchall {:try_start_152 .. :try_end_153} :catchall_4f
:try_start_153
move-object/from16 v0, p0
invoke-direct {v0, v7, v8}, Lcom/google/android/gms/internal/do;->g(J)V
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v3
invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/do;->bi()V
iget-object v2, v12, Lcom/google/android/gms/internal/dt;->kR:Lcom/google/android/gms/internal/am;
iget-object v2, v2, Lcom/google/android/gms/internal/am;->me:[Lcom/google/android/gms/internal/am;
if-eqz v2, :cond_16b
move-object/from16 v0, p0
invoke-direct {v0, v12}, Lcom/google/android/gms/internal/do;->a(Lcom/google/android/gms/internal/dt;)Lcom/google/android/gms/internal/am;
move-result-object v5
:cond_16b
move-object/from16 v0, p0
iget-object v2, v0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
iget-boolean v2, v2, Lcom/google/android/gms/internal/dv;->qd:Z
if-eqz v2, :cond_17e
move-object/from16 v0, p0
invoke-direct {v0, v12, v7, v8}, Lcom/google/android/gms/internal/do;->a(Lcom/google/android/gms/internal/dt;J)V
:goto_178
move-wide/from16 v24, v3
move-object/from16 v21, v5
goto/16 :goto_83
:cond_17e
move-object/from16 v0, p0
iget-object v2, v0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
iget-boolean v2, v2, Lcom/google/android/gms/internal/dv;->qj:Z
if-eqz v2, :cond_18f
move-object/from16 v0, p0
invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/internal/do;->f(J)V
:try_end_18b
.catchall {:try_start_153 .. :try_end_18b} :catchall_18c
.catch Lcom/google/android/gms/internal/do$a; {:try_start_153 .. :try_end_18b} :catch_52
goto :goto_178
:catchall_18c
move-exception v2
:try_start_18d
monitor-exit v30
:try_end_18e
.catchall {:try_start_18d .. :try_end_18e} :catchall_18c
throw v2
:cond_18f
:try_start_18f
move-object/from16 v0, p0
invoke-direct {v0, v7, v8}, Lcom/google/android/gms/internal/do;->e(J)V
:try_end_194
.catchall {:try_start_18f .. :try_end_194} :catchall_18c
.catch Lcom/google/android/gms/internal/do$a; {:try_start_18f .. :try_end_194} :catch_52
goto :goto_178
:try_start_195
:cond_195
invoke-virtual {v2}, Lcom/google/android/gms/internal/do$a;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
goto/16 :goto_64
:cond_19e
new-instance v2, Lcom/google/android/gms/internal/dv;
move-object/from16 v0, p0
iget-object v7, v0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
iget-wide v7, v7, Lcom/google/android/gms/internal/dv;->nv:J
invoke-direct {v2, v6, v7, v8}, Lcom/google/android/gms/internal/dv;-><init>(IJ)V
move-object/from16 v0, p0
iput-object v2, v0, Lcom/google/android/gms/internal/do;->pA:Lcom/google/android/gms/internal/dv;
goto/16 :goto_73
:catch_1af
move-exception v2
const-string v4, "Error parsing the JSON for Active View."
invoke-static {v4, v2}, Lcom/google/android/gms/internal/ev;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_1b5
.catchall {:try_start_195 .. :try_end_1b5} :catchall_18c
:cond_1b5
move-object/from16 v29, v3
goto/16 :goto_9d
:cond_1b9
const/4 v14, 0x0
goto/16 :goto_d7
:cond_1bc
const/4 v15, 0x0
goto/16 :goto_e3
:cond_1bf
const/16 v16, 0x0
goto/16 :goto_f7
:cond_1c3
const/16 v18, 0x0
goto/16 :goto_111
.end method
.method protected f(J)V
.registers 7
iget-object v0, p0, Lcom/google/android/gms/internal/do;->lL:Lcom/google/android/gms/internal/ey;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->Q()Lcom/google/android/gms/internal/am;
move-result-object v0
iget-boolean v1, v0, Lcom/google/android/gms/internal/am;->md:Z
if-eqz v1, :cond_4a
iget-object v0, p0, Lcom/google/android/gms/internal/do;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I
iget-object v0, p0, Lcom/google/android/gms/internal/do;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I
:goto_22
new-instance v2, Lcom/google/android/gms/internal/dp;
iget-object v3, p0, Lcom/google/android/gms/internal/do;->lL:Lcom/google/android/gms/internal/ey;
invoke-direct {v2, p0, v3, v1, v0}, Lcom/google/android/gms/internal/dp;-><init>(Lcom/google/android/gms/internal/ez$a;Lcom/google/android/gms/internal/ey;II)V
sget-object v0, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;
new-instance v1, Lcom/google/android/gms/internal/do$4;
invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/do$4;-><init>(Lcom/google/android/gms/internal/do;Lcom/google/android/gms/internal/dp;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/do;->h(J)V
invoke-virtual {v2}, Lcom/google/android/gms/internal/dp;->bl()Z
move-result v0
if-eqz v0, :cond_4f
const-string v0, "Ad-Network indicated no fill with passback URL."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
new-instance v0, Lcom/google/android/gms/internal/do$a;
const-string v1, "AdNetwork sent passback url"
const/4 v2, 0x3
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/do$a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_4a
iget v1, v0, Lcom/google/android/gms/internal/am;->widthPixels:I
iget v0, v0, Lcom/google/android/gms/internal/am;->heightPixels:I
goto :goto_22
:cond_4f
invoke-virtual {v2}, Lcom/google/android/gms/internal/dp;->bm()Z
move-result v0
if-nez v0, :cond_5e
new-instance v0, Lcom/google/android/gms/internal/do$a;
const-string v1, "AdNetwork timed out"
const/4 v2, 0x2
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/do$a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_5e
return-void
.end method
.method public onStop()V
.registers 3
const-string v1, " + Lcom/google/android/gms/internal/do; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/gms/internal/do;->pw:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/do;->pz:Lcom/google/android/gms/internal/en;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/google/android/gms/internal/do;->pz:Lcom/google/android/gms/internal/en;
invoke-virtual {v0}, Lcom/google/android/gms/internal/en;->cancel()V
:cond_c
iget-object v0, p0, Lcom/google/android/gms/internal/do;->lL:Lcom/google/android/gms/internal/ey;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->stopLoading()V
iget-object v0, p0, Lcom/google/android/gms/internal/do;->lL:Lcom/google/android/gms/internal/ey;
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Landroid/webkit/WebView;)V
iget-object v0, p0, Lcom/google/android/gms/internal/do;->pC:Lcom/google/android/gms/internal/bl;
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/google/android/gms/internal/do;->pC:Lcom/google/android/gms/internal/bl;
invoke-virtual {v0}, Lcom/google/android/gms/internal/bl;->cancel()V
:cond_1f
monitor-exit v1
const-string v1, " - Lcom/google/android/gms/internal/do; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catchall_21
move-exception v0
monitor-exit v1
:try_end_23
.catchall {:try_start_3 .. :try_end_23} :catchall_21
throw v0
.end method