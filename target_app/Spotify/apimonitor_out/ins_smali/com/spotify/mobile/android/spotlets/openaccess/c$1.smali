.class final Lcom/spotify/mobile/android/spotlets/openaccess/c$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/openaccess/util/e;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/openaccess/c;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/openaccess/c;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;F)V
.registers 4
invoke-virtual {p1, p2}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->setProgress(F)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->a(Lcom/spotify/mobile/android/spotlets/openaccess/c;)Lcom/spotify/mobile/android/ui/prettylist/c;
move-result-object v0
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->c()Landroid/widget/ListView;
move-result-object v0
invoke-static {v0, p1, p2}, Lcom/spotify/mobile/android/spotlets/openaccess/util/g;->a(Landroid/widget/ListView;Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;F)V
return-void
.end method