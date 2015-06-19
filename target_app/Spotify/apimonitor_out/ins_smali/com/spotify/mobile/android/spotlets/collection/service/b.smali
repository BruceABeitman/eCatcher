.class public final Lcom/spotify/mobile/android/spotlets/collection/service/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Landroid/content/Context;
.field private b:Landroid/content/Intent;
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/service/b;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/collection/service/b;->b:Landroid/content/Intent;
return-void
.end method
.method public final a()Lcom/spotify/mobile/android/spotlets/collection/service/b;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/b;->b:Landroid/content/Intent;
const-string v1, "image_uri"
const-string v2, ""
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
return-object p0
.end method
.method public final a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/service/b;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/b;->b:Landroid/content/Intent;
const-string v1, "image_uri"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
return-object p0
.end method
.method public final b(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/service/b;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/b;->b:Landroid/content/Intent;
const-string v1, "description"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
return-object p0
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/b;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/service/b;->b:Landroid/content/Intent;
invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
return-void
.end method
.method public final c(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/service/b;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/b;->b:Landroid/content/Intent;
const-string v1, "name"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
return-object p0
.end method