.class final Lcom/instagram/android/fragment/cs;
.super Lcom/instagram/feed/a/a;
.source "LocationFeedFragment.java"
.field final synthetic a:Lcom/instagram/android/fragment/cr;
.method constructor <init>(Lcom/instagram/android/fragment/cr;Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;Lcom/instagram/feed/f/a;ILcom/instagram/api/j/f;)V
.registers 13
iput-object p1, p0, Lcom/instagram/android/fragment/cs;->a:Lcom/instagram/android/fragment/cr;
move-object v0, p0
move-object v1, p2
move-object v2, p3
move-object v3, p4
move v4, p5
move-object v5, p6
invoke-direct/range {v0 .. v5}, Lcom/instagram/feed/a/a;-><init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;Lcom/instagram/feed/f/a;ILcom/instagram/api/j/f;)V
return-void
.end method
.method protected final e()Ljava/lang/String;
.registers 5
const-string v0, "feed/location/%s/"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/instagram/android/fragment/cs;->a:Lcom/instagram/android/fragment/cr;
invoke-static {v3}, Lcom/instagram/android/fragment/cr;->a(Lcom/instagram/android/fragment/cr;)Lcom/instagram/venue/model/Venue;
move-result-object v3
invoke-virtual {v3}, Lcom/instagram/venue/model/Venue;->b()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method