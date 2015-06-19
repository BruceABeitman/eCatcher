.class public Lcom/spotify/mobile/android/ui/fragments/w;
.super Landroid/support/v4/app/x;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/NavigationItem;
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.field private static final aa:Ljava/lang/String;
.field private static final ab:[Ljava/lang/String;
.field public static final i:[Ljava/lang/String;
.field protected Y:Z
.field protected Z:Z
.field private ac:Landroid/view/View;
.field private ad:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
.field private ae:Lcom/spotify/mobile/android/ui/view/LoadingView;
.field private af:Lcom/spotify/mobile/android/ui/adapter/g;
.field private ag:Lcom/spotify/mobile/android/util/dw;
.field private ah:Landroid/support/v4/app/z;
.field private ai:Landroid/support/v4/app/z;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
const-class v0, Lcom/spotify/mobile/android/ui/fragments/w;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/w;->aa:Ljava/lang/String;
const/16 v0, 0xf
new-array v0, v0, [Ljava/lang/String;
const-string v1, "offline_mode"
aput-object v1, v0, v3
const-string v1, "private_session"
aput-object v1, v0, v4
const-string v1, "broadcast_play_state"
aput-object v1, v0, v5
const-string v1, "download_over_3g"
aput-object v1, v0, v6
const-string v1, "download_quality"
aput-object v1, v0, v7
const/4 v1, 0x5
const-string v2, "stream_quality"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "facebook_connected"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "post_to_facebook"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "seconds_to_offline_expiry"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "lastfm_username"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string v2, "lastfm_password"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string v2, "gapless"
aput-object v2, v0, v1
const/16 v1, 0xc
const-string v2, "crossfade"
aput-object v2, v0, v1
const/16 v1, 0xd
const-string v2, "crossfade_time_seconds"
aput-object v2, v0, v1
const/16 v1, 0xe
const-string v2, "ap"
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/w;->i:[Ljava/lang/String;
const/4 v0, 0x5
new-array v0, v0, [Ljava/lang/String;
const-string v1, "private_session_timeout"
aput-object v1, v0, v3
const-string v1, "logged_in"
aput-object v1, v0, v4
const-string v1, "current_user_name"
aput-object v1, v0, v5
const-string v1, "current_user"
aput-object v1, v0, v6
const-string v1, "product_type"
aput-object v1, v0, v7
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/w;->ab:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/x;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/w$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/w$2;-><init>(Lcom/spotify/mobile/android/ui/fragments/w;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/w;->ah:Landroid/support/v4/app/z;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/w$3;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/w$3;-><init>(Lcom/spotify/mobile/android/ui/fragments/w;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/w;->ai:Landroid/support/v4/app/z;
return-void
.end method
.method static synthetic G()[Ljava/lang/String;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/w;->ab:[Ljava/lang/String;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/w;)Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/w;->ad:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
return-object v0
.end method
.method public final D()Landroid/support/v4/app/Fragment;
.registers 1
return-object p0
.end method
.method public final E()Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;
.registers 2
sget-object v0, Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;->n:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;
return-object v0
.end method
.method protected final F()V
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/w;->Y:Z
if-eqz v0, :cond_8
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/w;->Z:Z
if-nez v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/w;->ae:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->b()V
goto :goto_8
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 10
const v5, 0x102000a
const/4 v4, 0x0
const/4 v3, -0x1
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/w;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/w;->ad:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/w$1;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/w;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/w;->ad:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
invoke-direct {v0, p0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/w$1;-><init>(Lcom/spotify/mobile/android/ui/fragments/w;Landroid/content/Context;Landroid/widget/ListAdapter;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/w;->af:Lcom/spotify/mobile/android/ui/adapter/g;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/w;->af:Lcom/spotify/mobile/android/ui/adapter/g;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/w;->ad:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->a()[Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/g;->a([Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/w;->af:Lcom/spotify/mobile/android/ui/adapter/g;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/w;->a(Landroid/widget/ListAdapter;)V
const v0, 0x7f030074
invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/w;->ac:Landroid/view/View;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/w;->ac:Landroid/view/View;
invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/w;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/w;->ac:Landroid/view/View;
invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/view/View;)Lcom/spotify/mobile/android/ui/view/LoadingView;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/w;->ae:Lcom/spotify/mobile/android/ui/view/LoadingView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/w;->ac:Landroid/view/View;
check-cast v0, Landroid/view/ViewGroup;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/w;->ae:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0, v1, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/w;->ac:Landroid/view/View;
return-object v0
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
const v0, 0x7f0f036e
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 6
const/4 v3, 0x0
invoke-super {p0, p1}, Landroid/support/v4/app/x;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/w;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a01ab
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/w;->ai:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/w;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a01b0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/w;->ah:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/w;->a(Z)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/w;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->p:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/w;->ag:Lcom/spotify/mobile/android/util/dw;
return-void
.end method
.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
.registers 7
instance-of v0, p2, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;
if-eqz v0, :cond_9
check-cast p2, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;
invoke-virtual {p2}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->a()V
:cond_9
return-void
.end method
.method public final x()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/x;->x()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/w;->ad:Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/SettingsAdapter;->notifyDataSetChanged()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/w;->ae:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/w;->ag:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V
return-void
.end method
.method public final y()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/x;->y()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/w;->ag:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V
return-void
.end method