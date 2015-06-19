.class public final Lcom/spotify/mobile/android/service/feature/b;
.super Landroid/os/Binder;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/connections/d;
.field final synthetic a:Lcom/spotify/mobile/android/service/feature/FeatureService;
.method public constructor <init>(Lcom/spotify/mobile/android/service/feature/FeatureService;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/feature/b;->a:Lcom/spotify/mobile/android/service/feature/FeatureService;
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
return-void
.end method
.method public final bridge synthetic a(Ljava/lang/Object;)V
.registers 4
check-cast p1, Lcom/spotify/mobile/android/service/feature/a;
const-string v0, "Adding listener"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/b;->a:Lcom/spotify/mobile/android/service/feature/FeatureService;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/service/feature/FeatureService;->a(Lcom/spotify/mobile/android/service/feature/a;)V
return-void
.end method
.method public final bridge synthetic b(Ljava/lang/Object;)V
.registers 3
check-cast p1, Lcom/spotify/mobile/android/service/feature/a;
iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/b;->a:Lcom/spotify/mobile/android/service/feature/FeatureService;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/service/feature/FeatureService;->b(Lcom/spotify/mobile/android/service/feature/a;)V
return-void
.end method