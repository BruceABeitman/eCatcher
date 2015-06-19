.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/b$9;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/collection/a/c;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$9;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/database/Cursor;)V
.registers 8
const/4 v1, 0x0
const/4 v2, 0x1
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$9;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->f(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;->b(Landroid/database/Cursor;)Landroid/database/Cursor;
if-nez p1, :cond_e
:cond_d
:goto_d
return-void
:cond_e
invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$9;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
const/4 v3, 0x3
invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-static {v0, v3, v4}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;Ljava/lang/String;Ljava/lang/String;)V
:cond_22
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$9;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->d:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b()Z
move-result v0
if-nez v0, :cond_44
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$9;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->g(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/spotlets/collection/b/c;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->c()Z
move-result v0
if-nez v0, :cond_44
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$9;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->h(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/util/av;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/av;->a()Z
move-result v0
if-eqz v0, :cond_7d
:cond_44
move v0, v2
:goto_45
invoke-static {p1}, Lcom/spotify/mobile/android/provider/ac;->a(Landroid/database/Cursor;)Z
move-result v3
if-eqz v3, :cond_5c
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$9;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-interface {p1}, Landroid/database/Cursor;->getCount()I
move-result v4
invoke-interface {p1}, Landroid/database/Cursor;->getCount()I
move-result v5
if-nez v5, :cond_7f
if-eqz v0, :cond_7f
:goto_59
invoke-static {v3, v4, v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;IZ)V
:cond_5c
invoke-interface {p1}, Landroid/database/Cursor;->getCount()I
move-result v0
if-lez v0, :cond_67
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$9;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->c(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)V
:cond_67
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$9;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->d(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/util/tracking/n;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->d()Z
move-result v0
if-nez v0, :cond_d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$9;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->d(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/util/tracking/n;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->b()V
goto :goto_d
:cond_7d
move v0, v1
goto :goto_45
:cond_7f
move v2, v1
goto :goto_59
.end method