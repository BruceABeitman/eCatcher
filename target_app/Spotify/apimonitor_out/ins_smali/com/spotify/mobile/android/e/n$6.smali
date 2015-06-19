.class final Lcom/spotify/mobile/android/e/n$6;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/e/o;
.field final synthetic a:Lcom/spotify/mobile/android/e/n;
.method constructor <init>(Lcom/spotify/mobile/android/e/n;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/e/n$6;->a:Lcom/spotify/mobile/android/e/n;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$6;->a:Lcom/spotify/mobile/android/e/n;
invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->c(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/managers/ConnectManager;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->a(Z)V
return-void
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/e/n$6;->a:Lcom/spotify/mobile/android/e/n;
invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->c(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/managers/ConnectManager;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->a(Z)V
return-void
.end method