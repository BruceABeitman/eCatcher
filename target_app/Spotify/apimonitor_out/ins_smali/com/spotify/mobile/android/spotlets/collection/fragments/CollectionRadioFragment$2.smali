.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;
.field private final b:[Ljava/lang/String;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;)V
.registers 5
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "connected"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "can_stream"
aput-object v2, v0, v1
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$2;->b:[Ljava/lang/String;
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/provider/v;->a:Landroid/net/Uri;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$2;->b:[Ljava/lang/String;
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
.registers 9
const/4 v1, 0x1
const/4 v2, 0x0
check-cast p2, Landroid/database/Cursor;
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-eqz v0, :cond_5d
invoke-static {p2, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v3
invoke-static {p2, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v4
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;
if-eqz v3, :cond_5e
if-eqz v4, :cond_5e
move v0, v1
:goto_19
invoke-static {v5, v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->x_()V
if-nez v4, :cond_2e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;
sget-object v5, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$RadioErrorType;->c:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$RadioErrorType;
invoke-static {v0, v5}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$RadioErrorType;)Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$RadioErrorType;
:cond_2e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;)Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
move-result-object v5
if-nez v3, :cond_60
move v0, v1
:goto_37
invoke-virtual {v5, v0}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;)Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
move-result-object v0
if-nez v4, :cond_62
:goto_42
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->c(Z)V
if-eqz v3, :cond_5d
if-eqz v4, :cond_5d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;)Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->c(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;)Lcom/spotify/mobile/android/ui/view/LoadingView;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a(Lcom/spotify/mobile/android/ui/view/LoadingView;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$2;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->d(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;)V
:cond_5d
return-void
:cond_5e
move v0, v2
goto :goto_19
:cond_60
move v0, v2
goto :goto_37
:cond_62
move v1, v2
goto :goto_42
.end method