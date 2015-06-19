.class final Lcom/spotify/mobile/android/provider/ac$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/connections/h;
.field final synthetic a:Lcom/spotify/mobile/android/provider/ac;
.method constructor <init>(Lcom/spotify/mobile/android/provider/ac;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/provider/ac$2;->a:Lcom/spotify/mobile/android/provider/ac;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac$2;->a:Lcom/spotify/mobile/android/provider/ac;
invoke-static {v0}, Lcom/spotify/mobile/android/provider/ac;->a(Lcom/spotify/mobile/android/provider/ac;)Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac$2;->a:Lcom/spotify/mobile/android/provider/ac;
invoke-static {v0}, Lcom/spotify/mobile/android/provider/ac;->b(Lcom/spotify/mobile/android/provider/ac;)V
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac$2;->a:Lcom/spotify/mobile/android/provider/ac;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/spotify/mobile/android/provider/ac;->a(Lcom/spotify/mobile/android/provider/ac;Z)Z
:cond_13
return-void
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/provider/ac$2;->a:Lcom/spotify/mobile/android/provider/ac;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/provider/ac;->a(Lcom/spotify/mobile/android/provider/ac;Z)Z
return-void
.end method