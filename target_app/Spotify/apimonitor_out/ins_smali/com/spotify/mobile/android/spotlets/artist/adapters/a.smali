.class public final Lcom/spotify/mobile/android/spotlets/artist/adapters/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Landroid/content/Context;
.field private final b:Lcom/spotify/mobile/android/spotlets/artist/view/e;
.field private final c:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/e;
.field private final d:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/artist/view/e;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/a;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/a;->d:Ljava/lang/String;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/a;->b:Lcom/spotify/mobile/android/spotlets/artist/view/e;
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/e;
invoke-direct {v0, p1, p3}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/e;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/artist/view/e;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/a;->c:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/e;
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;Z)Lcom/spotify/mobile/android/spotlets/artist/adapters/f;
.registers 6
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/a;->a:Landroid/content/Context;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/a;->b:Lcom/spotify/mobile/android/spotlets/artist/view/e;
invoke-direct {v0, v1, p1, p2, v2}, Lcom/spotify/mobile/android/spotlets/artist/adapters/f;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;ZLcom/spotify/mobile/android/spotlets/artist/view/e;)V
return-object v0
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)Lcom/spotify/mobile/android/spotlets/artist/adapters/i;
.registers 5
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/i;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/a;->a:Landroid/content/Context;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/a;->b:Lcom/spotify/mobile/android/spotlets/artist/view/e;
invoke-direct {v0, v1, p1, v2}, Lcom/spotify/mobile/android/spotlets/artist/adapters/i;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;Lcom/spotify/mobile/android/spotlets/artist/view/e;)V
return-object v0
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;)Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/a;->c:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/e;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/a;->d:Ljava/lang/String;
invoke-virtual {v0, v1, p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/e;->a(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;)Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;
move-result-object v0
return-object v0
.end method
.method public final a(Ljava/util/List;)Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/a;->c:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/e;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/a;->d:Ljava/lang/String;
invoke-virtual {v0, v1, p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/e;->a(Ljava/lang/String;Ljava/util/List;)Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;
move-result-object v0
return-object v0
.end method
.method public final b(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;)Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/a;->c:Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/e;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/a;->d:Ljava/lang/String;
invoke-virtual {v0, v1, p1}, Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/e;->b(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseList;)Lcom/spotify/mobile/android/spotlets/artist/adapters/releases/d;
move-result-object v0
return-object v0
.end method