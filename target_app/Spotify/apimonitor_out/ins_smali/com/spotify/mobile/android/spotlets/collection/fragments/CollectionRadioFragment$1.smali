.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/stuff/d;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$1;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/spotify/android/paste/widget/EmptyView;Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;)V
.registers 7
sget-object v0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->b:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;
if-ne p2, v0, :cond_3d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$1;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;)Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$RadioErrorType;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$RadioErrorType;->c:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$RadioErrorType;
if-ne v0, v1, :cond_3e
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ah:Lcom/spotify/android/paste/graphics/SpotifyIcon;
const v1, 0x7f0f0240
const v0, 0x7f0f023f
:goto_16
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$1;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;
invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-static {v3, v2}, Lcom/spotify/mobile/android/ui/stuff/k;->b(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {p1, v2}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/graphics/drawable/Drawable;)V
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$1;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {p1, v1}, Lcom/spotify/android/paste/widget/EmptyView;->a(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$1;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/spotify/android/paste/widget/EmptyView;->b(Ljava/lang/CharSequence;)V
:cond_3d
return-void
:cond_3e
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->cm:Lcom/spotify/android/paste/graphics/SpotifyIcon;
const v1, 0x7f0f0454
const v0, 0x7f0f0453
goto :goto_16
.end method