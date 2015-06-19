.class public final Lcom/spotify/mobile/android/service/a/a;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/a/h;
.field private final a:Landroid/content/Context;
.field private final b:Lcom/spotify/mobile/android/orbit/OrbitPushNotificationsInterface;
.field private c:Lcom/google/android/gms/a/a;
.field private d:Lcom/spotify/mobile/android/util/cs;
.field private e:Lcom/spotify/mobile/android/util/cs;
.field private f:Lcom/spotify/mobile/android/service/a/g;
.field private g:Ljava/lang/Boolean;
.field private h:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/orbit/OrbitPushNotificationsInterface;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/service/a/a;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/spotify/mobile/android/service/a/a;->b:Lcom/spotify/mobile/android/orbit/OrbitPushNotificationsInterface;
const/4 v0, 0x1
invoke-static {p1, v0}, Lcom/spotify/mobile/android/service/a/a;->a(Landroid/content/Context;Z)Z
move-result v0
if-eqz v0, :cond_32
iget-object v0, p0, Lcom/spotify/mobile/android/service/a/a;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/google/android/gms/a/a;->a(Landroid/content/Context;)Lcom/google/android/gms/a/a;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/a/a;->c:Lcom/google/android/gms/a/a;
new-instance v0, Lcom/spotify/mobile/android/util/cs;
iget-object v1, p0, Lcom/spotify/mobile/android/service/a/a;->a:Landroid/content/Context;
new-instance v2, Lcom/spotify/mobile/android/service/a/b;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/service/a/b;-><init>(Lcom/spotify/mobile/android/service/a/a;)V
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/cs;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ct;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/a/a;->d:Lcom/spotify/mobile/android/util/cs;
new-instance v0, Lcom/spotify/mobile/android/util/cs;
iget-object v1, p0, Lcom/spotify/mobile/android/service/a/a;->a:Landroid/content/Context;
new-instance v2, Lcom/spotify/mobile/android/service/a/c;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/service/a/c;-><init>(Lcom/spotify/mobile/android/service/a/a;)V
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/cs;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ct;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/a/a;->e:Lcom/spotify/mobile/android/util/cs;
:cond_32
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/service/a/a;Ljava/lang/String;)V
.registers 5
const/4 v2, 0x0
if-eqz p1, :cond_21
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_21
iget-object v0, p0, Lcom/spotify/mobile/android/service/a/a;->h:Ljava/lang/String;
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_21
const-string v0, "Got user: %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
aput-object p1, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
iput-object p1, p0, Lcom/spotify/mobile/android/service/a/a;->h:Ljava/lang/String;
invoke-direct {p0}, Lcom/spotify/mobile/android/service/a/a;->c()V
:cond_20
:goto_20
return-void
:cond_21
if-eqz p1, :cond_29
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_20
:cond_29
iget-object v0, p0, Lcom/spotify/mobile/android/service/a/a;->h:Ljava/lang/String;
if-eqz v0, :cond_20
const-string v0, "Detected log out"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/service/a/a;->h:Ljava/lang/String;
invoke-direct {p0}, Lcom/spotify/mobile/android/service/a/a;->c()V
goto :goto_20
.end method
.method static synthetic a(Lcom/spotify/mobile/android/service/a/a;Z)V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/service/a/a;->g:Ljava/lang/Boolean;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/service/a/a;->g:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eq v0, p1, :cond_22
:cond_c
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/a/a;->g:Ljava/lang/Boolean;
const-string v0, "Push notification feature enabled: %b"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/service/a/a;->g:Ljava/lang/Boolean;
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0}, Lcom/spotify/mobile/android/service/a/a;->c()V
:cond_22
return-void
.end method
.method public static a(Landroid/content/Context;Z)Z
.registers 8
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {p0}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;)I
move-result v2
if-eqz p1, :cond_22
new-instance v3, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$Event;->aa:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-direct {v3, v4}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V
const-string v4, "availability"
invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v4, v5}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-class v4, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v4}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
sget-object v4, Lcom/spotify/mobile/android/util/ViewUri;->aV:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {p0, v4, v3}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
:cond_22
if-nez v2, :cond_25
:goto_24
return v0
:cond_25
const-string v3, "Google Play Services not available, push messages disabled: %d"
new-array v0, v0, [Ljava/lang/Object;
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v3, v0}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V
move v0, v1
goto :goto_24
.end method
.method private c()V
.registers 7
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/service/a/a;->g:Ljava/lang/Boolean;
if-nez v0, :cond_6
:goto_5
:cond_5
return-void
:cond_6
iget-object v0, p0, Lcom/spotify/mobile/android/service/a/a;->g:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_46
iget-object v0, p0, Lcom/spotify/mobile/android/service/a/a;->h:Ljava/lang/String;
if-eqz v0, :cond_46
const/4 v0, 0x1
:goto_13
if-eqz v0, :cond_2b
iget-object v2, p0, Lcom/spotify/mobile/android/service/a/a;->f:Lcom/spotify/mobile/android/service/a/g;
if-nez v2, :cond_2b
new-instance v2, Lcom/spotify/mobile/android/service/a/g;
iget-object v3, p0, Lcom/spotify/mobile/android/service/a/a;->a:Landroid/content/Context;
iget-object v4, p0, Lcom/spotify/mobile/android/service/a/a;->c:Lcom/google/android/gms/a/a;
iget-object v5, p0, Lcom/spotify/mobile/android/service/a/a;->h:Ljava/lang/String;
invoke-direct {v2, v3, p0, v4, v5}, Lcom/spotify/mobile/android/service/a/g;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/a/h;Lcom/google/android/gms/a/a;Ljava/lang/String;)V
iput-object v2, p0, Lcom/spotify/mobile/android/service/a/a;->f:Lcom/spotify/mobile/android/service/a/g;
iget-object v2, p0, Lcom/spotify/mobile/android/service/a/a;->f:Lcom/spotify/mobile/android/service/a/g;
invoke-virtual {v2}, Lcom/spotify/mobile/android/service/a/g;->a()V
:cond_2b
if-nez v0, :cond_5
iget-object v0, p0, Lcom/spotify/mobile/android/service/a/a;->f:Lcom/spotify/mobile/android/service/a/g;
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/spotify/mobile/android/service/a/a;->f:Lcom/spotify/mobile/android/service/a/g;
new-instance v2, Lcom/spotify/mobile/android/service/a/g$2;
invoke-direct {v2, v0}, Lcom/spotify/mobile/android/service/a/g$2;-><init>(Lcom/spotify/mobile/android/service/a/g;)V
new-array v0, v1, [Ljava/lang/Void;
invoke-virtual {v2, v0}, Lcom/spotify/mobile/android/service/a/g$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
iget-object v0, p0, Lcom/spotify/mobile/android/service/a/a;->f:Lcom/spotify/mobile/android/service/a/g;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/a/g;->b()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/service/a/a;->f:Lcom/spotify/mobile/android/service/a/g;
goto :goto_5
:cond_46
move v0, v1
goto :goto_13
.end method
.method public final a()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/service/a/a;->c:Lcom/google/android/gms/a/a;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/spotify/mobile/android/service/a/a;->d:Lcom/spotify/mobile/android/util/cs;
sget-object v1, Lcom/spotify/mobile/android/provider/e;->a:Landroid/net/Uri;
invoke-static {}, Lcom/spotify/mobile/android/service/a/b;->b()[Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/cs;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/a/a;->e:Lcom/spotify/mobile/android/util/cs;
sget-object v1, Lcom/spotify/mobile/android/provider/v;->a:Landroid/net/Uri;
invoke-static {}, Lcom/spotify/mobile/android/service/a/c;->b()[Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/cs;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V
:cond_1b
return-void
.end method
.method public final a(Ljava/lang/String;Z)V
.registers 4
if-eqz p2, :cond_8
iget-object v0, p0, Lcom/spotify/mobile/android/service/a/a;->b:Lcom/spotify/mobile/android/orbit/OrbitPushNotificationsInterface;
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/orbit/OrbitPushNotificationsInterface;->setPreviousGcmRegistrationId(Ljava/lang/String;)V
:goto_7
return-void
:cond_8
iget-object v0, p0, Lcom/spotify/mobile/android/service/a/a;->b:Lcom/spotify/mobile/android/orbit/OrbitPushNotificationsInterface;
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/orbit/OrbitPushNotificationsInterface;->registerGcmDevice(Ljava/lang/String;)V
goto :goto_7
.end method
.method public final b()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/service/a/a;->c:Lcom/google/android/gms/a/a;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/service/a/a;->c:Lcom/google/android/gms/a/a;
invoke-virtual {v0}, Lcom/google/android/gms/a/a;->a()V
iput-object v1, p0, Lcom/spotify/mobile/android/service/a/a;->c:Lcom/google/android/gms/a/a;
:cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/service/a/a;->d:Lcom/spotify/mobile/android/util/cs;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/service/a/a;->d:Lcom/spotify/mobile/android/util/cs;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cs;->b()V
iput-object v1, p0, Lcom/spotify/mobile/android/service/a/a;->d:Lcom/spotify/mobile/android/util/cs;
:cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/service/a/a;->e:Lcom/spotify/mobile/android/util/cs;
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/spotify/mobile/android/service/a/a;->e:Lcom/spotify/mobile/android/util/cs;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cs;->b()V
iput-object v1, p0, Lcom/spotify/mobile/android/service/a/a;->e:Lcom/spotify/mobile/android/util/cs;
:cond_22
iget-object v0, p0, Lcom/spotify/mobile/android/service/a/a;->f:Lcom/spotify/mobile/android/service/a/g;
if-eqz v0, :cond_2d
iget-object v0, p0, Lcom/spotify/mobile/android/service/a/a;->f:Lcom/spotify/mobile/android/service/a/g;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/a/g;->b()V
iput-object v1, p0, Lcom/spotify/mobile/android/service/a/a;->f:Lcom/spotify/mobile/android/service/a/g;
:cond_2d
return-void
.end method