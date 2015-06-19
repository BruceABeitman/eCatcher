.class public final Lco/vine/android/HomeTabActivity$DelayHandler;
.super Landroid/os/Handler;
.source "HomeTabActivity.java"
.field public static final DETERMINE_SERVER_STATUS:I = 0x3
.field public static final FETCH_FOLLOWERS:I = 0x2
.field public static final FETCH_ME:I = 0x1
.field public static final SEND_LOOP_COUNTS:I = 0x4
.field private final mContextRef:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lco/vine/android/HomeTabActivity$DelayHandler;->mContextRef:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 9
iget-object v1, p0, Lco/vine/android/HomeTabActivity$DelayHandler;->mContextRef:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v6
check-cast v6, Landroid/content/Context;
if-nez v6, :cond_b
:goto_a
return-void
:cond_b
invoke-static {v6}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;
move-result-object v0
iget v1, p1, Landroid/os/Message;->what:I
packed-switch v1, :pswitch_data_30
goto :goto_a
:pswitch_15
invoke-virtual {v0}, Lco/vine/android/client/AppController;->getActiveId()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lco/vine/android/client/AppController;->fetchUsersMe(J)Ljava/lang/String;
goto :goto_a
:pswitch_1d
invoke-virtual {v0}, Lco/vine/android/client/AppController;->getActiveId()J
move-result-wide v1
const/4 v3, 0x1
const-wide/16 v4, 0x0
invoke-virtual/range {v0 .. v5}, Lco/vine/android/client/AppController;->fetchFollowing(JIJ)Ljava/lang/String;
goto :goto_a
:pswitch_28
invoke-virtual {v0}, Lco/vine/android/client/AppController;->determineServerStatus()V
goto :goto_a
:pswitch_2c
invoke-virtual {v0}, Lco/vine/android/client/AppController;->sendLoopCounts()Ljava/lang/String;
goto :goto_a
:pswitch_data_30
.packed-switch 0x1
:pswitch_15
:pswitch_1d
:pswitch_28
:pswitch_2c
.end packed-switch
.end method