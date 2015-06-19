.class public final Lcom/spotify/mobile/android/service/ai;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/bx;
.field  a:Landroid/support/v4/app/al;
.field  b:Landroid/database/ContentObserver;
.field private c:Landroid/content/Context;
.field private d:Landroid/content/ContentResolver;
.field private e:Lcom/spotify/mobile/android/service/c/b;
.field private f:Lcom/spotify/mobile/android/util/bw;
.field private g:Z
.field private h:Lcom/spotify/mobile/android/service/c/d;
.field private i:Landroid/os/Handler;
.method public constructor <init>(Landroid/app/Service;Lcom/spotify/mobile/android/util/bw;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/service/ai;->i:Landroid/os/Handler;
new-instance v0, Lcom/spotify/mobile/android/service/ai$1;
iget-object v1, p0, Lcom/spotify/mobile/android/service/ai;->i:Landroid/os/Handler;
invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/service/ai$1;-><init>(Lcom/spotify/mobile/android/service/ai;Landroid/os/Handler;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/ai;->b:Landroid/database/ContentObserver;
iput-object p1, p0, Lcom/spotify/mobile/android/service/ai;->c:Landroid/content/Context;
invoke-virtual {p1}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/ai;->d:Landroid/content/ContentResolver;
new-instance v0, Lcom/spotify/mobile/android/service/c/b;
invoke-direct {v0, p1}, Lcom/spotify/mobile/android/service/c/b;-><init>(Landroid/app/Service;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/ai;->e:Lcom/spotify/mobile/android/service/c/b;
iput-object p2, p0, Lcom/spotify/mobile/android/service/ai;->f:Lcom/spotify/mobile/android/util/bw;
return-void
.end method
.method private a(IILandroid/app/PendingIntent;I)V
.registers 7
iget-object v0, p0, Lcom/spotify/mobile/android/service/ai;->c:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v1, v0, p3, p4}, Lcom/spotify/mobile/android/service/ai;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V
return-void
.end method
.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V
.registers 8
new-instance v1, Landroid/support/v4/app/al;
iget-object v0, p0, Lcom/spotify/mobile/android/service/ai;->c:Landroid/content/Context;
invoke-direct {v1, v0}, Landroid/support/v4/app/al;-><init>(Landroid/content/Context;)V
invoke-virtual {v1, p3}, Landroid/support/v4/app/al;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/al;
invoke-virtual {v1, p1}, Landroid/support/v4/app/al;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/al;
invoke-virtual {v1, p1}, Landroid/support/v4/app/al;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/al;
invoke-virtual {v1, p2}, Landroid/support/v4/app/al;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/al;
invoke-virtual {v1}, Landroid/support/v4/app/al;->a()Landroid/support/v4/app/al;
invoke-virtual {v1}, Landroid/support/v4/app/al;->d()Landroid/support/v4/app/al;
iget-object v0, p0, Lcom/spotify/mobile/android/service/ai;->c:Landroid/content/Context;
const-string v2, "notification"
invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/NotificationManager;
invoke-virtual {v1}, Landroid/support/v4/app/al;->g()Landroid/app/Notification;
move-result-object v1
invoke-virtual {v0, p4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/service/ai;)Z
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/service/ai;->f()Z
move-result v0
return v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/service/ai;)Lcom/spotify/mobile/android/service/c/d;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/ai;->h:Lcom/spotify/mobile/android/service/c/d;
return-object v0
.end method
.method private f()Z
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/ai;->h:Lcom/spotify/mobile/android/service/c/d;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method private g()V
.registers 11
const v9, 0x7f0f0290
const/4 v8, 0x2
const/4 v7, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/service/ai;->a:Landroid/support/v4/app/al;
if-nez v0, :cond_12
new-instance v0, Landroid/support/v4/app/al;
iget-object v1, p0, Lcom/spotify/mobile/android/service/ai;->c:Landroid/content/Context;
invoke-direct {v0, v1}, Landroid/support/v4/app/al;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/ai;->a:Landroid/support/v4/app/al;
:cond_12
iget-object v0, p0, Lcom/spotify/mobile/android/service/ai;->f:Lcom/spotify/mobile/android/util/bw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/bw;->c()I
move-result v0
iget-object v1, p0, Lcom/spotify/mobile/android/service/ai;->f:Lcom/spotify/mobile/android/util/bw;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/bw;->d()I
move-result v1
iget-object v2, p0, Lcom/spotify/mobile/android/service/ai;->f:Lcom/spotify/mobile/android/util/bw;
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/bw;->e()I
move-result v2
new-instance v3, Landroid/content/Intent;
iget-object v4, p0, Lcom/spotify/mobile/android/service/ai;->c:Landroid/content/Context;
const-class v5, Lcom/spotify/music/MainActivity;
invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v4, p0, Lcom/spotify/mobile/android/service/ai;->c:Landroid/content/Context;
invoke-static {v4, v7, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v3
iget-object v4, p0, Lcom/spotify/mobile/android/service/ai;->c:Landroid/content/Context;
invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
iget-object v5, p0, Lcom/spotify/mobile/android/service/ai;->a:Landroid/support/v4/app/al;
invoke-virtual {v5, v3}, Landroid/support/v4/app/al;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/al;
iget-object v3, p0, Lcom/spotify/mobile/android/service/ai;->a:Landroid/support/v4/app/al;
invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v5}, Landroid/support/v4/app/al;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/al;
iget-object v3, p0, Lcom/spotify/mobile/android/service/ai;->a:Landroid/support/v4/app/al;
const v5, 0x7f0e000d
const/4 v6, 0x3
new-array v6, v6, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v6, v7
const/4 v0, 0x1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v6, v0
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v6, v8
invoke-virtual {v4, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Landroid/support/v4/app/al;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/al;
iget-object v0, p0, Lcom/spotify/mobile/android/service/ai;->a:Landroid/support/v4/app/al;
invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v4/app/al;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/al;
iget-object v0, p0, Lcom/spotify/mobile/android/service/ai;->a:Landroid/support/v4/app/al;
invoke-virtual {v0}, Landroid/support/v4/app/al;->a()Landroid/support/v4/app/al;
iget-object v0, p0, Lcom/spotify/mobile/android/service/ai;->a:Landroid/support/v4/app/al;
invoke-virtual {v0}, Landroid/support/v4/app/al;->b()Landroid/support/v4/app/al;
iget-object v0, p0, Lcom/spotify/mobile/android/service/ai;->a:Landroid/support/v4/app/al;
invoke-virtual {v0}, Landroid/support/v4/app/al;->c()Landroid/support/v4/app/al;
iget-object v0, p0, Lcom/spotify/mobile/android/service/ai;->e:Lcom/spotify/mobile/android/service/c/b;
iget-object v1, p0, Lcom/spotify/mobile/android/service/ai;->a:Landroid/support/v4/app/al;
invoke-virtual {v1}, Landroid/support/v4/app/al;->g()Landroid/app/Notification;
move-result-object v1
invoke-virtual {v0, v8, v1}, Lcom/spotify/mobile/android/service/c/b;->a(ILandroid/app/Notification;)V
return-void
.end method
.method private h()V
.registers 3
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/service/ai;->a:Landroid/support/v4/app/al;
iget-object v0, p0, Lcom/spotify/mobile/android/service/ai;->e:Lcom/spotify/mobile/android/service/c/b;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/c/b;->a(I)V
return-void
.end method
.method public final a()V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/service/ai;->f:Lcom/spotify/mobile/android/util/bw;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/bw;->a(Lcom/spotify/mobile/android/util/bx;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/ai;->d:Landroid/content/ContentResolver;
sget-object v1, Lcom/spotify/mobile/android/provider/n;->a:Landroid/net/Uri;
const/4 v2, 0x1
iget-object v3, p0, Lcom/spotify/mobile/android/service/ai;->b:Landroid/database/ContentObserver;
invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
return-void
.end method
.method public final a(Landroid/app/PendingIntent;)V
.registers 5
const v0, 0x7f0f0292
const v1, 0x7f0f0291
const/4 v2, 0x3
invoke-direct {p0, v0, v1, p1, v2}, Lcom/spotify/mobile/android/service/ai;->a(IILandroid/app/PendingIntent;I)V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/service/c/d;)V
.registers 4
invoke-direct {p0}, Lcom/spotify/mobile/android/service/ai;->f()Z
move-result v0
if-eqz v0, :cond_2b
if-eqz p1, :cond_2b
iget-object v0, p0, Lcom/spotify/mobile/android/service/ai;->h:Lcom/spotify/mobile/android/service/c/d;
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1d
iget-object v0, p0, Lcom/spotify/mobile/android/service/ai;->h:Lcom/spotify/mobile/android/service/c/d;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/c/d;->d()V
:goto_1d
:cond_1d
iput-object p1, p0, Lcom/spotify/mobile/android/service/ai;->h:Lcom/spotify/mobile/android/service/c/d;
invoke-direct {p0}, Lcom/spotify/mobile/android/service/ai;->f()Z
move-result v0
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/spotify/mobile/android/service/ai;->h:Lcom/spotify/mobile/android/service/c/d;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/c/d;->a()V
:cond_2a
return-void
:cond_2b
invoke-direct {p0}, Lcom/spotify/mobile/android/service/ai;->f()Z
move-result v0
if-eqz v0, :cond_1d
if-nez p1, :cond_1d
iget-object v0, p0, Lcom/spotify/mobile/android/service/ai;->h:Lcom/spotify/mobile/android/service/c/d;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/c/d;->d()V
goto :goto_1d
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/ai;->f:Lcom/spotify/mobile/android/util/bw;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/bw;->b(Lcom/spotify/mobile/android/util/bx;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/ai;->d:Landroid/content/ContentResolver;
iget-object v1, p0, Lcom/spotify/mobile/android/service/ai;->b:Landroid/database/ContentObserver;
invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
invoke-direct {p0}, Lcom/spotify/mobile/android/service/ai;->f()Z
move-result v0
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/service/ai;->h:Lcom/spotify/mobile/android/service/c/d;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/c/d;->d()V
:cond_17
invoke-direct {p0}, Lcom/spotify/mobile/android/service/ai;->h()V
return-void
.end method
.method public final b(Landroid/app/PendingIntent;)V
.registers 5
const v0, 0x7f0f028c
const v1, 0x7f0f028b
const/4 v2, 0x4
invoke-direct {p0, v0, v1, p1, v2}, Lcom/spotify/mobile/android/service/ai;->a(IILandroid/app/PendingIntent;I)V
return-void
.end method
.method public final c()V
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/service/ai;->g:Z
if-eqz v0, :cond_7
invoke-direct {p0}, Lcom/spotify/mobile/android/service/ai;->g()V
:cond_7
return-void
.end method
.method public final c(Landroid/app/PendingIntent;)V
.registers 5
const v0, 0x7f0f028a
const v1, 0x7f0f0289
const/4 v2, 0x5
invoke-direct {p0, v0, v1, p1, v2}, Lcom/spotify/mobile/android/service/ai;->a(IILandroid/app/PendingIntent;I)V
return-void
.end method
.method public final d()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/ai;->g:Z
invoke-direct {p0}, Lcom/spotify/mobile/android/service/ai;->g()V
return-void
.end method
.method public final d(Landroid/app/PendingIntent;)V
.registers 5
sget-object v0, Lcom/spotify/mobile/android/util/bv;->c:Ljava/lang/String;
sget-object v1, Lcom/spotify/mobile/android/util/bv;->b:Ljava/lang/String;
const/4 v2, 0x6
invoke-direct {p0, v0, v1, p1, v2}, Lcom/spotify/mobile/android/service/ai;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;I)V
return-void
.end method
.method public final e()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/service/ai;->g:Z
invoke-direct {p0}, Lcom/spotify/mobile/android/service/ai;->h()V
return-void
.end method