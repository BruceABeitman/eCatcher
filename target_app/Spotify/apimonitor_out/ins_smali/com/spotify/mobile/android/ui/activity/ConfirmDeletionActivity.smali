.class public Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"
.field private n:Landroid/widget/Button;
.field private p:Landroid/widget/Button;
.field private q:Ljava/lang/String;
.field private r:J
.field private s:Ljava/lang/String;
.field private t:Landroid/net/Uri;
.field private u:Lcom/spotify/mobile/android/ui/actions/c;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V
const-class v0, Lcom/spotify/mobile/android/ui/actions/c;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/c;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->u:Lcom/spotify/mobile/android/ui/actions/c;
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;JLjava/lang/String;)Landroid/content/Intent;
.registers 8
invoke-static {p0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;)V
const-string v0, "We need a non-null playlist or folder title"
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V
const-string v0, "We need a non-empty playlist or folder title"
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/CharSequence;Ljava/lang/String;)V
const-string v0, "We need a non-null content uri"
invoke-static {p2, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V
const-wide/16 v0, -0x1
cmp-long v0, p3, v0
if-lez v0, :cond_45
const/4 v0, 0x1
:goto_19
const-string v1, "We need a valid row id."
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V
const-string v0, "We need a non-null uri"
invoke-static {p5, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V
const-string v0, "We need a non-empty uri"
invoke-static {p5, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/CharSequence;Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-class v1, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;
invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
const-string v1, "name"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "uri"
invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "row_id"
invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
return-object v0
:cond_45
const/4 v0, 0x0
goto :goto_19
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;)Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->t:Landroid/net/Uri;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;)J
.registers 3
iget-wide v0, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->r:J
return-wide v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;)Lcom/spotify/mobile/android/ui/actions/c;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->u:Lcom/spotify/mobile/android/ui/actions/c;
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 11
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-wide/16 v7, -0x1
const/4 v1, 0x1
const/4 v2, 0x0
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V
new-instance v4, Lcom/spotify/android/paste/widget/DialogLayout;
invoke-direct {v4, p0}, Lcom/spotify/android/paste/widget/DialogLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {p0, v4}, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->setContentView(Landroid/view/View;)V
if-eqz p1, :cond_c9
const-string v0, "name"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->q:Ljava/lang/String;
const-string v0, "row_id"
invoke-virtual {p1, v0, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v5
iput-wide v5, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->r:J
const-string v0, "uri"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->s:Ljava/lang/String;
const-string v0, ""
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/net/Uri;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->t:Landroid/net/Uri;
:goto_33
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->q:Ljava/lang/String;
const-string v3, "We need a non-null playlist or folder title"
invoke-static {v0, v3}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->q:Ljava/lang/String;
const-string v3, "We need a non-empty playlist or folder title"
invoke-static {v0, v3}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/CharSequence;Ljava/lang/String;)V
iget-wide v5, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->r:J
cmp-long v0, v5, v7
if-lez v0, :cond_f9
move v0, v1
:goto_48
const-string v3, "We need a valid row id."
invoke-static {v0, v3}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->s:Ljava/lang/String;
const-string v3, "We need the uri to the item to be deleted."
invoke-static {v0, v3}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V
new-instance v3, Lcom/spotify/mobile/android/util/SpotifyLink;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->s:Ljava/lang/String;
invoke-direct {v3, v0}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V
const/4 v0, -0x1
sget-object v5, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity$3;->a:[I
invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v6
invoke-virtual {v6}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I
move-result v6
aget v5, v5, v6
packed-switch v5, :pswitch_data_10a
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Trying to incorrectly delete link type :"
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v3
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
move v3, v0
:goto_82
if-ltz v3, :cond_107
move v0, v1
:goto_85
const-string v5, "Unsupported uri type."
invoke-static {v0, v5}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V
invoke-virtual {v4, v3}, Lcom/spotify/android/paste/widget/DialogLayout;->a(I)V
const v0, 0x7f0f014f
new-array v1, v1, [Ljava/lang/Object;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->q:Ljava/lang/String;
aput-object v3, v1, v2
invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Lcom/spotify/android/paste/widget/DialogLayout;->b(Ljava/lang/CharSequence;)V
const v0, 0x7f0f0151
new-instance v1, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity$1;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;)V
invoke-virtual {v4, v0, v1}, Lcom/spotify/android/paste/widget/DialogLayout;->a(ILandroid/view/View$OnClickListener;)V
const v0, 0x7f0f0150
new-instance v1, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity$2;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity$2;-><init>(Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;)V
invoke-virtual {v4, v0, v1}, Lcom/spotify/android/paste/widget/DialogLayout;->b(ILandroid/view/View$OnClickListener;)V
invoke-virtual {v4}, Lcom/spotify/android/paste/widget/DialogLayout;->a()Landroid/widget/Button;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->p:Landroid/widget/Button;
invoke-virtual {v4}, Lcom/spotify/android/paste/widget/DialogLayout;->b()Landroid/widget/Button;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->n:Landroid/widget/Button;
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->ab:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->a(Lcom/spotify/mobile/android/util/dw;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_c9
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v3, "name"
invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->q:Ljava/lang/String;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v3, "row_id"
invoke-virtual {v0, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
move-result-wide v5
iput-wide v5, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->r:J
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v3, "uri"
invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->s:Ljava/lang/String;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->t:Landroid/net/Uri;
goto/16 :goto_33
:cond_f9
move v0, v2
goto/16 :goto_48
:pswitch_fc
const v0, 0x7f0f0152
move v3, v0
goto :goto_82
:pswitch_101
const v0, 0x7f0f0153
move v3, v0
goto/16 :goto_82
:cond_107
move v0, v2
goto/16 :goto_85
:pswitch_data_10a
.packed-switch 0x1
:pswitch_fc
:pswitch_101
:pswitch_101
.end packed-switch
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v0, "name"
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->q:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "uri"
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->s:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "row_id"
iget-wide v1, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->r:J
invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v0, ""
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->t:Landroid/net/Uri;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method