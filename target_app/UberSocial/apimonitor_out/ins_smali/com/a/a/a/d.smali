.class public Lcom/a/a/a/d;
.super Lcom/a/a/a/cv;
.source "SourceFile"
.field private a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.field private d:Lcom/a/a/a/bp;
.field private e:Lcom/a/a/a/ak;
.field private f:J
.field private g:Lcom/a/a/a/bw;
.field private h:Lcom/a/a/a/o;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/a/a/a/cv;-><init>()V
return-void
.end method
.method public static a()Lcom/a/a/a/d;
.registers 2
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
const-class v1, Lcom/a/a/a/d;
invoke-virtual {v0, v1}, Lcom/a/a/a/cw;->a(Ljava/lang/Class;)Lcom/a/a/a/cv;
move-result-object v0
check-cast v0, Lcom/a/a/a/d;
return-object v0
.end method
.method static synthetic a(Lcom/a/a/a/d;)V
.registers 15
const/4 v11, 0x1
const/4 v12, 0x0
invoke-virtual {p0}, Lcom/a/a/a/d;->z()Landroid/content/Context;
move-result-object v13
:try_start_6
new-instance v0, Lcom/a/a/a/x;
invoke-direct {v0}, Lcom/a/a/a/x;-><init>()V
new-instance v1, Lcom/a/a/a/bi;
invoke-direct {v1}, Lcom/a/a/a/bi;-><init>()V
new-instance v2, Lcom/a/a/a/bk;
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v3
invoke-virtual {v3}, Lcom/a/a/a/cw;->g()Ljava/io/File;
move-result-object v3
const-string v4, "session_analytics.tap"
const-string v5, "session_analytics_to_send"
invoke-direct {v2, v3, v4, v5}, Lcom/a/a/a/bk;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
new-instance v9, Lcom/a/a/a/k;
invoke-direct {v9, v0, v1, v2}, Lcom/a/a/a/k;-><init>(Lcom/a/a/a/x;Lcom/a/a/a/bi;Lcom/a/a/a/bk;)V
iget-object v0, p0, Lcom/a/a/a/d;->d:Lcom/a/a/a/bp;
invoke-virtual {v0}, Lcom/a/a/a/bp;->b()Ljava/lang/String;
move-result-object v3
iget-object v0, p0, Lcom/a/a/a/d;->d:Lcom/a/a/a/bp;
invoke-virtual {v0}, Lcom/a/a/a/bp;->g()Ljava/lang/String;
move-result-object v4
iget-object v0, p0, Lcom/a/a/a/d;->d:Lcom/a/a/a/bp;
invoke-virtual {v0}, Lcom/a/a/a/bp;->c()Ljava/lang/String;
move-result-object v5
iget-object v0, p0, Lcom/a/a/a/d;->d:Lcom/a/a/a/bp;
invoke-virtual {v0}, Lcom/a/a/a/bp;->d()Ljava/lang/String;
move-result-object v6
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->c()Landroid/app/Application;
move-result-object v1
if-eqz v1, :cond_de
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xe
if-lt v0, v2, :cond_de
new-instance v0, Lcom/a/a/a/f;
invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
iget-object v7, p0, Lcom/a/a/a/d;->b:Ljava/lang/String;
iget-object v8, p0, Lcom/a/a/a/d;->c:Ljava/lang/String;
iget-object v10, p0, Lcom/a/a/a/d;->g:Lcom/a/a/a/bw;
invoke-direct/range {v0 .. v10}, Lcom/a/a/a/f;-><init>(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/a/a/a/k;Lcom/a/a/a/bw;)V
iput-object v0, p0, Lcom/a/a/a/d;->h:Lcom/a/a/a/o;
:goto_5f
iget-wide v0, p0, Lcom/a/a/a/d;->f:J
iget-object v2, p0, Lcom/a/a/a/d;->e:Lcom/a/a/a/ak;
invoke-virtual {v2}, Lcom/a/a/a/ak;->a()Landroid/content/SharedPreferences;
move-result-object v2
const-string v3, "analytics_launched"
const/4 v4, 0x0
invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v2
if-nez v2, :cond_fa
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
sub-long v0, v2, v0
const-wide/32 v2, 0x36ee80
cmp-long v0, v0, v2
if-gez v0, :cond_f8
move v0, v11
:goto_7e
if-eqz v0, :cond_fa
move v0, v11
:goto_81
if-eqz v0, :cond_ad
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v0
const-string v1, "Crashlytics"
const-string v2, "First launch"
invoke-interface {v0, v1, v2}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/a/a/a/d;->h:Lcom/a/a/a/o;
if-eqz v0, :cond_ad
iget-object v0, p0, Lcom/a/a/a/d;->h:Lcom/a/a/a/o;
invoke-virtual {v0}, Lcom/a/a/a/o;->b()V
iget-object v0, p0, Lcom/a/a/a/d;->e:Lcom/a/a/a/ak;
iget-object v1, p0, Lcom/a/a/a/d;->e:Lcom/a/a/a/ak;
invoke-virtual {v1}, Lcom/a/a/a/ak;->b()Landroid/content/SharedPreferences$Editor;
move-result-object v1
const-string v2, "analytics_launched"
const/4 v3, 0x1
invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/a/a/a/ak;->a(Landroid/content/SharedPreferences$Editor;)Z
:cond_ad
:try_start_ad
:goto_ad
:try_end_ad
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_ad} :catch_f1
invoke-static {}, Lcom/a/a/a/at;->a()Lcom/a/a/a/at;
move-result-object v0
iget-object v2, p0, Lcom/a/a/a/d;->g:Lcom/a/a/a/bw;
iget-object v3, p0, Lcom/a/a/a/d;->b:Ljava/lang/String;
iget-object v4, p0, Lcom/a/a/a/d;->c:Ljava/lang/String;
invoke-direct {p0}, Lcom/a/a/a/d;->b()Ljava/lang/String;
move-result-object v5
move-object v1, v13
invoke-virtual/range {v0 .. v5}, Lcom/a/a/a/at;->a(Landroid/content/Context;Lcom/a/a/a/bw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/at;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/at;->c()Z
invoke-static {}, Lcom/a/a/a/at;->a()Lcom/a/a/a/at;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/at;->b()Lcom/a/a/a/ay;
move-result-object v0
if-eqz v0, :cond_dd
iget-object v1, v0, Lcom/a/a/a/ay;->d:Lcom/a/a/a/aq;
iget-boolean v1, v1, Lcom/a/a/a/aq;->c:Z
if-nez v1, :cond_fc
const-string v0, "Disabling analytics collection based on settings flag value."
invoke-static {v0}, Lcom/a/a/a/bc;->c(Ljava/lang/String;)V
iget-object v0, p0, Lcom/a/a/a/d;->h:Lcom/a/a/a/o;
invoke-virtual {v0}, Lcom/a/a/a/o;->a()V
:cond_dd
:goto_dd
:try_end_dd
.catch Ljava/lang/Exception; {:try_start_ad .. :try_end_dd} :catch_108
return-void
:try_start_de
:cond_de
new-instance v1, Lcom/a/a/a/o;
invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
iget-object v7, p0, Lcom/a/a/a/d;->b:Ljava/lang/String;
iget-object v8, p0, Lcom/a/a/a/d;->c:Ljava/lang/String;
iget-object v10, p0, Lcom/a/a/a/d;->g:Lcom/a/a/a/bw;
invoke-direct/range {v1 .. v10}, Lcom/a/a/a/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/a/a/a/k;Lcom/a/a/a/bw;)V
iput-object v1, p0, Lcom/a/a/a/d;->h:Lcom/a/a/a/o;
:try_end_ef
.catch Ljava/lang/Exception; {:try_start_de .. :try_end_ef} :catch_f1
goto/16 :goto_5f
:catch_f1
move-exception v0
const-string v0, "Crashlytics failed to initialize session analytics."
invoke-static {v0}, Lcom/a/a/a/bc;->d(Ljava/lang/String;)V
goto :goto_ad
:cond_f8
move v0, v12
goto :goto_7e
:cond_fa
move v0, v12
goto :goto_81
:try_start_fc
:cond_fc
iget-object v1, p0, Lcom/a/a/a/d;->h:Lcom/a/a/a/o;
iget-object v0, v0, Lcom/a/a/a/ay;->e:Lcom/a/a/a/al;
invoke-direct {p0}, Lcom/a/a/a/d;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v0, v2}, Lcom/a/a/a/o;->a(Lcom/a/a/a/al;Ljava/lang/String;)V
:try_end_107
.catch Ljava/lang/Exception; {:try_start_fc .. :try_end_107} :catch_108
goto :goto_dd
:catch_108
move-exception v0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
const-string v3, "Error dealing with settings"
invoke-interface {v1, v2, v3, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_dd
.end method
.method private b()Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/a/a/a/d;->z()Landroid/content/Context;
move-result-object v0
const-string v1, "com.crashlytics.ApiEndpoint"
invoke-static {v0, v1}, Lcom/a/a/a/bc;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(Lcom/a/a/a/bg;)V
.registers 4
iget-object v0, p0, Lcom/a/a/a/d;->h:Lcom/a/a/a/o;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/a/a/a/d;->h:Lcom/a/a/a/o;
invoke-virtual {p1}, Lcom/a/a/a/bg;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/a/a/a/o;->a(Ljava/lang/String;)V
:cond_d
return-void
.end method
.method public final a(Lcom/a/a/a/bh;)V
.registers 4
iget-object v0, p0, Lcom/a/a/a/d;->h:Lcom/a/a/a/o;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/a/a/a/d;->h:Lcom/a/a/a/o;
invoke-virtual {p1}, Lcom/a/a/a/bh;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/a/a/a/o;->b(Ljava/lang/String;)V
:cond_d
return-void
.end method
.method protected final h()V
.registers 5
:try_start_0
new-instance v0, Lcom/a/a/a/bw;
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
invoke-direct {v0, v1}, Lcom/a/a/a/bw;-><init>(Lcom/a/a/a/cr;)V
iput-object v0, p0, Lcom/a/a/a/d;->g:Lcom/a/a/a/bw;
new-instance v0, Lcom/a/a/a/ak;
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
const-class v2, Lcom/a/a/a/d;
invoke-virtual {v1, v2}, Lcom/a/a/a/cw;->a(Ljava/lang/Class;)Lcom/a/a/a/cv;
move-result-object v1
invoke-direct {v0, v1}, Lcom/a/a/a/ak;-><init>(Lcom/a/a/a/cv;)V
iput-object v0, p0, Lcom/a/a/a/d;->e:Lcom/a/a/a/ak;
invoke-virtual {p0}, Lcom/a/a/a/d;->z()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
new-instance v2, Lcom/a/a/a/bp;
invoke-direct {v2, v1}, Lcom/a/a/a/bp;-><init>(Landroid/content/Context;)V
iput-object v2, p0, Lcom/a/a/a/d;->d:Lcom/a/a/a/bp;
invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/a/a/a/d;->a:Ljava/lang/String;
iget-object v2, p0, Lcom/a/a/a/d;->a:Ljava/lang/String;
const/4 v3, 0x0
invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v2
iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/a/a/a/d;->b:Ljava/lang/String;
iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
if-nez v0, :cond_66
const-string v0, "0.0"
:goto_4a
iput-object v0, p0, Lcom/a/a/a/d;->c:Ljava/lang/String;
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0x9
if-lt v0, v3, :cond_69
iget-wide v0, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J
iput-wide v0, p0, Lcom/a/a/a/d;->f:J
:goto_56
:try_end_56
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_56} :catch_84
new-instance v0, Ljava/lang/Thread;
new-instance v1, Lcom/a/a/a/e;
invoke-direct {v1, p0}, Lcom/a/a/a/e;-><init>(Lcom/a/a/a/d;)V
const-string v2, "Crashlytics Initializer"
invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
return-void
:cond_66
:try_start_66
iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
goto :goto_4a
:cond_69
invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
move-result-object v0
new-instance v1, Ljava/io/File;
iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->lastModified()J
move-result-wide v0
iput-wide v0, p0, Lcom/a/a/a/d;->f:J
:try_end_83
.catch Ljava/lang/Exception; {:try_start_66 .. :try_end_83} :catch_84
goto :goto_56
:catch_84
move-exception v0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
const-string v3, "Error setting up app properties"
invoke-interface {v1, v2, v3, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_56
.end method
.method public i()Ljava/lang/String;
.registers 2
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v0
invoke-virtual {v0}, Lcom/a/a/a/cw;->i()Ljava/lang/String;
move-result-object v0
return-object v0
.end method