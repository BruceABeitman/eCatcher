.class final Lcom/spotify/mobile/android/ui/activity/upsell/d$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/upsell/d;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/upsell/d;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/d$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/d;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method private varargs a()Ljava/lang/String;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/d$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/d;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/d;->a(Lcom/spotify/mobile/android/ui/activity/upsell/d;)Lcom/spotify/mobile/android/ui/activity/upsell/m;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->c()Ljava/lang/String;
:try_end_9
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v0
const-string v1, "Failed to detect country"
invoke-static {v1, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
const-string v0, ""
goto :goto_a
.end method
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/d$1;->a()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
.registers 8
const/4 v5, 0x1
const/4 v4, 0x0
check-cast p1, Ljava/lang/String;
if-nez p1, :cond_32
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/d$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/d;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/d;->b(Lcom/spotify/mobile/android/ui/activity/upsell/d;)Ljava/lang/Long;
move-result-object v0
if-eqz v0, :cond_32
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/d$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/d;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/activity/upsell/d;->b(Lcom/spotify/mobile/android/ui/activity/upsell/d;)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
move-result-wide v2
sub-long/2addr v0, v2
const-wide/16 v2, 0x7d0
cmp-long v2, v0, v2
if-lez v2, :cond_32
const-string v2, "Give up since it\'s been %d ms since hurry up"
new-array v3, v5, [Ljava/lang/Object;
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
aput-object v0, v3, v4
invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
const-string p1, ""
:cond_32
if-nez p1, :cond_43
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/d$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/d;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/d;->c(Lcom/spotify/mobile/android/ui/activity/upsell/d;)Lcom/spotify/mobile/android/util/cl;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->f()V
:goto_3d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/d$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/d;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/d;->e(Lcom/spotify/mobile/android/ui/activity/upsell/d;)Landroid/os/AsyncTask;
return-void
:cond_43
const-string v0, "Detected country: %s"
new-array v1, v5, [Ljava/lang/Object;
aput-object p1, v1, v4
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/d$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/d;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/d;->c(Lcom/spotify/mobile/android/ui/activity/upsell/d;)Lcom/spotify/mobile/android/util/cl;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->e()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/d$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/d;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/d;->d(Lcom/spotify/mobile/android/ui/activity/upsell/d;)Lcom/spotify/mobile/android/ui/activity/upsell/e;
move-result-object v0
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/ui/activity/upsell/e;->a(Ljava/lang/String;)V
goto :goto_3d
.end method