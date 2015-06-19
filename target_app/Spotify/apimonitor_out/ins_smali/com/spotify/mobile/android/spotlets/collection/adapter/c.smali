.class public final Lcom/spotify/mobile/android/spotlets/collection/adapter/c;
.super Lcom/spotify/music/spotlets/radio/a/a;
.source "SourceFile"
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
.registers 8
const/4 v4, 0x1
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->aO:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->b:Lcom/spotify/mobile/android/util/ViewUri$SubView;
move-object v0, p0
move-object v1, p1
move v5, v4
invoke-direct/range {v0 .. v5}, Lcom/spotify/music/spotlets/radio/a/a;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;ZZ)V
return-void
.end method
.method protected final a(Landroid/view/View;)V
.registers 8
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/music/spotlets/radio/model/a;
const-class v1, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/c;->getContext()Landroid/content/Context;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->aO:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->O:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-virtual {v3}, Lcom/spotify/mobile/android/util/ViewUri$SubView;->toString()Ljava/lang/String;
move-result-object v3
sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aV:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-interface {v0}, Lcom/spotify/music/spotlets/radio/model/a;->getSeedUris()[Ljava/lang/String;
move-result-object v0
const/4 v5, 0x0
aget-object v0, v0, v5
const/4 v5, 0x0
invoke-static {v3, v4, v0, v5}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v0
invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
invoke-super {p0, p1}, Lcom/spotify/music/spotlets/radio/a/a;->a(Landroid/view/View;)V
return-void
.end method