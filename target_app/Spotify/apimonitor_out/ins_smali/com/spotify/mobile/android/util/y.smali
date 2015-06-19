.class public final Lcom/spotify/mobile/android/util/y;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Lcom/spotify/mobile/android/util/cz;
.field private static final b:Lcom/spotify/mobile/android/util/cz;
.method static constructor <clinit>()V
.registers 1
const-string v0, "connect_logged_in_devices"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/util/y;->a:Lcom/spotify/mobile/android/util/cz;
const-string v0, "connnect_onboarding_visualization_timestamp"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/util/y;->b:Lcom/spotify/mobile/android/util/cz;
return-void
.end method
.method public static a(F)F
.registers 4
const/high16 v0, 0x3f80
const/4 v1, 0x0
cmpl-float v2, p0, v0
if-lez v2, :cond_9
move p0, v0
:goto_8
:cond_8
return p0
:cond_9
cmpg-float v0, p0, v1
if-gez v0, :cond_8
move p0, v1
goto :goto_8
.end method
.method public static declared-synchronized a(Lcom/spotify/mobile/android/util/cx;)J
.registers 6
const-class v1, Lcom/spotify/mobile/android/util/y;
monitor-enter v1
:try_start_3
invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v4, Lcom/spotify/mobile/android/util/y;->b:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v4, v2, v3}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;J)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->a()V
:try_end_17
.catchall {:try_start_3 .. :try_end_17} :catchall_19
monitor-exit v1
return-wide v2
:catchall_19
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static declared-synchronized a(Lcom/spotify/mobile/android/util/cx;Ljava/util/List;)Ljava/util/ArrayList;
.registers 7
const-class v1, Lcom/spotify/mobile/android/util/y;
monitor-enter v1
:try_start_3
invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_12
:goto_12
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2b
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/ConnectDevice;
invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/y;->b(Lcom/spotify/mobile/android/util/cx;Lcom/spotify/mobile/android/service/ConnectDevice;)Z
move-result v4
if-nez v4, :cond_12
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_27
.catchall {:try_start_3 .. :try_end_27} :catchall_28
goto :goto_12
:catchall_28
move-exception v0
monitor-exit v1
throw v0
:cond_2b
monitor-exit v1
return-object v2
.end method
.method public static declared-synchronized a(Ljava/util/List;)Ljava/util/ArrayList;
.registers 6
const-class v1, Lcom/spotify/mobile/android/util/y;
monitor-enter v1
:try_start_3
invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_f
:goto_f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_28
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/ConnectDevice;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectDevice;->i()Z
move-result v4
if-eqz v4, :cond_f
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_24
.catchall {:try_start_3 .. :try_end_24} :catchall_25
goto :goto_f
:catchall_25
move-exception v0
monitor-exit v1
throw v0
:cond_28
monitor-exit v1
return-object v2
.end method
.method private static a(Lorg/json/JSONArray;)Ljava/util/LinkedHashSet;
.registers 4
new-instance v1, Ljava/util/LinkedHashSet;
invoke-virtual {p0}, Lorg/json/JSONArray;->length()I
move-result v0
invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(I)V
const/4 v0, 0x0
:goto_a
:try_start_a
invoke-virtual {p0}, Lorg/json/JSONArray;->length()I
move-result v2
if-ge v0, v2, :cond_1b
invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
:try_end_17
.catch Lorg/json/JSONException; {:try_start_a .. :try_end_17} :catch_1a
add-int/lit8 v0, v0, 0x1
goto :goto_a
:catch_1a
move-exception v0
:cond_1b
return-object v1
.end method
.method private static a(Ljava/util/Set;)Lorg/json/JSONArray;
.registers 4
new-instance v0, Lorg/json/JSONArray;
invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_17
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
goto :goto_9
:cond_17
return-object v0
.end method
.method public static varargs a()V
.registers 0
return-void
.end method
.method public static declared-synchronized a(Lcom/spotify/mobile/android/util/cx;Lcom/spotify/mobile/android/service/ConnectDevice;)V
.registers 6
const-class v1, Lcom/spotify/mobile/android/util/y;
monitor-enter v1
:try_start_3
invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_3c
:try_start_9
sget-object v0, Lcom/spotify/mobile/android/util/y;->a:Lcom/spotify/mobile/android/util/cz;
new-instance v2, Lorg/json/JSONArray;
invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V
invoke-virtual {p0, v0, v2}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Lorg/json/JSONArray;)Lorg/json/JSONArray;
:try_end_13
.catchall {:try_start_9 .. :try_end_13} :catchall_3c
.catch Lorg/json/JSONException; {:try_start_9 .. :try_end_13} :catch_35
move-result-object v0
:goto_14
:try_start_14
invoke-static {v0}, Lcom/spotify/mobile/android/util/y;->a(Lorg/json/JSONArray;)Ljava/util/LinkedHashSet;
move-result-object v0
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/ConnectDevice;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
invoke-static {v0}, Lcom/spotify/mobile/android/util/y;->a(Ljava/util/LinkedHashSet;)V
invoke-static {v0}, Lcom/spotify/mobile/android/util/y;->a(Ljava/util/Set;)Lorg/json/JSONArray;
move-result-object v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v2
sget-object v3, Lcom/spotify/mobile/android/util/y;->a:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v2, v3, v0}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Lorg/json/JSONArray;)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->a()V
:try_end_33
.catchall {:try_start_14 .. :try_end_33} :catchall_3c
monitor-exit v1
return-void
:catch_35
move-exception v0
:try_start_36
new-instance v0, Lorg/json/JSONArray;
invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
:try_end_3b
.catchall {:try_start_36 .. :try_end_3b} :catchall_3c
goto :goto_14
:catchall_3c
move-exception v0
monitor-exit v1
throw v0
.end method
.method private static a(Ljava/util/LinkedHashSet;)V
.registers 4
invoke-virtual {p0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_4
invoke-virtual {p0}, Ljava/util/LinkedHashSet;->size()I
move-result v1
const/16 v2, 0x28
if-le v1, v2, :cond_19
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_19
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
invoke-interface {v0}, Ljava/util/Iterator;->remove()V
goto :goto_4
:cond_19
return-void
.end method
.method public static declared-synchronized a(Lcom/spotify/mobile/android/service/connections/b;Landroid/view/KeyEvent;Landroid/content/Context;)Z
.registers 8
const/4 v1, 0x1
const/4 v0, 0x0
const-class v3, Lcom/spotify/mobile/android/util/y;
monitor-enter v3
:try_start_5
invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I
move-result v2
if-nez v2, :cond_21
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/b;->l()Z
move-result v2
if-eqz v2, :cond_21
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/b;->h()Z
move-result v2
if-nez v2, :cond_21
invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I
:try_end_1a
.catchall {:try_start_5 .. :try_end_1a} :catchall_4a
move-result v2
packed-switch v2, :pswitch_data_4e
move v2, v0
:goto_1f
if-nez v2, :cond_2d
:goto_21
:cond_21
monitor-exit v3
return v0
:pswitch_23
:try_start_23
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/b;->f()V
move v2, v1
goto :goto_1f
:pswitch_28
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/b;->g()V
move v2, v1
goto :goto_1f
:cond_2d
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/b;->b()Lcom/spotify/mobile/android/service/ConnectDevice;
move-result-object v2
if-eqz v2, :cond_21
invoke-virtual {v2}, Lcom/spotify/mobile/android/service/ConnectDevice;->g()Z
move-result v4
if-eqz v4, :cond_21
instance-of v0, p2, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;
if-nez v0, :cond_48
invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/b;->e()F
move-result v0
invoke-static {v2, v0, p2}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->a(Lcom/spotify/mobile/android/service/ConnectDevice;FLandroid/content/Context;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:cond_48
:try_end_48
.catchall {:try_start_23 .. :try_end_48} :catchall_4a
move v0, v1
goto :goto_21
:catchall_4a
move-exception v0
monitor-exit v3
throw v0
nop
:pswitch_data_4e
.packed-switch 0x18
:pswitch_23
:pswitch_28
.end packed-switch
.end method
.method public static declared-synchronized b(Lcom/spotify/mobile/android/util/cx;)Z
.registers 10
const/4 v1, 0x0
const-class v2, Lcom/spotify/mobile/android/util/y;
monitor-enter v2
:try_start_4
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->m:Lcom/spotify/mobile/android/ui/fragments/logic/j;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/j;->e()Ljava/io/Serializable;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
:try_end_f
.catchall {:try_start_4 .. :try_end_f} :catchall_2c
move-result v0
if-gtz v0, :cond_15
move v0, v1
:goto_13
monitor-exit v2
return v0
:cond_15
:try_start_15
invoke-static {p0}, Lcom/spotify/mobile/android/util/y;->c(Lcom/spotify/mobile/android/util/cx;)J
move-result-wide v3
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
:try_end_1c
.catchall {:try_start_15 .. :try_end_1c} :catchall_2c
move-result-wide v5
sub-long v3, v5, v3
int-to-long v5, v0
const-wide/32 v7, 0x5265c00
mul-long/2addr v5, v7
cmp-long v0, v3, v5
if-lez v0, :cond_2a
const/4 v0, 0x1
goto :goto_13
:cond_2a
move v0, v1
goto :goto_13
:catchall_2c
move-exception v0
monitor-exit v2
throw v0
.end method
.method private static declared-synchronized b(Lcom/spotify/mobile/android/util/cx;Lcom/spotify/mobile/android/service/ConnectDevice;)Z
.registers 7
const/4 v0, 0x0
const-class v2, Lcom/spotify/mobile/android/util/y;
monitor-enter v2
:try_start_4
invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
:try_start_a
:try_end_a
.catchall {:try_start_4 .. :try_end_a} :catchall_2c
sget-object v1, Lcom/spotify/mobile/android/util/y;->a:Lcom/spotify/mobile/android/util/cz;
new-instance v3, Lorg/json/JSONArray;
invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
invoke-virtual {p0, v1, v3}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Lorg/json/JSONArray;)Lorg/json/JSONArray;
move-result-object v3
move v1, v0
:goto_16
invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
move-result v4
if-ge v1, v4, :cond_27
invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {p1, v4}, Lcom/spotify/mobile/android/service/ConnectDevice;->a(Ljava/lang/String;)Z
:try_end_23
.catchall {:try_start_a .. :try_end_23} :catchall_2c
.catch Lorg/json/JSONException; {:try_start_a .. :try_end_23} :catch_2f
move-result v4
if-eqz v4, :cond_29
const/4 v0, 0x1
:goto_27
:cond_27
monitor-exit v2
return v0
:cond_29
add-int/lit8 v1, v1, 0x1
goto :goto_16
:catchall_2c
move-exception v0
monitor-exit v2
throw v0
:catch_2f
move-exception v1
goto :goto_27
.end method
.method private static declared-synchronized c(Lcom/spotify/mobile/android/util/cx;)J
.registers 5
const-class v1, Lcom/spotify/mobile/android/util/y;
monitor-enter v1
:try_start_3
invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/spotify/mobile/android/util/y;->b:Lcom/spotify/mobile/android/util/cz;
const-wide/16 v2, 0x0
invoke-virtual {p0, v0, v2, v3}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;J)J
:try_end_d
.catchall {:try_start_3 .. :try_end_d} :catchall_10
move-result-wide v2
monitor-exit v1
return-wide v2
:catchall_10
move-exception v0
monitor-exit v1
throw v0
.end method