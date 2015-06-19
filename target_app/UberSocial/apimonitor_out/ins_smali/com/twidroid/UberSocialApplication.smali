.class public Lcom/twidroid/UberSocialApplication;
.super Landroid/app/Application;
.source "SourceFile"
.field static a:Lcom/twidroid/ui/themes/r; = null
.field private static final b:Ljava/lang/String; = "UberSocialApplication"
.field private static c:Lcom/twidroid/d/v;
.field private static d:Lcom/twidroid/ui/themes/a/b;
.field private static e:Z
.field private static g:Lcom/twidroid/UberSocialApplication;
.field private static h:Lcom/twidroid/net/b/a;
.field private f:Lcom/twidroid/ui/c/g;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/twidroid/UberSocialApplication;->c:Lcom/twidroid/d/v;
const/4 v0, 0x1
sput-boolean v0, Lcom/twidroid/UberSocialApplication;->e:Z
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Application;-><init>()V
return-void
.end method
.method public static a(Landroid/app/Activity;)Lcom/twidroid/UberSocialApplication;
.registers 2
invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method public static h()Lcom/twidroid/UberSocialApplication;
.registers 1
sget-object v0, Lcom/twidroid/UberSocialApplication;->g:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method private l()V
.registers 4
:try_start_0
new-instance v0, Ljava/io/File;
const-string v1, "/data/data/com.twidroid/shared_prefs/com.twidroid_preferences.xml"
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
new-instance v1, Ljava/io/FileInputStream;
invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
const-string v0, "UberSocialApplication"
const/4 v2, 0x0
invoke-static {v1, v2}, Lcom/ubermedia/net/d;->a(Ljava/io/InputStream;Landroid/os/Handler;)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
:try_end_19
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_1a
:goto_19
return-void
:catch_1a
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_19
.end method
.method private m()V
.registers 2
invoke-virtual {p0}, Lcom/twidroid/UberSocialApplication;->j()Lcom/twidroid/ui/c/g;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/c/g;->d()V
return-void
.end method
.method private n()V
.registers 2
invoke-virtual {p0}, Lcom/twidroid/UberSocialApplication;->j()Lcom/twidroid/ui/c/g;
sget-object v0, Lcom/twidroid/UberSocialApplication;->a:Lcom/twidroid/ui/themes/r;
check-cast v0, Lcom/twidroid/ui/themes/a;
invoke-virtual {v0}, Lcom/twidroid/ui/themes/a;->a()Lcom/twidroid/ui/themes/b;
move-result-object v0
if-nez v0, :cond_d
:cond_d
return-void
.end method
.method public a()V
.registers 4
new-instance v0, Lcom/twidroid/ui/themes/a/b;
invoke-virtual {p0}, Lcom/twidroid/UberSocialApplication;->getApplicationContext()Landroid/content/Context;
move-result-object v1
sget-object v2, Lcom/twidroid/UberSocialApplication;->c:Lcom/twidroid/d/v;
invoke-direct {v0, v1, v2}, Lcom/twidroid/ui/themes/a/b;-><init>(Landroid/content/Context;Lcom/twidroid/d/v;)V
sput-object v0, Lcom/twidroid/UberSocialApplication;->d:Lcom/twidroid/ui/themes/a/b;
return-void
.end method
.method public a(Z)V
.registers 2
sput-boolean p1, Lcom/twidroid/UberSocialApplication;->e:Z
return-void
.end method
.method public a(Ljava/lang/String;)Z
.registers 3
sget-object v0, Lcom/twidroid/UberSocialApplication;->c:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->bv()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1b
invoke-virtual {p0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/twidroid/d/v;->f(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/twidroid/UberSocialApplication;->m()V
invoke-virtual {p0}, Lcom/twidroid/UberSocialApplication;->c()V
const/4 v0, 0x1
:goto_1a
return v0
:cond_1b
const/4 v0, 0x0
goto :goto_1a
.end method
.method public b()Lcom/twidroid/ui/themes/a/b;
.registers 2
sget-object v0, Lcom/twidroid/UberSocialApplication;->d:Lcom/twidroid/ui/themes/a/b;
if-nez v0, :cond_7
invoke-virtual {p0}, Lcom/twidroid/UberSocialApplication;->a()V
:cond_7
sget-object v0, Lcom/twidroid/UberSocialApplication;->d:Lcom/twidroid/ui/themes/a/b;
return-object v0
.end method
.method public c()V
.registers 4
sget-object v0, Lcom/twidroid/UberSocialApplication;->c:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->bv()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/ui/themes/r;->a(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_28
sget-object v0, Lcom/twidroid/UberSocialApplication;->c:Lcom/twidroid/d/v;
const-string v1, "themeNameForWarnDialog"
sget-object v2, Lcom/twidroid/UberSocialApplication;->c:Lcom/twidroid/d/v;
invoke-virtual {v2}, Lcom/twidroid/d/v;->bv()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/twidroid/d/v;->e(Ljava/lang/String;Ljava/lang/String;)V
sget-object v0, Lcom/twidroid/UberSocialApplication;->c:Lcom/twidroid/d/v;
const-string v1, "showThemeWarnDialog"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Lcom/twidroid/d/v;->a(Ljava/lang/String;Z)V
sget-object v0, Lcom/twidroid/UberSocialApplication;->c:Lcom/twidroid/d/v;
const-string v1, "5"
invoke-virtual {v0, v1}, Lcom/twidroid/d/v;->f(Ljava/lang/String;)V
:cond_28
const-string v0, "UberSocialApplication"
const-string v1, "Builtin/TwidroydFactory theme selected"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
sget-object v0, Lcom/twidroid/UberSocialApplication;->c:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->bv()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/ui/themes/r;->b(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_4f
new-instance v0, Lcom/twidroid/ui/themes/r;
sget-object v1, Lcom/twidroid/UberSocialApplication;->c:Lcom/twidroid/d/v;
invoke-direct {v0, v1}, Lcom/twidroid/ui/themes/r;-><init>(Lcom/twidroid/d/v;)V
sput-object v0, Lcom/twidroid/UberSocialApplication;->a:Lcom/twidroid/ui/themes/r;
:goto_44
sget-object v0, Lcom/twidroid/UberSocialApplication;->a:Lcom/twidroid/ui/themes/r;
sget-object v1, Lcom/twidroid/UberSocialApplication;->c:Lcom/twidroid/d/v;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/themes/r;->a(Lcom/twidroid/d/v;)V
invoke-direct {p0}, Lcom/twidroid/UberSocialApplication;->m()V
return-void
:cond_4f
sget-object v0, Lcom/twidroid/UberSocialApplication;->c:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->bv()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/ui/themes/r;->d(Ljava/lang/String;)I
move-result v0
invoke-static {v0}, Lcom/twidroid/ui/themes/s;->a(I)Lcom/twidroid/ui/themes/r;
move-result-object v0
sput-object v0, Lcom/twidroid/UberSocialApplication;->a:Lcom/twidroid/ui/themes/r;
goto :goto_44
.end method
.method public declared-synchronized d()V
.registers 2
monitor-enter p0
:try_start_1
new-instance v0, Lcom/twidroid/d/v;
invoke-direct {v0, p0}, Lcom/twidroid/d/v;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/twidroid/UberSocialApplication;->c:Lcom/twidroid/d/v;
:try_end_8
.catchall {:try_start_1 .. :try_end_8} :catchall_a
monitor-exit p0
return-void
:catchall_a
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized e()Lcom/twidroid/d/v;
.registers 2
monitor-enter p0
:try_start_1
sget-object v0, Lcom/twidroid/UberSocialApplication;->c:Lcom/twidroid/d/v;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return-object v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public f()Lcom/twidroid/ui/themes/r;
.registers 2
sget-object v0, Lcom/twidroid/UberSocialApplication;->a:Lcom/twidroid/ui/themes/r;
return-object v0
.end method
.method public declared-synchronized g()Lcom/twidroid/b/a/b;
.registers 3
monitor-enter p0
:try_start_1
invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;
move-result-object v0
sget-object v1, Lcom/twidroid/UberSocialApplication;->c:Lcom/twidroid/d/v;
invoke-virtual {v1}, Lcom/twidroid/d/v;->aG()I
move-result v1
invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->a(I)V
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_10
monitor-exit p0
return-object v0
:catchall_10
move-exception v0
monitor-exit p0
throw v0
.end method
.method public i()Z
.registers 2
sget-boolean v0, Lcom/twidroid/UberSocialApplication;->e:Z
return v0
.end method
.method public declared-synchronized j()Lcom/twidroid/ui/c/g;
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/twidroid/UberSocialApplication;->f:Lcom/twidroid/ui/c/g;
if-nez v0, :cond_10
new-instance v0, Lcom/twidroid/ui/c/g;
invoke-virtual {p0}, Lcom/twidroid/UberSocialApplication;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1, p0}, Lcom/twidroid/ui/c/g;-><init>(Landroid/content/Context;Lcom/twidroid/UberSocialApplication;)V
iput-object v0, p0, Lcom/twidroid/UberSocialApplication;->f:Lcom/twidroid/ui/c/g;
:cond_10
iget-object v0, p0, Lcom/twidroid/UberSocialApplication;->f:Lcom/twidroid/ui/c/g;
:try_end_12
.catchall {:try_start_1 .. :try_end_12} :catchall_14
monitor-exit p0
return-object v0
:catchall_14
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized k()Lcom/twidroid/net/b/a;
.registers 3
monitor-enter p0
:try_start_1
sget-object v0, Lcom/twidroid/UberSocialApplication;->h:Lcom/twidroid/net/b/a;
if-nez v0, :cond_18
new-instance v0, Lcom/twidroid/net/b/b;
const-string v1, "imageCache"
invoke-direct {v0, p0, v1}, Lcom/twidroid/net/b/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V
const/high16 v1, 0x3e80
invoke-virtual {v0, p0, v1}, Lcom/twidroid/net/b/b;->a(Landroid/content/Context;F)V
new-instance v1, Lcom/twidroid/net/b/a;
invoke-direct {v1, v0}, Lcom/twidroid/net/b/a;-><init>(Lcom/twidroid/net/b/b;)V
sput-object v1, Lcom/twidroid/UberSocialApplication;->h:Lcom/twidroid/net/b/a;
:cond_18
sget-object v0, Lcom/twidroid/UberSocialApplication;->h:Lcom/twidroid/net/b/a;
:try_end_1a
.catchall {:try_start_1 .. :try_end_1a} :catchall_1c
monitor-exit p0
return-object v0
:catchall_1c
move-exception v0
monitor-exit p0
throw v0
.end method
.method public onCreate()V
.registers 3
const-string v1, " + Lcom/twidroid/UberSocialApplication; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Application;->onCreate()V
sget-object v0, Lcom/twidroid/UberSocialApplication;->c:Lcom/twidroid/d/v;
if-nez v0, :cond_e
new-instance v0, Lcom/twidroid/d/v;
invoke-direct {v0, p0}, Lcom/twidroid/d/v;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/twidroid/UberSocialApplication;->c:Lcom/twidroid/d/v;
:cond_e
sput-object p0, Lcom/twidroid/UberSocialApplication;->g:Lcom/twidroid/UberSocialApplication;
invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/twidroid/b/a/b;->a(Landroid/content/Context;)V
invoke-static {}, Lcom/twidroid/b/a/a;->a()Lcom/twidroid/b/a/a;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/twidroid/b/a/a;->a(Landroid/content/Context;)V
invoke-static {}, Lcom/twidroid/net/n;->a()Lcom/twidroid/net/n;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/twidroid/net/n;->a(Landroid/app/Application;)V
invoke-static {p0}, Lcom/twidroid/net/k;->a(Landroid/app/Application;)V
invoke-virtual {p0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
invoke-virtual {p0}, Lcom/twidroid/UberSocialApplication;->c()V
invoke-virtual {p0}, Lcom/twidroid/UberSocialApplication;->a()V
const-string v1, " - Lcom/twidroid/UberSocialApplication; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public startActivity(Landroid/content/Intent;)V
.registers 3
invoke-static {p0, p1}, Lcom/twidroid/TwidroidClient;->a(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v0
if-eqz v0, :cond_c
invoke-static {}, Lcom/twidroid/TwidroidClient;->u()V
invoke-super {p0, p1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V
:cond_c
return-void
.end method
.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
.registers 4
invoke-static {p0, p1}, Lcom/twidroid/TwidroidClient;->a(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v0
if-eqz v0, :cond_c
invoke-static {}, Lcom/twidroid/TwidroidClient;->u()V
invoke-super {p0, p1, p2}, Landroid/app/Application;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
:cond_c
return-void
.end method