.class final Lcom/instagram/android/fragment/dj;
.super Lcom/instagram/feed/a/a;
.source "MainFeedFragment.java"
.field final synthetic a:Lcom/instagram/android/fragment/ct;
.field private b:Ljava/io/File;
.method constructor <init>(Lcom/instagram/android/fragment/ct;Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;Lcom/instagram/feed/f/a;ILcom/instagram/api/j/f;)V
.registers 13
iput-object p1, p0, Lcom/instagram/android/fragment/dj;->a:Lcom/instagram/android/fragment/ct;
move-object v0, p0
move-object v1, p2
move-object v2, p3
move-object v3, p4
move v4, p5
move-object v5, p6
invoke-direct/range {v0 .. v5}, Lcom/instagram/feed/a/a;-><init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;Lcom/instagram/feed/f/a;ILcom/instagram/api/j/f;)V
return-void
.end method
.method public final a(Lch/boye/httpclientandroidlib/HttpResponse;)V
.registers 5
invoke-super {p0, p1}, Lcom/instagram/feed/a/a;->a(Lch/boye/httpclientandroidlib/HttpResponse;)V
const-string v0, "X-QE-Sticky-Share"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
if-eqz v0, :cond_1f
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v1
const-string v2, "enabled"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_20
invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/instagram/k/b/a;->h(Z)V
:cond_1f
:goto_1f
return-void
:cond_20
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v0
const-string v1, "disabled"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1f
invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/k/b/a;->h(Z)V
goto :goto_1f
.end method
.method protected final a(Lcom/instagram/common/a/c/b;)V
.registers 4
invoke-super {p0, p1}, Lcom/instagram/feed/a/a;->a(Lcom/instagram/common/a/c/b;)V
invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/k/b/a;->D()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_20
invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/k/b/a;->E()Z
move-result v1
if-nez v1, :cond_20
const-string v1, "last_unseen_ad_id"
invoke-virtual {p1, v1, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_20
return-void
.end method
.method public final a(Ljava/lang/String;Lcom/fasterxml/jackson/a/l;Lcom/instagram/api/j/q;)Z
.registers 11
const/4 v0, 0x1
const-string v1, "survey"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_18
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-static {p3}, Lcom/instagram/android/fragment/dj;->b(Lcom/instagram/api/j/q;)Lcom/instagram/feed/a/b;
move-result-object v1
invoke-static {p2}, Lcom/instagram/feed/survey/f;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/survey/b;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/instagram/feed/a/b;->a(Lcom/instagram/feed/survey/b;)V
:goto_17
return v0
:cond_18
const-string v1, "user_is_needy"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2f
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-static {p3}, Lcom/instagram/android/fragment/dj;->b(Lcom/instagram/api/j/q;)Lcom/instagram/feed/a/b;
move-result-object v1
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getBooleanValue()Z
move-result v2
invoke-virtual {v1, v2}, Lcom/instagram/feed/a/b;->b(Z)V
goto :goto_17
:cond_2f
const-string v1, "megaphone"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_118
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-static {p3}, Lcom/instagram/android/fragment/dj;->b(Lcom/instagram/api/j/q;)Lcom/instagram/feed/a/b;
move-result-object v1
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
:goto_43
:cond_43
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v3
sget-object v4, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;
if-eq v3, v4, :cond_113
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v3
const-string v4, "follow_destination"
invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_6e
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-static {p2}, Lcom/instagram/feed/f/c;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/f/c;
move-result-object v3
sget-object v4, Lcom/instagram/feed/f/d;->b:Lcom/instagram/feed/f/d;
invoke-virtual {v3, v4}, Lcom/instagram/feed/f/c;->a(Lcom/instagram/feed/f/d;)V
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v3, p0, Lcom/instagram/android/fragment/dj;->a:Lcom/instagram/android/fragment/ct;
sget-object v4, Lcom/instagram/feed/f/d;->b:Lcom/instagram/feed/f/d;
invoke-virtual {v3, v4}, Lcom/instagram/android/fragment/ct;->a(Lcom/instagram/feed/f/d;)V
goto :goto_43
:cond_6e
const-string v4, "feed_aysf"
invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_96
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-static {p2}, Lcom/instagram/feed/f/c;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/f/c;
move-result-object v3
sget-object v4, Lcom/instagram/feed/f/d;->c:Lcom/instagram/feed/f/d;
invoke-virtual {v3, v4}, Lcom/instagram/feed/f/c;->a(Lcom/instagram/feed/f/d;)V
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v3, p0, Lcom/instagram/android/fragment/dj;->a:Lcom/instagram/android/fragment/ct;
invoke-virtual {v3}, Lcom/instagram/android/fragment/ct;->ap()Ljava/util/HashSet;
move-result-object v3
invoke-virtual {v3}, Ljava/util/HashSet;->clear()V
iget-object v3, p0, Lcom/instagram/android/fragment/dj;->a:Lcom/instagram/android/fragment/ct;
sget-object v4, Lcom/instagram/feed/f/d;->c:Lcom/instagram/feed/f/d;
invoke-virtual {v3, v4}, Lcom/instagram/android/fragment/ct;->a(Lcom/instagram/feed/f/d;)V
goto :goto_43
:cond_96
const-string v4, "pepper"
invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_10c
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
iget-object v3, p0, Lcom/instagram/android/fragment/dj;->d:Landroid/content/Context;
invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v3
invoke-static {v3}, Lcom/instagram/common/u/d/a;->a(Landroid/content/pm/PackageManager;)Z
move-result v3
if-nez v3, :cond_cb
iget-object v3, p0, Lcom/instagram/android/fragment/dj;->a:Lcom/instagram/android/fragment/ct;
invoke-static {v3}, Lcom/instagram/android/fragment/ct;->b(Lcom/instagram/android/fragment/ct;)Lcom/instagram/common/a/a/q;
move-result-object v3
new-instance v4, Lcom/instagram/android/c/a/f;
sget-object v5, Lcom/instagram/feed/f/d;->a:Lcom/instagram/feed/f/d;
sget-object v6, Lcom/instagram/android/c/a/g;->d:Lcom/instagram/android/c/a/g;
invoke-direct {v4, v5, v6}, Lcom/instagram/android/c/a/f;-><init>(Lcom/instagram/feed/f/d;Lcom/instagram/android/c/a/g;)V
const-string v5, "play_store_unavailable"
invoke-virtual {v4, v5}, Lcom/instagram/android/c/a/f;->a(Ljava/lang/String;)Lcom/instagram/android/c/a/f;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/instagram/common/a/a/q;->a(Lcom/instagram/common/a/a/a;)V
goto/16 :goto_43
:cond_cb
iget-object v3, p0, Lcom/instagram/android/fragment/dj;->d:Landroid/content/Context;
invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v3
const-string v4, "com.instagram.bolt"
invoke-static {v3, v4}, Lcom/instagram/common/u/d/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_f7
iget-object v3, p0, Lcom/instagram/android/fragment/dj;->a:Lcom/instagram/android/fragment/ct;
invoke-static {v3}, Lcom/instagram/android/fragment/ct;->b(Lcom/instagram/android/fragment/ct;)Lcom/instagram/common/a/a/q;
move-result-object v3
new-instance v4, Lcom/instagram/android/c/a/f;
sget-object v5, Lcom/instagram/feed/f/d;->a:Lcom/instagram/feed/f/d;
sget-object v6, Lcom/instagram/android/c/a/g;->d:Lcom/instagram/android/c/a/g;
invoke-direct {v4, v5, v6}, Lcom/instagram/android/c/a/f;-><init>(Lcom/instagram/feed/f/d;Lcom/instagram/android/c/a/g;)V
const-string v5, "pepper_installed"
invoke-virtual {v4, v5}, Lcom/instagram/android/c/a/f;->a(Ljava/lang/String;)Lcom/instagram/android/c/a/f;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/instagram/common/a/a/q;->a(Lcom/instagram/common/a/a/a;)V
goto/16 :goto_43
:cond_f7
invoke-static {p2}, Lcom/instagram/feed/f/c;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/f/c;
move-result-object v3
sget-object v4, Lcom/instagram/feed/f/d;->a:Lcom/instagram/feed/f/d;
invoke-virtual {v3, v4}, Lcom/instagram/feed/f/c;->a(Lcom/instagram/feed/f/d;)V
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v3, p0, Lcom/instagram/android/fragment/dj;->a:Lcom/instagram/android/fragment/ct;
sget-object v4, Lcom/instagram/feed/f/d;->a:Lcom/instagram/feed/f/d;
invoke-virtual {v3, v4}, Lcom/instagram/android/fragment/ct;->a(Lcom/instagram/feed/f/d;)V
goto/16 :goto_43
:cond_10c
if-eqz v3, :cond_43
invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
goto/16 :goto_43
:cond_113
invoke-virtual {v1, v2}, Lcom/instagram/feed/a/b;->b(Ljava/util/List;)V
goto/16 :goto_17
:cond_118
invoke-super {p0, p1, p2, p3}, Lcom/instagram/feed/a/a;->a(Ljava/lang/String;Lcom/fasterxml/jackson/a/l;Lcom/instagram/api/j/q;)Z
move-result v0
goto/16 :goto_17
.end method
.method protected final e()Ljava/lang/String;
.registers 2
const-string v0, "feed/timeline/"
return-object v0
.end method
.method public final g()Ljava/io/File;
.registers 2
iget-object v0, p0, Lcom/instagram/android/fragment/dj;->b:Ljava/io/File;
if-nez v0, :cond_e
invoke-virtual {p0}, Lcom/instagram/android/fragment/dj;->l()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/instagram/android/fragment/ct;->b(Landroid/content/Context;)Ljava/io/File;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/fragment/dj;->b:Ljava/io/File;
:cond_e
iget-object v0, p0, Lcom/instagram/android/fragment/dj;->b:Ljava/io/File;
return-object v0
.end method