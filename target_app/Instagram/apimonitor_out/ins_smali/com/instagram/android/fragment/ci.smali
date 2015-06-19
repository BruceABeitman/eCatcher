.class final Lcom/instagram/android/fragment/ci;
.super Lcom/instagram/feed/a/a;
.source "HashtagFeedFragment.java"
.field final synthetic a:Lcom/instagram/android/fragment/cg;
.method constructor <init>(Lcom/instagram/android/fragment/cg;Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;Lcom/instagram/feed/f/a;ILcom/instagram/api/j/f;)V
.registers 13
iput-object p1, p0, Lcom/instagram/android/fragment/ci;->a:Lcom/instagram/android/fragment/cg;
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
iget-object v0, p0, Lcom/instagram/android/fragment/ci;->a:Lcom/instagram/android/fragment/cg;
invoke-virtual {v0}, Lcom/instagram/android/fragment/cg;->j()Landroid/os/Bundle;
move-result-object v0
const-string v1, "HashtagFeedFragment.ARGUMENT_TAG_NAME"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "feed/tag/%s/"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
aput-object v0, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method