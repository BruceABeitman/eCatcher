.class final Lcom/spotify/mobile/android/util/tracking/c;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/tracking/f;
.field private a:Landroid/content/Context;
.field private b:Ljava/util/HashSet;
.field private c:Z
.field private d:Z
.method constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/util/tracking/c;->b:Ljava/util/HashSet;
iput-object p1, p0, Lcom/spotify/mobile/android/util/tracking/c;->a:Landroid/content/Context;
iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/c;->b:Ljava/util/HashSet;
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->aN:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/c;->b:Ljava/util/HashSet;
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->aJ:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/c;->b:Ljava/util/HashSet;
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->aH:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/c;->b:Ljava/util/HashSet;
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->aM:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/c;->b:Ljava/util/HashSet;
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->aI:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/c;->b:Ljava/util/HashSet;
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->aG:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/c;->b:Ljava/util/HashSet;
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
return-void
.end method
.method private a(Ljava/lang/String;JZ)V
.registers 9
const-string v0, "Sending ColdStartProcessor{timer_step_name:%s, timestamp:%d}"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
const/4 v2, 0x1
invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-static {p1, p4, p2, p3}, Lcom/spotify/mobile/android/util/tracking/AppStartupTimerMessage;->a(Ljava/lang/String;ZJ)Lcom/spotify/mobile/android/util/tracking/AppStartupTimerMessage;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/util/tracking/c;->a:Landroid/content/Context;
const-string v2, "com.spotify.mobile.android.service.action.session.APP_STARTUP_TIMER"
invoke-static {v1, v2}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v2
const-string v3, "app_startup_message"
invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
return-void
.end method
.method public final a()V
.registers 3
iget-boolean v0, p0, Lcom/spotify/mobile/android/util/tracking/c;->c:Z
if-eqz v0, :cond_c
const-string v0, "Cold start processor aborted while waiting for the first view"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_c
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.registers 10
const/4 v5, 0x1
const/4 v4, 0x0
const-string v0, "TYPE_COLD_START"
invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_1b
const-string v0, "TYPE_COLD_START_CANCEL"
invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_1b
const-string v0, "TYPE_VIEW_LOADING"
invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_1b
:goto_1a
:cond_1a
return-void
:cond_1b
const-string v0, "TYPE_COLD_START"
invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_4f
iget-boolean v0, p0, Lcom/spotify/mobile/android/util/tracking/c;->c:Z
if-eqz v0, :cond_2f
const-string v0, "Already received a cold start event."
new-array v1, v4, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_1a
:cond_2f
const-string v0, "ARG_TIMESTAMP"
invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_41
const-string v0, "Missing timestamp argument: %s"
new-array v1, v5, [Ljava/lang/Object;
aput-object p3, v1, v4
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_1a
:cond_41
iput-boolean v5, p0, Lcom/spotify/mobile/android/util/tracking/c;->c:Z
const-string v0, "ARG_TIMESTAMP"
invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v0
const-string v2, "app_init"
invoke-direct {p0, v2, v0, v1, v5}, Lcom/spotify/mobile/android/util/tracking/c;->a(Ljava/lang/String;JZ)V
goto :goto_1a
:cond_4f
const-string v0, "TYPE_COLD_START_CANCEL"
invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_63
iput-boolean v5, p0, Lcom/spotify/mobile/android/util/tracking/c;->d:Z
iput-boolean v4, p0, Lcom/spotify/mobile/android/util/tracking/c;->c:Z
const-string v0, "Cancelled cold start tracking."
new-array v1, v4, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_1a
:cond_63
const-string v0, "load_finished"
invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1a
iget-boolean v0, p0, Lcom/spotify/mobile/android/util/tracking/c;->d:Z
if-nez v0, :cond_1a
iget-boolean v0, p0, Lcom/spotify/mobile/android/util/tracking/c;->c:Z
if-eqz v0, :cond_1a
invoke-static {p3}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;)V
const-string v0, "ARG_MESSAGE"
invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;
if-eqz v0, :cond_1a
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->f()J
move-result-wide v1
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->a()Ljava/lang/String;
move-result-object v0
iget-object v3, p0, Lcom/spotify/mobile/android/util/tracking/c;->b:Ljava/util/HashSet;
invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_9a
const-string v1, "Received complete event for uri %s that is not in cold start list"
new-array v2, v5, [Ljava/lang/Object;
aput-object v0, v2, v4
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_1a
:cond_9a
const-string v0, "usable_state"
invoke-direct {p0, v0, v1, v2, v4}, Lcom/spotify/mobile/android/util/tracking/c;->a(Ljava/lang/String;JZ)V
iput-boolean v4, p0, Lcom/spotify/mobile/android/util/tracking/c;->c:Z
goto/16 :goto_1a
.end method