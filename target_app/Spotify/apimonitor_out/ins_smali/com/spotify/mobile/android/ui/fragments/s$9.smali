.class final Lcom/spotify/mobile/android/ui/fragments/s$9;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/s;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/s;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/s$9;->a:Lcom/spotify/mobile/android/ui/fragments/s;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/s$9;->a:Lcom/spotify/mobile/android/ui/fragments/s;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/s;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/provider/s;->a:Landroid/net/Uri;
sget-object v3, Lcom/spotify/mobile/android/ui/adapter/e;->l:[Ljava/lang/String;
move-object v5, v4
move-object v6, v4
invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public final a(Landroid/support/v4/content/k;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s$9;->a:Lcom/spotify/mobile/android/ui/fragments/s;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/s;->h(Lcom/spotify/mobile/android/ui/fragments/s;)Landroid/support/v4/widget/b;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v4/widget/b;->b(Landroid/database/Cursor;)Landroid/database/Cursor;
return-void
.end method
.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
.registers 8
const/4 v4, 0x2
check-cast p2, Landroid/database/Cursor;
:cond_3
:goto_3
invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z
move-result v0
if-eqz v0, :cond_2a
const-string v0, ""
invoke-static {p2, v4, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x1
const-string v2, ""
invoke-static {p2, v1, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x3
const-string v3, ""
invoke-static {p2, v2, v3}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v3
if-lez v3, :cond_3
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/bc;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/bc;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_3
:cond_2a
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s$9;->a:Lcom/spotify/mobile/android/ui/fragments/s;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/s;->h(Lcom/spotify/mobile/android/ui/fragments/s;)Landroid/support/v4/widget/b;
move-result-object v0
invoke-virtual {v0, p2}, Landroid/support/v4/widget/b;->b(Landroid/database/Cursor;)Landroid/database/Cursor;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/s$9;->a:Lcom/spotify/mobile/android/ui/fragments/s;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/s;->c(Lcom/spotify/mobile/android/ui/fragments/s;)Lcom/spotify/mobile/android/ui/adapter/o;
move-result-object v0
invoke-virtual {v0, v4}, Lcom/spotify/mobile/android/ui/adapter/o;->d(I)Z
return-void
.end method