.class public final Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;
.field private a:Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;
.field private b:Ljava/util/List;
.field private final c:Ljava/util/List;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;->b:Ljava/util/List;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;->c:Ljava/util/List;
new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;
invoke-direct {v0}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;->a:Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;
return-void
.end method
.method public final synthetic a(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;->a:Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;
if-nez p1, :cond_6
const-string p1, ""
:cond_6
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->c(Ljava/lang/String;)V
return-object p0
.end method
.method public final a(II)Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
.registers 5
new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/f;
invoke-direct {v0, p1, p2}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/f;-><init>(II)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;->b:Ljava/util/List;
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object v0
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;->a:Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/ui/contextmenu/e;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;->c:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p1, p0}, Lcom/spotify/mobile/android/ui/contextmenu/e;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V
return-void
.end method
.method public final b()Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
.registers 4
new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/f;
const v1, 0x7f0a0131
const v2, 0x7f0f017a
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/f;-><init>(II)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;->b:Ljava/util/List;
const/4 v2, 0x2
invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
return-object v0
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;->a:Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->a()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;->a:Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->b()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;->a:Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->c()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final f()Lcom/spotify/android/paste/graphics/SpotifyIcon;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;->a:Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->d()Lcom/spotify/android/paste/graphics/SpotifyIcon;
move-result-object v0
return-object v0
.end method
.method public final g()Z
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;->a:Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;->e()Z
move-result v0
return v0
.end method
.method public final h()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;->b:Ljava/util/List;
return-object v0
.end method
.method public final i()Z
.registers 5
const/4 v2, 0x1
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;->c:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
move v1, v2
:goto_8
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1b
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/contextmenu/e;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/contextmenu/e;->d()Z
move-result v0
and-int/2addr v0, v1
move v1, v0
goto :goto_8
:cond_1b
if-nez v1, :cond_1e
:goto_1d
return v2
:cond_1e
const/4 v2, 0x0
goto :goto_1d
.end method
.method public final j()Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;->a:Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;
return-object v0
.end method
.method public final k()I
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;->c:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public final l()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;->c:Ljava/util/List;
return-object v0
.end method