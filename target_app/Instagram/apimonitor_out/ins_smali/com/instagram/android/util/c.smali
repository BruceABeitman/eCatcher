.class public final Lcom/instagram/android/util/c;
.super Ljava/lang/Object;
.source "FragmentNavigatorUtil.java"
.implements Lcom/instagram/n/f/e;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/support/v4/app/s;)Lcom/instagram/base/a/a/a;
.registers 5
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "RecommendedUserFragment.IS_AYML_ENABLED"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
new-instance v1, Lcom/instagram/base/a/a/a;
invoke-direct {v1, p1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
new-instance v2, Lcom/instagram/android/fragment/dr;
invoke-direct {v2}, Lcom/instagram/android/fragment/dr;-><init>()V
invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/support/v4/app/s;Lcom/instagram/feed/d/l;ZZZ)Lcom/instagram/base/a/a/a;
.registers 10
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "CommentThreadFragment.MEDIA_ID"
invoke-virtual {p2}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "CommentThreadFragment.SHOW_KEYBOARD"
invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v1, "CommentThreadFragment.IS_SPONSORED"
invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v1, "CommentThreadFragment.IS_ORGANIC"
invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v1, "CommentThreadFragment.IS_SELF_MEDIA"
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;
move-result-object v2
invoke-virtual {p2}, Lcom/instagram/feed/d/l;->b()Lcom/instagram/user/c/a;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/instagram/user/c/a;->equals(Ljava/lang/Object;)Z
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
new-instance v1, Lcom/instagram/base/a/a/a;
invoke-direct {v1, p1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
new-instance v2, Lcom/instagram/android/feed/comments/a/a;
invoke-direct {v2}, Lcom/instagram/android/feed/comments/a/a;-><init>()V
invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;
.registers 4
const/4 v0, 0x1
invoke-virtual {p0, p1, p2, v0}, Lcom/instagram/android/util/c;->a(Landroid/support/v4/app/s;Ljava/lang/String;Z)Lcom/instagram/base/a/a/a;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/support/v4/app/s;Ljava/lang/String;Z)Lcom/instagram/base/a/a/a;
.registers 7
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "UserDetailFragment.EXTRA_USER_ID"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "UserDetailFragment.EXTRA_SHOW_USER_REQUEST_ROW"
invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
new-instance v1, Lcom/instagram/base/a/a/a;
invoke-direct {v1, p1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
new-instance v2, Lcom/instagram/android/fragment/fb;
invoke-direct {v2}, Lcom/instagram/android/fragment/fb;-><init>()V
invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/support/v4/app/s;Ljava/lang/String;ZZ)Lcom/instagram/base/a/a/a;
.registers 8
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "mediaId"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "scroll"
invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v1, "opened_via_push"
invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
new-instance v1, Lcom/instagram/base/a/a/a;
invoke-direct {v1, p1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
new-instance v2, Lcom/instagram/android/directshare/d/c;
invoke-direct {v2}, Lcom/instagram/android/directshare/d/c;-><init>()V
invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/support/v4/app/s;Ljava/lang/String;ZZZ)Lcom/instagram/base/a/a/a;
.registers 9
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string v0, "com.instagram.android.fragment.ARGUMENTS_KEY_EXTRA_MEDIA_ID"
invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "com.instagram.android.fragment.ARGUMENTS_KEY_LOAD_FROM_NETWORK"
invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v0, "com.instagram.android.fragment.KEY_EXPLORE_ATTRIBUTION_VISIBLE"
invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v0, "com.instagram.android.fragment.ARGUMENTS_IS_FOLLOW_BUTTON_ELIGIBLE_NEXT"
invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
sget v0, Lcom/facebook/av;->layout_container_main:I
invoke-virtual {p1, v0}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;
move-result-object v0
if-eqz v0, :cond_30
instance-of v2, v0, Lcom/instagram/common/analytics/e;
if-eqz v2, :cond_30
check-cast v0, Lcom/instagram/common/analytics/e;
invoke-interface {v0}, Lcom/instagram/common/analytics/e;->i_()Ljava/lang/String;
move-result-object v0
const-string v2, "com.instagram.android.fragment.KEY_REFERRER"
invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_30
new-instance v0, Lcom/instagram/base/a/a/a;
invoke-direct {v0, p1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
new-instance v2, Lcom/instagram/android/fragment/ex;
invoke-direct {v2}, Lcom/instagram/android/fragment/ex;-><init>()V
invoke-virtual {v0, v2, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;
move-result-object v0
return-object v0
.end method
.method public final b(Landroid/support/v4/app/s;)Lcom/instagram/base/a/a/a;
.registers 4
sget-object v0, Lcom/instagram/l/c;->a:Lcom/instagram/l/a;
invoke-virtual {v0}, Lcom/instagram/l/a;->b()Z
move-result v0
if-eqz v0, :cond_17
new-instance v0, Lcom/instagram/base/a/a/a;
invoke-direct {v0, p1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
new-instance v1, Lcom/instagram/android/fragment/cc;
invoke-direct {v1}, Lcom/instagram/android/fragment/cc;-><init>()V
invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;
move-result-object v0
:goto_16
return-object v0
:cond_17
new-instance v0, Lcom/instagram/base/a/a/a;
invoke-direct {v0, p1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
new-instance v1, Lcom/instagram/android/fragment/bo;
invoke-direct {v1}, Lcom/instagram/android/fragment/bo;-><init>()V
invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;
move-result-object v0
goto :goto_16
.end method
.method public final b(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;
.registers 6
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "UserDetailFragment.EXTRA_USER_NAME"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/instagram/base/a/a/a;
invoke-direct {v1, p1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
new-instance v2, Lcom/instagram/android/fragment/fb;
invoke-direct {v2}, Lcom/instagram/android/fragment/fb;-><init>()V
invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;
move-result-object v0
return-object v0
.end method
.method public final b(Landroid/support/v4/app/s;Ljava/lang/String;Z)Lcom/instagram/base/a/a/a;
.registers 10
const/4 v4, 0x0
const/4 v5, 0x1
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v3, p3
invoke-virtual/range {v0 .. v5}, Lcom/instagram/android/util/c;->a(Landroid/support/v4/app/s;Ljava/lang/String;ZZZ)Lcom/instagram/base/a/a/a;
move-result-object v0
return-object v0
.end method
.method public final c(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, v0}, Lcom/instagram/android/util/c;->b(Landroid/support/v4/app/s;Ljava/lang/String;Z)Lcom/instagram/base/a/a/a;
move-result-object v0
return-object v0
.end method
.method public final d(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;
.registers 6
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "HashtagFeedFragment.ARGUMENT_TAG_NAME"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/instagram/base/a/a/a;
invoke-direct {v1, p1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
new-instance v2, Lcom/instagram/android/fragment/cg;
invoke-direct {v2}, Lcom/instagram/android/fragment/cg;-><init>()V
invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;
move-result-object v0
return-object v0
.end method