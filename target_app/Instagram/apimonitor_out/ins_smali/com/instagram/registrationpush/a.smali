.class public final Lcom/instagram/registrationpush/a;
.super Ljava/lang/Object;
.source "RegistrationPush.java"
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;
.field private final b:Landroid/content/Context;
.field private final c:Landroid/app/AlarmManager;
.field private final d:Landroid/support/v4/app/bx;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x1
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
sput-object v0, Lcom/instagram/registrationpush/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/registrationpush/a;->b:Landroid/content/Context;
iget-object v0, p0, Lcom/instagram/registrationpush/a;->b:Landroid/content/Context;
const-string v1, "alarm"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/AlarmManager;
iput-object v0, p0, Lcom/instagram/registrationpush/a;->c:Landroid/app/AlarmManager;
invoke-static {p1}, Landroid/support/v4/app/bx;->a(Landroid/content/Context;)Landroid/support/v4/app/bx;
move-result-object v0
iput-object v0, p0, Lcom/instagram/registrationpush/a;->d:Landroid/support/v4/app/bx;
return-void
.end method
.method public static f()V
.registers 1
sget-object v0, Lcom/instagram/o/b;->az:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
return-void
.end method
.method private g()Landroid/app/PendingIntent;
.registers 5
const/4 v3, 0x0
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/instagram/registrationpush/a;->b:Landroid/content/Context;
const-class v2, Lcom/instagram/registrationpush/RegistrationPushAlarmReceiver;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/instagram/registrationpush/a;->b:Landroid/content/Context;
invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
return-object v0
.end method
.method private h()V
.registers 3
iget-object v0, p0, Lcom/instagram/registrationpush/a;->c:Landroid/app/AlarmManager;
invoke-direct {p0}, Lcom/instagram/registrationpush/a;->g()Landroid/app/PendingIntent;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
invoke-virtual {p0}, Lcom/instagram/registrationpush/a;->b()V
return-void
.end method
.method public final a()V
.registers 5
invoke-static {}, Lcom/instagram/m/a;->d()Z
move-result v0
if-nez v0, :cond_c
invoke-static {}, Lcom/instagram/m/a;->c()Z
move-result v0
if-eqz v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
invoke-static {}, Lcom/instagram/m/a;->e()V
sget-object v0, Lcom/instagram/o/b;->ax:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
sget-object v0, Lcom/instagram/l/c;->f:Lcom/instagram/l/b;
invoke-virtual {v0}, Lcom/instagram/l/b;->h()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/registrationpush/b;->a(Ljava/lang/String;)Lcom/instagram/registrationpush/b;
move-result-object v0
if-eqz v0, :cond_c
new-instance v1, Landroid/support/v4/app/ba;
iget-object v2, p0, Lcom/instagram/registrationpush/a;->b:Landroid/content/Context;
invoke-direct {v1, v2}, Landroid/support/v4/app/ba;-><init>(Landroid/content/Context;)V
invoke-virtual {v1}, Landroid/support/v4/app/ba;->a()Landroid/support/v4/app/ba;
move-result-object v1
sget v2, Lcom/facebook/au;->notification_icon:I
invoke-virtual {v1, v2}, Landroid/support/v4/app/ba;->a(I)Landroid/support/v4/app/ba;
move-result-object v1
iget-object v2, p0, Lcom/instagram/registrationpush/a;->b:Landroid/content/Context;
sget v3, Lcom/facebook/az;->instagram:I
invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/support/v4/app/ba;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ba;
move-result-object v1
iget-object v2, p0, Lcom/instagram/registrationpush/a;->b:Landroid/content/Context;
invoke-virtual {v0}, Lcom/instagram/registrationpush/b;->b()I
move-result v3
invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/support/v4/app/ba;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ba;
move-result-object v1
iget-object v2, p0, Lcom/instagram/registrationpush/a;->b:Landroid/content/Context;
invoke-static {v2}, Lcom/instagram/registrationpush/RegistrationPushActionReceiver;->a(Landroid/content/Context;)Landroid/app/PendingIntent;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/support/v4/app/ba;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/ba;
move-result-object v1
iget-object v2, p0, Lcom/instagram/registrationpush/a;->b:Landroid/content/Context;
invoke-static {v2}, Lcom/instagram/registrationpush/RegistrationPushActionReceiver;->b(Landroid/content/Context;)Landroid/app/PendingIntent;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/support/v4/app/ba;->b(Landroid/app/PendingIntent;)Landroid/support/v4/app/ba;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/ba;->d()Landroid/app/Notification;
move-result-object v1
sget-object v2, Lcom/instagram/o/b;->ay:Lcom/instagram/o/b;
invoke-virtual {v2}, Lcom/instagram/o/b;->b()Lcom/instagram/common/analytics/b;
move-result-object v2
const-string v3, "variation"
invoke-virtual {v0}, Lcom/instagram/registrationpush/b;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v3, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V
iget-object v0, p0, Lcom/instagram/registrationpush/a;->d:Landroid/support/v4/app/bx;
const-string v2, "registration"
const v3, 0xfb16
invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/app/bx;->a(Ljava/lang/String;ILandroid/app/Notification;)V
goto :goto_c
.end method
.method public final b()V
.registers 4
iget-object v0, p0, Lcom/instagram/registrationpush/a;->d:Landroid/support/v4/app/bx;
const-string v1, "registration"
const v2, 0xfb16
invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/bx;->a(Ljava/lang/String;I)V
return-void
.end method
.method public final c()V
.registers 6
invoke-direct {p0}, Lcom/instagram/registrationpush/a;->h()V
invoke-static {}, Lcom/instagram/m/a;->c()Z
move-result v0
if-nez v0, :cond_2c
invoke-static {}, Lcom/instagram/m/a;->d()Z
move-result v0
if-nez v0, :cond_2c
sget-object v0, Lcom/instagram/registrationpush/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
sget-object v0, Lcom/instagram/o/b;->av:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v0
const-wide/32 v2, 0x5265c00
add-long/2addr v0, v2
iget-object v2, p0, Lcom/instagram/registrationpush/a;->c:Landroid/app/AlarmManager;
const/4 v3, 0x2
invoke-direct {p0}, Lcom/instagram/registrationpush/a;->g()Landroid/app/PendingIntent;
move-result-object v4
invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
:cond_2c
return-void
.end method
.method public final d()V
.registers 3
sget-object v0, Lcom/instagram/registrationpush/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z
move-result v0
if-eqz v0, :cond_e
sget-object v0, Lcom/instagram/o/b;->aw:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
:cond_e
invoke-direct {p0}, Lcom/instagram/registrationpush/a;->h()V
return-void
.end method
.method public final e()V
.registers 4
sget-object v0, Lcom/instagram/o/b;->aA:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
iget-object v1, p0, Lcom/instagram/registrationpush/a;->b:Landroid/content/Context;
const-string v2, "com.instagram.android.activity.MainTabActivity"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
const/high16 v1, 0x1400
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
iget-object v1, p0, Lcom/instagram/registrationpush/a;->b:Landroid/content/Context;
invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method