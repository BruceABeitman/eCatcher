.class public final Lcom/spotify/mobile/android/util/dt;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/util/dt;->a:Landroid/content/Context;
return-void
.end method
.method private a(Landroid/content/Intent;)Landroid/content/ComponentName;
.registers 7
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/util/dt;->a:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
if-nez v0, :cond_a
:goto_9
return-object v1
:cond_a
const/4 v2, 0x0
invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_13
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_42
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/pm/ResolveInfo;
iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
if-eqz v3, :cond_45
iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
const-string v4, "com.twitter.android"
invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_45
new-instance v0, Landroid/content/ComponentName;
iget-object v1, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
iget-object v4, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
invoke-direct {v0, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "com.twitter.android.composer.TextFirstComposerActivity"
iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_43
:goto_40
move-object v1, v0
goto :goto_13
:cond_42
move-object v0, v1
:cond_43
move-object v1, v0
goto :goto_9
:cond_45
move-object v0, v1
goto :goto_40
.end method
.method public final a(Ljava/lang/String;)Landroid/content/Intent;
.registers 4
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.SEND"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "text/plain"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "android.intent.extra.TEXT"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/util/dt;->a(Landroid/content/Intent;)Landroid/content/ComponentName;
move-result-object v1
if-nez v1, :cond_19
const/4 v0, 0x0
:goto_18
return-object v0
:cond_19
invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
goto :goto_18
.end method