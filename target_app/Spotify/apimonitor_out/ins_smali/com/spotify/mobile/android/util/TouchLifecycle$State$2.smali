.class final enum Lcom/spotify/mobile/android/util/TouchLifecycle$State$2;
.super Lcom/spotify/mobile/android/util/TouchLifecycle$State;
.source "SourceFile"
.method constructor <init>(Ljava/lang/String;)V
.registers 4
const/4 v0, 0x1
const/4 v1, 0x0
invoke-direct {p0, p1, v0, v1}, Lcom/spotify/mobile/android/util/TouchLifecycle$State;-><init>(Ljava/lang/String;IB)V
return-void
.end method
.method final a(Lcom/spotify/mobile/android/util/TouchLifecycle;)V
.registers 2
return-void
.end method
.method final b(Lcom/spotify/mobile/android/util/TouchLifecycle;)V
.registers 3
sget-object v0, Lcom/spotify/mobile/android/util/TouchLifecycle$State$2;->c:Lcom/spotify/mobile/android/util/TouchLifecycle$State;
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/TouchLifecycle;->a(Lcom/spotify/mobile/android/util/TouchLifecycle;Lcom/spotify/mobile/android/util/TouchLifecycle$State;)V
return-void
.end method
.method final c(Lcom/spotify/mobile/android/util/TouchLifecycle;)V
.registers 3
invoke-static {p1}, Lcom/spotify/mobile/android/util/TouchLifecycle;->b(Lcom/spotify/mobile/android/util/TouchLifecycle;)V
sget-object v0, Lcom/spotify/mobile/android/util/TouchLifecycle$State$2;->d:Lcom/spotify/mobile/android/util/TouchLifecycle$State;
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/TouchLifecycle;->a(Lcom/spotify/mobile/android/util/TouchLifecycle;Lcom/spotify/mobile/android/util/TouchLifecycle$State;)V
return-void
.end method
.method final d(Lcom/spotify/mobile/android/util/TouchLifecycle;)Z
.registers 4
invoke-static {p1}, Lcom/spotify/mobile/android/util/TouchLifecycle;->c(Lcom/spotify/mobile/android/util/TouchLifecycle;)Z
move-result v0
invoke-static {p1}, Lcom/spotify/mobile/android/util/TouchLifecycle;->d(Lcom/spotify/mobile/android/util/TouchLifecycle;)Z
move-result v1
if-eqz v1, :cond_1b
invoke-static {p1}, Lcom/spotify/mobile/android/util/TouchLifecycle;->e(Lcom/spotify/mobile/android/util/TouchLifecycle;)Z
move-result v1
if-eqz v1, :cond_13
invoke-static {p1}, Lcom/spotify/mobile/android/util/TouchLifecycle;->f(Lcom/spotify/mobile/android/util/TouchLifecycle;)V
:cond_13
invoke-static {p1}, Lcom/spotify/mobile/android/util/TouchLifecycle;->g(Lcom/spotify/mobile/android/util/TouchLifecycle;)V
sget-object v1, Lcom/spotify/mobile/android/util/TouchLifecycle$State$2;->a:Lcom/spotify/mobile/android/util/TouchLifecycle$State;
invoke-static {p1, v1}, Lcom/spotify/mobile/android/util/TouchLifecycle;->a(Lcom/spotify/mobile/android/util/TouchLifecycle;Lcom/spotify/mobile/android/util/TouchLifecycle$State;)V
:cond_1b
return v0
.end method