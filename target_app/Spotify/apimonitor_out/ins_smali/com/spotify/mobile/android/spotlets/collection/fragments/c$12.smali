.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/c$12;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$12;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v0
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$12;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->k(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/ui/prettylist/c;
move-result-object v0
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->k()V
:goto_11
return-void
:cond_12
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$12;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->k(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/ui/prettylist/c;
move-result-object v0
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(Z)V
goto :goto_11
.end method