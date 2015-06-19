.class public Lcom/tencent/stat/StatConfig;
.super Ljava/lang/Object;
.field private static A:I
.field private static B:Z
.field private static C:Ljava/lang/String;
.field static a:Lcom/tencent/stat/b;
.field static b:Lcom/tencent/stat/b;
.field static c:Ljava/lang/String;
.field static d:Ljava/lang/String;
.field private static e:Lcom/tencent/stat/common/StatLogger;
.field private static f:Lcom/tencent/stat/StatReportStrategy;
.field private static g:Z
.field private static h:I
.field private static i:I
.field public static isAutoExceptionCaught:Z
.field private static j:I
.field private static k:I
.field private static l:I
.field private static m:Ljava/lang/String;
.field private static n:Ljava/lang/String;
.field private static o:Ljava/lang/String;
.field private static p:I
.field private static q:I
.field private static r:Z
.field private static s:J
.field private static t:J
.field private static u:Ljava/lang/String;
.field private static v:I
.field private static volatile w:I
.field private static x:I
.field private static y:I
.field private static z:Z
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x0
const/16 v5, 0x400
const/16 v4, 0x1e
const/4 v3, 0x1
const/4 v2, 0x0
invoke-static {}, Lcom/tencent/stat/common/k;->b()Lcom/tencent/stat/common/StatLogger;
move-result-object v0
sput-object v0, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
new-instance v0, Lcom/tencent/stat/b;
const/4 v1, 0x2
invoke-direct {v0, v1}, Lcom/tencent/stat/b;-><init>(I)V
sput-object v0, Lcom/tencent/stat/StatConfig;->a:Lcom/tencent/stat/b;
new-instance v0, Lcom/tencent/stat/b;
invoke-direct {v0, v3}, Lcom/tencent/stat/b;-><init>(I)V
sput-object v0, Lcom/tencent/stat/StatConfig;->b:Lcom/tencent/stat/b;
sget-object v0, Lcom/tencent/stat/StatReportStrategy;->APP_LAUNCH:Lcom/tencent/stat/StatReportStrategy;
sput-object v0, Lcom/tencent/stat/StatConfig;->f:Lcom/tencent/stat/StatReportStrategy;
sput-boolean v3, Lcom/tencent/stat/StatConfig;->g:Z
const/16 v0, 0x7530
sput v0, Lcom/tencent/stat/StatConfig;->h:I
sput v5, Lcom/tencent/stat/StatConfig;->i:I
sput v4, Lcom/tencent/stat/StatConfig;->j:I
const/4 v0, 0x3
sput v0, Lcom/tencent/stat/StatConfig;->k:I
sput v4, Lcom/tencent/stat/StatConfig;->l:I
const-string/jumbo v0, "__HIBERNATE__"
sput-object v0, Lcom/tencent/stat/StatConfig;->c:Ljava/lang/String;
sput-object v6, Lcom/tencent/stat/StatConfig;->m:Ljava/lang/String;
const-string/jumbo v0, ""
sput-object v0, Lcom/tencent/stat/StatConfig;->d:Ljava/lang/String;
const/16 v0, 0x5a0
sput v0, Lcom/tencent/stat/StatConfig;->p:I
sput v5, Lcom/tencent/stat/StatConfig;->q:I
sput-boolean v3, Lcom/tencent/stat/StatConfig;->r:Z
const-wide/16 v0, 0x0
sput-wide v0, Lcom/tencent/stat/StatConfig;->s:J
const-wide/32 v0, 0x493e0
sput-wide v0, Lcom/tencent/stat/StatConfig;->t:J
sput-boolean v3, Lcom/tencent/stat/StatConfig;->isAutoExceptionCaught:Z
const-string/jumbo v0, "http://pingma.qq.com:80/mstat/report"
sput-object v0, Lcom/tencent/stat/StatConfig;->u:Ljava/lang/String;
sput v2, Lcom/tencent/stat/StatConfig;->v:I
sput v2, Lcom/tencent/stat/StatConfig;->w:I
const/16 v0, 0x14
sput v0, Lcom/tencent/stat/StatConfig;->x:I
sput v2, Lcom/tencent/stat/StatConfig;->y:I
sput-boolean v2, Lcom/tencent/stat/StatConfig;->z:Z
const/16 v0, 0x1000
sput v0, Lcom/tencent/stat/StatConfig;->A:I
sput-boolean v2, Lcom/tencent/stat/StatConfig;->B:Z
sput-object v6, Lcom/tencent/stat/StatConfig;->C:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a()I
.registers 1
sget v0, Lcom/tencent/stat/StatConfig;->j:I
return v0
.end method
.method static a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
const-string/jumbo v0, "_mta_ky_tag_"
const/4 v1, 0x0
invoke-static {p0, v0, v1}, Lcom/tencent/stat/common/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/tencent/stat/common/k;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 4
:try_start_0
sget-object v0, Lcom/tencent/stat/StatConfig;->b:Lcom/tencent/stat/b;
iget-object v0, v0, Lcom/tencent/stat/b;->b:Lorg/json/JSONObject;
invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_7
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_c
move-result-object v0
if-eqz v0, :cond_b
move-object p1, v0
:goto_b
:cond_b
return-object p1
:catch_c
move-exception v0
sget-object v1, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V
goto :goto_b
.end method
.method static declared-synchronized a(I)V
.registers 3
const-class v0, Lcom/tencent/stat/StatConfig;
monitor-enter v0
:try_start_3
sput p0, Lcom/tencent/stat/StatConfig;->w:I
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_7
monitor-exit v0
return-void
:catchall_7
move-exception v1
monitor-exit v0
throw v1
.end method
.method static a(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
if-eqz p1, :cond_c
invoke-static {p1}, Lcom/tencent/stat/common/k;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "_mta_ky_tag_"
invoke-static {p0, v1, v0}, Lcom/tencent/stat/common/p;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
:cond_c
return-void
.end method
.method static a(Lcom/tencent/stat/b;)V
.registers 3
iget v0, p0, Lcom/tencent/stat/b;->a:I
sget-object v1, Lcom/tencent/stat/StatConfig;->b:Lcom/tencent/stat/b;
iget v1, v1, Lcom/tencent/stat/b;->a:I
if-ne v0, v1, :cond_12
sput-object p0, Lcom/tencent/stat/StatConfig;->b:Lcom/tencent/stat/b;
sget-object v0, Lcom/tencent/stat/StatConfig;->b:Lcom/tencent/stat/b;
iget-object v0, v0, Lcom/tencent/stat/b;->b:Lorg/json/JSONObject;
invoke-static {v0}, Lcom/tencent/stat/StatConfig;->b(Lorg/json/JSONObject;)V
:goto_11
:cond_11
return-void
:cond_12
iget v0, p0, Lcom/tencent/stat/b;->a:I
sget-object v1, Lcom/tencent/stat/StatConfig;->a:Lcom/tencent/stat/b;
iget v1, v1, Lcom/tencent/stat/b;->a:I
if-ne v0, v1, :cond_11
sput-object p0, Lcom/tencent/stat/StatConfig;->a:Lcom/tencent/stat/b;
goto :goto_11
.end method
.method static a(Lcom/tencent/stat/b;Lorg/json/JSONObject;)V
.registers 7
const/4 v2, 0x1
const/4 v1, 0x0
:try_start_2
invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v3
:goto_6
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_5b
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string/jumbo v4, "v"
invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_28
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v4
iget v0, p0, Lcom/tencent/stat/b;->d:I
if-eq v0, v4, :cond_8b
move v0, v2
:goto_24
iput v4, p0, Lcom/tencent/stat/b;->d:I
:goto_26
move v1, v0
goto :goto_6
:cond_28
const-string/jumbo v4, "c"
invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_47
const-string/jumbo v0, "c"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v4
if-lez v4, :cond_45
new-instance v4, Lorg/json/JSONObject;
invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
iput-object v4, p0, Lcom/tencent/stat/b;->b:Lorg/json/JSONObject;
:cond_45
move v0, v1
goto :goto_26
:cond_47
const-string/jumbo v4, "m"
invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_59
const-string/jumbo v0, "m"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/tencent/stat/b;->c:Ljava/lang/String;
:cond_59
move v0, v1
goto :goto_26
:cond_5b
if-ne v1, v2, :cond_7c
invoke-static {}, Lcom/tencent/stat/d;->a()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/tencent/stat/n;->a(Landroid/content/Context;)Lcom/tencent/stat/n;
move-result-object v0
if-eqz v0, :cond_6a
invoke-virtual {v0, p0}, Lcom/tencent/stat/n;->a(Lcom/tencent/stat/b;)V
:cond_6a
iget v0, p0, Lcom/tencent/stat/b;->a:I
sget-object v1, Lcom/tencent/stat/StatConfig;->b:Lcom/tencent/stat/b;
iget v1, v1, Lcom/tencent/stat/b;->a:I
if-ne v0, v1, :cond_7c
iget-object v0, p0, Lcom/tencent/stat/b;->b:Lorg/json/JSONObject;
invoke-static {v0}, Lcom/tencent/stat/StatConfig;->b(Lorg/json/JSONObject;)V
iget-object v0, p0, Lcom/tencent/stat/b;->b:Lorg/json/JSONObject;
invoke-static {v0}, Lcom/tencent/stat/StatConfig;->c(Lorg/json/JSONObject;)V
:try_end_7c
.catch Lorg/json/JSONException; {:try_start_2 .. :try_end_7c} :catch_7d
.catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7c} :catch_84
:cond_7c
:goto_7c
return-void
:catch_7d
move-exception v0
sget-object v1, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Exception;)V
goto :goto_7c
:catch_84
move-exception v0
sget-object v1, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
goto :goto_7c
:cond_8b
move v0, v1
goto :goto_24
.end method
.method static a(Lorg/json/JSONObject;)V
.registers 6
:try_start_0
invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v1
:goto_4
:cond_4
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
sget-object v2, Lcom/tencent/stat/StatConfig;->b:Lcom/tencent/stat/b;
iget v2, v2, Lcom/tencent/stat/b;->a:I
invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_2f
invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
sget-object v2, Lcom/tencent/stat/StatConfig;->b:Lcom/tencent/stat/b;
invoke-static {v2, v0}, Lcom/tencent/stat/StatConfig;->a(Lcom/tencent/stat/b;Lorg/json/JSONObject;)V
:try_end_27
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_27} :catch_28
goto :goto_4
:catch_28
move-exception v0
sget-object v1, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Exception;)V
:cond_2e
return-void
:try_start_2f
:cond_2f
sget-object v2, Lcom/tencent/stat/StatConfig;->a:Lcom/tencent/stat/b;
iget v2, v2, Lcom/tencent/stat/b;->a:I
invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_47
invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
sget-object v2, Lcom/tencent/stat/StatConfig;->a:Lcom/tencent/stat/b;
invoke-static {v2, v0}, Lcom/tencent/stat/StatConfig;->a(Lcom/tencent/stat/b;Lorg/json/JSONObject;)V
goto :goto_4
:cond_47
const-string/jumbo v2, "rs"
invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_2e
invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
invoke-static {v0}, Lcom/tencent/stat/StatReportStrategy;->getStatReportStrategy(I)Lcom/tencent/stat/StatReportStrategy;
move-result-object v0
if-eqz v0, :cond_4
sput-object v0, Lcom/tencent/stat/StatConfig;->f:Lcom/tencent/stat/StatReportStrategy;
sget-object v2, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "Change to ReportStrategy:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v0}, Lcom/tencent/stat/StatReportStrategy;->name()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V
:try_end_79
.catch Lorg/json/JSONException; {:try_start_2f .. :try_end_79} :catch_28
goto :goto_4
.end method
.method static a(Z)V
.registers 1
invoke-static {p0}, Lcom/tencent/stat/StatNativeCrashReport;->setNativeCrashDebugEnable(Z)V
return-void
.end method
.method static a(III)Z
.registers 4
if-lt p0, p1, :cond_6
if-gt p0, p2, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method private static a(Ljava/lang/String;)Z
.registers 4
const/4 v1, 0x1
const/4 v0, 0x0
if-nez p0, :cond_5
:cond_4
:goto_4
return v0
:cond_5
sget-object v2, Lcom/tencent/stat/StatConfig;->n:Ljava/lang/String;
if-nez v2, :cond_d
sput-object p0, Lcom/tencent/stat/StatConfig;->n:Ljava/lang/String;
move v0, v1
goto :goto_4
:cond_d
sget-object v2, Lcom/tencent/stat/StatConfig;->n:Ljava/lang/String;
invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/tencent/stat/StatConfig;->n:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v2, "|"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/tencent/stat/StatConfig;->n:Ljava/lang/String;
move v0, v1
goto :goto_4
.end method
.method static b()Lorg/apache/http/HttpHost;
.registers 5
sget-object v0, Lcom/tencent/stat/StatConfig;->m:Ljava/lang/String;
if-eqz v0, :cond_2c
sget-object v0, Lcom/tencent/stat/StatConfig;->m:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_2c
sget-object v1, Lcom/tencent/stat/StatConfig;->m:Ljava/lang/String;
const-string/jumbo v0, ":"
invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
const/16 v0, 0x50
array-length v3, v2
const/4 v4, 0x2
if-ne v3, v4, :cond_25
const/4 v0, 0x0
aget-object v1, v2, v0
const/4 v0, 0x1
aget-object v0, v2, v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
:cond_25
new-instance v2, Lorg/apache/http/HttpHost;
invoke-direct {v2, v1, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V
move-object v0, v2
:goto_2b
return-object v0
:cond_2c
const/4 v0, 0x0
goto :goto_2b
.end method
.method static b(I)V
.registers 1
if-gez p0, :cond_3
:goto_2
return-void
:cond_3
sput p0, Lcom/tencent/stat/StatConfig;->y:I
goto :goto_2
.end method
.method static b(Lorg/json/JSONObject;)V
.registers 3
:try_start_0
const-string/jumbo v0, "rs"
invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
invoke-static {v0}, Lcom/tencent/stat/StatReportStrategy;->getStatReportStrategy(I)Lcom/tencent/stat/StatReportStrategy;
move-result-object v0
if-eqz v0, :cond_10
invoke-static {v0}, Lcom/tencent/stat/StatConfig;->setStatSendStrategy(Lcom/tencent/stat/StatReportStrategy;)V
:goto_10
:try_end_10
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_10} :catch_11
:cond_10
return-void
:catch_11
move-exception v0
sget-object v0, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "rs not found."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V
goto :goto_10
.end method
.method static declared-synchronized c()V
.registers 2
const-class v1, Lcom/tencent/stat/StatConfig;
monitor-enter v1
:try_start_3
sget v0, Lcom/tencent/stat/StatConfig;->w:I
add-int/lit8 v0, v0, 0x1
sput v0, Lcom/tencent/stat/StatConfig;->w:I
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_b
monitor-exit v1
return-void
:catchall_b
move-exception v0
monitor-exit v1
throw v0
.end method
.method static c(Lorg/json/JSONObject;)V
.registers 6
:try_start_0
sget-object v0, Lcom/tencent/stat/StatConfig;->c:Ljava/lang/String;
invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "hibernateVer:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ", current version:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "1.6.2"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V
invoke-static {v0}, Lcom/tencent/stat/common/k;->b(Ljava/lang/String;)J
move-result-wide v1
const-string/jumbo v3, "1.6.2"
invoke-static {v3}, Lcom/tencent/stat/common/k;->b(Ljava/lang/String;)J
move-result-wide v3
cmp-long v3, v3, v1
if-gtz v3, :cond_69
invoke-static {}, Lcom/tencent/stat/d;->a()Landroid/content/Context;
move-result-object v3
sget-object v4, Lcom/tencent/stat/StatConfig;->c:Ljava/lang/String;
invoke-static {v3, v4, v1, v2}, Lcom/tencent/stat/common/p;->b(Landroid/content/Context;Ljava/lang/String;J)V
const/4 v1, 0x0
invoke-static {v1}, Lcom/tencent/stat/StatConfig;->setEnableStatService(Z)V
sget-object v1, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "MTA has disable for SDK version of "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v2, " or lower."
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->warn(Ljava/lang/Object;)V
:goto_69
:try_end_69
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_69} :catch_6a
:cond_69
return-void
:catch_6a
move-exception v0
sget-object v0, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "__HIBERNATE__ not found."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V
goto :goto_69
.end method
.method static d()V
.registers 1
sget v0, Lcom/tencent/stat/StatConfig;->y:I
add-int/lit8 v0, v0, 0x1
sput v0, Lcom/tencent/stat/StatConfig;->y:I
return-void
.end method
.method static e()I
.registers 1
sget v0, Lcom/tencent/stat/StatConfig;->y:I
return v0
.end method
.method public static declared-synchronized getAppKey(Landroid/content/Context;)Ljava/lang/String;
.registers 4
const-class v1, Lcom/tencent/stat/StatConfig;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/tencent/stat/StatConfig;->n:Ljava/lang/String;
if-eqz v0, :cond_b
sget-object v0, Lcom/tencent/stat/StatConfig;->n:Ljava/lang/String;
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_32
:goto_9
monitor-exit v1
return-object v0
:cond_b
if-eqz p0, :cond_17
:try_start_d
sget-object v0, Lcom/tencent/stat/StatConfig;->n:Ljava/lang/String;
if-nez v0, :cond_17
invoke-static {p0}, Lcom/tencent/stat/common/k;->i(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/tencent/stat/StatConfig;->n:Ljava/lang/String;
:cond_17
sget-object v0, Lcom/tencent/stat/StatConfig;->n:Ljava/lang/String;
if-eqz v0, :cond_27
sget-object v0, Lcom/tencent/stat/StatConfig;->n:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_2f
:cond_27
sget-object v0, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v2, "AppKey can not be null or empty, please read Developer\'s Guide first!"
invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
:cond_2f
sget-object v0, Lcom/tencent/stat/StatConfig;->n:Ljava/lang/String;
:try_end_31
.catchall {:try_start_d .. :try_end_31} :catchall_32
goto :goto_9
:catchall_32
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static getCurSessionStatReportCount()I
.registers 1
sget v0, Lcom/tencent/stat/StatConfig;->w:I
return v0
.end method
.method public static getCustomProperty(Ljava/lang/String;)Ljava/lang/String;
.registers 3
:try_start_0
sget-object v0, Lcom/tencent/stat/StatConfig;->a:Lcom/tencent/stat/b;
iget-object v0, v0, Lcom/tencent/stat/b;->b:Lorg/json/JSONObject;
invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_7
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_9
move-result-object v0
:goto_8
return-object v0
:catch_9
move-exception v0
sget-object v1, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
const/4 v0, 0x0
goto :goto_8
.end method
.method public static getCustomProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 4
:try_start_0
sget-object v0, Lcom/tencent/stat/StatConfig;->a:Lcom/tencent/stat/b;
iget-object v0, v0, Lcom/tencent/stat/b;->b:Lorg/json/JSONObject;
invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_7
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_c
move-result-object v0
if-eqz v0, :cond_b
move-object p1, v0
:goto_b
:cond_b
return-object p1
:catch_c
move-exception v0
sget-object v1, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
goto :goto_b
.end method
.method public static getCustomUserId(Landroid/content/Context;)Ljava/lang/String;
.registers 3
if-nez p0, :cond_c
sget-object v0, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "Context for getCustomUid is null."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
const/4 v0, 0x0
:goto_b
return-object v0
:cond_c
sget-object v0, Lcom/tencent/stat/StatConfig;->C:Ljava/lang/String;
if-nez v0, :cond_1c
const-string/jumbo v0, "MTA_CUSTOM_UID"
const-string/jumbo v1, ""
invoke-static {p0, v0, v1}, Lcom/tencent/stat/common/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/tencent/stat/StatConfig;->C:Ljava/lang/String;
:cond_1c
sget-object v0, Lcom/tencent/stat/StatConfig;->C:Ljava/lang/String;
goto :goto_b
.end method
.method public static getDeviceInfo(Landroid/content/Context;)Lcom/tencent/stat/DeviceInfo;
.registers 2
invoke-static {p0}, Lcom/tencent/stat/StatMid;->getDeviceInfo(Landroid/content/Context;)Lcom/tencent/stat/DeviceInfo;
move-result-object v0
return-object v0
.end method
.method public static declared-synchronized getInstallChannel(Landroid/content/Context;)Ljava/lang/String;
.registers 4
const-class v1, Lcom/tencent/stat/StatConfig;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/tencent/stat/StatConfig;->o:Ljava/lang/String;
if-eqz v0, :cond_b
sget-object v0, Lcom/tencent/stat/StatConfig;->o:Ljava/lang/String;
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_2c
:goto_9
monitor-exit v1
return-object v0
:cond_b
:try_start_b
invoke-static {p0}, Lcom/tencent/stat/common/k;->j(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/tencent/stat/StatConfig;->o:Ljava/lang/String;
sget-object v0, Lcom/tencent/stat/StatConfig;->o:Ljava/lang/String;
if-eqz v0, :cond_21
sget-object v0, Lcom/tencent/stat/StatConfig;->o:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_29
:cond_21
sget-object v0, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v2, "installChannel can not be null or empty, please read Developer\'s Guide first!"
invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V
:cond_29
sget-object v0, Lcom/tencent/stat/StatConfig;->o:Ljava/lang/String;
:try_end_2b
.catchall {:try_start_b .. :try_end_2b} :catchall_2c
goto :goto_9
:catchall_2c
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static getMaxBatchReportCount()I
.registers 1
sget v0, Lcom/tencent/stat/StatConfig;->l:I
return v0
.end method
.method public static getMaxDaySessionNumbers()I
.registers 1
sget v0, Lcom/tencent/stat/StatConfig;->x:I
return v0
.end method
.method public static getMaxParallelTimmingEvents()I
.registers 1
sget v0, Lcom/tencent/stat/StatConfig;->q:I
return v0
.end method
.method public static getMaxReportEventLength()I
.registers 1
sget v0, Lcom/tencent/stat/StatConfig;->A:I
return v0
.end method
.method public static getMaxSendRetryCount()I
.registers 1
sget v0, Lcom/tencent/stat/StatConfig;->k:I
return v0
.end method
.method public static getMaxSessionStatReportCount()I
.registers 1
sget v0, Lcom/tencent/stat/StatConfig;->v:I
return v0
.end method
.method public static getMaxStoreEventCount()I
.registers 1
sget v0, Lcom/tencent/stat/StatConfig;->i:I
return v0
.end method
.method public static getMid(Landroid/content/Context;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/tencent/stat/StatMid;->getMid(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getQQ()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/tencent/stat/StatConfig;->d:Ljava/lang/String;
return-object v0
.end method
.method public static getSendPeriodMinutes()I
.registers 1
sget v0, Lcom/tencent/stat/StatConfig;->p:I
return v0
.end method
.method public static getSessionTimoutMillis()I
.registers 1
sget v0, Lcom/tencent/stat/StatConfig;->h:I
return v0
.end method
.method public static getStatReportUrl()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/tencent/stat/StatConfig;->u:Ljava/lang/String;
return-object v0
.end method
.method public static getStatSendStrategy()Lcom/tencent/stat/StatReportStrategy;
.registers 1
sget-object v0, Lcom/tencent/stat/StatConfig;->f:Lcom/tencent/stat/StatReportStrategy;
return-object v0
.end method
.method public static initNativeCrashReport(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z
move-result v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
if-nez p0, :cond_12
sget-object v0, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The Context of StatConfig.initNativeCrashReport() can not be null!"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_6
:cond_12
invoke-static {p0, p1}, Lcom/tencent/stat/StatNativeCrashReport;->initNativeCrash(Landroid/content/Context;Ljava/lang/String;)V
goto :goto_6
.end method
.method public static isAutoExceptionCaught()Z
.registers 1
sget-boolean v0, Lcom/tencent/stat/StatConfig;->isAutoExceptionCaught:Z
return v0
.end method
.method public static isDebugEnable()Z
.registers 1
invoke-static {}, Lcom/tencent/stat/common/k;->b()Lcom/tencent/stat/common/StatLogger;
move-result-object v0
invoke-virtual {v0}, Lcom/tencent/stat/common/StatLogger;->isDebugEnable()Z
move-result v0
return v0
.end method
.method public static isEnableConcurrentProcess()Z
.registers 1
sget-boolean v0, Lcom/tencent/stat/StatConfig;->B:Z
return v0
.end method
.method public static isEnableSmartReporting()Z
.registers 1
sget-boolean v0, Lcom/tencent/stat/StatConfig;->r:Z
return v0
.end method
.method public static isEnableStatService()Z
.registers 1
sget-boolean v0, Lcom/tencent/stat/StatConfig;->g:Z
return v0
.end method
.method public static setAppKey(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
if-nez p0, :cond_b
sget-object v0, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "ctx in StatConfig.setAppKey() is null"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
:cond_a
:goto_a
return-void
:cond_b
if-eqz p1, :cond_15
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
const/16 v1, 0x100
if-le v0, v1, :cond_1e
:cond_15
sget-object v0, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "appkey in StatConfig.setAppKey() is null or exceed 256 bytes"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_a
:cond_1e
sget-object v0, Lcom/tencent/stat/StatConfig;->n:Ljava/lang/String;
if-nez v0, :cond_28
invoke-static {p0}, Lcom/tencent/stat/StatConfig;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/tencent/stat/StatConfig;->n:Ljava/lang/String;
:cond_28
invoke-static {p1}, Lcom/tencent/stat/StatConfig;->a(Ljava/lang/String;)Z
move-result v0
invoke-static {p0}, Lcom/tencent/stat/common/k;->i(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/tencent/stat/StatConfig;->a(Ljava/lang/String;)Z
move-result v1
or-int/2addr v0, v1
if-eqz v0, :cond_a
sget-object v0, Lcom/tencent/stat/StatConfig;->n:Ljava/lang/String;
invoke-static {p0, v0}, Lcom/tencent/stat/StatConfig;->a(Landroid/content/Context;Ljava/lang/String;)V
goto :goto_a
.end method
.method public static setAppKey(Ljava/lang/String;)V
.registers 3
if-nez p0, :cond_b
sget-object v0, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "appkey in StatConfig.setAppKey() is null"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
:goto_a
return-void
:cond_b
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
const/16 v1, 0x100
if-le v0, v1, :cond_1c
sget-object v0, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "The length of appkey cann\'t exceed 256 bytes."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
goto :goto_a
:cond_1c
sput-object p0, Lcom/tencent/stat/StatConfig;->n:Ljava/lang/String;
goto :goto_a
.end method
.method public static setAutoExceptionCaught(Z)V
.registers 1
sput-boolean p0, Lcom/tencent/stat/StatConfig;->isAutoExceptionCaught:Z
return-void
.end method
.method public static setCustomUserId(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
if-nez p0, :cond_b
sget-object v0, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "Context for setCustomUid is null."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
:goto_a
return-void
:cond_b
const-string/jumbo v0, "MTA_CUSTOM_UID"
invoke-static {p0, v0, p1}, Lcom/tencent/stat/common/p;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
sput-object p1, Lcom/tencent/stat/StatConfig;->C:Ljava/lang/String;
goto :goto_a
.end method
.method public static setDebugEnable(Z)V
.registers 2
invoke-static {}, Lcom/tencent/stat/common/k;->b()Lcom/tencent/stat/common/StatLogger;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/tencent/stat/common/StatLogger;->setDebugEnable(Z)V
invoke-static {p0}, Lcom/tencent/stat/StatConfig;->a(Z)V
return-void
.end method
.method public static setEnableConcurrentProcess(Z)V
.registers 1
sput-boolean p0, Lcom/tencent/stat/StatConfig;->B:Z
return-void
.end method
.method public static setEnableSmartReporting(Z)V
.registers 1
sput-boolean p0, Lcom/tencent/stat/StatConfig;->r:Z
return-void
.end method
.method public static setEnableStatService(Z)V
.registers 3
sput-boolean p0, Lcom/tencent/stat/StatConfig;->g:Z
if-nez p0, :cond_c
sget-object v0, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "!!!!!!MTA StatService has been disabled!!!!!!"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->warn(Ljava/lang/Object;)V
:cond_c
return-void
.end method
.method public static setInstallChannel(Ljava/lang/String;)V
.registers 3
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
const/16 v1, 0x80
if-le v0, v1, :cond_11
sget-object v0, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "the length of installChannel can not exceed the range of 128 bytes."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
:goto_10
return-void
:cond_11
sput-object p0, Lcom/tencent/stat/StatConfig;->o:Ljava/lang/String;
goto :goto_10
.end method
.method public static setMaxBatchReportCount(I)V
.registers 3
const/4 v0, 0x2
const/16 v1, 0x3e8
invoke-static {p0, v0, v1}, Lcom/tencent/stat/StatConfig;->a(III)Z
move-result v0
if-nez v0, :cond_12
sget-object v0, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "setMaxBatchReportCount can not exceed the range of [2,1000]."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
:goto_11
return-void
:cond_12
sput p0, Lcom/tencent/stat/StatConfig;->l:I
goto :goto_11
.end method
.method public static setMaxDaySessionNumbers(I)V
.registers 3
if-gtz p0, :cond_b
sget-object v0, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "maxDaySessionNumbers must be greater than 0."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
:goto_a
return-void
:cond_b
sput p0, Lcom/tencent/stat/StatConfig;->x:I
goto :goto_a
.end method
.method public static setMaxParallelTimmingEvents(I)V
.registers 3
const/4 v0, 0x1
const/16 v1, 0x1000
invoke-static {p0, v0, v1}, Lcom/tencent/stat/StatConfig;->a(III)Z
move-result v0
if-nez v0, :cond_12
sget-object v0, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "setMaxParallelTimmingEvents can not exceed the range of [1, 4096]."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
:goto_11
return-void
:cond_12
sput p0, Lcom/tencent/stat/StatConfig;->q:I
goto :goto_11
.end method
.method public static setMaxReportEventLength(I)V
.registers 3
if-gtz p0, :cond_b
sget-object v0, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "maxReportEventLength on setMaxReportEventLength() must greater than 0."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
:goto_a
return-void
:cond_b
sput p0, Lcom/tencent/stat/StatConfig;->A:I
goto :goto_a
.end method
.method public static setMaxSendRetryCount(I)V
.registers 3
const/4 v0, 0x1
const/16 v1, 0x3e8
invoke-static {p0, v0, v1}, Lcom/tencent/stat/StatConfig;->a(III)Z
move-result v0
if-nez v0, :cond_12
sget-object v0, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "setMaxSendRetryCount can not exceed the range of [1,1000]."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
:goto_11
return-void
:cond_12
sput p0, Lcom/tencent/stat/StatConfig;->k:I
goto :goto_11
.end method
.method public static setMaxSessionStatReportCount(I)V
.registers 3
if-gez p0, :cond_b
sget-object v0, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "maxSessionStatReportCount cannot be less than 0."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
:goto_a
return-void
:cond_b
sput p0, Lcom/tencent/stat/StatConfig;->v:I
goto :goto_a
.end method
.method public static setMaxStoreEventCount(I)V
.registers 3
const/4 v0, 0x0
const v1, 0x7a120
invoke-static {p0, v0, v1}, Lcom/tencent/stat/StatConfig;->a(III)Z
move-result v0
if-nez v0, :cond_13
sget-object v0, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "setMaxStoreEventCount can not exceed the range of [0, 500000]."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
:goto_12
return-void
:cond_13
sput p0, Lcom/tencent/stat/StatConfig;->i:I
goto :goto_12
.end method
.method public static setQQ(Landroid/content/Context;Ljava/lang/String;)V
.registers 2
invoke-static {p0, p1}, Lcom/tencent/stat/StatService;->reportQQ(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method public static setSendPeriodMinutes(I)V
.registers 3
const/4 v0, 0x1
const/16 v1, 0x2760
invoke-static {p0, v0, v1}, Lcom/tencent/stat/StatConfig;->a(III)Z
move-result v0
if-nez v0, :cond_12
sget-object v0, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "setSendPeriodMinutes can not exceed the range of [1, 7*24*60] minutes."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
:goto_11
return-void
:cond_12
sput p0, Lcom/tencent/stat/StatConfig;->p:I
goto :goto_11
.end method
.method public static setSessionTimoutMillis(I)V
.registers 3
const/16 v0, 0x3e8
const v1, 0x5265c00
invoke-static {p0, v0, v1}, Lcom/tencent/stat/StatConfig;->a(III)Z
move-result v0
if-nez v0, :cond_14
sget-object v0, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "setSessionTimoutMillis can not exceed the range of [1000, 24 * 60 * 60 * 1000]."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
:goto_13
return-void
:cond_14
sput p0, Lcom/tencent/stat/StatConfig;->h:I
goto :goto_13
.end method
.method public static setStatReportUrl(Ljava/lang/String;)V
.registers 3
if-eqz p0, :cond_8
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_11
:cond_8
sget-object v0, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "statReportUrl cannot be null or empty."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
:goto_10
return-void
:cond_11
sput-object p0, Lcom/tencent/stat/StatConfig;->u:Ljava/lang/String;
goto :goto_10
.end method
.method public static setStatSendStrategy(Lcom/tencent/stat/StatReportStrategy;)V
.registers 4
sput-object p0, Lcom/tencent/stat/StatConfig;->f:Lcom/tencent/stat/StatReportStrategy;
sget-object v0, Lcom/tencent/stat/StatConfig;->e:Lcom/tencent/stat/common/StatLogger;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "Change to statSendStrategy: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V
return-void
.end method