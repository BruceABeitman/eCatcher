.class public final Lcom/tencent/map/b/n;
.super Ljava/lang/Object;
.implements Lcom/tencent/map/b/b$a;
.implements Lcom/tencent/map/b/e$b;
.implements Lcom/tencent/map/b/f$a;
.implements Lcom/tencent/map/b/m$a;
.field private static t:Z
.field private static u:Lcom/tencent/map/b/n;
.field private A:Lcom/tencent/map/a/a/d;
.field private B:I
.field private C:I
.field private D:I
.field private E:Ljava/lang/String;
.field private F:Ljava/lang/String;
.field private G:Ljava/lang/String;
.field private H:Ljava/lang/String;
.field private I:Ljava/lang/String;
.field private J:Ljava/lang/String;
.field private K:Z
.field private L:Z
.field private M:J
.field private N:Landroid/os/Handler;
.field private O:Ljava/lang/Runnable;
.field private final P:Landroid/content/BroadcastReceiver;
.field private a:J
.field private b:Landroid/content/Context;
.field private c:Lcom/tencent/map/b/e;
.field private d:Lcom/tencent/map/b/m;
.field private e:Lcom/tencent/map/b/f;
.field private f:I
.field private g:I
.field private h:Lcom/tencent/map/b/c;
.field private i:Lcom/tencent/map/b/b;
.field private j:Lcom/tencent/map/a/a/b;
.field private k:I
.field private l:I
.field private m:I
.field private n:[B
.field private o:[B
.field private p:Z
.field private q:Lcom/tencent/map/b/n$a;
.field private r:Lcom/tencent/map/b/n$b;
.field private s:Lcom/tencent/map/b/n$c;
.field private v:J
.field private w:Lcom/tencent/map/b/e$a;
.field private x:Lcom/tencent/map/b/m$b;
.field private y:Lcom/tencent/map/b/f$b;
.field private z:Lcom/tencent/map/a/a/d;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/tencent/map/b/n;->t:Z
const/4 v0, 0x0
sput-object v0, Lcom/tencent/map/b/n;->u:Lcom/tencent/map/b/n;
return-void
.end method
.method private constructor <init>()V
.registers 5
const/4 v3, 0x0
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, 0x1388
iput-wide v0, p0, Lcom/tencent/map/b/n;->a:J
iput-object v2, p0, Lcom/tencent/map/b/n;->b:Landroid/content/Context;
iput-object v2, p0, Lcom/tencent/map/b/n;->c:Lcom/tencent/map/b/e;
iput-object v2, p0, Lcom/tencent/map/b/n;->d:Lcom/tencent/map/b/m;
iput-object v2, p0, Lcom/tencent/map/b/n;->e:Lcom/tencent/map/b/f;
const/16 v0, 0x400
iput v0, p0, Lcom/tencent/map/b/n;->f:I
const/4 v0, 0x4
iput v0, p0, Lcom/tencent/map/b/n;->g:I
iput-object v2, p0, Lcom/tencent/map/b/n;->h:Lcom/tencent/map/b/c;
iput-object v2, p0, Lcom/tencent/map/b/n;->i:Lcom/tencent/map/b/b;
iput-object v2, p0, Lcom/tencent/map/b/n;->j:Lcom/tencent/map/a/a/b;
new-array v0, v3, [B
iput-object v0, p0, Lcom/tencent/map/b/n;->n:[B
new-array v0, v3, [B
iput-object v0, p0, Lcom/tencent/map/b/n;->o:[B
iput-boolean v3, p0, Lcom/tencent/map/b/n;->p:Z
iput-object v2, p0, Lcom/tencent/map/b/n;->q:Lcom/tencent/map/b/n$a;
iput-object v2, p0, Lcom/tencent/map/b/n;->r:Lcom/tencent/map/b/n$b;
iput-object v2, p0, Lcom/tencent/map/b/n;->s:Lcom/tencent/map/b/n$c;
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/tencent/map/b/n;->v:J
iput-object v2, p0, Lcom/tencent/map/b/n;->w:Lcom/tencent/map/b/e$a;
iput-object v2, p0, Lcom/tencent/map/b/n;->x:Lcom/tencent/map/b/m$b;
iput-object v2, p0, Lcom/tencent/map/b/n;->y:Lcom/tencent/map/b/f$b;
iput-object v2, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iput-object v2, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iput v3, p0, Lcom/tencent/map/b/n;->B:I
iput v3, p0, Lcom/tencent/map/b/n;->C:I
const/4 v0, 0x1
iput v0, p0, Lcom/tencent/map/b/n;->D:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/tencent/map/b/n;->E:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/tencent/map/b/n;->F:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/tencent/map/b/n;->G:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/tencent/map/b/n;->H:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/tencent/map/b/n;->I:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/tencent/map/b/n;->J:Ljava/lang/String;
iput-boolean v3, p0, Lcom/tencent/map/b/n;->K:Z
iput-boolean v3, p0, Lcom/tencent/map/b/n;->L:Z
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/tencent/map/b/n;->M:J
iput-object v2, p0, Lcom/tencent/map/b/n;->N:Landroid/os/Handler;
new-instance v0, Lcom/tencent/map/b/o;
invoke-direct {v0, p0}, Lcom/tencent/map/b/o;-><init>(Lcom/tencent/map/b/n;)V
iput-object v0, p0, Lcom/tencent/map/b/n;->O:Ljava/lang/Runnable;
new-instance v0, Lcom/tencent/map/b/p;
invoke-direct {v0, p0}, Lcom/tencent/map/b/p;-><init>(Lcom/tencent/map/b/n;)V
iput-object v0, p0, Lcom/tencent/map/b/n;->P:Landroid/content/BroadcastReceiver;
new-instance v0, Lcom/tencent/map/b/e;
invoke-direct {v0}, Lcom/tencent/map/b/e;-><init>()V
iput-object v0, p0, Lcom/tencent/map/b/n;->c:Lcom/tencent/map/b/e;
new-instance v0, Lcom/tencent/map/b/m;
invoke-direct {v0}, Lcom/tencent/map/b/m;-><init>()V
iput-object v0, p0, Lcom/tencent/map/b/n;->d:Lcom/tencent/map/b/m;
new-instance v0, Lcom/tencent/map/b/f;
invoke-direct {v0}, Lcom/tencent/map/b/f;-><init>()V
iput-object v0, p0, Lcom/tencent/map/b/n;->e:Lcom/tencent/map/b/f;
return-void
.end method
.method static synthetic a(Lcom/tencent/map/b/n;)J
.registers 3
iget-wide v0, p0, Lcom/tencent/map/b/n;->M:J
return-wide v0
.end method
.method static synthetic a(Lcom/tencent/map/b/n;J)J
.registers 3
iput-wide p1, p0, Lcom/tencent/map/b/n;->M:J
return-wide p1
.end method
.method static synthetic a(Lcom/tencent/map/b/n;Lcom/tencent/map/b/n$c;)Lcom/tencent/map/b/n$c;
.registers 3
const/4 v0, 0x0
iput-object v0, p0, Lcom/tencent/map/b/n;->s:Lcom/tencent/map/b/n$c;
return-object v0
.end method
.method public static declared-synchronized a()Lcom/tencent/map/b/n;
.registers 2
const-class v1, Lcom/tencent/map/b/n;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/tencent/map/b/n;->u:Lcom/tencent/map/b/n;
if-nez v0, :cond_e
new-instance v0, Lcom/tencent/map/b/n;
invoke-direct {v0}, Lcom/tencent/map/b/n;-><init>()V
sput-object v0, Lcom/tencent/map/b/n;->u:Lcom/tencent/map/b/n;
:cond_e
sget-object v0, Lcom/tencent/map/b/n;->u:Lcom/tencent/map/b/n;
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method private static a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
.registers 14
invoke-virtual {p0}, Lorg/json/JSONArray;->length()I
move-result v11
new-instance v12, Ljava/util/ArrayList;
invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
const/4 v0, 0x0
move v10, v0
:goto_b
if-ge v10, v11, :cond_4f
invoke-virtual {p0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v0
const-string/jumbo v1, "name"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "addr"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "catalog"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "dist"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
move-result-wide v4
const-string/jumbo v6, "latitude"
invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
move-result-wide v6
const-string/jumbo v8, "longitude"
invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
move-result-wide v8
new-instance v0, Lcom/tencent/map/a/a/c;
invoke-direct/range {v0 .. v9}, Lcom/tencent/map/a/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDD)V
invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v10, 0x1
move v10, v0
goto :goto_b
:cond_4f
return-object v12
.end method
.method static synthetic a(Lcom/tencent/map/b/n;I)V
.registers 4
if-nez p1, :cond_5
const/4 v0, 0x0
iput-object v0, p0, Lcom/tencent/map/b/n;->w:Lcom/tencent/map/b/e$a;
:cond_5
if-nez p1, :cond_16
const/4 v0, 0x1
:goto_8
iput v0, p0, Lcom/tencent/map/b/n;->f:I
iget-object v0, p0, Lcom/tencent/map/b/n;->j:Lcom/tencent/map/a/a/b;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/tencent/map/b/n;->j:Lcom/tencent/map/a/a/b;
iget v1, p0, Lcom/tencent/map/b/n;->f:I
invoke-virtual {v0, v1}, Lcom/tencent/map/a/a/b;->a(I)V
:cond_15
return-void
:cond_16
const/4 v0, 0x2
goto :goto_8
.end method
.method static synthetic a(Lcom/tencent/map/b/n;Landroid/location/Location;)V
.registers 10
const/4 v7, 0x3
const-wide v2, 0x4076700000000000L
const/4 v6, 0x4
const/4 v5, 0x0
const/4 v4, 0x1
if-eqz p1, :cond_1b
invoke-static {p1}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v0
cmpl-double v0, v0, v2
if-gtz v0, :cond_1b
invoke-static {p1}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v0
cmpl-double v0, v0, v2
if-lez v0, :cond_2a
:cond_1b
iget-object v0, p0, Lcom/tencent/map/b/n;->w:Lcom/tencent/map/b/e$a;
if-eqz v0, :cond_14e
iget-object v0, p0, Lcom/tencent/map/b/n;->w:Lcom/tencent/map/b/e$a;
invoke-virtual {v0}, Lcom/tencent/map/b/e$a;->a()Z
move-result v0
if-eqz v0, :cond_14e
invoke-direct {p0, v4}, Lcom/tencent/map/b/n;->b(Z)V
:goto_2a
:cond_2a
new-instance v0, Lcom/tencent/map/a/a/d;
invoke-direct {v0}, Lcom/tencent/map/a/a/d;-><init>()V
iput-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iput v5, v0, Lcom/tencent/map/a/a/d;->z:I
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iput v5, v0, Lcom/tencent/map/a/a/d;->y:I
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
invoke-static {p1}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v1
const/4 v3, 0x6
invoke-static {v1, v2, v3}, Lcom/tencent/map/b/s;->a(DI)D
move-result-wide v1
iput-wide v1, v0, Lcom/tencent/map/a/a/d;->b:D
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
invoke-static {p1}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v1
const/4 v3, 0x6
invoke-static {v1, v2, v3}, Lcom/tencent/map/b/s;->a(DI)D
move-result-wide v1
iput-wide v1, v0, Lcom/tencent/map/a/a/d;->c:D
iget-object v0, p0, Lcom/tencent/map/b/n;->w:Lcom/tencent/map/b/e$a;
if-eqz v0, :cond_ae
iget-object v0, p0, Lcom/tencent/map/b/n;->w:Lcom/tencent/map/b/e$a;
invoke-virtual {v0}, Lcom/tencent/map/b/e$a;->a()Z
move-result v0
if-eqz v0, :cond_ae
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v1, p0, Lcom/tencent/map/b/n;->w:Lcom/tencent/map/b/e$a;
invoke-virtual {v1}, Lcom/tencent/map/b/e$a;->b()Landroid/location/Location;
move-result-object v1
invoke-static {v1}, Ldroidbox/android/location/Location;->getAccuracy(Landroid/location/Location;)F
move-result v1
float-to-double v1, v1
invoke-static {v1, v2, v4}, Lcom/tencent/map/b/s;->a(DI)D
move-result-wide v1
iput-wide v1, v0, Lcom/tencent/map/a/a/d;->e:D
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v1, p0, Lcom/tencent/map/b/n;->w:Lcom/tencent/map/b/e$a;
invoke-virtual {v1}, Lcom/tencent/map/b/e$a;->b()Landroid/location/Location;
move-result-object v1
invoke-static {v1}, Ldroidbox/android/location/Location;->getAltitude(Landroid/location/Location;)D
move-result-wide v1
invoke-static {v1, v2, v4}, Lcom/tencent/map/b/s;->a(DI)D
move-result-wide v1
iput-wide v1, v0, Lcom/tencent/map/a/a/d;->d:D
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v1, p0, Lcom/tencent/map/b/n;->w:Lcom/tencent/map/b/e$a;
invoke-virtual {v1}, Lcom/tencent/map/b/e$a;->b()Landroid/location/Location;
move-result-object v1
invoke-static {v1}, Ldroidbox/android/location/Location;->getSpeed(Landroid/location/Location;)F
move-result v1
float-to-double v1, v1
invoke-static {v1, v2, v4}, Lcom/tencent/map/b/s;->a(DI)D
move-result-wide v1
iput-wide v1, v0, Lcom/tencent/map/a/a/d;->f:D
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v1, p0, Lcom/tencent/map/b/n;->w:Lcom/tencent/map/b/e$a;
invoke-virtual {v1}, Lcom/tencent/map/b/e$a;->b()Landroid/location/Location;
move-result-object v1
invoke-static {v1}, Ldroidbox/android/location/Location;->getBearing(Landroid/location/Location;)F
move-result v1
float-to-double v1, v1
invoke-static {v1, v2, v4}, Lcom/tencent/map/b/s;->a(DI)D
move-result-wide v1
iput-wide v1, v0, Lcom/tencent/map/a/a/d;->g:D
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iput v5, v0, Lcom/tencent/map/a/a/d;->a:I
:cond_ae
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iput-boolean v4, v0, Lcom/tencent/map/a/a/d;->x:Z
iget v0, p0, Lcom/tencent/map/b/n;->l:I
if-eqz v0, :cond_1b7
iget-object v0, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
if-eqz v0, :cond_1b7
iget v0, p0, Lcom/tencent/map/b/n;->B:I
if-nez v0, :cond_1b7
iget v0, p0, Lcom/tencent/map/b/n;->l:I
if-eq v0, v7, :cond_c6
iget v0, p0, Lcom/tencent/map/b/n;->l:I
if-ne v0, v6, :cond_112
:cond_c6
iget v0, p0, Lcom/tencent/map/b/n;->l:I
iget-object v1, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iget v1, v1, Lcom/tencent/map/a/a/d;->z:I
if-ne v0, v1, :cond_112
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v1, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iget-object v1, v1, Lcom/tencent/map/a/a/d;->i:Ljava/lang/String;
iput-object v1, v0, Lcom/tencent/map/a/a/d;->i:Ljava/lang/String;
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v1, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iget-object v1, v1, Lcom/tencent/map/a/a/d;->j:Ljava/lang/String;
iput-object v1, v0, Lcom/tencent/map/a/a/d;->j:Ljava/lang/String;
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v1, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iget-object v1, v1, Lcom/tencent/map/a/a/d;->k:Ljava/lang/String;
iput-object v1, v0, Lcom/tencent/map/a/a/d;->k:Ljava/lang/String;
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v1, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iget-object v1, v1, Lcom/tencent/map/a/a/d;->l:Ljava/lang/String;
iput-object v1, v0, Lcom/tencent/map/a/a/d;->l:Ljava/lang/String;
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v1, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iget-object v1, v1, Lcom/tencent/map/a/a/d;->m:Ljava/lang/String;
iput-object v1, v0, Lcom/tencent/map/a/a/d;->m:Ljava/lang/String;
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v1, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iget-object v1, v1, Lcom/tencent/map/a/a/d;->n:Ljava/lang/String;
iput-object v1, v0, Lcom/tencent/map/a/a/d;->n:Ljava/lang/String;
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v1, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iget-object v1, v1, Lcom/tencent/map/a/a/d;->o:Ljava/lang/String;
iput-object v1, v0, Lcom/tencent/map/a/a/d;->o:Ljava/lang/String;
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v1, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iget-object v1, v1, Lcom/tencent/map/a/a/d;->p:Ljava/lang/String;
iput-object v1, v0, Lcom/tencent/map/a/a/d;->p:Ljava/lang/String;
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iput v7, v0, Lcom/tencent/map/a/a/d;->z:I
:cond_112
iget v0, p0, Lcom/tencent/map/b/n;->l:I
if-ne v0, v6, :cond_157
iget v0, p0, Lcom/tencent/map/b/n;->l:I
iget-object v1, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iget v1, v1, Lcom/tencent/map/a/a/d;->z:I
if-ne v0, v1, :cond_157
iget-object v0, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iget-object v0, v0, Lcom/tencent/map/a/a/d;->w:Ljava/util/ArrayList;
if-eqz v0, :cond_157
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, v0, Lcom/tencent/map/a/a/d;->w:Ljava/util/ArrayList;
iget-object v0, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iget-object v0, v0, Lcom/tencent/map/a/a/d;->w:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_135
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_153
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/tencent/map/a/a/c;
iget-object v2, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v2, v2, Lcom/tencent/map/a/a/d;->w:Ljava/util/ArrayList;
new-instance v3, Lcom/tencent/map/a/a/c;
invoke-direct {v3, v0}, Lcom/tencent/map/a/a/c;-><init>(Lcom/tencent/map/a/a/c;)V
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_135
:cond_14e
invoke-direct {p0}, Lcom/tencent/map/b/n;->e()V
goto/16 :goto_2a
:cond_153
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iput v6, v0, Lcom/tencent/map/a/a/d;->z:I
:cond_157
iget v0, p0, Lcom/tencent/map/b/n;->l:I
const/4 v1, 0x7
if-ne v0, v1, :cond_1b7
iget v0, p0, Lcom/tencent/map/b/n;->l:I
iget-object v1, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iget v1, v1, Lcom/tencent/map/a/a/d;->z:I
if-ne v0, v1, :cond_1b7
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const/4 v1, 0x7
iput v1, v0, Lcom/tencent/map/a/a/d;->z:I
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v1, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iget v1, v1, Lcom/tencent/map/a/a/d;->h:I
iput v1, v0, Lcom/tencent/map/a/a/d;->h:I
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v1, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iget-object v1, v1, Lcom/tencent/map/a/a/d;->i:Ljava/lang/String;
iput-object v1, v0, Lcom/tencent/map/a/a/d;->i:Ljava/lang/String;
iget-object v0, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iget v0, v0, Lcom/tencent/map/a/a/d;->h:I
if-nez v0, :cond_1ec
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v1, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iget-object v1, v1, Lcom/tencent/map/a/a/d;->j:Ljava/lang/String;
iput-object v1, v0, Lcom/tencent/map/a/a/d;->j:Ljava/lang/String;
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v1, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iget-object v1, v1, Lcom/tencent/map/a/a/d;->k:Ljava/lang/String;
iput-object v1, v0, Lcom/tencent/map/a/a/d;->k:Ljava/lang/String;
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v1, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iget-object v1, v1, Lcom/tencent/map/a/a/d;->l:Ljava/lang/String;
iput-object v1, v0, Lcom/tencent/map/a/a/d;->l:Ljava/lang/String;
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v1, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iget-object v1, v1, Lcom/tencent/map/a/a/d;->m:Ljava/lang/String;
iput-object v1, v0, Lcom/tencent/map/a/a/d;->m:Ljava/lang/String;
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v1, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iget-object v1, v1, Lcom/tencent/map/a/a/d;->n:Ljava/lang/String;
iput-object v1, v0, Lcom/tencent/map/a/a/d;->n:Ljava/lang/String;
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v1, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iget-object v1, v1, Lcom/tencent/map/a/a/d;->o:Ljava/lang/String;
iput-object v1, v0, Lcom/tencent/map/a/a/d;->o:Ljava/lang/String;
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v1, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iget-object v1, v1, Lcom/tencent/map/a/a/d;->p:Ljava/lang/String;
iput-object v1, v0, Lcom/tencent/map/a/a/d;->p:Ljava/lang/String;
:cond_1b7
:goto_1b7
iget v0, p0, Lcom/tencent/map/b/n;->B:I
if-nez v0, :cond_1bf
iget-object v0, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
if-eqz v0, :cond_1eb
:cond_1bf
iget v0, p0, Lcom/tencent/map/b/n;->B:I
if-eqz v0, :cond_1c9
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget v1, p0, Lcom/tencent/map/b/n;->B:I
iput v1, v0, Lcom/tencent/map/a/a/d;->y:I
:cond_1c9
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lcom/tencent/map/b/n;->v:J
sub-long/2addr v0, v2
iget-wide v2, p0, Lcom/tencent/map/b/n;->a:J
cmp-long v0, v0, v2
if-ltz v0, :cond_1eb
iget-object v0, p0, Lcom/tencent/map/b/n;->j:Lcom/tencent/map/a/a/b;
if-eqz v0, :cond_1eb
iget v0, p0, Lcom/tencent/map/b/n;->k:I
if-ne v0, v4, :cond_1eb
iget-object v0, p0, Lcom/tencent/map/b/n;->j:Lcom/tencent/map/a/a/b;
iget-object v1, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
invoke-virtual {v0, v1}, Lcom/tencent/map/a/a/b;->a(Lcom/tencent/map/a/a/d;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/tencent/map/b/n;->v:J
:cond_1eb
return-void
:cond_1ec
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v1, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iget-object v1, v1, Lcom/tencent/map/a/a/d;->q:Ljava/lang/String;
iput-object v1, v0, Lcom/tencent/map/a/a/d;->q:Ljava/lang/String;
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v1, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iget-object v1, v1, Lcom/tencent/map/a/a/d;->r:Ljava/lang/String;
iput-object v1, v0, Lcom/tencent/map/a/a/d;->r:Ljava/lang/String;
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v1, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iget-object v1, v1, Lcom/tencent/map/a/a/d;->s:Ljava/lang/String;
iput-object v1, v0, Lcom/tencent/map/a/a/d;->s:Ljava/lang/String;
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v1, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iget-object v1, v1, Lcom/tencent/map/a/a/d;->t:Ljava/lang/String;
iput-object v1, v0, Lcom/tencent/map/a/a/d;->t:Ljava/lang/String;
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v1, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iget-object v1, v1, Lcom/tencent/map/a/a/d;->u:Ljava/lang/String;
iput-object v1, v0, Lcom/tencent/map/a/a/d;->u:Ljava/lang/String;
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v1, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iget-object v1, v1, Lcom/tencent/map/a/a/d;->v:Ljava/lang/String;
iput-object v1, v0, Lcom/tencent/map/a/a/d;->v:Ljava/lang/String;
goto :goto_1b7
.end method
.method static synthetic a(Lcom/tencent/map/b/n;Lcom/tencent/map/b/e$a;)V
.registers 8
const/4 v1, 0x1
if-eqz p1, :cond_15
iput-object p1, p0, Lcom/tencent/map/b/n;->w:Lcom/tencent/map/b/e$a;
iget v0, p0, Lcom/tencent/map/b/n;->k:I
if-ne v0, v1, :cond_15
iget-object v0, p0, Lcom/tencent/map/b/n;->w:Lcom/tencent/map/b/e$a;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/tencent/map/b/n;->w:Lcom/tencent/map/b/e$a;
invoke-virtual {v0}, Lcom/tencent/map/b/e$a;->a()Z
move-result v0
if-nez v0, :cond_16
:cond_15
:goto_15
return-void
:cond_16
iget v0, p0, Lcom/tencent/map/b/n;->m:I
if-nez v0, :cond_1f
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/tencent/map/b/n;->b(Z)V
goto :goto_15
:cond_1f
iget v0, p0, Lcom/tencent/map/b/n;->m:I
if-ne v0, v1, :cond_15
iget-object v0, p0, Lcom/tencent/map/b/n;->i:Lcom/tencent/map/b/b;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/tencent/map/b/n;->i:Lcom/tencent/map/b/b;
iget-object v1, p0, Lcom/tencent/map/b/n;->w:Lcom/tencent/map/b/e$a;
invoke-virtual {v1}, Lcom/tencent/map/b/e$a;->b()Landroid/location/Location;
move-result-object v1
invoke-static {v1}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v1
iget-object v3, p0, Lcom/tencent/map/b/n;->w:Lcom/tencent/map/b/e$a;
invoke-virtual {v3}, Lcom/tencent/map/b/e$a;->b()Landroid/location/Location;
move-result-object v3
invoke-static {v3}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v3
iget-object v5, p0, Lcom/tencent/map/b/n;->b:Landroid/content/Context;
move-object v5, p0
invoke-virtual/range {v0 .. v5}, Lcom/tencent/map/b/b;->a(DDLcom/tencent/map/b/b$a;)V
goto :goto_15
.end method
.method static synthetic a(Lcom/tencent/map/b/n;Lcom/tencent/map/b/f$b;)V
.registers 2
if-eqz p1, :cond_7
iput-object p1, p0, Lcom/tencent/map/b/n;->y:Lcom/tencent/map/b/f$b;
invoke-direct {p0}, Lcom/tencent/map/b/n;->d()V
:cond_7
return-void
.end method
.method static synthetic a(Lcom/tencent/map/b/n;Lcom/tencent/map/b/m$b;)V
.registers 7
iput-object p1, p0, Lcom/tencent/map/b/n;->x:Lcom/tencent/map/b/m$b;
iget-object v0, p0, Lcom/tencent/map/b/n;->e:Lcom/tencent/map/b/f;
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/tencent/map/b/n;->e:Lcom/tencent/map/b/f;
invoke-virtual {v0}, Lcom/tencent/map/b/f;->b()Z
move-result v0
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/tencent/map/b/n;->e:Lcom/tencent/map/b/f;
invoke-virtual {v0}, Lcom/tencent/map/b/f;->c()Z
move-result v0
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/tencent/map/b/n;->e:Lcom/tencent/map/b/f;
const-wide/16 v1, 0x0
invoke-virtual {v0, v1, v2}, Lcom/tencent/map/b/f;->a(J)V
:goto_1d
return-void
:cond_1e
iget v0, p0, Lcom/tencent/map/b/n;->C:I
if-lez v0, :cond_38
iget v0, p1, Lcom/tencent/map/b/m$b;->a:I
iget v1, p1, Lcom/tencent/map/b/m$b;->b:I
iget v2, p1, Lcom/tencent/map/b/m$b;->c:I
iget v3, p1, Lcom/tencent/map/b/m$b;->d:I
iget v4, p1, Lcom/tencent/map/b/m$b;->e:I
invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/map/b/s;->a(IIIII)Z
move-result v0
if-nez v0, :cond_38
iget v0, p0, Lcom/tencent/map/b/n;->C:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lcom/tencent/map/b/n;->C:I
:cond_38
invoke-direct {p0}, Lcom/tencent/map/b/n;->d()V
goto :goto_1d
.end method
.method static synthetic a(Lcom/tencent/map/b/n;Ljava/lang/String;)V
.registers 9
const/4 v3, 0x3
const/4 v2, -0x1
const/4 v6, 0x0
invoke-static {p1}, Lcom/tencent/map/b/s;->c(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_44
iget v0, p0, Lcom/tencent/map/b/n;->C:I
if-lez v0, :cond_14
iget v0, p0, Lcom/tencent/map/b/n;->C:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lcom/tencent/map/b/n;->C:I
:cond_13
:goto_13
return-void
:cond_14
iget v0, p0, Lcom/tencent/map/b/n;->k:I
if-nez v0, :cond_22
iget-object v0, p0, Lcom/tencent/map/b/n;->j:Lcom/tencent/map/a/a/b;
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/tencent/map/b/n;->j:Lcom/tencent/map/a/a/b;
invoke-virtual {v0, v6, v2}, Lcom/tencent/map/a/a/b;->a([BI)V
goto :goto_13
:cond_22
iget v0, p0, Lcom/tencent/map/b/n;->k:I
const/4 v1, 0x1
if-ne v0, v1, :cond_13
iget-object v0, p0, Lcom/tencent/map/b/n;->j:Lcom/tencent/map/a/a/b;
if-eqz v0, :cond_13
new-instance v0, Lcom/tencent/map/a/a/d;
invoke-direct {v0}, Lcom/tencent/map/a/a/d;-><init>()V
iput-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iput v3, p0, Lcom/tencent/map/b/n;->B:I
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iput v3, v0, Lcom/tencent/map/a/a/d;->y:I
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iput v2, v0, Lcom/tencent/map/a/a/d;->z:I
iget-object v0, p0, Lcom/tencent/map/b/n;->j:Lcom/tencent/map/a/a/b;
iget-object v1, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
invoke-virtual {v0, v1}, Lcom/tencent/map/a/a/b;->a(Lcom/tencent/map/a/a/d;)V
goto :goto_13
:cond_44
iget v0, p0, Lcom/tencent/map/b/n;->k:I
if-nez v0, :cond_5a
iget-object v0, p0, Lcom/tencent/map/b/n;->j:Lcom/tencent/map/a/a/b;
if-eqz v0, :cond_5a
:try_start_4c
invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B
:try_end_4f
.catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_57
move-result-object v0
:goto_50
iget-object v1, p0, Lcom/tencent/map/b/n;->j:Lcom/tencent/map/a/a/b;
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Lcom/tencent/map/a/a/b;->a([BI)V
goto :goto_13
:catch_57
move-exception v0
move-object v0, v6
goto :goto_50
:cond_5a
iget-object v0, p0, Lcom/tencent/map/b/n;->h:Lcom/tencent/map/b/c;
if-nez v0, :cond_65
move-object v0, v6
:goto_5f
if-eqz v0, :cond_8a
invoke-direct {p0, v0}, Lcom/tencent/map/b/n;->a(Ljava/lang/String;)V
goto :goto_13
:cond_65
iget-object v0, p0, Lcom/tencent/map/b/n;->x:Lcom/tencent/map/b/m$b;
if-eqz v0, :cond_ce
iget-object v0, p0, Lcom/tencent/map/b/n;->y:Lcom/tencent/map/b/f$b;
if-eqz v0, :cond_ce
iget-object v0, p0, Lcom/tencent/map/b/n;->h:Lcom/tencent/map/b/c;
iget-object v1, p0, Lcom/tencent/map/b/n;->x:Lcom/tencent/map/b/m$b;
iget v1, v1, Lcom/tencent/map/b/m$b;->b:I
iget-object v2, p0, Lcom/tencent/map/b/n;->x:Lcom/tencent/map/b/m$b;
iget v2, v2, Lcom/tencent/map/b/m$b;->c:I
iget-object v3, p0, Lcom/tencent/map/b/n;->x:Lcom/tencent/map/b/m$b;
iget v3, v3, Lcom/tencent/map/b/m$b;->d:I
iget-object v4, p0, Lcom/tencent/map/b/n;->x:Lcom/tencent/map/b/m$b;
iget v4, v4, Lcom/tencent/map/b/m$b;->e:I
iget-object v5, p0, Lcom/tencent/map/b/n;->y:Lcom/tencent/map/b/f$b;
invoke-virtual {v5}, Lcom/tencent/map/b/f$b;->a()Ljava/util/List;
move-result-object v5
invoke-virtual/range {v0 .. v5}, Lcom/tencent/map/b/c;->b(IIIILjava/util/List;)Ljava/lang/String;
move-result-object v0
goto :goto_5f
:cond_8a
iget-object v0, p0, Lcom/tencent/map/b/n;->h:Lcom/tencent/map/b/c;
if-eqz v0, :cond_b1
iget-object v0, p0, Lcom/tencent/map/b/n;->x:Lcom/tencent/map/b/m$b;
if-eqz v0, :cond_b1
iget-object v0, p0, Lcom/tencent/map/b/n;->y:Lcom/tencent/map/b/f$b;
if-eqz v0, :cond_b1
iget-object v0, p0, Lcom/tencent/map/b/n;->h:Lcom/tencent/map/b/c;
iget-object v1, p0, Lcom/tencent/map/b/n;->x:Lcom/tencent/map/b/m$b;
iget v1, v1, Lcom/tencent/map/b/m$b;->b:I
iget-object v2, p0, Lcom/tencent/map/b/n;->x:Lcom/tencent/map/b/m$b;
iget v2, v2, Lcom/tencent/map/b/m$b;->c:I
iget-object v3, p0, Lcom/tencent/map/b/n;->x:Lcom/tencent/map/b/m$b;
iget v3, v3, Lcom/tencent/map/b/m$b;->d:I
iget-object v4, p0, Lcom/tencent/map/b/n;->x:Lcom/tencent/map/b/m$b;
iget v4, v4, Lcom/tencent/map/b/m$b;->e:I
iget-object v5, p0, Lcom/tencent/map/b/n;->y:Lcom/tencent/map/b/f$b;
invoke-virtual {v5}, Lcom/tencent/map/b/f$b;->a()Ljava/util/List;
move-result-object v5
invoke-virtual/range {v0 .. v5}, Lcom/tencent/map/b/c;->a(IIIILjava/util/List;)V
:cond_b1
iget-boolean v0, p0, Lcom/tencent/map/b/n;->p:Z
if-nez v0, :cond_13
iget-object v0, p0, Lcom/tencent/map/b/n;->r:Lcom/tencent/map/b/n$b;
if-eqz v0, :cond_be
iget-object v0, p0, Lcom/tencent/map/b/n;->r:Lcom/tencent/map/b/n$b;
invoke-virtual {v0}, Lcom/tencent/map/b/n$b;->interrupt()V
:cond_be
iput-object v6, p0, Lcom/tencent/map/b/n;->r:Lcom/tencent/map/b/n$b;
new-instance v0, Lcom/tencent/map/b/n$b;
invoke-direct {v0, p0, p1}, Lcom/tencent/map/b/n$b;-><init>(Lcom/tencent/map/b/n;Ljava/lang/String;)V
iput-object v0, p0, Lcom/tencent/map/b/n;->r:Lcom/tencent/map/b/n$b;
iget-object v0, p0, Lcom/tencent/map/b/n;->r:Lcom/tencent/map/b/n$b;
invoke-virtual {v0}, Lcom/tencent/map/b/n$b;->start()V
goto/16 :goto_13
:cond_ce
move-object v0, v6
goto :goto_5f
.end method
.method private a(Ljava/lang/String;)V
.registers 14
const/4 v11, 0x2
const/4 v10, 0x4
const-wide/high16 v8, 0x4024
const/4 v1, 0x0
const/4 v2, 0x1
:try_start_6
new-instance v0, Lcom/tencent/map/a/a/d;
invoke-direct {v0}, Lcom/tencent/map/a/a/d;-><init>()V
iput-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
new-instance v3, Lorg/json/JSONObject;
invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v0, "location"
invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
iget-object v4, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const/4 v5, 0x1
iput v5, v4, Lcom/tencent/map/a/a/d;->a:I
iget-object v4, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const-string/jumbo v5, "latitude"
invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
move-result-wide v5
const/4 v7, 0x6
invoke-static {v5, v6, v7}, Lcom/tencent/map/b/s;->a(DI)D
move-result-wide v5
iput-wide v5, v4, Lcom/tencent/map/a/a/d;->b:D
iget-object v4, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const-string/jumbo v5, "longitude"
invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
move-result-wide v5
const/4 v7, 0x6
invoke-static {v5, v6, v7}, Lcom/tencent/map/b/s;->a(DI)D
move-result-wide v5
iput-wide v5, v4, Lcom/tencent/map/a/a/d;->c:D
iget-object v4, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const-string/jumbo v5, "altitude"
invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
move-result-wide v5
const/4 v7, 0x1
invoke-static {v5, v6, v7}, Lcom/tencent/map/b/s;->a(DI)D
move-result-wide v5
iput-wide v5, v4, Lcom/tencent/map/a/a/d;->d:D
iget-object v4, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const-string/jumbo v5, "accuracy"
invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
move-result-wide v5
const/4 v0, 0x1
invoke-static {v5, v6, v0}, Lcom/tencent/map/b/s;->a(DI)D
move-result-wide v5
iput-wide v5, v4, Lcom/tencent/map/a/a/d;->e:D
iget-object v4, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget v0, p0, Lcom/tencent/map/b/n;->m:I
if-ne v0, v2, :cond_1c1
move v0, v2
:goto_65
iput-boolean v0, v4, Lcom/tencent/map/a/a/d;->x:Z
const-string/jumbo v0, "bearing"
invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const/16 v0, -0x64
if-eqz v4, :cond_8a
const-string/jumbo v5, ","
invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v5
array-length v5, v5
if-le v5, v2, :cond_8a
const-string/jumbo v1, ","
invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
const/4 v4, 0x1
aget-object v1, v1, v4
invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v1
:cond_8a
iget-object v4, p0, Lcom/tencent/map/b/n;->x:Lcom/tencent/map/b/m$b;
if-eqz v4, :cond_92
iget-object v0, p0, Lcom/tencent/map/b/n;->x:Lcom/tencent/map/b/m$b;
iget v0, v0, Lcom/tencent/map/b/m$b;->f:I
:cond_92
iget-object v4, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v5, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-wide v5, v5, Lcom/tencent/map/a/a/d;->e:D
const/4 v7, 0x6
if-lt v1, v7, :cond_1c4
const-wide/high16 v0, 0x4044
:goto_9d
iput-wide v0, v4, Lcom/tencent/map/a/a/d;->e:D
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const/4 v1, 0x0
iput v1, v0, Lcom/tencent/map/a/a/d;->z:I
iget v0, p0, Lcom/tencent/map/b/n;->l:I
const/4 v1, 0x3
if-eq v0, v1, :cond_ad
iget v0, p0, Lcom/tencent/map/b/n;->l:I
if-ne v0, v10, :cond_101
:cond_ad
iget v0, p0, Lcom/tencent/map/b/n;->m:I
if-ne v0, v2, :cond_101
const-string/jumbo v0, "details"
invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
const-string/jumbo v1, "subnation"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
iget-object v1, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const-string/jumbo v4, "name"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Lcom/tencent/map/a/a/d;->a(Ljava/lang/String;)V
iget-object v1, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const-string/jumbo v4, "town"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, v1, Lcom/tencent/map/a/a/d;->m:Ljava/lang/String;
iget-object v1, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const-string/jumbo v4, "village"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, v1, Lcom/tencent/map/a/a/d;->n:Ljava/lang/String;
iget-object v1, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const-string/jumbo v4, "street"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, v1, Lcom/tencent/map/a/a/d;->o:Ljava/lang/String;
iget-object v1, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const-string/jumbo v4, "street_no"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, v1, Lcom/tencent/map/a/a/d;->p:Ljava/lang/String;
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const/4 v1, 0x3
iput v1, v0, Lcom/tencent/map/a/a/d;->z:I
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const/4 v1, 0x0
iput v1, v0, Lcom/tencent/map/a/a/d;->h:I
:cond_101
iget v0, p0, Lcom/tencent/map/b/n;->l:I
if-ne v0, v10, :cond_124
iget v0, p0, Lcom/tencent/map/b/n;->m:I
if-ne v0, v2, :cond_124
const-string/jumbo v0, "details"
invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
const-string/jumbo v1, "poilist"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v0
iget-object v1, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
invoke-static {v0}, Lcom/tencent/map/b/n;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
move-result-object v0
iput-object v0, v1, Lcom/tencent/map/a/a/d;->w:Ljava/util/ArrayList;
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const/4 v1, 0x4
iput v1, v0, Lcom/tencent/map/a/a/d;->z:I
:cond_124
iget v0, p0, Lcom/tencent/map/b/n;->l:I
const/4 v1, 0x7
if-ne v0, v1, :cond_185
iget v0, p0, Lcom/tencent/map/b/n;->m:I
if-ne v0, v2, :cond_185
const-string/jumbo v0, "details"
invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
const-string/jumbo v1, "stat"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v1
const-string/jumbo v3, "subnation"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
if-nez v1, :cond_22e
iget-object v3, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const-string/jumbo v4, "name"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/tencent/map/a/a/d;->a(Ljava/lang/String;)V
iget-object v3, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const-string/jumbo v4, "town"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, v3, Lcom/tencent/map/a/a/d;->m:Ljava/lang/String;
iget-object v3, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const-string/jumbo v4, "village"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, v3, Lcom/tencent/map/a/a/d;->n:Ljava/lang/String;
iget-object v3, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const-string/jumbo v4, "street"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, v3, Lcom/tencent/map/a/a/d;->o:Ljava/lang/String;
iget-object v3, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const-string/jumbo v4, "street_no"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, v3, Lcom/tencent/map/a/a/d;->p:Ljava/lang/String;
:cond_17c
:goto_17c
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iput v1, v0, Lcom/tencent/map/a/a/d;->h:I
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const/4 v1, 0x7
iput v1, v0, Lcom/tencent/map/a/a/d;->z:I
:cond_185
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const/4 v1, 0x0
iput v1, v0, Lcom/tencent/map/a/a/d;->y:I
new-instance v0, Lcom/tencent/map/a/a/d;
iget-object v1, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
invoke-direct {v0, v1}, Lcom/tencent/map/a/a/d;-><init>(Lcom/tencent/map/a/a/d;)V
iput-object v0, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
const/4 v0, 0x0
iput v0, p0, Lcom/tencent/map/b/n;->B:I
iget-object v0, p0, Lcom/tencent/map/b/n;->h:Lcom/tencent/map/b/c;
if-eqz v0, :cond_19f
iget-object v0, p0, Lcom/tencent/map/b/n;->h:Lcom/tencent/map/b/c;
invoke-virtual {v0, p1}, Lcom/tencent/map/b/c;->a(Ljava/lang/String;)V
:try_end_19f
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19f} :catch_27f
:cond_19f
:goto_19f
iget-object v0, p0, Lcom/tencent/map/b/n;->j:Lcom/tencent/map/a/a/b;
if-eqz v0, :cond_1c0
iget v0, p0, Lcom/tencent/map/b/n;->k:I
if-ne v0, v2, :cond_1c0
iget-object v0, p0, Lcom/tencent/map/b/n;->w:Lcom/tencent/map/b/e$a;
if-eqz v0, :cond_1b3
iget-object v0, p0, Lcom/tencent/map/b/n;->w:Lcom/tencent/map/b/e$a;
invoke-virtual {v0}, Lcom/tencent/map/b/e$a;->a()Z
move-result v0
if-nez v0, :cond_1c0
:cond_1b3
iget-object v0, p0, Lcom/tencent/map/b/n;->j:Lcom/tencent/map/a/a/b;
iget-object v1, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
invoke-virtual {v0, v1}, Lcom/tencent/map/a/a/b;->a(Lcom/tencent/map/a/a/d;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/tencent/map/b/n;->v:J
:cond_1c0
return-void
:cond_1c1
move v0, v1
goto/16 :goto_65
:cond_1c4
const/4 v7, 0x5
if-ne v1, v7, :cond_1cb
const-wide/high16 v0, 0x404e
goto/16 :goto_9d
:cond_1cb
if-ne v1, v10, :cond_1d4
const-wide v0, 0x4051800000000000L
goto/16 :goto_9d
:cond_1d4
const/4 v7, 0x3
if-ne v1, v7, :cond_1de
const-wide v0, 0x4056800000000000L
goto/16 :goto_9d
:cond_1de
if-ne v1, v11, :cond_1e7
const-wide v0, 0x405b800000000000L
goto/16 :goto_9d
:cond_1e7
const/16 v7, -0x48
if-lt v0, v7, :cond_1fa
if-nez v1, :cond_1fa
const-wide v0, 0x3fdccccccccccccdL
mul-double/2addr v0, v5
div-double/2addr v0, v8
double-to-int v0, v0
mul-int/lit8 v0, v0, 0xa
:goto_1f7
int-to-double v0, v0
goto/16 :goto_9d
:cond_1fa
const-wide/high16 v0, 0x4059
cmpg-double v0, v5, v0
if-gtz v0, :cond_20c
const-wide/high16 v0, 0x3ff0
sub-double v0, v5, v0
div-double/2addr v0, v8
const-wide/high16 v5, 0x3ff0
add-double/2addr v0, v5
double-to-int v0, v0
mul-int/lit8 v0, v0, 0xa
goto :goto_1f7
:cond_20c
const-wide/high16 v0, 0x4059
cmpl-double v0, v5, v0
if-lez v0, :cond_223
const-wide/high16 v0, 0x4089
cmpg-double v0, v5, v0
if-gtz v0, :cond_223
const-wide v0, 0x3feb333333333333L
mul-double/2addr v0, v5
div-double/2addr v0, v8
double-to-int v0, v0
mul-int/lit8 v0, v0, 0xa
goto :goto_1f7
:cond_223
const-wide v0, 0x3fe999999999999aL
mul-double/2addr v0, v5
div-double/2addr v0, v8
double-to-int v0, v0
mul-int/lit8 v0, v0, 0xa
goto :goto_1f7
:cond_22e
if-ne v1, v2, :cond_17c
:try_start_230
iget-object v3, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const-string/jumbo v4, "nation"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, v3, Lcom/tencent/map/a/a/d;->i:Ljava/lang/String;
iget-object v3, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const-string/jumbo v4, "admin_level_1"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, v3, Lcom/tencent/map/a/a/d;->q:Ljava/lang/String;
iget-object v3, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const-string/jumbo v4, "admin_level_2"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, v3, Lcom/tencent/map/a/a/d;->r:Ljava/lang/String;
iget-object v3, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const-string/jumbo v4, "admin_level_3"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, v3, Lcom/tencent/map/a/a/d;->s:Ljava/lang/String;
iget-object v3, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const-string/jumbo v4, "locality"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, v3, Lcom/tencent/map/a/a/d;->t:Ljava/lang/String;
iget-object v3, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const-string/jumbo v4, "sublocality"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, v3, Lcom/tencent/map/a/a/d;->u:Ljava/lang/String;
iget-object v3, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const-string/jumbo v4, "route"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, v3, Lcom/tencent/map/a/a/d;->v:Ljava/lang/String;
:try_end_27d
.catch Ljava/lang/Exception; {:try_start_230 .. :try_end_27d} :catch_27f
goto/16 :goto_17c
:catch_27f
move-exception v0
new-instance v0, Lcom/tencent/map/a/a/d;
invoke-direct {v0}, Lcom/tencent/map/a/a/d;-><init>()V
iput-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const/4 v1, -0x1
iput v1, v0, Lcom/tencent/map/a/a/d;->z:I
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iput v11, v0, Lcom/tencent/map/a/a/d;->y:I
iput v11, p0, Lcom/tencent/map/b/n;->B:I
goto/16 :goto_19f
.end method
.method static synthetic a(Lcom/tencent/map/b/n;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/tencent/map/b/n;->p:Z
return p1
.end method
.method static synthetic a(Z)Z
.registers 2
const/4 v0, 0x1
sput-boolean v0, Lcom/tencent/map/b/n;->t:Z
return v0
.end method
.method static synthetic b(Lcom/tencent/map/b/n;)Lcom/tencent/map/b/f;
.registers 2
iget-object v0, p0, Lcom/tencent/map/b/n;->e:Lcom/tencent/map/b/f;
return-object v0
.end method
.method static synthetic b(Lcom/tencent/map/b/n;I)V
.registers 4
const/4 v0, 0x3
if-ne p1, v0, :cond_4
const/4 v0, 0x4
:cond_4
iput v0, p0, Lcom/tencent/map/b/n;->g:I
iget-object v0, p0, Lcom/tencent/map/b/n;->j:Lcom/tencent/map/a/a/b;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/tencent/map/b/n;->j:Lcom/tencent/map/a/a/b;
iget v1, p0, Lcom/tencent/map/b/n;->g:I
invoke-virtual {v0, v1}, Lcom/tencent/map/a/a/b;->a(I)V
:cond_11
return-void
.end method
.method static synthetic b(Lcom/tencent/map/b/n;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/tencent/map/b/n;->a(Ljava/lang/String;)V
return-void
.end method
.method private b(Z)V
.registers 9
const/4 v6, 0x6
const/4 v5, 0x0
const/4 v4, 0x1
iget-object v0, p0, Lcom/tencent/map/b/n;->w:Lcom/tencent/map/b/e$a;
if-eqz v0, :cond_a6
iget-object v0, p0, Lcom/tencent/map/b/n;->w:Lcom/tencent/map/b/e$a;
invoke-virtual {v0}, Lcom/tencent/map/b/e$a;->a()Z
move-result v0
if-eqz v0, :cond_a6
iget-object v0, p0, Lcom/tencent/map/b/n;->w:Lcom/tencent/map/b/e$a;
invoke-virtual {v0}, Lcom/tencent/map/b/e$a;->b()Landroid/location/Location;
move-result-object v0
new-instance v1, Lcom/tencent/map/a/a/d;
invoke-direct {v1}, Lcom/tencent/map/a/a/d;-><init>()V
iput-object v1, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iget-object v1, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
invoke-static {v0}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v2
invoke-static {v2, v3, v6}, Lcom/tencent/map/b/s;->a(DI)D
move-result-wide v2
iput-wide v2, v1, Lcom/tencent/map/a/a/d;->b:D
iget-object v1, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
invoke-static {v0}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v2
invoke-static {v2, v3, v6}, Lcom/tencent/map/b/s;->a(DI)D
move-result-wide v2
iput-wide v2, v1, Lcom/tencent/map/a/a/d;->c:D
iget-object v1, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
invoke-static {v0}, Ldroidbox/android/location/Location;->getAltitude(Landroid/location/Location;)D
move-result-wide v2
invoke-static {v2, v3, v4}, Lcom/tencent/map/b/s;->a(DI)D
move-result-wide v2
iput-wide v2, v1, Lcom/tencent/map/a/a/d;->d:D
iget-object v1, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
invoke-static {v0}, Ldroidbox/android/location/Location;->getAccuracy(Landroid/location/Location;)F
move-result v2
float-to-double v2, v2
invoke-static {v2, v3, v4}, Lcom/tencent/map/b/s;->a(DI)D
move-result-wide v2
iput-wide v2, v1, Lcom/tencent/map/a/a/d;->e:D
iget-object v1, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
invoke-static {v0}, Ldroidbox/android/location/Location;->getSpeed(Landroid/location/Location;)F
move-result v2
float-to-double v2, v2
invoke-static {v2, v3, v4}, Lcom/tencent/map/b/s;->a(DI)D
move-result-wide v2
iput-wide v2, v1, Lcom/tencent/map/a/a/d;->f:D
iget-object v1, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
invoke-static {v0}, Ldroidbox/android/location/Location;->getBearing(Landroid/location/Location;)F
move-result v0
float-to-double v2, v0
invoke-static {v2, v3, v4}, Lcom/tencent/map/b/s;->a(DI)D
move-result-wide v2
iput-wide v2, v1, Lcom/tencent/map/a/a/d;->g:D
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iput v5, v0, Lcom/tencent/map/a/a/d;->a:I
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iput-boolean v5, v0, Lcom/tencent/map/a/a/d;->x:Z
if-nez p1, :cond_a7
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iput v5, v0, Lcom/tencent/map/a/a/d;->y:I
:goto_75
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iput v5, v0, Lcom/tencent/map/a/a/d;->z:I
new-instance v0, Lcom/tencent/map/a/a/d;
iget-object v1, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
invoke-direct {v0, v1}, Lcom/tencent/map/a/a/d;-><init>(Lcom/tencent/map/a/a/d;)V
iput-object v0, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
iput v5, p0, Lcom/tencent/map/b/n;->B:I
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lcom/tencent/map/b/n;->v:J
sub-long/2addr v0, v2
iget-wide v2, p0, Lcom/tencent/map/b/n;->a:J
cmp-long v0, v0, v2
if-ltz v0, :cond_a6
iget-object v0, p0, Lcom/tencent/map/b/n;->j:Lcom/tencent/map/a/a/b;
if-eqz v0, :cond_a6
iget v0, p0, Lcom/tencent/map/b/n;->k:I
if-ne v0, v4, :cond_a6
iget-object v0, p0, Lcom/tencent/map/b/n;->j:Lcom/tencent/map/a/a/b;
iget-object v1, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
invoke-virtual {v0, v1}, Lcom/tencent/map/a/a/b;->a(Lcom/tencent/map/a/a/d;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/tencent/map/b/n;->v:J
:cond_a6
return-void
:cond_a7
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iput v4, v0, Lcom/tencent/map/a/a/d;->y:I
goto :goto_75
.end method
.method static synthetic c(Lcom/tencent/map/b/n;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/tencent/map/b/n;->E:Ljava/lang/String;
return-object p1
.end method
.method static synthetic c(Lcom/tencent/map/b/n;)V
.registers 1
invoke-direct {p0}, Lcom/tencent/map/b/n;->d()V
return-void
.end method
.method static synthetic c()Z
.registers 1
sget-boolean v0, Lcom/tencent/map/b/n;->t:Z
return v0
.end method
.method static synthetic d(Lcom/tencent/map/b/n;)Lcom/tencent/map/b/n$a;
.registers 2
iget-object v0, p0, Lcom/tencent/map/b/n;->q:Lcom/tencent/map/b/n$a;
return-object v0
.end method
.method static synthetic d(Lcom/tencent/map/b/n;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/tencent/map/b/n;->F:Ljava/lang/String;
return-object p1
.end method
.method private d()V
.registers 5
iget-object v0, p0, Lcom/tencent/map/b/n;->s:Lcom/tencent/map/b/n$c;
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
new-instance v0, Lcom/tencent/map/b/n$c;
iget-object v1, p0, Lcom/tencent/map/b/n;->w:Lcom/tencent/map/b/e$a;
iget-object v2, p0, Lcom/tencent/map/b/n;->x:Lcom/tencent/map/b/m$b;
iget-object v3, p0, Lcom/tencent/map/b/n;->y:Lcom/tencent/map/b/f$b;
invoke-direct {v0, p0, v1, v2, v3}, Lcom/tencent/map/b/n$c;-><init>(Lcom/tencent/map/b/n;Lcom/tencent/map/b/e$a;Lcom/tencent/map/b/m$b;Lcom/tencent/map/b/f$b;)V
iput-object v0, p0, Lcom/tencent/map/b/n;->s:Lcom/tencent/map/b/n$c;
iget-object v0, p0, Lcom/tencent/map/b/n;->s:Lcom/tencent/map/b/n$c;
invoke-virtual {v0}, Lcom/tencent/map/b/n$c;->start()V
goto :goto_4
.end method
.method static synthetic e(Lcom/tencent/map/b/n;)I
.registers 2
iget v0, p0, Lcom/tencent/map/b/n;->B:I
return v0
.end method
.method static synthetic e(Lcom/tencent/map/b/n;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/tencent/map/b/n;->G:Ljava/lang/String;
return-object p1
.end method
.method private e()V
.registers 4
const/4 v2, 0x1
new-instance v0, Lcom/tencent/map/a/a/d;
invoke-direct {v0}, Lcom/tencent/map/a/a/d;-><init>()V
iput-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iput v2, p0, Lcom/tencent/map/b/n;->B:I
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iput v2, v0, Lcom/tencent/map/a/a/d;->y:I
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const/4 v1, -0x1
iput v1, v0, Lcom/tencent/map/a/a/d;->z:I
iget-object v0, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
iput v2, v0, Lcom/tencent/map/a/a/d;->a:I
iget-object v0, p0, Lcom/tencent/map/b/n;->j:Lcom/tencent/map/a/a/b;
if-eqz v0, :cond_26
iget v0, p0, Lcom/tencent/map/b/n;->k:I
if-ne v0, v2, :cond_26
iget-object v0, p0, Lcom/tencent/map/b/n;->j:Lcom/tencent/map/a/a/b;
iget-object v1, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
invoke-virtual {v0, v1}, Lcom/tencent/map/a/a/b;->a(Lcom/tencent/map/a/a/d;)V
:cond_26
return-void
.end method
.method static synthetic f(Lcom/tencent/map/b/n;)Lcom/tencent/map/b/e$a;
.registers 2
iget-object v0, p0, Lcom/tencent/map/b/n;->w:Lcom/tencent/map/b/e$a;
return-object v0
.end method
.method static synthetic f(Lcom/tencent/map/b/n;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/tencent/map/b/n;->I:Ljava/lang/String;
return-object p1
.end method
.method static synthetic g(Lcom/tencent/map/b/n;)V
.registers 1
invoke-direct {p0}, Lcom/tencent/map/b/n;->e()V
return-void
.end method
.method static synthetic h(Lcom/tencent/map/b/n;)I
.registers 2
iget v0, p0, Lcom/tencent/map/b/n;->D:I
return v0
.end method
.method static synthetic i(Lcom/tencent/map/b/n;)I
.registers 2
iget v0, p0, Lcom/tencent/map/b/n;->m:I
return v0
.end method
.method static synthetic j(Lcom/tencent/map/b/n;)V
.registers 1
return-void
.end method
.method static synthetic k(Lcom/tencent/map/b/n;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/tencent/map/b/n;->b:Landroid/content/Context;
return-object v0
.end method
.method static synthetic l(Lcom/tencent/map/b/n;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/tencent/map/b/n;->E:Ljava/lang/String;
return-object v0
.end method
.method static synthetic m(Lcom/tencent/map/b/n;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/tencent/map/b/n;->F:Ljava/lang/String;
return-object v0
.end method
.method static synthetic n(Lcom/tencent/map/b/n;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/tencent/map/b/n;->G:Ljava/lang/String;
return-object v0
.end method
.method static synthetic o(Lcom/tencent/map/b/n;)I
.registers 2
iget v0, p0, Lcom/tencent/map/b/n;->g:I
return v0
.end method
.method static synthetic p(Lcom/tencent/map/b/n;)Lcom/tencent/map/b/m;
.registers 2
iget-object v0, p0, Lcom/tencent/map/b/n;->d:Lcom/tencent/map/b/m;
return-object v0
.end method
.method static synthetic q(Lcom/tencent/map/b/n;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/tencent/map/b/n;->H:Ljava/lang/String;
return-object v0
.end method
.method static synthetic r(Lcom/tencent/map/b/n;)Z
.registers 2
iget-boolean v0, p0, Lcom/tencent/map/b/n;->K:Z
return v0
.end method
.method static synthetic s(Lcom/tencent/map/b/n;)I
.registers 2
iget v0, p0, Lcom/tencent/map/b/n;->l:I
return v0
.end method
.method static synthetic t(Lcom/tencent/map/b/n;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/tencent/map/b/n;->I:Ljava/lang/String;
return-object v0
.end method
.method static synthetic u(Lcom/tencent/map/b/n;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/tencent/map/b/n;->J:Ljava/lang/String;
return-object v0
.end method
.method public final a(DD)V
.registers 9
iget-object v1, p0, Lcom/tencent/map/b/n;->o:[B
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/tencent/map/b/n;->q:Lcom/tencent/map/b/n$a;
const/4 v2, 0x6
invoke-virtual {v0, v2}, Lcom/tencent/map/b/n$a;->obtainMessage(I)Landroid/os/Message;
move-result-object v0
new-instance v2, Landroid/location/Location;
const-string/jumbo v3, "Deflect"
invoke-static {v3}, Ldroidbox/android/location/Location;->droidbox_cons(Ljava/lang/String;)V
invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V
invoke-static {v2, p1, p2}, Ldroidbox/android/location/Location;->setLatitude(Landroid/location/Location;D)V
invoke-static {v2, p3, p4}, Ldroidbox/android/location/Location;->setLongitude(Landroid/location/Location;D)V
iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
iget-object v2, p0, Lcom/tencent/map/b/n;->q:Lcom/tencent/map/b/n$a;
invoke-virtual {v2, v0}, Lcom/tencent/map/b/n$a;->sendMessage(Landroid/os/Message;)Z
monitor-exit v1
:try_end_20
.catchall {:try_start_3 .. :try_end_20} :catchall_21
return-void
:catchall_21
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(I)V
.registers 6
iget-object v1, p0, Lcom/tencent/map/b/n;->o:[B
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/tencent/map/b/n;->q:Lcom/tencent/map/b/n$a;
const/4 v2, 0x4
const/4 v3, 0x0
invoke-virtual {v0, v2, p1, v3}, Lcom/tencent/map/b/n$a;->obtainMessage(III)Landroid/os/Message;
move-result-object v0
iget-object v2, p0, Lcom/tencent/map/b/n;->q:Lcom/tencent/map/b/n$a;
invoke-virtual {v2, v0}, Lcom/tencent/map/b/n$a;->sendMessage(Landroid/os/Message;)Z
monitor-exit v1
:try_end_11
.catchall {:try_start_3 .. :try_end_11} :catchall_12
return-void
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Lcom/tencent/map/b/e$a;)V
.registers 5
iget-object v1, p0, Lcom/tencent/map/b/n;->o:[B
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/tencent/map/b/n;->q:Lcom/tencent/map/b/n$a;
const/4 v2, 0x1
invoke-virtual {v0, v2, p1}, Lcom/tencent/map/b/n$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
iget-object v2, p0, Lcom/tencent/map/b/n;->q:Lcom/tencent/map/b/n$a;
invoke-virtual {v2, v0}, Lcom/tencent/map/b/n$a;->sendMessage(Landroid/os/Message;)Z
monitor-exit v1
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_11
return-void
:catchall_11
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Lcom/tencent/map/b/f$b;)V
.registers 5
iget-object v1, p0, Lcom/tencent/map/b/n;->o:[B
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/tencent/map/b/n;->q:Lcom/tencent/map/b/n$a;
const/4 v2, 0x3
invoke-virtual {v0, v2, p1}, Lcom/tencent/map/b/n$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
iget-object v2, p0, Lcom/tencent/map/b/n;->q:Lcom/tencent/map/b/n$a;
invoke-virtual {v2, v0}, Lcom/tencent/map/b/n$a;->sendMessage(Landroid/os/Message;)Z
monitor-exit v1
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_11
return-void
:catchall_11
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Lcom/tencent/map/b/m$b;)V
.registers 5
iget-object v1, p0, Lcom/tencent/map/b/n;->o:[B
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/tencent/map/b/n;->q:Lcom/tencent/map/b/n$a;
const/4 v2, 0x2
invoke-virtual {v0, v2, p1}, Lcom/tencent/map/b/n$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
iget-object v2, p0, Lcom/tencent/map/b/n;->q:Lcom/tencent/map/b/n$a;
invoke-virtual {v2, v0}, Lcom/tencent/map/b/n$a;->sendMessage(Landroid/os/Message;)Z
monitor-exit v1
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_11
return-void
:catchall_11
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Landroid/content/Context;Lcom/tencent/map/a/a/b;)Z
.registers 11
const/4 v2, 0x1
const/4 v1, 0x0
iget-object v3, p0, Lcom/tencent/map/b/n;->n:[B
monitor-enter v3
if-eqz p1, :cond_9
if-nez p2, :cond_c
:cond_9
monitor-exit v3
move v0, v1
:goto_b
return v0
:cond_c
:try_start_c
iget-object v0, p0, Lcom/tencent/map/b/n;->J:Ljava/lang/String;
invoke-static {v0}, Lcom/tencent/map/b/s;->a(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_17
monitor-exit v3
move v0, v1
goto :goto_b
:cond_17
new-instance v0, Lcom/tencent/map/b/n$a;
invoke-direct {v0, p0}, Lcom/tencent/map/b/n$a;-><init>(Lcom/tencent/map/b/n;)V
iput-object v0, p0, Lcom/tencent/map/b/n;->q:Lcom/tencent/map/b/n$a;
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v4
invoke-direct {v0, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/tencent/map/b/n;->N:Landroid/os/Handler;
iput-object p1, p0, Lcom/tencent/map/b/n;->b:Landroid/content/Context;
iput-object p2, p0, Lcom/tencent/map/b/n;->j:Lcom/tencent/map/a/a/b;
invoke-static {}, Lcom/tencent/map/b/t;->a()Lcom/tencent/map/b/t;
move-result-object v0
iget-object v4, p0, Lcom/tencent/map/b/n;->b:Landroid/content/Context;
invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v4
invoke-virtual {v0, v4}, Lcom/tencent/map/b/t;->a(Landroid/content/Context;)V
:try_end_3a
.catchall {:try_start_c .. :try_end_3a} :catchall_e7
:try_start_3a
const-string/jumbo v0, "connectivity"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
if-eqz v0, :cond_55
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v4
if-eqz v4, :cond_55
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z
move-result v0
iput-boolean v0, p0, Lcom/tencent/map/b/n;->K:Z
:cond_55
iget-object v0, p0, Lcom/tencent/map/b/n;->b:Landroid/content/Context;
iget-object v4, p0, Lcom/tencent/map/b/n;->P:Landroid/content/BroadcastReceiver;
new-instance v5, Landroid/content/IntentFilter;
const-string/jumbo v6, "android.net.conn.CONNECTIVITY_CHANGE"
invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
:try_start_64
:try_end_64
.catchall {:try_start_3a .. :try_end_64} :catchall_e7
.catch Ljava/lang/Exception; {:try_start_3a .. :try_end_64} :catch_ea
:goto_64
iget-object v0, p0, Lcom/tencent/map/b/n;->j:Lcom/tencent/map/a/a/b;
invoke-virtual {v0}, Lcom/tencent/map/a/a/b;->a()I
move-result v0
iput v0, p0, Lcom/tencent/map/b/n;->k:I
iget-object v0, p0, Lcom/tencent/map/b/n;->j:Lcom/tencent/map/a/a/b;
invoke-virtual {v0}, Lcom/tencent/map/a/a/b;->b()I
move-result v0
iput v0, p0, Lcom/tencent/map/b/n;->l:I
iget-object v0, p0, Lcom/tencent/map/b/n;->j:Lcom/tencent/map/a/a/b;
invoke-virtual {v0}, Lcom/tencent/map/a/a/b;->c()I
move-result v0
iput v0, p0, Lcom/tencent/map/b/n;->m:I
const-wide/16 v4, -0x1
iput-wide v4, p0, Lcom/tencent/map/b/n;->v:J
iget v0, p0, Lcom/tencent/map/b/n;->l:I
const/4 v4, 0x7
if-ne v0, v4, :cond_88
const/4 v0, 0x0
iput v0, p0, Lcom/tencent/map/b/n;->l:I
:cond_88
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/tencent/map/b/n;->L:Z
const/4 v0, 0x1
iput v0, p0, Lcom/tencent/map/b/n;->D:I
iget-object v0, p0, Lcom/tencent/map/b/n;->c:Lcom/tencent/map/b/e;
iget-object v4, p0, Lcom/tencent/map/b/n;->b:Landroid/content/Context;
invoke-virtual {v0, p0, v4}, Lcom/tencent/map/b/e;->a(Lcom/tencent/map/b/e$b;Landroid/content/Context;)Z
move-result v0
iget-object v4, p0, Lcom/tencent/map/b/n;->d:Lcom/tencent/map/b/m;
iget-object v5, p0, Lcom/tencent/map/b/n;->b:Landroid/content/Context;
invoke-virtual {v4, v5, p0}, Lcom/tencent/map/b/m;->a(Landroid/content/Context;Lcom/tencent/map/b/m$a;)Z
move-result v4
iget-object v5, p0, Lcom/tencent/map/b/n;->e:Lcom/tencent/map/b/f;
iget-object v6, p0, Lcom/tencent/map/b/n;->b:Landroid/content/Context;
const/4 v7, 0x1
invoke-virtual {v5, v6, p0, v7}, Lcom/tencent/map/b/f;->a(Landroid/content/Context;Lcom/tencent/map/b/f$a;I)Z
move-result v5
invoke-static {}, Lcom/tencent/map/b/c;->a()Lcom/tencent/map/b/c;
move-result-object v6
iput-object v6, p0, Lcom/tencent/map/b/n;->h:Lcom/tencent/map/b/c;
invoke-static {}, Lcom/tencent/map/b/b;->a()Lcom/tencent/map/b/b;
move-result-object v6
iput-object v6, p0, Lcom/tencent/map/b/n;->i:Lcom/tencent/map/b/b;
const/4 v6, 0x0
iput-object v6, p0, Lcom/tencent/map/b/n;->w:Lcom/tencent/map/b/e$a;
const/4 v6, 0x0
iput-object v6, p0, Lcom/tencent/map/b/n;->x:Lcom/tencent/map/b/m$b;
const/4 v6, 0x0
iput-object v6, p0, Lcom/tencent/map/b/n;->y:Lcom/tencent/map/b/f$b;
const/4 v6, 0x0
iput-object v6, p0, Lcom/tencent/map/b/n;->z:Lcom/tencent/map/a/a/d;
const/4 v6, 0x0
iput-object v6, p0, Lcom/tencent/map/b/n;->A:Lcom/tencent/map/a/a/d;
const/4 v6, 0x0
iput v6, p0, Lcom/tencent/map/b/n;->B:I
iget-object v6, p0, Lcom/tencent/map/b/n;->h:Lcom/tencent/map/b/c;
if-eqz v6, :cond_ce
iget-object v6, p0, Lcom/tencent/map/b/n;->h:Lcom/tencent/map/b/c;
invoke-virtual {v6}, Lcom/tencent/map/b/c;->b()V
:cond_ce
const/4 v6, 0x1
iput v6, p0, Lcom/tencent/map/b/n;->C:I
if-eqz v0, :cond_db
iget v0, p0, Lcom/tencent/map/b/n;->m:I
if-nez v0, :cond_db
monitor-exit v3
:try_end_d8
.catchall {:try_start_64 .. :try_end_d8} :catchall_e7
move v0, v2
goto/16 :goto_b
:cond_db
if-nez v4, :cond_df
if-eqz v5, :cond_e3
:cond_df
monitor-exit v3
move v0, v2
goto/16 :goto_b
:cond_e3
monitor-exit v3
move v0, v1
goto/16 :goto_b
:catchall_e7
move-exception v0
monitor-exit v3
throw v0
:catch_ea
move-exception v0
goto/16 :goto_64
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
.registers 5
iget-object v1, p0, Lcom/tencent/map/b/n;->n:[B
monitor-enter v1
:try_start_3
invoke-static {}, Lcom/tencent/map/b/a;->a()Lcom/tencent/map/b/a;
move-result-object v0
invoke-virtual {v0, p1, p2}, Lcom/tencent/map/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_12
iput-object p1, p0, Lcom/tencent/map/b/n;->J:Ljava/lang/String;
const/4 v0, 0x1
monitor-exit v1
:try_end_11
.catchall {:try_start_3 .. :try_end_11} :catchall_15
:goto_11
return v0
:cond_12
const/4 v0, 0x0
monitor-exit v1
goto :goto_11
:catchall_15
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final b()V
.registers 4
iget-object v1, p0, Lcom/tencent/map/b/n;->n:[B
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/tencent/map/b/n;->j:Lcom/tencent/map/a/a/b;
if-eqz v0, :cond_27
const/4 v0, 0x0
iput-object v0, p0, Lcom/tencent/map/b/n;->j:Lcom/tencent/map/a/a/b;
iget-object v0, p0, Lcom/tencent/map/b/n;->N:Landroid/os/Handler;
iget-object v2, p0, Lcom/tencent/map/b/n;->O:Ljava/lang/Runnable;
invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lcom/tencent/map/b/n;->b:Landroid/content/Context;
iget-object v2, p0, Lcom/tencent/map/b/n;->P:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
iget-object v0, p0, Lcom/tencent/map/b/n;->c:Lcom/tencent/map/b/e;
invoke-virtual {v0}, Lcom/tencent/map/b/e;->a()V
iget-object v0, p0, Lcom/tencent/map/b/n;->d:Lcom/tencent/map/b/m;
invoke-virtual {v0}, Lcom/tencent/map/b/m;->a()V
iget-object v0, p0, Lcom/tencent/map/b/n;->e:Lcom/tencent/map/b/f;
invoke-virtual {v0}, Lcom/tencent/map/b/f;->a()V
:goto_27
:cond_27
:try_end_27
.catchall {:try_start_3 .. :try_end_27} :catchall_29
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_27} :catch_2c
:try_start_27
monitor-exit v1
:try_end_28
.catchall {:try_start_27 .. :try_end_28} :catchall_29
return-void
:catchall_29
move-exception v0
monitor-exit v1
throw v0
:catch_2c
move-exception v0
goto :goto_27
.end method
.method public final b(I)V
.registers 6
iget-object v1, p0, Lcom/tencent/map/b/n;->o:[B
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/tencent/map/b/n;->q:Lcom/tencent/map/b/n$a;
const/4 v2, 0x5
const/4 v3, 0x0
invoke-virtual {v0, v2, p1, v3}, Lcom/tencent/map/b/n$a;->obtainMessage(III)Landroid/os/Message;
move-result-object v0
iget-object v2, p0, Lcom/tencent/map/b/n;->q:Lcom/tencent/map/b/n$a;
invoke-virtual {v2, v0}, Lcom/tencent/map/b/n$a;->sendMessage(Landroid/os/Message;)Z
monitor-exit v1
:try_end_11
.catchall {:try_start_3 .. :try_end_11} :catchall_12
return-void
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method