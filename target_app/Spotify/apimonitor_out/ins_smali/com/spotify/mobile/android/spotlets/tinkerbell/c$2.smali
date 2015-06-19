.class final Lcom/spotify/mobile/android/spotlets/tinkerbell/c$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/content/Context;
.field final synthetic b:Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;
.field final synthetic c:Z
.field final synthetic d:Lcom/spotify/mobile/android/spotlets/tinkerbell/c;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/c;Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;)V
.registers 5
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/c$2;->d:Lcom/spotify/mobile/android/spotlets/tinkerbell/c;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/c$2;->a:Landroid/content/Context;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/c$2;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/c$2;->c:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/c$2;->d:Lcom/spotify/mobile/android/spotlets/tinkerbell/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/c;->a(Lcom/spotify/mobile/android/spotlets/tinkerbell/c;)Lcom/spotify/mobile/android/util/da;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/c$2;->a:Landroid/content/Context;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/da;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/c$2;->b:Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;->a()Lcom/spotify/mobile/android/util/cz;
move-result-object v1
iget-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/c$2;->c:Z
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Z)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V
return-void
.end method