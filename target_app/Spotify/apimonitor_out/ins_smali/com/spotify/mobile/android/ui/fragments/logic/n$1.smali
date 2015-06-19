.class final Lcom/spotify/mobile/android/ui/fragments/logic/n$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/logic/n;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/logic/n;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/n;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/n;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/provider/aa;->a:Landroid/net/Uri;
invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->D()[Ljava/lang/String;
move-result-object v3
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
.registers 14
const/4 v2, 0x1
const/4 v1, 0x0
check-cast p2, Landroid/database/Cursor;
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-eqz v0, :cond_6c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/n;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->a(Lcom/spotify/mobile/android/ui/fragments/logic/n;)Z
move-result v0
if-nez v0, :cond_6c
const/16 v0, 0x8
invoke-static {p2, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v4
const/4 v0, 0x2
invoke-static {p2, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
if-nez v0, :cond_27
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/n;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->b(Lcom/spotify/mobile/android/ui/fragments/logic/n;)Z
move-result v0
if-eqz v0, :cond_6d
:cond_27
move v0, v2
:goto_28
const/4 v3, 0x3
invoke-static {p2, v3}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v3
if-nez v3, :cond_37
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/n;
invoke-static {v3}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->c(Lcom/spotify/mobile/android/ui/fragments/logic/n;)Z
move-result v3
if-eqz v3, :cond_6f
:cond_37
move v3, v2
:goto_38
const/4 v5, 0x4
invoke-static {p2, v5}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v5
const/4 v6, 0x5
invoke-static {p2, v6}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v6
iget-object v7, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/n;
const/4 v8, 0x6
invoke-static {p2, v8}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v8
invoke-static {v7, v8}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->a(Lcom/spotify/mobile/android/ui/fragments/logic/n;Z)Z
const/4 v7, 0x7
invoke-static {p2, v7}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v7
invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I
move-result v8
iget-object v9, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/n;
invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v10
invoke-static {v9, v10}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->a(Lcom/spotify/mobile/android/ui/fragments/logic/n;I)I
if-eqz v6, :cond_71
if-nez v3, :cond_71
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/n;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->d(Lcom/spotify/mobile/android/ui/fragments/logic/n;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/n;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->e(Lcom/spotify/mobile/android/ui/fragments/logic/n;)V
:goto_6c
:cond_6c
return-void
:cond_6d
move v0, v1
goto :goto_28
:cond_6f
move v3, v1
goto :goto_38
:cond_71
if-eqz v5, :cond_6c
if-nez v7, :cond_6c
if-nez v4, :cond_a0
if-nez v0, :cond_a0
move v0, v2
:goto_7a
if-nez v4, :cond_a2
:goto_7c
if-eqz v2, :cond_93
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/n;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->f(Lcom/spotify/mobile/android/ui/fragments/logic/n;)Z
move-result v1
if-nez v1, :cond_93
if-lez v8, :cond_93
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/n;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->g(Lcom/spotify/mobile/android/ui/fragments/logic/n;)Z
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/n;
int-to-long v2, v8
invoke-static {v1, v2, v3}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->a(Lcom/spotify/mobile/android/ui/fragments/logic/n;J)V
:cond_93
if-eqz v0, :cond_6c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/n;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->h(Lcom/spotify/mobile/android/ui/fragments/logic/n;)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/n;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->i(Lcom/spotify/mobile/android/ui/fragments/logic/n;)V
goto :goto_6c
:cond_a0
move v0, v1
goto :goto_7a
:cond_a2
move v2, v1
goto :goto_7c
.end method