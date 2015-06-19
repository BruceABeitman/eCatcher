.class public Lcom/baidu/location/i;
.super Ljava/lang/Object;
.field public static final new:Ljava/lang/String; = "android.com.baidu.location.TIMER.NOTIFY"
.field private a:I
.field private b:J
.field private byte:Ljava/util/ArrayList;
.field private c:Z
.field private case:Lcom/baidu/location/BDLocation;
.field private char:J
.field private d:Lcom/baidu/location/LocationClient;
.field private do:Ljava/lang/String;
.field private else:Lcom/baidu/location/i$b;
.field private for:Landroid/app/AlarmManager;
.field private goto:F
.field private if:Landroid/content/Context;
.field private int:Lcom/baidu/location/i$a;
.field private long:Z
.field private try:Landroid/app/PendingIntent;
.field private void:Z
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/location/LocationClient;)V
.registers 8
const-wide/16 v3, 0x0
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string/jumbo v0, "baidu_location_service"
iput-object v0, p0, Lcom/baidu/location/i;->do:Ljava/lang/String;
iput-object v1, p0, Lcom/baidu/location/i;->byte:Ljava/util/ArrayList;
const v0, 0x7f7fffff
iput v0, p0, Lcom/baidu/location/i;->goto:F
iput-object v1, p0, Lcom/baidu/location/i;->case:Lcom/baidu/location/BDLocation;
iput-wide v3, p0, Lcom/baidu/location/i;->b:J
iput-object v1, p0, Lcom/baidu/location/i;->d:Lcom/baidu/location/LocationClient;
iput-object v1, p0, Lcom/baidu/location/i;->if:Landroid/content/Context;
iput v2, p0, Lcom/baidu/location/i;->a:I
iput-wide v3, p0, Lcom/baidu/location/i;->char:J
iput-boolean v2, p0, Lcom/baidu/location/i;->void:Z
iput-boolean v2, p0, Lcom/baidu/location/i;->long:Z
iput-object v1, p0, Lcom/baidu/location/i;->try:Landroid/app/PendingIntent;
iput-object v1, p0, Lcom/baidu/location/i;->for:Landroid/app/AlarmManager;
iput-object v1, p0, Lcom/baidu/location/i;->else:Lcom/baidu/location/i$b;
new-instance v0, Lcom/baidu/location/i$a;
invoke-direct {v0, p0}, Lcom/baidu/location/i$a;-><init>(Lcom/baidu/location/i;)V
iput-object v0, p0, Lcom/baidu/location/i;->int:Lcom/baidu/location/i$a;
iput-boolean v2, p0, Lcom/baidu/location/i;->c:Z
iput-object p1, p0, Lcom/baidu/location/i;->if:Landroid/content/Context;
iput-object p2, p0, Lcom/baidu/location/i;->d:Lcom/baidu/location/LocationClient;
iget-object v0, p0, Lcom/baidu/location/i;->d:Lcom/baidu/location/LocationClient;
iget-object v1, p0, Lcom/baidu/location/i;->int:Lcom/baidu/location/i$a;
invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient;->registerNotifyLocationListener(Lcom/baidu/location/BDLocationListener;)V
iget-object v0, p0, Lcom/baidu/location/i;->if:Landroid/content/Context;
const-string/jumbo v1, "alarm"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/AlarmManager;
iput-object v0, p0, Lcom/baidu/location/i;->for:Landroid/app/AlarmManager;
new-instance v0, Lcom/baidu/location/i$b;
invoke-direct {v0, p0}, Lcom/baidu/location/i$b;-><init>(Lcom/baidu/location/i;)V
iput-object v0, p0, Lcom/baidu/location/i;->else:Lcom/baidu/location/i$b;
iput-boolean v2, p0, Lcom/baidu/location/i;->c:Z
return-void
.end method
.method static synthetic a(Lcom/baidu/location/i;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/baidu/location/i;->do:Ljava/lang/String;
return-object v0
.end method
.method private a()V
.registers 9
const/16 v1, 0x2710
const/4 v2, 0x0
const/4 v3, 0x1
invoke-direct {p0}, Lcom/baidu/location/i;->do()Z
move-result v0
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget v0, p0, Lcom/baidu/location/i;->goto:F
const v4, 0x459c4000
cmpl-float v0, v0, v4
if-lez v0, :cond_43
const v0, 0x927c0
:goto_17
iget-boolean v4, p0, Lcom/baidu/location/i;->long:Z
if-eqz v4, :cond_5f
iput-boolean v2, p0, Lcom/baidu/location/i;->long:Z
:goto_1d
iget v0, p0, Lcom/baidu/location/i;->a:I
if-eqz v0, :cond_5d
iget-wide v4, p0, Lcom/baidu/location/i;->char:J
iget v0, p0, Lcom/baidu/location/i;->a:I
int-to-long v6, v0
add-long/2addr v4, v6
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
sub-long/2addr v4, v6
int-to-long v6, v1
cmp-long v0, v6, v4
if-lez v0, :cond_5d
move v0, v2
:goto_32
if-eqz v0, :cond_a
iput v1, p0, Lcom/baidu/location/i;->a:I
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/baidu/location/i;->char:J
iget v0, p0, Lcom/baidu/location/i;->a:I
int-to-long v0, v0
invoke-direct {p0, v0, v1}, Lcom/baidu/location/i;->a(J)V
goto :goto_a
:cond_43
iget v0, p0, Lcom/baidu/location/i;->goto:F
const/high16 v4, 0x447a
cmpl-float v0, v0, v4
if-lez v0, :cond_4f
const v0, 0x1d4c0
goto :goto_17
:cond_4f
iget v0, p0, Lcom/baidu/location/i;->goto:F
const/high16 v4, 0x43fa
cmpl-float v0, v0, v4
if-lez v0, :cond_5b
const v0, 0xea60
goto :goto_17
:cond_5b
move v0, v1
goto :goto_17
:cond_5d
move v0, v3
goto :goto_32
:cond_5f
move v1, v0
goto :goto_1d
.end method
.method private a(J)V
.registers 8
const/4 v4, 0x0
iget-boolean v0, p0, Lcom/baidu/location/i;->void:Z
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/baidu/location/i;->for:Landroid/app/AlarmManager;
iget-object v1, p0, Lcom/baidu/location/i;->try:Landroid/app/PendingIntent;
invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
:cond_c
iget-object v0, p0, Lcom/baidu/location/i;->if:Landroid/content/Context;
new-instance v1, Landroid/content/Intent;
const-string/jumbo v2, "android.com.baidu.location.TIMER.NOTIFY"
invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const/high16 v2, 0x800
invoke-static {v0, v4, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
iput-object v0, p0, Lcom/baidu/location/i;->try:Landroid/app/PendingIntent;
iget-object v0, p0, Lcom/baidu/location/i;->for:Landroid/app/AlarmManager;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
add-long/2addr v1, p1
iget-object v3, p0, Lcom/baidu/location/i;->try:Landroid/app/PendingIntent;
invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
iget-object v0, p0, Lcom/baidu/location/i;->do:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "timer start:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private a(Lcom/baidu/location/BDLocation;)V
.registers 14
iget-object v0, p0, Lcom/baidu/location/i;->do:Ljava/lang/String;
const-string/jumbo v1, "notify new loation"
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/baidu/location/i;->void:Z
invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I
move-result v0
const/16 v1, 0x3d
if-eq v0, v1, :cond_2a
invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I
move-result v0
const/16 v1, 0xa1
if-eq v0, v1, :cond_2a
invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I
move-result v0
const/16 v1, 0x41
if-eq v0, v1, :cond_2a
const-wide/32 v0, 0x1d4c0
invoke-direct {p0, v0, v1}, Lcom/baidu/location/i;->a(J)V
:cond_29
:goto_29
return-void
:cond_2a
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lcom/baidu/location/i;->b:J
sub-long/2addr v0, v2
const-wide/16 v2, 0x1388
cmp-long v0, v0, v2
if-ltz v0, :cond_29
iget-object v0, p0, Lcom/baidu/location/i;->byte:Ljava/util/ArrayList;
if-eqz v0, :cond_29
iput-object p1, p0, Lcom/baidu/location/i;->case:Lcom/baidu/location/BDLocation;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/baidu/location/i;->b:J
const/4 v0, 0x1
new-array v8, v0, [F
const v0, 0x7f7fffff
iget-object v1, p0, Lcom/baidu/location/i;->byte:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v11
move v10, v0
:goto_50
invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_b6
invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
move-object v9, v0
check-cast v9, Lcom/baidu/location/BDNotifyListener;
invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D
move-result-wide v0
invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D
move-result-wide v2
iget-wide v4, v9, Lcom/baidu/location/BDNotifyListener;->mLatitudeC:D
iget-wide v6, v9, Lcom/baidu/location/BDNotifyListener;->mLongitudeC:D
invoke-static/range {v0 .. v8}, Ldroidbox/android/location/Location;->distanceBetween(DDDD[F)V
const/4 v0, 0x0
aget v0, v8, v0
iget v1, v9, Lcom/baidu/location/BDNotifyListener;->mRadius:F
sub-float/2addr v0, v1
invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getRadius()F
move-result v1
sub-float/2addr v0, v1
iget-object v1, p0, Lcom/baidu/location/i;->do:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "distance:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x0
cmpl-float v1, v0, v1
if-lez v1, :cond_9b
cmpg-float v1, v0, v10
if-gez v1, :cond_b4
:goto_99
move v10, v0
goto :goto_50
:cond_9b
iget v0, v9, Lcom/baidu/location/BDNotifyListener;->Notified:I
const/4 v1, 0x3
if-ge v0, v1, :cond_b4
iget v0, v9, Lcom/baidu/location/BDNotifyListener;->Notified:I
add-int/lit8 v0, v0, 0x1
iput v0, v9, Lcom/baidu/location/BDNotifyListener;->Notified:I
const/4 v0, 0x0
aget v0, v8, v0
invoke-virtual {v9, p1, v0}, Lcom/baidu/location/BDNotifyListener;->onNotify(Lcom/baidu/location/BDLocation;F)V
iget v0, v9, Lcom/baidu/location/BDNotifyListener;->Notified:I
const/4 v1, 0x3
if-ge v0, v1, :cond_b4
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/baidu/location/i;->long:Z
:cond_b4
move v0, v10
goto :goto_99
:cond_b6
iget v0, p0, Lcom/baidu/location/i;->goto:F
cmpg-float v0, v10, v0
if-gez v0, :cond_be
iput v10, p0, Lcom/baidu/location/i;->goto:F
:cond_be
const/4 v0, 0x0
iput v0, p0, Lcom/baidu/location/i;->a:I
invoke-direct {p0}, Lcom/baidu/location/i;->a()V
goto/16 :goto_29
.end method
.method static synthetic a(Lcom/baidu/location/i;Lcom/baidu/location/BDLocation;)V
.registers 2
invoke-direct {p0, p1}, Lcom/baidu/location/i;->a(Lcom/baidu/location/BDLocation;)V
return-void
.end method
.method static synthetic do(Lcom/baidu/location/i;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/baidu/location/i;->byte:Ljava/util/ArrayList;
return-object v0
.end method
.method private do()Z
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lcom/baidu/location/i;->byte:Ljava/util/ArrayList;
if-eqz v1, :cond_d
iget-object v1, p0, Lcom/baidu/location/i;->byte:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
move-result v1
if-eqz v1, :cond_f
:cond_d
move v1, v0
:cond_e
return v1
:cond_f
iget-object v1, p0, Lcom/baidu/location/i;->byte:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
move v1, v0
:goto_16
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_e
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/baidu/location/BDNotifyListener;
iget v0, v0, Lcom/baidu/location/BDNotifyListener;->Notified:I
const/4 v3, 0x3
if-ge v0, v3, :cond_2a
const/4 v0, 0x1
:goto_28
move v1, v0
goto :goto_16
:cond_2a
move v0, v1
goto :goto_28
.end method
.method static synthetic if(Lcom/baidu/location/i;)Lcom/baidu/location/LocationClient;
.registers 2
iget-object v0, p0, Lcom/baidu/location/i;->d:Lcom/baidu/location/LocationClient;
return-object v0
.end method
.method public a(Lcom/baidu/location/BDNotifyListener;)V
.registers 14
const/4 v11, 0x3
const/4 v10, 0x1
const/4 v9, 0x0
iget-object v0, p0, Lcom/baidu/location/i;->do:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p1, Lcom/baidu/location/BDNotifyListener;->mCoorType:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "2gcj"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p1, Lcom/baidu/location/BDNotifyListener;->mCoorType:Ljava/lang/String;
if-nez v0, :cond_23
:goto_22
return-void
:cond_23
iget-object v0, p1, Lcom/baidu/location/BDNotifyListener;->mCoorType:Ljava/lang/String;
const-string/jumbo v1, "gcj02"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_b1
iget-wide v0, p1, Lcom/baidu/location/BDNotifyListener;->mLongitude:D
iget-wide v2, p1, Lcom/baidu/location/BDNotifyListener;->mLatitude:D
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
iget-object v5, p1, Lcom/baidu/location/BDNotifyListener;->mCoorType:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, "2gcj"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/location/Jni;->if(DDLjava/lang/String;)[D
move-result-object v0
aget-wide v1, v0, v9
iput-wide v1, p1, Lcom/baidu/location/BDNotifyListener;->mLongitudeC:D
aget-wide v0, v0, v10
iput-wide v0, p1, Lcom/baidu/location/BDNotifyListener;->mLatitudeC:D
iget-object v0, p0, Lcom/baidu/location/i;->do:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p1, Lcom/baidu/location/BDNotifyListener;->mCoorType:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "2gcj"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/baidu/location/i;->do:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "coor:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v2, p1, Lcom/baidu/location/BDNotifyListener;->mLongitude:D
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ","
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v2, p1, Lcom/baidu/location/BDNotifyListener;->mLatitude:D
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ":"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v2, p1, Lcom/baidu/location/BDNotifyListener;->mLongitudeC:D
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ","
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v2, p1, Lcom/baidu/location/BDNotifyListener;->mLatitudeC:D
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
:cond_b1
iget-object v0, p0, Lcom/baidu/location/i;->case:Lcom/baidu/location/BDLocation;
if-eqz v0, :cond_c3
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lcom/baidu/location/i;->b:J
sub-long/2addr v0, v2
const-wide/32 v2, 0x493e0
cmp-long v0, v0, v2
if-lez v0, :cond_cd
:cond_c3
iget-object v0, p0, Lcom/baidu/location/i;->d:Lcom/baidu/location/LocationClient;
invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->requestNotifyLocation()V
:cond_c8
:goto_c8
invoke-direct {p0}, Lcom/baidu/location/i;->a()V
goto/16 :goto_22
:cond_cd
new-array v8, v10, [F
iget-object v0, p0, Lcom/baidu/location/i;->case:Lcom/baidu/location/BDLocation;
invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLatitude()D
move-result-wide v0
iget-object v2, p0, Lcom/baidu/location/i;->case:Lcom/baidu/location/BDLocation;
invoke-virtual {v2}, Lcom/baidu/location/BDLocation;->getLongitude()D
move-result-wide v2
iget-wide v4, p1, Lcom/baidu/location/BDNotifyListener;->mLatitudeC:D
iget-wide v6, p1, Lcom/baidu/location/BDNotifyListener;->mLongitudeC:D
invoke-static/range {v0 .. v8}, Ldroidbox/android/location/Location;->distanceBetween(DDDD[F)V
aget v0, v8, v9
iget v1, p1, Lcom/baidu/location/BDNotifyListener;->mRadius:F
sub-float/2addr v0, v1
iget-object v1, p0, Lcom/baidu/location/i;->case:Lcom/baidu/location/BDLocation;
invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getRadius()F
move-result v1
sub-float/2addr v0, v1
const/4 v1, 0x0
cmpl-float v1, v0, v1
if-lez v1, :cond_fc
iget v1, p0, Lcom/baidu/location/i;->goto:F
cmpg-float v1, v0, v1
if-gez v1, :cond_c8
iput v0, p0, Lcom/baidu/location/i;->goto:F
goto :goto_c8
:cond_fc
iget v0, p1, Lcom/baidu/location/BDNotifyListener;->Notified:I
if-ge v0, v11, :cond_c8
iget v0, p1, Lcom/baidu/location/BDNotifyListener;->Notified:I
add-int/lit8 v0, v0, 0x1
iput v0, p1, Lcom/baidu/location/BDNotifyListener;->Notified:I
iget-object v0, p0, Lcom/baidu/location/i;->case:Lcom/baidu/location/BDLocation;
aget v1, v8, v9
invoke-virtual {p1, v0, v1}, Lcom/baidu/location/BDNotifyListener;->onNotify(Lcom/baidu/location/BDLocation;F)V
iget v0, p1, Lcom/baidu/location/BDNotifyListener;->Notified:I
if-ge v0, v11, :cond_c8
iput-boolean v10, p0, Lcom/baidu/location/i;->long:Z
goto :goto_c8
.end method
.method public do(Lcom/baidu/location/BDNotifyListener;)I
.registers 4
iget-object v0, p0, Lcom/baidu/location/i;->byte:Ljava/util/ArrayList;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/baidu/location/i;->byte:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/baidu/location/i;->byte:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
:cond_13
iget-object v0, p0, Lcom/baidu/location/i;->byte:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-nez v0, :cond_26
iget-boolean v0, p0, Lcom/baidu/location/i;->void:Z
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/baidu/location/i;->for:Landroid/app/AlarmManager;
iget-object v1, p0, Lcom/baidu/location/i;->try:Landroid/app/PendingIntent;
invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
:cond_26
const/4 v0, 0x1
goto :goto_5
.end method
.method public if(Lcom/baidu/location/BDNotifyListener;)I
.registers 14
const/4 v11, 0x3
const/4 v10, 0x0
const/4 v9, 0x1
iget-object v0, p0, Lcom/baidu/location/i;->byte:Ljava/util/ArrayList;
if-nez v0, :cond_e
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/baidu/location/i;->byte:Ljava/util/ArrayList;
:cond_e
iget-object v0, p0, Lcom/baidu/location/i;->byte:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iput-boolean v9, p1, Lcom/baidu/location/BDNotifyListener;->isAdded:Z
iput-object p0, p1, Lcom/baidu/location/BDNotifyListener;->mNotifyCache:Lcom/baidu/location/i;
iget-boolean v0, p0, Lcom/baidu/location/i;->c:Z
if-nez v0, :cond_2c
iget-object v0, p0, Lcom/baidu/location/i;->if:Landroid/content/Context;
iget-object v1, p0, Lcom/baidu/location/i;->else:Lcom/baidu/location/i$b;
new-instance v2, Landroid/content/IntentFilter;
const-string/jumbo v3, "android.com.baidu.location.TIMER.NOTIFY"
invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
iput-boolean v9, p0, Lcom/baidu/location/i;->c:Z
:cond_2c
iget-object v0, p1, Lcom/baidu/location/BDNotifyListener;->mCoorType:Ljava/lang/String;
if-nez v0, :cond_31
:goto_30
return v9
:cond_31
iget-object v0, p1, Lcom/baidu/location/BDNotifyListener;->mCoorType:Ljava/lang/String;
const-string/jumbo v1, "gcj02"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_bf
iget-wide v0, p1, Lcom/baidu/location/BDNotifyListener;->mLongitude:D
iget-wide v2, p1, Lcom/baidu/location/BDNotifyListener;->mLatitude:D
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
iget-object v5, p1, Lcom/baidu/location/BDNotifyListener;->mCoorType:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, "2gcj"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/location/Jni;->if(DDLjava/lang/String;)[D
move-result-object v0
aget-wide v1, v0, v10
iput-wide v1, p1, Lcom/baidu/location/BDNotifyListener;->mLongitudeC:D
aget-wide v0, v0, v9
iput-wide v0, p1, Lcom/baidu/location/BDNotifyListener;->mLatitudeC:D
iget-object v0, p0, Lcom/baidu/location/i;->do:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p1, Lcom/baidu/location/BDNotifyListener;->mCoorType:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "2gcj"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/baidu/location/i;->do:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "coor:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v2, p1, Lcom/baidu/location/BDNotifyListener;->mLongitude:D
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ","
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v2, p1, Lcom/baidu/location/BDNotifyListener;->mLatitude:D
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ":"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v2, p1, Lcom/baidu/location/BDNotifyListener;->mLongitudeC:D
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ","
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v2, p1, Lcom/baidu/location/BDNotifyListener;->mLatitudeC:D
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
:cond_bf
iget-object v0, p0, Lcom/baidu/location/i;->case:Lcom/baidu/location/BDLocation;
if-eqz v0, :cond_d0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lcom/baidu/location/i;->b:J
sub-long/2addr v0, v2
const-wide/16 v2, 0x7530
cmp-long v0, v0, v2
if-lez v0, :cond_da
:cond_d0
iget-object v0, p0, Lcom/baidu/location/i;->d:Lcom/baidu/location/LocationClient;
invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->requestNotifyLocation()V
:goto_d5
:cond_d5
invoke-direct {p0}, Lcom/baidu/location/i;->a()V
goto/16 :goto_30
:cond_da
new-array v8, v9, [F
iget-object v0, p0, Lcom/baidu/location/i;->case:Lcom/baidu/location/BDLocation;
invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLatitude()D
move-result-wide v0
iget-object v2, p0, Lcom/baidu/location/i;->case:Lcom/baidu/location/BDLocation;
invoke-virtual {v2}, Lcom/baidu/location/BDLocation;->getLongitude()D
move-result-wide v2
iget-wide v4, p1, Lcom/baidu/location/BDNotifyListener;->mLatitudeC:D
iget-wide v6, p1, Lcom/baidu/location/BDNotifyListener;->mLongitudeC:D
invoke-static/range {v0 .. v8}, Ldroidbox/android/location/Location;->distanceBetween(DDDD[F)V
aget v0, v8, v10
iget v1, p1, Lcom/baidu/location/BDNotifyListener;->mRadius:F
sub-float/2addr v0, v1
iget-object v1, p0, Lcom/baidu/location/i;->case:Lcom/baidu/location/BDLocation;
invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getRadius()F
move-result v1
sub-float/2addr v0, v1
const/4 v1, 0x0
cmpl-float v1, v0, v1
if-lez v1, :cond_109
iget v1, p0, Lcom/baidu/location/i;->goto:F
cmpg-float v1, v0, v1
if-gez v1, :cond_d5
iput v0, p0, Lcom/baidu/location/i;->goto:F
goto :goto_d5
:cond_109
iget v0, p1, Lcom/baidu/location/BDNotifyListener;->Notified:I
if-ge v0, v11, :cond_d5
iget v0, p1, Lcom/baidu/location/BDNotifyListener;->Notified:I
add-int/lit8 v0, v0, 0x1
iput v0, p1, Lcom/baidu/location/BDNotifyListener;->Notified:I
iget-object v0, p0, Lcom/baidu/location/i;->case:Lcom/baidu/location/BDLocation;
aget v1, v8, v10
invoke-virtual {p1, v0, v1}, Lcom/baidu/location/BDNotifyListener;->onNotify(Lcom/baidu/location/BDLocation;F)V
iget v0, p1, Lcom/baidu/location/BDNotifyListener;->Notified:I
if-ge v0, v11, :cond_d5
iput-boolean v9, p0, Lcom/baidu/location/i;->long:Z
goto :goto_d5
.end method
.method public if()V
.registers 3
iget-boolean v0, p0, Lcom/baidu/location/i;->void:Z
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/baidu/location/i;->for:Landroid/app/AlarmManager;
iget-object v1, p0, Lcom/baidu/location/i;->try:Landroid/app/PendingIntent;
invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
:cond_b
const/4 v0, 0x0
iput-object v0, p0, Lcom/baidu/location/i;->case:Lcom/baidu/location/BDLocation;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/baidu/location/i;->b:J
iget-boolean v0, p0, Lcom/baidu/location/i;->c:Z
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/baidu/location/i;->do:Ljava/lang/String;
const-string/jumbo v1, "unregister..."
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/baidu/location/i;->if:Landroid/content/Context;
iget-object v1, p0, Lcom/baidu/location/i;->else:Lcom/baidu/location/i$b;
invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
:cond_25
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/baidu/location/i;->c:Z
return-void
.end method