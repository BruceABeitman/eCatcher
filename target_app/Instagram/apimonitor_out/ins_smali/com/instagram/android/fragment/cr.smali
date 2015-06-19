.class public final Lcom/instagram/android/fragment/cr;
.super Lcom/instagram/android/fragment/a;
.source "LocationFeedFragment.java"
.field private ae:Lcom/instagram/venue/model/Venue;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/fragment/a;-><init>()V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/fragment/cr;)Lcom/instagram/venue/model/Venue;
.registers 2
iget-object v0, p0, Lcom/instagram/android/fragment/cr;->ae:Lcom/instagram/venue/model/Venue;
return-object v0
.end method
.method private ao()Lcom/instagram/android/feed/a/k;
.registers 3
new-instance v0, Lcom/instagram/android/feed/a/k;
invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->Y()I
move-result v1
invoke-direct {v0, p0, v1}, Lcom/instagram/android/feed/a/k;-><init>(Lcom/instagram/android/fragment/a;I)V
return-object v0
.end method
.method protected final synthetic X()Lcom/instagram/android/feed/a/a;
.registers 2
invoke-direct {p0}, Lcom/instagram/android/fragment/cr;->ao()Lcom/instagram/android/feed/a/k;
move-result-object v0
return-object v0
.end method
.method protected final Y()I
.registers 2
sget v0, Lcom/instagram/android/feed/a/h;->b:I
return v0
.end method
.method protected final a(Lcom/instagram/api/j/f;)Lcom/instagram/feed/a/a;
.registers 9
new-instance v0, Lcom/instagram/android/fragment/cs;
invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->ad()Lcom/instagram/feed/f/a;
move-result-object v4
sget v5, Lcom/facebook/av;->request_id_explore:I
move-object v1, p0
move-object v2, p0
move-object v3, p0
move-object v6, p1
invoke-direct/range {v0 .. v6}, Lcom/instagram/android/fragment/cs;-><init>(Lcom/instagram/android/fragment/cr;Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;Lcom/instagram/feed/f/a;ILcom/instagram/api/j/f;)V
return-object v0
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1}, Lcom/instagram/android/fragment/a;->a(Landroid/os/Bundle;)V
if-eqz p1, :cond_1f
const-string v0, "LocationFeedFragment.SAVED_INSTANCE_STATE_VENUE"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/instagram/venue/model/Venue;
iput-object v0, p0, Lcom/instagram/android/fragment/cr;->ae:Lcom/instagram/venue/model/Venue;
:goto_f
invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->W()Lcom/instagram/android/feed/a/a;
move-result-object v0
check-cast v0, Lcom/instagram/android/feed/a/k;
iget-object v1, p0, Lcom/instagram/android/fragment/cr;->ae:Lcom/instagram/venue/model/Venue;
invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/k;->a(Ljava/lang/Object;)V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/cr;->c(Z)V
return-void
:cond_1f
invoke-static {}, Lcom/instagram/venue/model/b;->a()Lcom/instagram/venue/model/b;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/fragment/cr;->j()Landroid/os/Bundle;
move-result-object v1
const-string v2, "LocationFeedFragment.ARGUMENT_LOCATION_VENUE_ID"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/venue/model/b;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/venue/model/Venue;
iput-object v0, p0, Lcom/instagram/android/fragment/cr;->ae:Lcom/instagram/venue/model/Venue;
goto :goto_f
.end method
.method public final a(Lcom/instagram/a/a;)V
.registers 3
invoke-super {p0, p1}, Lcom/instagram/android/fragment/a;->a(Lcom/instagram/a/a;)V
iget-object v0, p0, Lcom/instagram/android/fragment/cr;->ae:Lcom/instagram/venue/model/Venue;
invoke-virtual {v0}, Lcom/instagram/venue/model/Venue;->c()Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(Ljava/lang/String;)V
return-void
.end method
.method public final a(Ljava/util/Map;)V
.registers 4
const-string v0, "src"
const-string v1, "location"
invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public final e(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/instagram/android/fragment/a;->e(Landroid/os/Bundle;)V
const-string v0, "LocationFeedFragment.SAVED_INSTANCE_STATE_VENUE"
iget-object v1, p0, Lcom/instagram/android/fragment/cr;->ae:Lcom/instagram/venue/model/Venue;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
return-void
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "feed_location"
return-object v0
.end method