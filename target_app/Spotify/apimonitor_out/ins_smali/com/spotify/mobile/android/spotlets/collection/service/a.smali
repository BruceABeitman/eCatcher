.class public final Lcom/spotify/mobile/android/spotlets/collection/service/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field protected final a:Landroid/content/Context;
.field protected b:Landroid/content/Intent;
.method public constructor <init>(Landroid/content/Context;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/service/a;->a:Landroid/content/Context;
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/service/a;->a:Landroid/content/Context;
const-class v2, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateService;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/a;->b:Landroid/content/Intent;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/a;->b:Landroid/content/Intent;
const-string v1, "com.spotify.mobile.android.spotlets.collection.service.AnnotateService.action.ANNOTATE"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
return-void
.end method
.method public final a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/service/b;
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/a;->b:Landroid/content/Intent;
const-string v1, "playlist_uri"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/service/b;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/service/a;->a:Landroid/content/Context;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/service/a;->b:Landroid/content/Intent;
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/collection/service/b;-><init>(Landroid/content/Context;Landroid/content/Intent;)V
return-object v0
.end method
.method public final b(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/service/c;
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/a;->b:Landroid/content/Intent;
const-string v1, "playlist_uri"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/a;->b:Landroid/content/Intent;
const-string v1, "name"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/service/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/service/a;->a:Landroid/content/Context;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/service/a;->b:Landroid/content/Intent;
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/collection/service/c;-><init>(Landroid/content/Context;Landroid/content/Intent;)V
return-object v0
.end method