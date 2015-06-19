.class public final Lcom/spotify/mobile/android/spotlets/socialchart/a;
.super Landroid/support/v4/app/x;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.field private Y:Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;
.field private i:Lcom/spotify/mobile/android/spotlets/socialchart/b/a;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/x;-><init>()V
return-void
.end method
.method public static b(Landroid/content/Intent;)Lcom/spotify/mobile/android/spotlets/socialchart/a;
.registers 4
const-string v0, "spotify:internal:social_chart:listeners:track"
invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;)V
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string v2, "track"
invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
new-instance v0, Lcom/spotify/mobile/android/spotlets/socialchart/a;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/a;-><init>()V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/socialchart/a;->c_(Landroid/os/Bundle;)V
return-object v0
.end method
.method public final D()Landroid/support/v4/app/Fragment;
.registers 1
return-object p0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 6
const v0, 0x7f030086
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
return-object v0
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
const-string v0, ""
return-object v0
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/x;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/a;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "track"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a;->Y:Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a;->Y:Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;)V
new-instance v0, Lcom/spotify/mobile/android/spotlets/socialchart/b/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/socialchart/b/a;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a;->i:Lcom/spotify/mobile/android/spotlets/socialchart/b/a;
return-void
.end method
.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 9
invoke-super {p0, p1, p2}, Landroid/support/v4/app/x;->a(Landroid/view/View;Landroid/os/Bundle;)V
new-instance v0, Lcom/spotify/mobile/android/spotlets/socialchart/a/b;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/socialchart/a/b;-><init>(Landroid/content/Context;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a;->Y:Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->getInfluencers()[Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/socialchart/a/b;->a([Ljava/lang/Object;)V
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/socialchart/a;->a(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a;->Y:Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->getInfluencers()[Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;
move-result-object v0
array-length v0, v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e001d
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;
invoke-interface {v0, p0, v1}, Lcom/spotify/mobile/android/ui/activity/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
return-void
.end method
.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
.registers 9
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;->getUri()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/spotlets/socialchart/a;->a(Landroid/content/Intent;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/a;->i:Lcom/spotify/mobile/android/spotlets/socialchart/b/a;
long-to-int v2, p4
invoke-virtual {v1, v0, v2}, Lcom/spotify/mobile/android/spotlets/socialchart/b/a;->a(Lcom/spotify/mobile/android/spotlets/socialchart/model/InfluencerModel;I)V
return-void
.end method