.class final Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;
.field private final b:[Ljava/lang/String;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;)V
.registers 5
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$4;->a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "uri"
aput-object v2, v0, v1
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$4;->b:[Ljava/lang/String;
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$4;->a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/provider/l;->a:Landroid/net/Uri;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$4;->b:[Ljava/lang/String;
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
.registers 7
const/4 v3, 0x0
check-cast p2, Landroid/database/Cursor;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$4;->a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->e(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_79
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v1
if-eqz v1, :cond_79
:cond_15
invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_73
invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I
move-result v0
:goto_23
if-gez v0, :cond_7b
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-eqz v0, :cond_68
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$4;->a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;
invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->b(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$4;->a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->e(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;)Ljava/lang/String;
move-result-object v0
const-string v1, "Track had no uri"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/bt;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
const-string v0, "Using track as epoch: %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$4;->a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->e(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;)Ljava/lang/String;
move-result-object v2
aput-object v2, v1, v3
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$4;->a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->a(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;)Lcom/spotify/mobile/android/util/cx;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->b:Lcom/spotify/mobile/android/util/cz;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$4;->a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->e(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V
:cond_68
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$4;->a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;
invoke-static {v0, v3}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->a(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;I)I
:goto_6d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$4;->a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->D()V
return-void
:cond_73
invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z
move-result v1
if-nez v1, :cond_15
:cond_79
const/4 v0, -0x1
goto :goto_23
:cond_7b
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$4;->a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;
invoke-static {v1, v0}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->a(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;I)I
goto :goto_6d
.end method