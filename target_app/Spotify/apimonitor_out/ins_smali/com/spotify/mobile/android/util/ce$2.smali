.class final Lcom/spotify/mobile/android/util/ce$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/mobile/android/util/ce;
.method constructor <init>(Lcom/spotify/mobile/android/util/ce;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/util/ce$2;->a:Lcom/spotify/mobile/android/util/ce;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/util/ce$2;->a:Lcom/spotify/mobile/android/util/ce;
invoke-static {v0}, Lcom/spotify/mobile/android/util/ce;->f(Lcom/spotify/mobile/android/util/ce;)Lcom/spotify/mobile/android/util/be;
move-result-object v0
const-string v1, ""
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
iget-object v3, p0, Lcom/spotify/mobile/android/util/ce$2;->a:Lcom/spotify/mobile/android/util/ce;
invoke-static {v3}, Lcom/spotify/mobile/android/util/ce;->e(Lcom/spotify/mobile/android/util/ce;)Lcom/spotify/mobile/android/util/bh;
move-result-object v3
invoke-interface {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/be;->a(Ljava/lang/String;Ljava/util/Map;Lcom/spotify/mobile/android/util/bh;)V
return-void
.end method