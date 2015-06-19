.class final Lcom/spotify/mobile/android/service/media/a/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/service/media/c/c;
.field final synthetic b:Lcom/spotify/mobile/android/service/media/a/a/a;
.method constructor <init>(Lcom/spotify/mobile/android/service/media/a/a/a;Lcom/spotify/mobile/android/service/media/c/c;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/service/media/a/a/a$1;->b:Lcom/spotify/mobile/android/service/media/a/a/a;
iput-object p2, p0, Lcom/spotify/mobile/android/service/media/a/a/a$1;->a:Lcom/spotify/mobile/android/service/media/c/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/service/media/a/a/a$1;->b:Lcom/spotify/mobile/android/service/media/a/a/a;
invoke-static {v1}, Lcom/spotify/mobile/android/service/media/a/a/a;->a(Lcom/spotify/mobile/android/service/media/a/a/a;)Landroid/content/Context;
move-result-object v1
invoke-static {}, Lcom/spotify/mobile/android/provider/p;->a()Landroid/net/Uri;
move-result-object v2
sget-object v3, Lcom/spotify/mobile/android/model/f;->a:[Ljava/lang/String;
move-object v5, v4
move-object v6, v4
invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public final a(Landroid/support/v4/content/k;)V
.registers 2
return-void
.end method
.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
.registers 6
check-cast p2, Landroid/database/Cursor;
invoke-interface {p2}, Landroid/database/Cursor;->getCount()I
move-result v0
if-eqz v0, :cond_39
new-instance v0, Lcom/spotify/mobile/android/service/media/b/c;
invoke-direct {v0}, Lcom/spotify/mobile/android/service/media/b/c;-><init>()V
:goto_d
:cond_d
invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z
move-result v1
if-eqz v1, :cond_27
iget-object v1, p0, Lcom/spotify/mobile/android/service/media/a/a/a$1;->b:Lcom/spotify/mobile/android/service/media/a/a/a;
invoke-static {v1, p2}, Lcom/spotify/mobile/android/service/media/a/a/a;->a(Lcom/spotify/mobile/android/service/media/a/a/a;Landroid/database/Cursor;)Lcom/google/common/base/Optional;
move-result-object v1
invoke-virtual {v1}, Lcom/google/common/base/Optional;->a()Z
move-result v2
if-eqz v2, :cond_d
invoke-virtual {v1}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/media/b/c;->b(Ljava/lang/Object;)Lcom/spotify/mobile/android/service/media/b/a;
goto :goto_d
:cond_27
iget-object v1, p0, Lcom/spotify/mobile/android/service/media/a/a/a$1;->b:Lcom/spotify/mobile/android/service/media/a/a/a;
invoke-virtual {v1}, Lcom/spotify/mobile/android/service/media/a/a/a;->a()Lcom/spotify/mobile/android/service/b/b;
move-result-object v1
invoke-virtual {v1, p0}, Lcom/spotify/mobile/android/service/b/b;->b(Landroid/support/v4/app/z;)V
iget-object v1, p0, Lcom/spotify/mobile/android/service/media/a/a/a$1;->a:Lcom/spotify/mobile/android/service/media/c/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/media/b/c;->a()Lcom/spotify/mobile/android/service/media/c/d;
move-result-object v0
invoke-interface {v1, v0}, Lcom/spotify/mobile/android/service/media/c/c;->a(Lcom/spotify/mobile/android/service/media/c/d;)V
:cond_39
return-void
.end method