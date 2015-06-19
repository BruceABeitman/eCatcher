.class final Lcom/mixpanel/android/mpmetrics/j;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:I
.field private final b:I
.field private final c:I
.field private final d:Z
.field private final e:Ljava/lang/String;
.field private final f:Ljava/lang/String;
.field private final g:Ljava/lang/String;
.field private final h:Ljava/lang/String;
.field private final i:Ljava/lang/String;
.field private final j:Ljava/lang/String;
.field private final k:Z
.method private constructor <init>(Landroid/os/Bundle;)V
.registers 5
const/4 v2, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "com.mixpanel.android.MPConfig.BulkUploadLimit"
const/16 v1, 0x28
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lcom/mixpanel/android/mpmetrics/j;->a:I
const-string v0, "com.mixpanel.android.MPConfig.FlushInterval"
const v1, 0xea60
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lcom/mixpanel/android/mpmetrics/j;->b:I
const-string v0, "com.mixpanel.android.MPConfig.DataExpiration"
const v1, 0xa4cb800
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lcom/mixpanel/android/mpmetrics/j;->c:I
const-string v0, "com.mixpanel.android.MPConfig.DisableFallback"
invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/j;->d:Z
const-string v0, "com.mixpanel.android.MPConfig.AutoCheckForSurveys"
invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/j;->k:Z
const-string v0, "com.mixpanel.android.MPConfig.EventsEndpoint"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_3e
const-string v0, "https://api.mixpanel.com/track?ip=1"
:cond_3e
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/j;->e:Ljava/lang/String;
const-string v0, "com.mixpanel.android.MPConfig.EventsFallbackEndpoint"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_4a
const-string v0, "http://api.mixpanel.com/track?ip=1"
:cond_4a
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/j;->f:Ljava/lang/String;
const-string v0, "com.mixpanel.android.MPConfig.PeopleEndpoint"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_56
const-string v0, "https://api.mixpanel.com/engage"
:cond_56
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/j;->g:Ljava/lang/String;
const-string v0, "com.mixpanel.android.MPConfig.PeopleFallbackEndpoint"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_62
const-string v0, "http://api.mixpanel.com/engage"
:cond_62
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/j;->h:Ljava/lang/String;
const-string v0, "com.mixpanel.android.MPConfig.DecideEndpoint"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_6e
const-string v0, "https://decide.mixpanel.com/decide"
:cond_6e
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/j;->i:Ljava/lang/String;
const-string v0, "com.mixpanel.android.MPConfig.DecideFallbackEndpoint"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_7a
const-string v0, "http://decide.mixpanel.com/decide"
:cond_7a
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/j;->j:Ljava/lang/String;
return-void
.end method
.method public static a(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/j;
.registers 6
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
:try_start_4
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
const/16 v2, 0x80
invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
move-result-object v0
iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
if-nez v0, :cond_17
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
:cond_17
new-instance v2, Lcom/mixpanel/android/mpmetrics/j;
invoke-direct {v2, v0}, Lcom/mixpanel/android/mpmetrics/j;-><init>(Landroid/os/Bundle;)V
:try_end_1c
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_1c} :catch_1d
return-object v2
:catch_1d
move-exception v0
new-instance v2, Ljava/lang/RuntimeException;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Can\'t configure Mixpanel with package name "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/mixpanel/android/mpmetrics/j;->a:I
return v0
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/mixpanel/android/mpmetrics/j;->b:I
return v0
.end method
.method public final c()I
.registers 2
iget v0, p0, Lcom/mixpanel/android/mpmetrics/j;->c:I
return v0
.end method
.method public final d()Z
.registers 2
iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/j;->d:Z
return v0
.end method
.method public final e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/j;->e:Ljava/lang/String;
return-object v0
.end method
.method public final f()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/j;->g:Ljava/lang/String;
return-object v0
.end method
.method public final g()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/j;->i:Ljava/lang/String;
return-object v0
.end method
.method public final h()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/j;->f:Ljava/lang/String;
return-object v0
.end method
.method public final i()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/j;->h:Ljava/lang/String;
return-object v0
.end method
.method public final j()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/j;->j:Ljava/lang/String;
return-object v0
.end method
.method public final k()Z
.registers 2
iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/j;->k:Z
return v0
.end method