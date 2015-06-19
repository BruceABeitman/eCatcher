.class  Lcom/twidroid/activity/ad;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/activity/UberSocialClearCache;
.method private constructor <init>(Lcom/twidroid/activity/UberSocialClearCache;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/ad;->a:Lcom/twidroid/activity/UberSocialClearCache;
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/twidroid/activity/UberSocialClearCache;Lcom/twidroid/activity/UberSocialClearCache$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/activity/ad;-><init>(Lcom/twidroid/activity/UberSocialClearCache;)V
return-void
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/twidroid/activity/ad;->a([Ljava/lang/Void;)Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
.registers 5
const-string v0, "TwidroydClearCache"
const-string v1, "Clear Cache Started"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:try_start_7
iget-object v0, p0, Lcom/twidroid/activity/ad;->a:Lcom/twidroid/activity/UberSocialClearCache;
invoke-static {v0}, Lcom/twidroid/UberSocialApplication;->a(Landroid/app/Activity;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-static {}, Lcom/twidroid/ui/a;->a()V
:try_start_14
:try_end_14
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_49
new-instance v0, Ljava/io/File;
sget-object v2, Lcom/twidroid/net/a/c;->l:Ljava/lang/String;
invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v0}, Lcom/twidroid/activity/ad;->a(Ljava/io/File;)V
:try_end_1e
.catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_44
:goto_1e
:try_start_1e
new-instance v0, Ljava/io/File;
invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v0}, Lcom/twidroid/activity/ad;->a(Ljava/io/File;)V
:try_start_2a
:try_end_2a
.catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2a} :catch_4e
:goto_2a
invoke-static {}, Lcom/twidroid/d/v;->r()Z
iget-object v0, p0, Lcom/twidroid/activity/ad;->a:Lcom/twidroid/activity/UberSocialClearCache;
invoke-static {v0}, Lcom/twidroid/UberSocialApplication;->a(Landroid/app/Activity;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->k()Lcom/twidroid/net/b/a;
move-result-object v0
if-eqz v0, :cond_3f
invoke-virtual {v0}, Lcom/twidroid/net/b/a;->c()V
invoke-virtual {v0}, Lcom/twidroid/net/b/a;->b()V
:cond_3f
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->u()V
:goto_42
const/4 v0, 0x0
return-object v0
:catch_44
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:try_end_48
.catch Ljava/lang/Exception; {:try_start_2a .. :try_end_48} :catch_49
goto :goto_1e
:catch_49
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_42
:catch_4e
move-exception v0
:try_start_4f
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:try_end_52
.catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_49
goto :goto_2a
.end method
.method protected a()V
.registers 3
iget-object v0, p0, Lcom/twidroid/activity/ad;->a:Lcom/twidroid/activity/UberSocialClearCache;
const v1, 0x7f090155
invoke-virtual {v0, v1}, Lcom/twidroid/activity/UberSocialClearCache;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
return-void
.end method
.method public a(Ljava/io/File;)V
.registers 8
invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v1
if-eqz v1, :cond_3a
array-length v2, v1
const/4 v0, 0x0
:goto_8
if-ge v0, v2, :cond_3a
aget-object v3, v1, v0
invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z
move-result v4
if-eqz v4, :cond_18
invoke-virtual {p0, v3}, Lcom/twidroid/activity/ad;->a(Ljava/io/File;)V
:goto_15
:cond_15
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_18
invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v4
const-string v5, ".nomedia"
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_15
invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;
move-result-object v4
invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {}, Lcom/twidroid/d/v;->e()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_15
invoke-virtual {v3}, Ljava/io/File;->delete()Z
goto :goto_15
:cond_3a
return-void
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/twidroid/activity/ad;->a(Ljava/lang/Void;)V
return-void
.end method
.method protected a(Ljava/lang/Void;)V
.registers 5
iget-object v0, p0, Lcom/twidroid/activity/ad;->a:Lcom/twidroid/activity/UberSocialClearCache;
invoke-virtual {v0}, Lcom/twidroid/activity/UberSocialClearCache;->getBaseContext()Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/ad;->a:Lcom/twidroid/activity/UberSocialClearCache;
const v2, 0x7f0c014e
invoke-virtual {v1, v2}, Lcom/twidroid/activity/UberSocialClearCache;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
const/4 v2, 0x1
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
iget-object v0, p0, Lcom/twidroid/activity/ad;->a:Lcom/twidroid/activity/UberSocialClearCache;
invoke-virtual {v0}, Lcom/twidroid/activity/UberSocialClearCache;->finish()V
return-void
.end method