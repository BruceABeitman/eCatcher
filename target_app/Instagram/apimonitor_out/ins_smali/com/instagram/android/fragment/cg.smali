.class public final Lcom/instagram/android/fragment/cg;
.super Lcom/instagram/android/fragment/a;
.source "HashtagFeedFragment.java"
.field private ae:Landroid/content/BroadcastReceiver;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/instagram/android/fragment/a;-><init>()V
new-instance v0, Lcom/instagram/android/fragment/ch;
invoke-direct {v0, p0}, Lcom/instagram/android/fragment/ch;-><init>(Lcom/instagram/android/fragment/cg;)V
iput-object v0, p0, Lcom/instagram/android/fragment/cg;->ae:Landroid/content/BroadcastReceiver;
return-void
.end method
.method private static a(Landroid/content/Context;Landroid/support/v4/app/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 8
new-instance v0, Lcom/instagram/ui/dialog/b;
invoke-direct {v0, p0}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/az;->content_advisory:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->show_posts:I
new-instance v2, Lcom/instagram/android/fragment/cj;
invoke-direct {v2, p3, p1, p4}, Lcom/instagram/android/fragment/cj;-><init>(Ljava/lang/String;Landroid/support/v4/app/s;Ljava/lang/String;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->cancel:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/app/s;Ljava/lang/String;)V
.registers 5
invoke-static {p0, p1}, Lcom/instagram/android/k/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_a
invoke-static {p1, p2, p3}, Lcom/instagram/android/fragment/cg;->b(Ljava/lang/String;Landroid/support/v4/app/s;Ljava/lang/String;)V
:goto_9
return-void
:cond_a
invoke-static {p0, p2, v0, p1, p3}, Lcom/instagram/android/fragment/cg;->a(Landroid/content/Context;Landroid/support/v4/app/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_9
.end method
.method static synthetic a(Ljava/lang/String;Landroid/support/v4/app/s;Ljava/lang/String;)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/instagram/android/fragment/cg;->b(Ljava/lang/String;Landroid/support/v4/app/s;Ljava/lang/String;)V
return-void
.end method
.method private ao()Lcom/instagram/android/feed/a/j;
.registers 3
new-instance v0, Lcom/instagram/android/feed/a/j;
invoke-virtual {p0}, Lcom/instagram/android/fragment/cg;->Y()I
move-result v1
invoke-direct {v0, p0, v1}, Lcom/instagram/android/feed/a/j;-><init>(Lcom/instagram/android/fragment/a;I)V
return-object v0
.end method
.method private static b(Ljava/lang/String;Landroid/support/v4/app/s;Ljava/lang/String;)V
.registers 4
invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;
move-result-object v0
invoke-interface {v0, p1, p0}, Lcom/instagram/n/f/e;->d(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/instagram/base/a/a/a;->b(Ljava/lang/String;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
return-void
.end method
.method public final G()V
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/fragment/cg;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/fragment/cg;->ae:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V
invoke-super {p0}, Lcom/instagram/android/fragment/a;->G()V
return-void
.end method
.method protected final synthetic X()Lcom/instagram/android/feed/a/a;
.registers 2
invoke-direct {p0}, Lcom/instagram/android/fragment/cg;->ao()Lcom/instagram/android/feed/a/j;
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
new-instance v0, Lcom/instagram/android/fragment/ci;
invoke-virtual {p0}, Lcom/instagram/android/fragment/cg;->ad()Lcom/instagram/feed/f/a;
move-result-object v4
sget v5, Lcom/facebook/av;->request_id_explore:I
move-object v1, p0
move-object v2, p0
move-object v3, p0
move-object v6, p1
invoke-direct/range {v0 .. v6}, Lcom/instagram/android/fragment/ci;-><init>(Lcom/instagram/android/fragment/cg;Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;Lcom/instagram/feed/f/a;ILcom/instagram/api/j/f;)V
return-object v0
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 7
invoke-super {p0, p1}, Lcom/instagram/android/fragment/a;->a(Landroid/os/Bundle;)V
new-instance v1, Lcom/instagram/android/h/c;
invoke-virtual {p0}, Lcom/instagram/android/fragment/cg;->j()Landroid/os/Bundle;
move-result-object v0
const-string v2, "HashtagFeedFragment.ARGUMENT_TAG_NAME"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lcom/instagram/android/h/c;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/instagram/android/fragment/cg;->n()Landroid/content/Context;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/fragment/cg;->y()Landroid/support/v4/app/an;
move-result-object v2
invoke-virtual {v1, v0, v2}, Lcom/instagram/android/h/c;->a(Landroid/content/Context;Landroid/support/v4/app/an;)V
invoke-virtual {p0}, Lcom/instagram/android/fragment/cg;->W()Lcom/instagram/android/feed/a/a;
move-result-object v0
check-cast v0, Lcom/instagram/android/feed/a/j;
invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/j;->a(Ljava/lang/Object;)V
invoke-virtual {p0}, Lcom/instagram/android/fragment/cg;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v0
iget-object v2, p0, Lcom/instagram/android/fragment/cg;->ae:Landroid/content/BroadcastReceiver;
new-instance v3, Landroid/content/IntentFilter;
invoke-virtual {v1}, Lcom/instagram/android/h/c;->a()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/instagram/android/h/c;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v2, v3}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
invoke-virtual {v1}, Lcom/instagram/android/h/c;->a()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/h/a/a;->a(Ljava/lang/String;)V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/cg;->c(Z)V
return-void
.end method
.method public final a(Lcom/instagram/a/a;)V
.registers 5
invoke-super {p0, p1}, Lcom/instagram/android/fragment/a;->a(Lcom/instagram/a/a;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "#"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/instagram/android/fragment/cg;->j()Landroid/os/Bundle;
move-result-object v1
const-string v2, "HashtagFeedFragment.ARGUMENT_TAG_NAME"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(Ljava/lang/String;)V
return-void
.end method
.method public final a(Ljava/util/Map;)V
.registers 5
const-string v0, "src"
const-string v1, "hashtag"
invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "q"
invoke-virtual {p0}, Lcom/instagram/android/fragment/cg;->j()Landroid/os/Bundle;
move-result-object v1
const-string v2, "HashtagFeedFragment.ARGUMENT_TAG_NAME"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "feed_hashtag"
return-object v0
.end method