.class  Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer;
.super Ljava/util/Timer;
.source "DynamicLocationProvider.java"
.field private static final WAIT_FOR_FIRST_GPS_FIX_DELAY:I = 0x7530
.field private static final WAIT_FOR_FIRST_NETWORK_FIX_DELAY:I = 0x2710
.field final synthetic this$0:Lcom/gindin/zmanim/android/location/DynamicLocationProvider;
.method constructor <init>(Lcom/gindin/zmanim/android/location/DynamicLocationProvider;Z)V
.registers 5
iput-object p1, p0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer;->this$0:Lcom/gindin/zmanim/android/location/DynamicLocationProvider;
const/4 v1, 0x1
invoke-direct {p0, v1}, Ljava/util/Timer;-><init>(Z)V
if-eqz p2, :cond_e
const/16 v0, 0x7530
:goto_a
invoke-direct {p0, v0}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer;->start(I)V
return-void
:cond_e
const/16 v0, 0x2710
goto :goto_a
.end method
.method private start(I)V
.registers 5
new-instance v0, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer$1;
invoke-direct {v0, p0}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer$1;-><init>(Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer;)V
int-to-long v1, p1
invoke-virtual {p0, v0, v1, v2}, Lcom/gindin/zmanim/android/location/DynamicLocationProvider$CancelFirstFixesTimer;->schedule(Ljava/util/TimerTask;J)V
return-void
.end method