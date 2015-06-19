.class final Lcom/spotify/mobile/android/ui/fragments/g$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/g;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/g;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/g$2;->a:Lcom/spotify/mobile/android/ui/fragments/g;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
sget-object v2, Lcom/spotify/mobile/android/provider/h;->a:Landroid/net/Uri;
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/g$2;->a:Lcom/spotify/mobile/android/ui/fragments/g;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/g;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/g;->H()[Ljava/lang/String;
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
.registers 13
const/4 v1, 0x1
const/4 v2, 0x0
check-cast p2, Landroid/database/Cursor;
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-eqz v0, :cond_a1
const-string v0, "capping_enabled"
invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v0
invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
if-eqz v0, :cond_a2
move v0, v1
:goto_17
const-string v3, "should_show_remaining_time"
invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v3
invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I
move-result v3
if-eqz v3, :cond_a5
move v3, v1
:goto_24
iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/g$2;->a:Lcom/spotify/mobile/android/ui/fragments/g;
if-eqz v0, :cond_a8
if-eqz v3, :cond_a8
move v0, v1
:goto_2b
invoke-static {v4, v0}, Lcom/spotify/mobile/android/ui/fragments/g;->a(Lcom/spotify/mobile/android/ui/fragments/g;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g$2;->a:Lcom/spotify/mobile/android/ui/fragments/g;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/g;->b(Lcom/spotify/mobile/android/ui/fragments/g;)Z
move-result v0
if-eqz v0, :cond_9c
const-string v0, "remaining_playback_time"
invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v0
invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
div-int/lit16 v3, v0, 0xe10
mul-int/lit16 v4, v3, 0xe10
sub-int/2addr v0, v4
div-int/lit8 v0, v0, 0x3c
iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/g$2;->a:Lcom/spotify/mobile/android/ui/fragments/g;
invoke-virtual {v4}, Lcom/spotify/mobile/android/ui/fragments/g;->k()Landroid/content/res/Resources;
move-result-object v4
iget-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/g$2;->a:Lcom/spotify/mobile/android/ui/fragments/g;
invoke-static {v5}, Lcom/spotify/mobile/android/ui/fragments/g;->c(Lcom/spotify/mobile/android/ui/fragments/g;)Landroid/widget/TextView;
move-result-object v5
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const v7, 0x7f0f00f1
invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, " "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const v7, 0x7f0e0004
new-array v8, v1, [Ljava/lang/Object;
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
aput-object v9, v8, v2
invoke-virtual {v4, v7, v3, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v6, " "
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const v6, 0x7f0e0005
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v1, v2
invoke-virtual {v4, v6, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_9c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/g$2;->a:Lcom/spotify/mobile/android/ui/fragments/g;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/g;->d(Lcom/spotify/mobile/android/ui/fragments/g;)V
:cond_a1
return-void
:cond_a2
move v0, v2
goto/16 :goto_17
:cond_a5
move v3, v2
goto/16 :goto_24
:cond_a8
move v0, v2
goto :goto_2b
.end method