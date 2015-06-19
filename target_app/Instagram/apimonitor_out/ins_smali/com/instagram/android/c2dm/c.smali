.class public Lcom/instagram/android/c2dm/c;
.super Ljava/lang/Object;
.source "PushNotificationManager.java"
.field private static final a:Ljava/lang/Class;
.field private static b:Lcom/instagram/android/c2dm/c;
.field private final c:Lcom/instagram/common/analytics/d;
.field private d:Lcom/instagram/common/q/b;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/android/c2dm/c;
sput-object v0, Lcom/instagram/android/c2dm/c;->a:Ljava/lang/Class;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Lcom/instagram/common/q/b;->a()Lcom/instagram/common/q/b;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/c2dm/c;->d:Lcom/instagram/common/q/b;
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/c2dm/c;->c:Lcom/instagram/common/analytics/d;
iget-object v0, p0, Lcom/instagram/android/c2dm/c;->d:Lcom/instagram/common/q/b;
const-string v1, "directshare"
new-instance v2, Lcom/instagram/android/c2dm/a/a;
invoke-direct {v2, p1}, Lcom/instagram/android/c2dm/a/a;-><init>(Landroid/content/Context;)V
iget-object v3, p0, Lcom/instagram/android/c2dm/c;->c:Lcom/instagram/common/analytics/d;
invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/common/q/b;->a(Ljava/lang/String;Lcom/instagram/common/q/i;Lcom/instagram/common/analytics/d;)V
iget-object v0, p0, Lcom/instagram/android/c2dm/c;->d:Lcom/instagram/common/q/b;
const-string v1, "directshare_request"
new-instance v2, Lcom/instagram/android/c2dm/a/d;
invoke-direct {v2, p1}, Lcom/instagram/android/c2dm/a/d;-><init>(Landroid/content/Context;)V
iget-object v3, p0, Lcom/instagram/android/c2dm/c;->c:Lcom/instagram/common/analytics/d;
invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/common/q/b;->a(Ljava/lang/String;Lcom/instagram/common/q/i;Lcom/instagram/common/analytics/d;)V
iget-object v0, p0, Lcom/instagram/android/c2dm/c;->d:Lcom/instagram/common/q/b;
const-string v1, "newstab"
new-instance v2, Lcom/instagram/android/c2dm/a/b;
invoke-direct {v2, p1}, Lcom/instagram/android/c2dm/a/b;-><init>(Landroid/content/Context;)V
iget-object v3, p0, Lcom/instagram/android/c2dm/c;->c:Lcom/instagram/common/analytics/d;
invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/common/q/b;->a(Ljava/lang/String;Lcom/instagram/common/q/i;Lcom/instagram/common/analytics/d;)V
return-void
.end method
.method public static a()Lcom/instagram/android/c2dm/c;
.registers 2
sget-object v0, Lcom/instagram/android/c2dm/c;->b:Lcom/instagram/android/c2dm/c;
if-nez v0, :cond_f
new-instance v0, Lcom/instagram/android/c2dm/c;
invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/android/c2dm/c;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/instagram/android/c2dm/c;->b:Lcom/instagram/android/c2dm/c;
:cond_f
sget-object v0, Lcom/instagram/android/c2dm/c;->b:Lcom/instagram/android/c2dm/c;
return-object v0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/instagram/common/q/b/g;)V
.registers 5
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/instagram/notifications/c2dm/IgPushRegistrationService;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "PushRegistrationService.DEVICE_TOKEN"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "PushRegistrationService.PUSH_DEVICE_TYPE"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
return-void
.end method
.method private a(Lcom/instagram/notifications/a/b;)V
.registers 4
invoke-virtual {p1}, Lcom/instagram/notifications/a/b;->b()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/notifications/a/a;->a(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_14
const-string v0, "directshare"
invoke-virtual {p1}, Lcom/instagram/notifications/a/b;->f()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v0, v1, p1}, Lcom/instagram/android/c2dm/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/instagram/notifications/a/b;)V
:goto_13
return-void
:cond_14
invoke-virtual {p1}, Lcom/instagram/notifications/a/b;->b()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/notifications/a/a;->b(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_2b
const-string v0, "direct_request"
invoke-virtual {p1, v0}, Lcom/instagram/notifications/a/b;->b(Ljava/lang/String;)V
const-string v0, "directshare_request"
const-string v1, ""
invoke-direct {p0, v0, v1, p1}, Lcom/instagram/android/c2dm/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/instagram/notifications/a/b;)V
goto :goto_13
:cond_2b
const-string v0, "newstab"
invoke-virtual {p1}, Lcom/instagram/notifications/a/b;->b()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v0, v1, p1}, Lcom/instagram/android/c2dm/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/instagram/notifications/a/b;)V
goto :goto_13
.end method
.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/instagram/notifications/a/b;)V
.registers 7
new-instance v0, Lcom/instagram/android/c2dm/a;
invoke-direct {v0, p1, p2}, Lcom/instagram/android/c2dm/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/instagram/common/h/g;->a()Lcom/instagram/common/h/b;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/instagram/common/h/b;->a(Lcom/instagram/common/h/a;)Z
move-result v0
if-eqz v0, :cond_20
sget-object v0, Lcom/instagram/android/c2dm/c;->a:Ljava/lang/Class;
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v0
new-instance v1, Lcom/instagram/common/q/a/a;
const-string v2, "notification_suppressed"
invoke-direct {v1, p3, v2}, Lcom/instagram/common/q/a/a;-><init>(Lcom/instagram/common/q/c/a;Ljava/lang/String;)V
invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V
:goto_1f
return-void
:cond_20
invoke-static {}, Lcom/instagram/i/e/a;->a()Lcom/instagram/i/e/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/i/e/a;->c()V
iget-object v0, p0, Lcom/instagram/android/c2dm/c;->d:Lcom/instagram/common/q/b;
invoke-virtual {v0, p1, p2, p3}, Lcom/instagram/common/q/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/instagram/common/q/c/a;)V
goto :goto_1f
.end method
.method public static b(Ljava/lang/String;)Ljava/lang/String;
.registers 4
const-string v0, "direct?id=%s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p0, v1, v2
invoke-static {v0, v1}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/content/Intent;)V
.registers 6
invoke-static {p1}, Lcom/instagram/notifications/a/b;->a(Landroid/content/Intent;)Lcom/instagram/notifications/a/b;
move-result-object v0
new-instance v1, Lcom/instagram/common/q/a/a;
const-string v2, "push_notification_received"
invoke-direct {v1, v0, v2}, Lcom/instagram/common/q/a/a;-><init>(Lcom/instagram/common/q/c/a;Ljava/lang/String;)V
if-eqz v0, :cond_1a
invoke-virtual {v0}, Lcom/instagram/notifications/a/b;->d()Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_1a
const-string v2, "bad_payload"
const-string v3, "missing message"
invoke-virtual {v1, v2, v3}, Lcom/instagram/common/q/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
:cond_1a
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;
move-result-object v2
if-eqz v2, :cond_34
if-eqz v0, :cond_3b
invoke-virtual {v2}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0}, Lcom/instagram/notifications/a/b;->i()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_3b
:cond_34
const-string v0, "mismatch"
const/4 v2, 0x1
invoke-virtual {v1, v0, v2}, Lcom/instagram/common/q/a/a;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;
const/4 v0, 0x0
:cond_3b
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v2
invoke-interface {v2, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V
if-eqz v0, :cond_47
invoke-direct {p0, v0}, Lcom/instagram/android/c2dm/c;->a(Lcom/instagram/notifications/a/b;)V
:cond_47
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/instagram/android/c2dm/c;->d:Lcom/instagram/common/q/b;
const-string v1, "directshare"
invoke-static {p1}, Lcom/instagram/android/c2dm/c;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/q/b;->b(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/c2dm/c;->d:Lcom/instagram/common/q/b;
invoke-virtual {v0}, Lcom/instagram/common/q/b;->b()V
const/4 v0, 0x0
sput-object v0, Lcom/instagram/android/c2dm/c;->b:Lcom/instagram/android/c2dm/c;
return-void
.end method
.method public final b(Landroid/content/Intent;)V
.registers 8
const/4 v5, 0x2
const/4 v1, 0x1
const/4 v2, 0x0
invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v0
const-string v3, "ig"
invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
invoke-static {v3}, Lcom/instagram/common/i/a/f;->a(Z)V
const-string v3, "notif"
invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
invoke-static {v3}, Lcom/instagram/common/i/a/f;->a(Z)V
invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;
move-result-object v3
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_4d
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v0
if-gt v0, v5, :cond_4d
move v0, v1
:goto_32
invoke-static {v0}, Lcom/instagram/common/i/a/f;->a(Z)V
invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v2
if-ne v2, v5, :cond_4f
iget-object v2, p0, Lcom/instagram/android/c2dm/c;->d:Lcom/instagram/common/q/b;
invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v2, v0, v1}, Lcom/instagram/common/q/b;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_4c
return-void
:cond_4d
move v0, v2
goto :goto_32
:cond_4f
iget-object v1, p0, Lcom/instagram/android/c2dm/c;->d:Lcom/instagram/common/q/b;
invoke-virtual {v1, v0}, Lcom/instagram/common/q/b;->a(Ljava/lang/String;)V
goto :goto_4c
.end method
.method public final c()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/c2dm/c;->d:Lcom/instagram/common/q/b;
const-string v1, "directshare"
invoke-virtual {v0, v1}, Lcom/instagram/common/q/b;->b(Ljava/lang/String;)V
return-void
.end method
.method public final d()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/c2dm/c;->d:Lcom/instagram/common/q/b;
const-string v1, "directshare_request"
invoke-virtual {v0, v1}, Lcom/instagram/common/q/b;->b(Ljava/lang/String;)V
return-void
.end method
.method public final e()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/c2dm/c;->d:Lcom/instagram/common/q/b;
const-string v1, "newstab"
invoke-virtual {v0, v1}, Lcom/instagram/common/q/b;->b(Ljava/lang/String;)V
return-void
.end method