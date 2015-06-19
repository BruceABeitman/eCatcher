.class public Lcom/spotify/mobile/android/spotlets/a/a;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/model/l;
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.implements Lcom/spotify/mobile/android/util/aa;
.field private static final af:[Ljava/lang/String;
.field private Y:Lcom/spotify/mobile/android/util/Collection$State;
.field private Z:Lcom/spotify/mobile/android/util/ViewUri$Verified;
.field private a:Ljava/lang/String;
.field private aa:Lcom/spotify/mobile/android/spotlets/a/b;
.field private ab:Lcom/spotify/mobile/android/ui/view/LoadingView;
.field private ac:Lcom/spotify/mobile/android/util/tracking/n;
.field private ad:Lcom/spotify/android/paste/widget/EmptyView;
.field private ae:Lcom/spotify/mobile/android/util/z;
.field private ag:Landroid/support/v4/app/z;
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:Ljava/lang/String;
.field private f:Z
.field private g:Z
.field private h:Z
.field private i:Z
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0xf
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "name"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "artist_name"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "artist_uri"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "image_large_uri"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "year"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "copyright"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "is_available"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "is_radio_available"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "is_artist_browsable"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "is_queueable"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string v2, "is_in_collection"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string v2, "is_complete_in_collection"
aput-object v2, v0, v1
const/16 v1, 0xc
const-string v2, "artist_image_uri"
aput-object v2, v0, v1
const/16 v1, 0xd
const-string v2, "offline_state"
aput-object v2, v0, v1
const/16 v1, 0xe
const-string v2, "sync_progress"
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/spotlets/a/a;->af:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/spotlets/a/a$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/a/a$1;-><init>(Lcom/spotify/mobile/android/spotlets/a/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->ag:Landroid/support/v4/app/z;
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
.registers 6
invoke-static {p0, p1, p2}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
const-string v1, "album_uri"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "lookup_track_uri"
invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
return-object v0
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/spotify/mobile/android/spotlets/a/a;
.registers 6
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "album_uri"
invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "title"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "lookup_track_uri"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "autoplay"
invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
new-instance v1, Lcom/spotify/mobile/android/spotlets/a/a;
invoke-direct {v1}, Lcom/spotify/mobile/android/spotlets/a/a;-><init>()V
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/a/a;->c_(Landroid/os/Bundle;)V
return-object v1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/a/a;Lcom/spotify/mobile/android/util/Collection$State;)Lcom/spotify/mobile/android/util/Collection$State;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/a/a;->Y:Lcom/spotify/mobile/android/util/Collection$State;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/a/a;)Lcom/spotify/mobile/android/util/tracking/n;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->ac:Lcom/spotify/mobile/android/util/tracking/n;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/a/a;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/a/a;->a:Ljava/lang/String;
return-object p1
.end method
.method public static a(Ljava/lang/String;)Ljava/lang/String;
.registers 7
const-string v0, "\n"
invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v3
new-instance v4, Ljava/lang/StringBuilder;
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V
const/4 v1, 0x0
array-length v5, v3
const/4 v0, 0x0
:goto_12
if-ge v0, v5, :cond_2e
aget-object v2, v3, v0
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_2a
invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I
move-result v1
if-eqz v1, :cond_27
const/16 v1, 0xa
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_27
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_2a
add-int/lit8 v0, v0, 0x1
move-object v1, v2
goto :goto_12
:cond_2e
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/a/a;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/a/a;->f:Z
return p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/a/a;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->a:Ljava/lang/String;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/a/a;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/a/a;->c:Ljava/lang/String;
return-object p1
.end method
.method public static b(Landroid/content/Intent;)Z
.registers 2
const-string v0, "album_uri"
invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/a/a;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/a/a;->h:Z
return p1
.end method
.method public static c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0, v0}, Lcom/spotify/mobile/android/spotlets/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/a/a;)Lcom/spotify/mobile/android/spotlets/a/b;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->aa:Lcom/spotify/mobile/android/spotlets/a/b;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/a/a;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/a/a;->d:Ljava/lang/String;
return-object p1
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/a/a;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/a/a;->i:Z
return p1
.end method
.method static synthetic c()[Ljava/lang/String;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/spotlets/a/a;->af:[Ljava/lang/String;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/spotlets/a/a;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->c:Ljava/lang/String;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/spotlets/a/a;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/a/a;->e:Ljava/lang/String;
return-object p1
.end method
.method static synthetic d(Lcom/spotify/mobile/android/spotlets/a/a;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/a/a;->g:Z
return p1
.end method
.method static synthetic e(Lcom/spotify/mobile/android/spotlets/a/a;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->d:Ljava/lang/String;
return-object v0
.end method
.method static synthetic f(Lcom/spotify/mobile/android/spotlets/a/a;)Lcom/spotify/mobile/android/util/Collection$State;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->Y:Lcom/spotify/mobile/android/util/Collection$State;
return-object v0
.end method
.method static synthetic g(Lcom/spotify/mobile/android/spotlets/a/a;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->e:Ljava/lang/String;
return-object v0
.end method
.method static synthetic h(Lcom/spotify/mobile/android/spotlets/a/a;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->g:Z
return v0
.end method
.method static synthetic i(Lcom/spotify/mobile/android/spotlets/a/a;)Lcom/spotify/mobile/android/ui/view/LoadingView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->ab:Lcom/spotify/mobile/android/ui/view/LoadingView;
return-object v0
.end method
.method static synthetic j(Lcom/spotify/mobile/android/spotlets/a/a;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->b:Ljava/lang/String;
return-object v0
.end method
.method public final D()Landroid/support/v4/app/Fragment;
.registers 1
return-object p0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 12
const/4 v7, 0x0
new-instance v2, Landroid/widget/FrameLayout;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x1010054
invoke-static {v0, v1}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;I)I
move-result v0
invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V
new-instance v6, Landroid/widget/FrameLayout;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-direct {v6, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
new-instance v0, Lcom/spotify/mobile/android/spotlets/a/b;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/a;->u()Landroid/support/v4/app/y;
move-result-object v3
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/a/a;->b:Ljava/lang/String;
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/a/a;->Z:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/a/b;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/support/v4/app/y;Ljava/lang/String;Lcom/spotify/mobile/android/util/ViewUri$Verified;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->aa:Lcom/spotify/mobile/android/spotlets/a/b;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->aa:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/a/b;->e()Landroid/view/View;
move-result-object v0
invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f0f0031
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/spotlets/a/a;->b(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/j;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/android/paste/widget/EmptyView;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->ad:Lcom/spotify/android/paste/widget/EmptyView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->ad:Lcom/spotify/android/paste/widget/EmptyView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->ad:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
const/4 v0, 0x4
invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {p1, v0, v6}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/view/View;)Lcom/spotify/mobile/android/ui/view/LoadingView;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->ab:Lcom/spotify/mobile/android/ui/view/LoadingView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->ab:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/a;->h()Landroid/os/Bundle;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/a;->aa:Lcom/spotify/mobile/android/spotlets/a/b;
const-string v3, "autoplay"
invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v3
invoke-virtual {v1, v3}, Lcom/spotify/mobile/android/spotlets/a/b;->a(Z)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/a;->aa:Lcom/spotify/mobile/android/spotlets/a/b;
const-string v3, "lookup_track_uri"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/spotify/mobile/android/spotlets/a/b;->g(Ljava/lang/String;)V
const-string v1, "autoplay"
invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
return-object v2
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->e:Ljava/lang/String;
if-nez v0, :cond_c
const v0, 0x7f0f0032
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_b
return-object v0
:cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->e:Ljava/lang/String;
goto :goto_b
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 6
const/4 v3, 0x0
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/a;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "album_uri"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->b:Ljava/lang/String;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/a;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "title"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->e:Ljava/lang/String;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/a;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "referer"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/ViewUri$Verified;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->Z:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->Z:Lcom/spotify/mobile/android/util/ViewUri$Verified;
if-nez v0, :cond_32
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->be:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->Z:Lcom/spotify/mobile/android/util/ViewUri$Verified;
:cond_32
new-instance v0, Lcom/spotify/mobile/android/util/z;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1, p0}, Lcom/spotify/mobile/android/util/z;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/aa;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->ae:Lcom/spotify/mobile/android/util/z;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/a;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a0150
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/a/a;->ag:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/a;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a0152
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/a/a;->ae:Lcom/spotify/mobile/android/util/z;
invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/a/a;->a(Z)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/a;->b:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/mobile/android/util/tracking/n;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->ac:Lcom/spotify/mobile/android/util/tracking/n;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->ac:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->b(Landroid/os/Bundle;)V
return-void
.end method
.method public final a(Landroid/view/Menu;)V
.registers 9
const/4 v4, 0x1
invoke-interface {p1}, Landroid/view/Menu;->clear()V
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->H:Lcom/spotify/mobile/android/util/ea;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/a;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->f:Z
if-eqz v0, :cond_2d
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_2d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->b:Ljava/lang/String;
invoke-static {v0}, Lcom/spotify/mobile/android/provider/a;->b(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1, p1, v2, v0}, Lcom/spotify/mobile/android/ui/menus/a;->a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/a;->aa:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/a/b;->b(Landroid/view/View;)V
:cond_2d
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->f:Z
if-eqz v0, :cond_9d
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/a/a;->Y:Lcom/spotify/mobile/android/util/Collection$State;
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/a/a;->b:Ljava/lang/String;
move-object v1, p1
invoke-static/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/Collection$State;ZLjava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->d:Ljava/lang/String;
if-eqz v0, :cond_58
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->c:Ljava/lang/String;
invoke-static {v0}, Lcom/spotify/mobile/android/util/h;->a(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_58
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->g:Z
if-eqz v0, :cond_58
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/a;->d:Ljava/lang/String;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/a/a;->c:Ljava/lang/String;
invoke-static {v0, p1, v2, v1, v3}, Lcom/spotify/mobile/android/ui/menus/e;->b(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;Ljava/lang/String;)V
:cond_58
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/a;->b:Ljava/lang/String;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/a/a;->c:Ljava/lang/String;
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/a/a;->a:Ljava/lang/String;
invoke-static {v3, v5}, Lcom/spotify/mobile/android/util/bu;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v0, p1, v2, v1, v3}, Lcom/spotify/mobile/android/ui/menus/e;->c(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->h:Z
if-eqz v0, :cond_76
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/a;->b:Ljava/lang/String;
invoke-static {v0, p1, v2, v1}, Lcom/spotify/mobile/android/ui/menus/a;->b(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
:cond_76
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->i:Z
if-eqz v0, :cond_83
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/a;->b:Ljava/lang/String;
invoke-static {v0, p1, v2, v1}, Lcom/spotify/mobile/android/ui/menus/e;->b(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
:cond_83
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/a/a;->a:Ljava/lang/String;
const v1, 0x7f0f0373
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/a/a;->c:Ljava/lang/String;
aput-object v6, v4, v5
invoke-virtual {p0, v1, v4}, Lcom/spotify/mobile/android/spotlets/a/a;->a(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/a/a;->b:Ljava/lang/String;
move-object v1, p1
invoke-static/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/menus/a;->a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:cond_9d
return-void
.end method
.method public final d(Landroid/os/Bundle;)V
.registers 3
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->ac:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/os/Bundle;)V
return-void
.end method
.method public final d(Z)V
.registers 6
const/16 v2, 0x8
const/4 v1, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/a/a;->ad:Lcom/spotify/android/paste/widget/EmptyView;
if-nez p1, :cond_1e
move v0, v1
:goto_8
invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->aa:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/a/b;->e()Landroid/view/View;
move-result-object v0
if-nez p1, :cond_20
:goto_13
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
if-nez p1, :cond_1d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->ac:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->c()V
:cond_1d
return-void
:cond_1e
move v0, v2
goto :goto_8
:cond_20
move v2, v1
goto :goto_13
.end method
.method public final g_()Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->b:Ljava/lang/String;
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public final r_()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/Fragment;->r_()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->ac:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->a()V
return-void
.end method
.method public final s_()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->ac:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->c()V
invoke-super {p0}, Landroid/support/v4/app/Fragment;->s_()V
return-void
.end method
.method public final x()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/Fragment;->x()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->ab:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->aa:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/a/b;->a()V
return-void
.end method
.method public final y()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/a;->aa:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/a/b;->b()V
invoke-super {p0}, Landroid/support/v4/app/Fragment;->y()V
return-void
.end method