.class public Lcom/pinguo/camera360/push/PushNewReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushNewReceiver.java"
.field private static final DAY_TIME:J = 0x5265c00L
.field public static final DEFAULT_WEAK_DAYS:I = 0x1e
.field private static final END_CLOCK:J = 0x4ef6d80L
.field public static final KEY_LAST_LUNCH_TIME:Ljava/lang/String; = "key_last_lunch_time"
.field public static final KEY_LAST_PUSH_TIME:Ljava/lang/String; = "key_last_push_time"
.field public static final KEY_WEAK_UP_DAYS:Ljava/lang/String; = "key_weak_up_days"
.field public static final KEY_WEAK_UP_MSG:Ljava/lang/String; = "key_weak_up_msg"
.field public static final KEY_WEAK_UP_TITLE:Ljava/lang/String; = "key_weak_up_title"
.field private static final ONE_MIN:J = 0xea60L
.field private static final START_CLOCK:J = 0x1b77400L
.field public static final WEAK_UP_NOTIFY_ID:I = 0x58226
.field private static final ZONE_OFFSET:J
.field private cm:Landroid/net/ConnectivityManager;
.method static constructor <clinit>()V
.registers 2
invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;
move-result-object v0
invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I
move-result v0
int-to-long v0, v0
sput-wide v0, Lcom/pinguo/camera360/push/PushNewReceiver;->ZONE_OFFSET:J
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/push/PushNewReceiver;->cm:Landroid/net/ConnectivityManager;
return-void
.end method
.method private network()Z
.registers 3
const/4 v0, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/push/PushNewReceiver;->cm:Landroid/net/ConnectivityManager;
if-eqz v1, :cond_b
iget-object v1, p0, Lcom/pinguo/camera360/push/PushNewReceiver;->cm:Landroid/net/ConnectivityManager;
invoke-static {v1}, Lcom/pinguo/lib/network/NetworkUtils;->isAvailableNetWork(Landroid/net/ConnectivityManager;)Z
move-result v0
:cond_b
return v0
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 37
invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v4
const-string/jumbo v30, "android.net.conn.CONNECTIVITY_CHANGE"
move-object/from16 v0, v30
invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v30
if-eqz v30, :cond_13d
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v25
sget-wide v30, Lcom/pinguo/camera360/push/PushNewReceiver;->ZONE_OFFSET:J
add-long v20, v25, v30
const-wide/32 v30, 0x5265c00
div-long v16, v20, v30
const-wide/32 v30, 0x5265c00
mul-long v18, v16, v30
const-wide/32 v30, 0x4ef6d80
add-long v11, v18, v30
const-wide/32 v30, 0x1b77400
add-long v13, v18, v30
cmp-long v30, v20, v13
if-lez v30, :cond_13e
cmp-long v30, v20, v11
if-gez v30, :cond_13e
const/4 v5, 0x1
:goto_34
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/push/PushNewReceiver;->cm:Landroid/net/ConnectivityManager;
move-object/from16 v30, v0
if-nez v30, :cond_4f
const-string/jumbo v30, "connectivity"
move-object/from16 v0, p1
move-object/from16 v1, v30
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v30
check-cast v30, Landroid/net/ConnectivityManager;
move-object/from16 v0, v30
move-object/from16 v1, p0
iput-object v0, v1, Lcom/pinguo/camera360/push/PushNewReceiver;->cm:Landroid/net/ConnectivityManager;
:cond_4f
if-eqz v5, :cond_13d
new-instance v22, Lcom/pinguo/camera360/push/utils/PushPreference;
move-object/from16 v0, v22
move-object/from16 v1, p1
invoke-direct {v0, v1}, Lcom/pinguo/camera360/push/utils/PushPreference;-><init>(Landroid/content/Context;)V
const-string/jumbo v30, "key_last_lunch_time"
move-object/from16 v0, v22
move-object/from16 v1, v30
move-wide/from16 v2, v25
invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/push/utils/PushPreference;->getLong(Ljava/lang/String;J)J
move-result-wide v9
const-string/jumbo v30, "key_weak_up_days"
const/16 v31, 0x1e
move-object/from16 v0, v22
move-object/from16 v1, v30
move/from16 v2, v31
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/push/utils/PushPreference;->getInt(Ljava/lang/String;I)I
move-result v30
move/from16 v0, v30
int-to-long v0, v0
move-wide/from16 v30, v0
const-wide/32 v32, 0x5265c00
mul-long v28, v30, v32
const/4 v6, 0x0
sub-long v30, v25, v9
cmp-long v30, v30, v28
if-lez v30, :cond_f9
const-string/jumbo v30, "key_last_lunch_time"
move-object/from16 v0, v22
move-object/from16 v1, v30
move-wide/from16 v2, v25
invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/push/utils/PushPreference;->putLong(Ljava/lang/String;J)V
const/4 v6, 0x1
const-string/jumbo v30, "key_weak_up_title"
invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v31
const v32, 0x7f080252
invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v31
move-object/from16 v0, v22
move-object/from16 v1, v30
move-object/from16 v2, v31
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/push/utils/PushPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v27
const-string/jumbo v30, "key_weak_up_msg"
invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v31
const v32, 0x7f080253
invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v31
move-object/from16 v0, v22
move-object/from16 v1, v30
move-object/from16 v2, v31
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/push/utils/PushPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v15
invoke-static/range {p1 .. p1}, Lcom/pinguo/camera360/PgCameraApplication;->getStartCameraIntent(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v24
const-string/jumbo v30, "notify_title"
move-object/from16 v0, v24
move-object/from16 v1, v30
move-object/from16 v2, v27
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v30, "notify_id"
const v31, 0x58226
move-object/from16 v0, v24
move-object/from16 v1, v30
move/from16 v2, v31
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string/jumbo v30, "notify_msg"
move-object/from16 v0, v24
move-object/from16 v1, v30
invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const v30, 0x58226
move-object/from16 v0, p1
move-object/from16 v1, v24
move/from16 v2, v30
invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/push/utils/PushNotify;->showNotify(Landroid/content/Context;Landroid/content/Intent;I)Z
:cond_f9
invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/push/PushNewReceiver;->network()Z
move-result v30
if-eqz v30, :cond_138
const-string/jumbo v30, "key_last_push_time"
const-wide/16 v31, 0x0
move-object/from16 v0, v22
move-object/from16 v1, v30
move-wide/from16 v2, v31
invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/push/utils/PushPreference;->getLong(Ljava/lang/String;J)J
move-result-wide v7
sub-long v30, v25, v7
const-wide/32 v32, 0x1b7740
cmp-long v30, v30, v32
if-lez v30, :cond_138
new-instance v23, Landroid/content/Intent;
const-class v30, Lcom/pinguo/camera360/push/PushService;
move-object/from16 v0, v23
move-object/from16 v1, p1
move-object/from16 v2, v30
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
move-object/from16 v0, p1
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
const-string/jumbo v30, "key_last_push_time"
move-object/from16 v0, v22
move-object/from16 v1, v30
move-wide/from16 v2, v25
invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/push/utils/PushPreference;->putLong(Ljava/lang/String;J)V
const/4 v6, 0x1
:cond_138
if-eqz v6, :cond_13d
invoke-virtual/range {v22 .. v22}, Lcom/pinguo/camera360/push/utils/PushPreference;->commit()V
:cond_13d
return-void
:cond_13e
const/4 v5, 0x0
goto/16 :goto_34
.end method