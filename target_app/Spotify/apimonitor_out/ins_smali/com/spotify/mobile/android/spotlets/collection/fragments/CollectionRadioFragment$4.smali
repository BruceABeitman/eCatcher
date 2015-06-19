.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
invoke-static {}, Lcom/spotify/mobile/android/provider/t;->a()Landroid/net/Uri;
move-result-object v2
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v3, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->i:[Ljava/lang/String;
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
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->a()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I
move-result v0
if-nez v0, :cond_11
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->d(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;)V
:cond_11
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->f(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;)Lcom/spotify/mobile/android/util/tracking/n;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->d()Z
move-result v0
if-nez v0, :cond_26
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;->f(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionRadioFragment;)Lcom/spotify/mobile/android/util/tracking/n;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->b()V
:cond_26
return-void
.end method