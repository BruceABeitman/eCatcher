.class final Lcom/spotify/mobile/android/spotlets/a/b$6;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/a/b;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/a/b;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/a/b$6;->a:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b$6;->a:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/a/b;->a(Lcom/spotify/mobile/android/spotlets/a/b;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/provider/a;->b(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/b$6;->a:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/a/b;->d()Landroid/content/Context;
move-result-object v1
sget-object v3, Lcom/spotify/mobile/android/model/h;->a:[Ljava/lang/String;
move-object v5, v4
move-object v6, v4
invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public final a(Landroid/support/v4/content/k;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b$6;->a:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/a/b;->b(Lcom/spotify/mobile/android/spotlets/a/b;)Lcom/spotify/mobile/android/ui/adapter/y;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/y;->b(Landroid/database/Cursor;)Landroid/database/Cursor;
return-void
.end method
.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
.registers 7
check-cast p2, Landroid/database/Cursor;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b$6;->a:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/a/b;->b(Lcom/spotify/mobile/android/spotlets/a/b;)Lcom/spotify/mobile/android/ui/adapter/y;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/ui/adapter/y;->b(Landroid/database/Cursor;)Landroid/database/Cursor;
invoke-interface {p2}, Landroid/database/Cursor;->getCount()I
move-result v0
if-lez v0, :cond_39
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b$6;->a:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-static {v0, p2}, Lcom/spotify/mobile/android/spotlets/a/b;->a(Lcom/spotify/mobile/android/spotlets/a/b;Landroid/database/Cursor;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b$6;->a:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/a/b;->c(Lcom/spotify/mobile/android/spotlets/a/b;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_3a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b$6;->a:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/a/b;->a(Lcom/spotify/mobile/android/spotlets/a/b;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/provider/a;->b(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/b$6;->a:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/a/b;->d(Lcom/spotify/mobile/android/spotlets/a/b;)Lcom/spotify/mobile/android/util/dr;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/a/b$6;->a:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/a/b;->c(Lcom/spotify/mobile/android/spotlets/a/b;)Ljava/lang/String;
move-result-object v2
const-string v3, ""
invoke-virtual {v1, v0, v2, v3}, Lcom/spotify/mobile/android/util/dr;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
:cond_39
:goto_39
return-void
:cond_3a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b$6;->a:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/a/b;->e(Lcom/spotify/mobile/android/spotlets/a/b;)Z
move-result v0
if-eqz v0, :cond_39
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v0
if-eqz v0, :cond_59
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b$6;->a:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/a/b;->f(Lcom/spotify/mobile/android/spotlets/a/b;)Lcom/spotify/mobile/android/spotlets/a/d;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/a/d;->b()V
:goto_53
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b$6;->a:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/a/b;->g(Lcom/spotify/mobile/android/spotlets/a/b;)Z
goto :goto_39
:cond_59
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b$6;->a:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/a/b;->c()Landroid/widget/ListView;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/b$6;->a:Lcom/spotify/mobile/android/spotlets/a/b;
const/4 v2, 0x0
invoke-static {v1, v2}, Lcom/spotify/mobile/android/spotlets/a/b;->a(Lcom/spotify/mobile/android/spotlets/a/b;I)I
move-result v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/eb;->a(Landroid/widget/AdapterView;I)V
goto :goto_53
.end method