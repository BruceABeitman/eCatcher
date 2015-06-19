.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/b$6;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/common/b/a/e;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/common/b/a/d;)Z
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;
move-result-object v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$6;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;
move-result-object v0
invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/common/b/a/d;->d()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;->a(Z)V
:cond_15
const/4 v0, 0x0
return v0
.end method