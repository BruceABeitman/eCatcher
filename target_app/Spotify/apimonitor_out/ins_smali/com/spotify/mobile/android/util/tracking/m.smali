.class final Lcom/spotify/mobile/android/util/tracking/m;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/tracking/f;
.field private a:Landroid/content/Context;
.method constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/util/tracking/m;->a:Landroid/content/Context;
return-void
.end method
.method private static a(Ljava/lang/String;Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;Z)Landroid/os/Bundle;
.registers 5
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "ARG_ID"
invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "ARG_DRY_RUN"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v1, "ARG_MESSAGE"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
return-object v0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZJ)V
.registers 9
const-string v0, "load_start"
invoke-static {p2, v0, p4, p5}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/spotify/mobile/android/util/tracking/l;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/l;->a()Lcom/spotify/mobile/android/util/tracking/l;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/l;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/tracking/l;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/l;->c()Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;
move-result-object v0
const-string v1, "TYPE_VIEW_LOADING"
const-string v2, "load_start"
invoke-static {p1, v0, p3}, Lcom/spotify/mobile/android/util/tracking/m;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;Z)Landroid/os/Bundle;
move-result-object v0
invoke-static {p0, v1, v2, v0}, Lcom/spotify/mobile/android/util/tracking/TrackingService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZJ)V
.registers 9
const-string v0, "load_finished"
invoke-static {p2, v0, p4, p5}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/spotify/mobile/android/util/tracking/l;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/l;->b()Lcom/spotify/mobile/android/util/tracking/l;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/l;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/tracking/l;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/l;->c()Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;
move-result-object v0
const-string v1, "TYPE_VIEW_LOADING"
const-string v2, "load_finished"
invoke-static {p1, v0, p3}, Lcom/spotify/mobile/android/util/tracking/m;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;Z)Landroid/os/Bundle;
move-result-object v0
invoke-static {p0, v1, v2, v0}, Lcom/spotify/mobile/android/util/tracking/TrackingService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZJ)V
.registers 9
const-string v0, "load_cancelled"
invoke-static {p2, v0, p4, p5}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/spotify/mobile/android/util/tracking/l;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/l;->b()Lcom/spotify/mobile/android/util/tracking/l;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/l;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/tracking/l;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/l;->c()Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;
move-result-object v0
const-string v1, "TYPE_VIEW_LOADING"
const-string v2, "load_cancelled"
invoke-static {p1, v0, p3}, Lcom/spotify/mobile/android/util/tracking/m;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;Z)Landroid/os/Bundle;
move-result-object v0
invoke-static {p0, v1, v2, v0}, Lcom/spotify/mobile/android/util/tracking/TrackingService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method public final a()V
.registers 1
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.registers 12
const-string v0, "TYPE_VIEW_LOADING"
invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
const-string v0, "ARG_ID"
invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Bundle must have id: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Bundle;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V
const-string v0, "ARG_MESSAGE"
invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Bundle must contain message: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Bundle;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V
const-string v0, "ARG_DRY_RUN"
invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v1
const-string v0, "ARG_MESSAGE"
invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->e()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->a()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->g()Ljava/lang/String;
move-result-object v4
const-string v5, "Sending ViewLoadTimerMessage{timer_step_name:%s, view_name:%s, sequence_id:%s}. Dry run: %s"
const/4 v6, 0x4
new-array v6, v6, [Ljava/lang/Object;
const/4 v7, 0x0
aput-object v2, v6, v7
const/4 v2, 0x1
aput-object v3, v6, v2
const/4 v2, 0x2
aput-object v4, v6, v2
const/4 v2, 0x3
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
aput-object v3, v6, v2
invoke-static {v5, v6}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
if-nez v1, :cond_8
iget-object v1, p0, Lcom/spotify/mobile/android/util/tracking/m;->a:Landroid/content/Context;
const-string v2, "com.spotify.mobile.android.service.action.session.VIEW_LOAD_TIMER"
invoke-static {v1, v2}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v2
const-string v3, "view_load_timer_message"
invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
goto :goto_8
.end method