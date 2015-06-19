.class public final Lcom/instagram/android/fragment/ex;
.super Lcom/instagram/android/fragment/ew;
.source "SingleMediaFeedFragment.java"
.field private ae:Ljava/lang/String;
.field private af:Z
.field private ag:Ljava/lang/String;
.field private ah:Z
.field private ai:Lcom/instagram/model/a/a;
.field private aj:Landroid/content/IntentFilter;
.field private ak:Z
.field private final al:Landroid/content/BroadcastReceiver;
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Lcom/instagram/android/fragment/ew;-><init>()V
iput-object v1, p0, Lcom/instagram/android/fragment/ex;->ae:Ljava/lang/String;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/fragment/ex;->af:Z
iput-object v1, p0, Lcom/instagram/android/fragment/ex;->ag:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/android/fragment/ex;->ah:Z
new-instance v0, Lcom/instagram/android/fragment/ey;
invoke-direct {v0, p0}, Lcom/instagram/android/fragment/ey;-><init>(Lcom/instagram/android/fragment/ex;)V
iput-object v0, p0, Lcom/instagram/android/fragment/ex;->al:Landroid/content/BroadcastReceiver;
return-void
.end method
.method static synthetic a(Lcom/instagram/android/fragment/ex;Lcom/instagram/model/a/a;)Lcom/instagram/model/a/a;
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/ex;->ai:Lcom/instagram/model/a/a;
return-object p1
.end method
.method static synthetic a(Lcom/instagram/android/fragment/ex;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/android/fragment/ex;->ae:Ljava/lang/String;
return-object v0
.end method
.method public final E()V
.registers 4
invoke-super {p0}, Lcom/instagram/android/fragment/ew;->E()V
invoke-virtual {p0}, Lcom/instagram/android/fragment/ex;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/fragment/ex;->al:Landroid/content/BroadcastReceiver;
iget-object v2, p0, Lcom/instagram/android/fragment/ex;->aj:Landroid/content/IntentFilter;
invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
return-void
.end method
.method public final F()V
.registers 3
invoke-super {p0}, Lcom/instagram/android/fragment/ew;->F()V
invoke-virtual {p0}, Lcom/instagram/android/fragment/ex;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/fragment/ex;->al:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/android/fragment/ex;->af:Z
return-void
.end method
.method protected final a(Lcom/instagram/api/j/f;)Lcom/instagram/feed/a/a;
.registers 8
new-instance v0, Lcom/instagram/android/fragment/ez;
invoke-virtual {p0}, Lcom/instagram/android/fragment/ex;->ad()Lcom/instagram/feed/f/a;
move-result-object v4
move-object v1, p0
move-object v2, p0
move-object v3, p0
move-object v5, p1
invoke-direct/range {v0 .. v5}, Lcom/instagram/android/fragment/ez;-><init>(Lcom/instagram/android/fragment/ex;Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;Lcom/instagram/feed/f/a;Lcom/instagram/api/j/f;)V
return-object v0
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 5
new-instance v0, Landroid/content/IntentFilter;
const-string v1, "com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED"
invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/instagram/android/fragment/ex;->aj:Landroid/content/IntentFilter;
invoke-virtual {p0}, Lcom/instagram/android/fragment/ex;->j()Landroid/os/Bundle;
move-result-object v0
const-string v1, "com.instagram.android.fragment.KEY_EXPLORE_ATTRIBUTION_VISIBLE"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/instagram/android/fragment/ex;->ah:Z
sget-object v0, Lcom/instagram/l/c;->b:Lcom/instagram/l/a;
invoke-virtual {v0}, Lcom/instagram/l/a;->b()Z
move-result v0
iput-boolean v0, p0, Lcom/instagram/android/fragment/ex;->ak:Z
invoke-super {p0, p1}, Lcom/instagram/android/fragment/ew;->a(Landroid/os/Bundle;)V
if-eqz p1, :cond_25
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/android/fragment/ex;->af:Z
:cond_25
invoke-virtual {p0}, Lcom/instagram/android/fragment/ex;->j()Landroid/os/Bundle;
move-result-object v0
const-string v1, "com.instagram.android.fragment.KEY_REFERRER"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/fragment/ex;->ag:Ljava/lang/String;
invoke-virtual {p0}, Lcom/instagram/android/fragment/ex;->j()Landroid/os/Bundle;
move-result-object v0
const-string v1, "com.instagram.android.fragment.ARGUMENTS_KEY_LOAD_FROM_NETWORK"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
invoke-virtual {p0}, Lcom/instagram/android/fragment/ex;->j()Landroid/os/Bundle;
move-result-object v1
const-string v2, "com.instagram.android.fragment.ARGUMENTS_KEY_EXTRA_MEDIA_ID"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/instagram/android/fragment/ex;->ae:Ljava/lang/String;
if-nez v0, :cond_63
invoke-static {}, Lcom/instagram/feed/d/y;->a()Lcom/instagram/feed/d/y;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/fragment/ex;->ae:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/instagram/feed/d/y;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;
move-result-object v0
if-eqz v0, :cond_63
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->v()Lcom/instagram/model/a/a;
move-result-object v1
iput-object v1, p0, Lcom/instagram/android/fragment/ex;->ai:Lcom/instagram/model/a/a;
invoke-virtual {p0}, Lcom/instagram/android/fragment/ex;->W()Lcom/instagram/android/feed/a/a;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/instagram/android/feed/a/a;->a(Lcom/instagram/feed/d/l;)V
:goto_62
return-void
:cond_63
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/ex;->c(Z)V
goto :goto_62
.end method
.method public final a(Lcom/instagram/a/a;)V
.registers 4
invoke-super {p0, p1}, Lcom/instagram/android/fragment/ew;->a(Lcom/instagram/a/a;)V
iget-object v0, p0, Lcom/instagram/android/fragment/ex;->ai:Lcom/instagram/model/a/a;
sget-object v1, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;
if-ne v0, v1, :cond_f
sget v0, Lcom/facebook/az;->photo:I
invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(I)V
:cond_e
:goto_e
return-void
:cond_f
iget-object v0, p0, Lcom/instagram/android/fragment/ex;->ai:Lcom/instagram/model/a/a;
sget-object v1, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;
if-ne v0, v1, :cond_e
sget v0, Lcom/facebook/az;->video:I
invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(I)V
goto :goto_e
.end method
.method public final a(Ljava/util/Map;)V
.registers 4
const-string v0, "src"
const-string v1, "single"
invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public final ab()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/android/fragment/ex;->af:Z
return v0
.end method
.method public final ai()Lcom/instagram/android/fragment/j;
.registers 3
new-instance v0, Lcom/instagram/android/fragment/fa;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/instagram/android/fragment/fa;-><init>(Lcom/instagram/android/fragment/ex;B)V
return-object v0
.end method
.method public final al()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/android/fragment/ex;->ah:Z
return v0
.end method
.method public final am()Z
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/fragment/ex;->j()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_18
invoke-virtual {p0}, Lcom/instagram/android/fragment/ex;->j()Landroid/os/Bundle;
move-result-object v0
const-string v1, "com.instagram.android.fragment.ARGUMENTS_IS_FOLLOW_BUTTON_ELIGIBLE_NEXT"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
:goto_10
if-eqz v0, :cond_1d
iget-boolean v0, p0, Lcom/instagram/android/fragment/ex;->ak:Z
if-eqz v0, :cond_1d
const/4 v0, 0x1
:goto_17
return v0
:cond_18
invoke-super {p0}, Lcom/instagram/android/fragment/ew;->an()Z
move-result v0
goto :goto_10
:cond_1d
const/4 v0, 0x0
goto :goto_17
.end method
.method public final i_()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/android/fragment/ex;->ag:Ljava/lang/String;
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/instagram/android/fragment/ex;->ag:Ljava/lang/String;
:goto_6
return-object v0
:cond_7
const-string v0, "feed_single_item"
goto :goto_6
.end method