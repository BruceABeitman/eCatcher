.class final enum Lcom/spotify/mobile/android/util/TouchLifecycle$State$4;
.super Lcom/spotify/mobile/android/util/TouchLifecycle$State;
.source "SourceFile"
.method constructor <init>(Ljava/lang/String;)V
.registers 4
const/4 v0, 0x3
const/4 v1, 0x0
invoke-direct {p0, p1, v0, v1}, Lcom/spotify/mobile/android/util/TouchLifecycle$State;-><init>(Ljava/lang/String;IB)V
return-void
.end method
.method final a(Lcom/spotify/mobile/android/util/TouchLifecycle;)V
.registers 3
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
.end method
.method final b(Lcom/spotify/mobile/android/util/TouchLifecycle;)V
.registers 2
return-void
.end method
.method final c(Lcom/spotify/mobile/android/util/TouchLifecycle;)V
.registers 2
return-void
.end method
.method final d(Lcom/spotify/mobile/android/util/TouchLifecycle;)Z
.registers 3
invoke-static {p1}, Lcom/spotify/mobile/android/util/TouchLifecycle;->i(Lcom/spotify/mobile/android/util/TouchLifecycle;)Z
invoke-static {p1}, Lcom/spotify/mobile/android/util/TouchLifecycle;->d(Lcom/spotify/mobile/android/util/TouchLifecycle;)Z
move-result v0
if-eqz v0, :cond_11
invoke-static {p1}, Lcom/spotify/mobile/android/util/TouchLifecycle;->g(Lcom/spotify/mobile/android/util/TouchLifecycle;)V
sget-object v0, Lcom/spotify/mobile/android/util/TouchLifecycle$State$4;->a:Lcom/spotify/mobile/android/util/TouchLifecycle$State;
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/TouchLifecycle;->a(Lcom/spotify/mobile/android/util/TouchLifecycle;Lcom/spotify/mobile/android/util/TouchLifecycle$State;)V
:cond_11
const/4 v0, 0x0
return v0
.end method