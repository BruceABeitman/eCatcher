.class final enum Lcom/instagram/common/analytics/i;
.super Ljava/lang/Enum;
.source "AnalyticsUploadAlarm.java"
.field public static final enum a:Lcom/instagram/common/analytics/i;
.field public static final enum b:Lcom/instagram/common/analytics/i;
.field private static final synthetic f:[Lcom/instagram/common/analytics/i;
.field private final c:Ljava/lang/String;
.field private final d:J
.field private e:Z
.method static constructor <clinit>()V
.registers 10
const/4 v9, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/instagram/common/analytics/i;
const-string v1, "BatchUpload"
const-string v3, "action_batch_upload"
const-wide/32 v4, 0x493e0
invoke-direct/range {v0 .. v5}, Lcom/instagram/common/analytics/i;-><init>(Ljava/lang/String;ILjava/lang/String;J)V
sput-object v0, Lcom/instagram/common/analytics/i;->a:Lcom/instagram/common/analytics/i;
new-instance v3, Lcom/instagram/common/analytics/i;
const-string v4, "UploadRetry"
const-string v6, "action_upload_retry"
const-wide/32 v7, 0x36ee80
move v5, v9
invoke-direct/range {v3 .. v8}, Lcom/instagram/common/analytics/i;-><init>(Ljava/lang/String;ILjava/lang/String;J)V
sput-object v3, Lcom/instagram/common/analytics/i;->b:Lcom/instagram/common/analytics/i;
const/4 v0, 0x2
new-array v0, v0, [Lcom/instagram/common/analytics/i;
sget-object v1, Lcom/instagram/common/analytics/i;->a:Lcom/instagram/common/analytics/i;
aput-object v1, v0, v2
sget-object v1, Lcom/instagram/common/analytics/i;->b:Lcom/instagram/common/analytics/i;
aput-object v1, v0, v9
sput-object v0, Lcom/instagram/common/analytics/i;->f:[Lcom/instagram/common/analytics/i;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;J)V
.registers 6
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/instagram/common/analytics/i;->c:Ljava/lang/String;
iput-wide p4, p0, Lcom/instagram/common/analytics/i;->d:J
return-void
.end method
.method public static a(Ljava/lang/String;)Lcom/instagram/common/analytics/i;
.registers 6
invoke-static {}, Lcom/instagram/common/analytics/i;->values()[Lcom/instagram/common/analytics/i;
move-result-object v2
array-length v3, v2
const/4 v0, 0x0
move v1, v0
:goto_7
if-ge v1, v3, :cond_18
aget-object v0, v2, v1
iget-object v4, v0, Lcom/instagram/common/analytics/i;->c:Ljava/lang/String;
invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_14
:goto_13
return-object v0
:cond_14
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_7
:cond_18
const/4 v0, 0x0
goto :goto_13
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/instagram/common/analytics/i;
.registers 2
const-class v0, Lcom/instagram/common/analytics/i;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/instagram/common/analytics/i;
return-object v0
.end method
.method public static values()[Lcom/instagram/common/analytics/i;
.registers 1
sget-object v0, Lcom/instagram/common/analytics/i;->f:[Lcom/instagram/common/analytics/i;
invoke-virtual {v0}, [Lcom/instagram/common/analytics/i;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/instagram/common/analytics/i;
return-object v0
.end method
.method final a()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/common/analytics/i;->e:Z
return-void
.end method
.method public final a(Landroid/content/Context;Landroid/app/AlarmManager;)V
.registers 8
const/4 v2, 0x0
iget-boolean v0, p0, Lcom/instagram/common/analytics/i;->e:Z
if-eqz v0, :cond_6
:goto_5
return-void
:cond_6
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/instagram/common/analytics/AnalyticsUploadAlarmReceiver;
invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/instagram/common/analytics/i;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v1
iget-wide v3, p0, Lcom/instagram/common/analytics/i;->d:J
add-long/2addr v1, v3
const/4 v3, 0x2
invoke-virtual {p2, v3, v1, v2, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/common/analytics/i;->e:Z
goto :goto_5
.end method