.class public Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
.super Landroid/support/v4/app/x;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/model/l;
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.implements Lcom/spotify/mobile/android/ui/m;
.field private static final aa:[Ljava/lang/String;
.field  Y:Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader;
.field  Z:Lcom/spotify/mobile/android/util/z;
.field private aA:I
.field private aB:I
.field private aC:Lcom/spotify/mobile/android/util/dw;
.field private aD:Lcom/spotify/mobile/android/util/ViewUri$Verified;
.field private aE:Lcom/spotify/mobile/android/ui/actions/a;
.field private aF:Lcom/spotify/mobile/android/ui/actions/d;
.field private aG:Lcom/spotify/mobile/android/ui/actions/c;
.field private aH:Lcom/spotify/mobile/android/util/ar;
.field private aI:Lcom/spotify/mobile/android/util/tracking/n;
.field private aJ:Landroid/view/View$OnClickListener;
.field private aK:Landroid/view/View$OnClickListener;
.field private aL:Lcom/spotify/mobile/android/ui/view/g;
.field private aM:Lcom/spotify/mobile/android/util/aa;
.field private aN:Landroid/view/View$OnClickListener;
.field private aO:Landroid/support/v4/app/z;
.field private aP:Lcom/spotify/mobile/android/spotlets/follow/d;
.field private aQ:Ljava/lang/Runnable;
.field private aR:Lcom/spotify/mobile/android/spotlets/follow/b;
.field private aS:Landroid/support/v4/app/z;
.field private ab:Ljava/lang/String;
.field private ac:Ljava/lang/String;
.field private ad:Ljava/lang/String;
.field private ae:Z
.field private af:Z
.field private ag:Z
.field private ah:Lcom/spotify/mobile/android/ui/adapter/o;
.field private ai:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;
.field private aj:Landroid/database/Cursor;
.field private ak:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
.field private al:Landroid/view/View;
.field private am:Lcom/spotify/mobile/android/ui/view/LoadingView;
.field private an:Landroid/view/View;
.field private ao:Lcom/spotify/android/paste/widget/EmptyView;
.field private ap:Landroid/view/View;
.field private aq:Landroid/os/Parcelable;
.field private ar:Lcom/spotify/mobile/android/ui/prettylist/c;
.field private as:Lcom/spotify/mobile/android/util/f;
.field private at:Z
.field private au:Landroid/os/Handler;
.field private av:Landroid/widget/TextView;
.field private aw:Landroid/widget/ToggleButton;
.field private ax:Z
.field private ay:Lcom/spotify/mobile/android/spotlets/follow/a;
.field private az:I
.field  i:Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0x9
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "name"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "uri"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "offline_state"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "sync_progress"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "is_available"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "is_radio_available"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "albums_in_collection_count"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "image_large_uri"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "is_followed"
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aa:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Landroid/support/v4/app/x;-><init>()V
iput v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->az:I
iput v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aA:I
iput v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aB:I
const-class v0, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aE:Lcom/spotify/mobile/android/ui/actions/a;
const-class v0, Lcom/spotify/mobile/android/ui/actions/d;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/d;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aF:Lcom/spotify/mobile/android/ui/actions/d;
const-class v0, Lcom/spotify/mobile/android/ui/actions/c;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/c;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aG:Lcom/spotify/mobile/android/ui/actions/c;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$7;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$7;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aJ:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$8;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$8;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aK:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$9;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$9;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aL:Lcom/spotify/mobile/android/ui/view/g;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$10;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$10;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aM:Lcom/spotify/mobile/android/util/aa;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$11;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$11;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aN:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$13;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aO:Landroid/support/v4/app/z;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$2;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aP:Lcom/spotify/mobile/android/spotlets/follow/d;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$3;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$3;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aQ:Ljava/lang/Runnable;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$4;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$4;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aR:Lcom/spotify/mobile/android/spotlets/follow/b;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$5;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$5;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aS:Landroid/support/v4/app/z;
return-void
.end method
.method static synthetic E()[Ljava/lang/String;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aa:[Ljava/lang/String;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;I)I
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->az:I
return p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;Landroid/database/Cursor;)Landroid/database/Cursor;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aj:Landroid/database/Cursor;
return-object p1
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
.registers 5
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "artist_collection_uri"
invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "title"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "is_sub_fragment"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
new-instance v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-direct {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;-><init>()V
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->c_(Landroid/os/Bundle;)V
return-object v1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;Lcom/spotify/mobile/android/spotlets/follow/a;)Lcom/spotify/mobile/android/spotlets/follow/a;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ay:Lcom/spotify/mobile/android/spotlets/follow/a;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aD:Lcom/spotify/mobile/android/util/ViewUri$Verified;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ab:Ljava/lang/String;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ag:Z
return p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;I)I
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aA:I
return p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ac:Ljava/lang/String;
return-object p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ax:Z
return v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ae:Z
return p1
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;I)I
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aB:I
return p1
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/ui/actions/a;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aE:Lcom/spotify/mobile/android/ui/actions/a;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ax:Z
return p1
.end method
.method static synthetic d(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ac:Ljava/lang/String;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->af:Z
return p1
.end method
.method static synthetic e(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/ui/actions/d;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aF:Lcom/spotify/mobile/android/ui/actions/d;
return-object v0
.end method
.method static synthetic f(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ab:Ljava/lang/String;
return-object v0
.end method
.method static synthetic g(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ad:Ljava/lang/String;
return-object v0
.end method
.method static synthetic h(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/ui/actions/c;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aG:Lcom/spotify/mobile/android/ui/actions/c;
return-object v0
.end method
.method static synthetic i(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)V
.registers 8
const/16 v3, 0x8
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ar:Lcom/spotify/mobile/android/ui/prettylist/c;
if-eqz v0, :cond_69
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ab:Ljava/lang/String;
invoke-static {v0}, Lcom/spotify/mobile/android/util/h;->a(Ljava/lang/String;)Z
move-result v4
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aw:Landroid/widget/ToggleButton;
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ax:Z
if-eqz v0, :cond_73
const v0, 0x7f0f0060
:goto_17
invoke-virtual {v5, v0}, Landroid/widget/ToggleButton;->setText(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aw:Landroid/widget/ToggleButton;
iget-boolean v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ax:Z
invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aw:Landroid/widget/ToggleButton;
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ag:Z
if-eqz v0, :cond_77
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ay:Lcom/spotify/mobile/android/spotlets/follow/a;
if-eqz v0, :cond_77
move v0, v1
:goto_2c
invoke-virtual {v5, v0}, Landroid/widget/ToggleButton;->setEnabled(Z)V
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aw:Landroid/widget/ToggleButton;
if-eqz v4, :cond_79
move v0, v3
:goto_34
invoke-virtual {v5, v0}, Landroid/widget/ToggleButton;->setVisibility(I)V
if-nez v4, :cond_7b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ay:Lcom/spotify/mobile/android/spotlets/follow/a;
if-eqz v0, :cond_7b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ay:Lcom/spotify/mobile/android/spotlets/follow/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/follow/a;->b()I
move-result v0
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->av:Landroid/widget/TextView;
invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->av:Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->k()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f0e0001
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v1, v2
invoke-virtual {v4, v5, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_60
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ar:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->c()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V
:cond_69
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/n;->c()V
return-void
:cond_73
const v0, 0x7f0f005f
goto :goto_17
:cond_77
move v0, v2
goto :goto_2c
:cond_79
move v0, v2
goto :goto_34
:cond_7b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->av:Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_60
.end method
.method static synthetic j(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/spotlets/follow/d;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aP:Lcom/spotify/mobile/android/spotlets/follow/d;
return-object v0
.end method
.method static synthetic k(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/ui/prettylist/c;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ar:Lcom/spotify/mobile/android/ui/prettylist/c;
return-object v0
.end method
.method static synthetic l(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/util/ar;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aH:Lcom/spotify/mobile/android/util/ar;
return-object v0
.end method
.method static synthetic m(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/android/paste/widget/EmptyView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ao:Lcom/spotify/android/paste/widget/EmptyView;
return-object v0
.end method
.method static synthetic n(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)V
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ai:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->a()Landroid/database/Cursor;
move-result-object v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ai:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->a()Landroid/database/Cursor;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/provider/ac;->a(Landroid/database/Cursor;)Z
move-result v0
if-nez v0, :cond_17
:cond_16
:goto_16
return-void
:cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aj:Landroid/database/Cursor;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aj:Landroid/database/Cursor;
invoke-static {v0}, Lcom/spotify/mobile/android/provider/ac;->a(Landroid/database/Cursor;)Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->am:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->d()Z
move-result v0
if-eqz v0, :cond_3e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->am:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->b()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ar:Lcom/spotify/mobile/android/ui/prettylist/c;
if-eqz v0, :cond_3e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->au:Landroid/os/Handler;
new-instance v3, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$12;
invoke-direct {v3, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$12;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)V
invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_3e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ai:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->getCount()I
move-result v0
if-lez v0, :cond_6a
move v0, v1
:goto_47
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ao:Lcom/spotify/android/paste/widget/EmptyView;
const v4, 0x7f0f02c0
new-array v1, v1, [Ljava/lang/Object;
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ab:Ljava/lang/String;
aput-object v5, v1, v2
invoke-virtual {p0, v4, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->a(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1}, Lcom/spotify/android/paste/widget/EmptyView;->a(Ljava/lang/CharSequence;)V
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->an:Landroid/view/View;
if-eqz v0, :cond_6c
const/16 v1, 0x8
:goto_5f
invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V
if-nez v0, :cond_6e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->am:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->c()V
goto :goto_16
:cond_6a
move v0, v2
goto :goto_47
:cond_6c
move v1, v2
goto :goto_5f
:cond_6e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->am:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->d()Z
move-result v0
if-nez v0, :cond_16
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ap:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
goto :goto_16
.end method
.method static synthetic o(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/spotlets/follow/a;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ay:Lcom/spotify/mobile/android/spotlets/follow/a;
return-object v0
.end method
.method static synthetic p(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/spotlets/follow/b;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aR:Lcom/spotify/mobile/android/spotlets/follow/b;
return-object v0
.end method
.method static synthetic q(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->af:Z
return v0
.end method
.method static synthetic r(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->az:I
return v0
.end method
.method static synthetic s(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aA:I
return v0
.end method
.method static synthetic t(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ak:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
return-object v0
.end method
.method static synthetic u(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aQ:Ljava/lang/Runnable;
return-object v0
.end method
.method static synthetic v(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->au:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic w(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ai:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;
return-object v0
.end method
.method static synthetic x(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/ui/adapter/o;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ah:Lcom/spotify/mobile/android/ui/adapter/o;
return-object v0
.end method
.method static synthetic y(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Landroid/os/Parcelable;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aq:Landroid/os/Parcelable;
return-object v0
.end method
.method static synthetic z(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Landroid/os/Parcelable;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aq:Landroid/os/Parcelable;
return-object v0
.end method
.method public final D()Landroid/support/v4/app/Fragment;
.registers 1
return-object p0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 12
const/4 v4, -0x1
const/4 v7, 0x0
const/4 v6, 0x0
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->at:Z
if-nez v0, :cond_191
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/music/MainActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_18b
invoke-static {v0}, Lcom/spotify/mobile/android/ui/prettylist/e;->b(Landroid/app/Activity;)Lcom/spotify/mobile/android/ui/prettylist/c;
move-result-object v1
:goto_17
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ar:Lcom/spotify/mobile/android/ui/prettylist/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ar:Lcom/spotify/mobile/android/ui/prettylist/c;
const v2, 0x7f010186
invoke-static {v0, v2}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;I)I
move-result v0
invoke-interface {v1, v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(I)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ar:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v2, 0x7f030081
invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
const v0, 0x7f0a024d
invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->av:Landroid/widget/TextView;
const v0, 0x7f0a02e7
invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ToggleButton;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aw:Landroid/widget/ToggleButton;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aw:Landroid/widget/ToggleButton;
new-instance v3, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$6;
invoke-direct {v3, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$6;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)V
invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-interface {v1, v2}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ar:Lcom/spotify/mobile/android/ui/prettylist/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ab:Ljava/lang/String;
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ar:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->j()Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ap:Landroid/view/View;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ar:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->c()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/util/dv;->a(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_90
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1, v6}, Lcom/spotify/mobile/android/ui/stuff/g;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->al:Landroid/view/View;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->al:Landroid/view/View;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aN:Landroid/view/View$OnClickListener;
invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ar:Lcom/spotify/mobile/android/ui/prettylist/c;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->al:Landroid/view/View;
invoke-interface {v1, v2}, Lcom/spotify/mobile/android/ui/prettylist/c;->b(Landroid/view/View;)V
:cond_90
move-object v1, v0
:goto_91
new-instance v2, Landroid/widget/FrameLayout;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v3, 0x1010054
invoke-static {v0, v3}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;I)I
move-result v0
invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V
new-instance v0, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ap:Landroid/view/View;
invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ap:Landroid/view/View;
const/4 v3, 0x4
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ap:Landroid/view/View;
invoke-static {p1, v0, v3}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/view/View;)Lcom/spotify/mobile/android/ui/view/LoadingView;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->am:Lcom/spotify/mobile/android/ui/view/LoadingView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->am:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_1a8
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->at:Z
if-nez v0, :cond_1a8
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aJ:Landroid/view/View$OnClickListener;
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aK:Landroid/view/View$OnClickListener;
invoke-static {v0, v3, v4}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View;
move-result-object v0
:goto_ea
const/16 v3, 0x8
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->an:Landroid/view/View;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->an:Landroid/view/View;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Landroid/view/View;)Lcom/spotify/android/paste/widget/EmptyView;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ao:Lcom/spotify/android/paste/widget/EmptyView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->an:Landroid/view/View;
invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
sget-object v4, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v4}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v4
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aD:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-direct {v0, v3, v4, v5}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;-><init>(Landroid/content/Context;ZLcom/spotify/mobile/android/util/ViewUri$Verified;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ai:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-direct {v0, v3}, Lcom/spotify/mobile/android/ui/adapter/o;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ah:Lcom/spotify/mobile/android/ui/adapter/o;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ah:Lcom/spotify/mobile/android/ui/adapter/o;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ai:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
const v5, 0x7f0f010e
invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v3, v4, v7}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ah:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {v0, v7}, Lcom/spotify/mobile/android/ui/adapter/o;->d(I)Z
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/k;->a(Landroid/content/Context;)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ak:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ak:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aL:Lcom/spotify/mobile/android/ui/view/g;
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->a(Lcom/spotify/mobile/android/ui/view/g;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ak:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
invoke-virtual {v1, v0, v6, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ah:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/b;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-direct {v0, v3}, Lcom/spotify/mobile/android/ui/contextmenu/b;-><init>(Landroid/content/Context;)V
invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aI:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->am:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a0165
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aO:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v6, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a0168
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aS:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v6, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a0166
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->Z:Lcom/spotify/mobile/android/util/z;
invoke-virtual {v0, v1, v6, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
return-object v2
:cond_18b
invoke-static {v0}, Lcom/spotify/mobile/android/ui/prettylist/e;->a(Landroid/app/Activity;)Lcom/spotify/mobile/android/ui/prettylist/c;
move-result-object v1
goto/16 :goto_17
:cond_191
const v0, 0x7f030086
invoke-virtual {p1, v0, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ap:Landroid/view/View;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ap:Landroid/view/View;
const v1, 0x102000a
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
move-object v1, v0
goto/16 :goto_91
:cond_1a8
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aJ:Landroid/view/View$OnClickListener;
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aK:Landroid/view/View$OnClickListener;
invoke-static {v0, v3, v4}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->b(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View;
move-result-object v0
goto/16 :goto_ea
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ab:Ljava/lang/String;
if-nez v0, :cond_c
const v0, 0x7f0f005e
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_b
return-object v0
:cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ab:Ljava/lang/String;
goto :goto_b
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1}, Landroid/support/v4/app/x;->a(Landroid/os/Bundle;)V
if-eqz p1, :cond_d
const-string v0, "list"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aq:Landroid/os/Parcelable;
:cond_d
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "artist_collection_uri"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ad:Ljava/lang/String;
const-string v1, "title"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ab:Ljava/lang/String;
const-string v1, "is_sub_fragment"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->at:Z
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aL:Lcom/spotify/mobile/android/util/ea;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ad:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aD:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aD:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aC:Lcom/spotify/mobile/android/util/dw;
new-instance v0, Lcom/spotify/mobile/android/util/ar;
const/4 v1, 0x2
new-instance v2, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$1;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$1;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)V
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ar;-><init>(ILcom/spotify/mobile/android/util/as;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aH:Lcom/spotify/mobile/android/util/ar;
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->at:Z
if-nez v0, :cond_9a
const/4 v0, 0x1
:goto_51
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->a(Z)V
new-instance v0, Lcom/spotify/mobile/android/util/f;
invoke-direct {v0}, Lcom/spotify/mobile/android/util/f;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->as:Lcom/spotify/mobile/android/util/f;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->au:Landroid/os/Handler;
const-class v0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->i:Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
new-instance v0, Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->Y:Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader;
new-instance v0, Lcom/spotify/mobile/android/util/z;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aM:Lcom/spotify/mobile/android/util/aa;
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/z;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/aa;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->Z:Lcom/spotify/mobile/android/util/z;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aD:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/mobile/android/util/tracking/n;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aI:Lcom/spotify/mobile/android/util/tracking/n;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aI:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->b(Landroid/os/Bundle;)V
return-void
:cond_9a
const/4 v0, 0x0
goto :goto_51
.end method
.method public final a(Landroid/view/Menu;)V
.registers 2
invoke-interface {p1}, Landroid/view/Menu;->clear()V
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->c(Landroid/view/Menu;)V
return-void
.end method
.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
.registers 13
invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I
move-result v0
sub-int v0, p3, v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ah:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/adapter/o;->b(I)I
move-result v0
packed-switch v0, :pswitch_data_b4
:cond_f
:goto_f
return-void
:pswitch_10
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Lcom/spotify/mobile/android/spotlets/collection/adapter/a;
if-eqz v1, :cond_46
check-cast v0, Lcom/spotify/mobile/android/spotlets/collection/adapter/a;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aE:Lcom/spotify/mobile/android/ui/actions/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aD:Lcom/spotify/mobile/android/util/ViewUri$Verified;
const-string v3, "artist"
sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->az:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/a;->d()Ljava/lang/String;
move-result-object v5
const/4 v6, 0x0
invoke-static {v3, v4, v5, v6}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/a;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/a;->b()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v2, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->a(Landroid/content/Intent;)V
goto :goto_f
:cond_46
instance-of v1, v0, Lcom/spotify/mobile/android/model/n;
if-eqz v1, :cond_f
check-cast v0, Lcom/spotify/mobile/android/model/n;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ad:Ljava/lang/String;
invoke-static {v1}, Lcom/spotify/mobile/android/provider/c;->b(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v2
if-eqz v2, :cond_8b
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aE:Lcom/spotify/mobile/android/ui/actions/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aD:Lcom/spotify/mobile/android/util/ViewUri$Verified;
const-string v3, "artist"
sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->ax:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-interface {v0}, Lcom/spotify/mobile/android/model/n;->getTrackUri()Ljava/lang/String;
move-result-object v0
invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
invoke-static {v3, v4, v0, v5}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v0
invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->al:Landroid/view/View;
instance-of v0, v0, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;
if-eqz v0, :cond_83
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->al:Landroid/view/View;
check-cast v0, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->b()V
goto :goto_f
:cond_83
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->as:Lcom/spotify/mobile/android/util/f;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->al:Landroid/view/View;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->a(Lcom/spotify/mobile/android/util/f;Landroid/view/View;)V
goto :goto_f
:cond_8b
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aE:Lcom/spotify/mobile/android/ui/actions/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aD:Lcom/spotify/mobile/android/util/ViewUri$Verified;
const-string v4, "artist"
sget-object v5, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aw:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-interface {v0}, Lcom/spotify/mobile/android/model/n;->getTrackUri()Ljava/lang/String;
move-result-object v0
invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v6
invoke-static {v4, v5, v0, v6}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v0
invoke-static {v2, v3, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aF:Lcom/spotify/mobile/android/ui/actions/d;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aD:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {v0, v2, v1, p4, p5}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;J)V
goto/16 :goto_f
nop
:pswitch_data_b4
.packed-switch 0x0
:pswitch_10
.end packed-switch
.end method
.method public final c(Landroid/view/Menu;)V
.registers 9
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ai:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;
if-eqz v0, :cond_9e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ai:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->getCount()I
move-result v0
if-lez v0, :cond_9e
const/4 v0, 0x1
:goto_d
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ac:Ljava/lang/String;
if-eqz v1, :cond_3e
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_2f
if-eqz v0, :cond_2f
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aD:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ac:Ljava/lang/String;
invoke-static {v3}, Lcom/spotify/mobile/android/provider/c;->b(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
invoke-static {v1, p1, v2, v3}, Lcom/spotify/mobile/android/ui/menus/a;->a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->al:Landroid/view/View;
:cond_2f
iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ae:Z
if-eqz v1, :cond_3e
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aD:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ac:Ljava/lang/String;
invoke-static {v1, p1, v2, v3}, Lcom/spotify/mobile/android/ui/menus/a;->b(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
:cond_3e
if-eqz v0, :cond_5f
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aD:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ad:Ljava/lang/String;
invoke-static {v1}, Lcom/spotify/mobile/android/provider/c;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
new-instance v1, Lcom/spotify/mobile/android/util/SpotifyLink;
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ad:Ljava/lang/String;
invoke-direct {v1, v4}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v4
iget v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->az:I
iget v6, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aA:I
move-object v1, p1
invoke-static/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;II)V
:cond_5f
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ag:Z
if-eqz v0, :cond_80
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ac:Ljava/lang/String;
if-eqz v0, :cond_80
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ab:Ljava/lang/String;
invoke-static {v0}, Lcom/spotify/mobile/android/util/h;->a(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_80
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ay:Lcom/spotify/mobile/android/spotlets/follow/a;
if-eqz v0, :cond_80
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aD:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ac:Ljava/lang/String;
iget-boolean v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ax:Z
invoke-static {v0, p1, v1, v2, v3}, Lcom/spotify/mobile/android/ui/menus/e;->d(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;Z)V
:cond_80
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ac:Ljava/lang/String;
if-eqz v0, :cond_9d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ab:Ljava/lang/String;
invoke-static {v0}, Lcom/spotify/mobile/android/util/h;->a(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_9d
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->af:Z
if-eqz v0, :cond_9d
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aD:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ac:Ljava/lang/String;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ab:Ljava/lang/String;
invoke-static {v0, p1, v1, v2, v3}, Lcom/spotify/mobile/android/ui/menus/e;->b(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;Ljava/lang/String;)V
:cond_9d
return-void
:cond_9e
const/4 v0, 0x0
goto/16 :goto_d
.end method
.method public final d(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/x;->d(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->a()Landroid/widget/ListView;
move-result-object v0
if-eqz v0, :cond_16
const-string v0, "list"
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->a()Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
:cond_16
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aI:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/os/Bundle;)V
return-void
.end method
.method public final f()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aI:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->c()V
invoke-super {p0}, Landroid/support/v4/app/x;->f()V
return-void
.end method
.method public final g_()Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ad:Ljava/lang/String;
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public final x()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/x;->x()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aC:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V
return-void
.end method
.method public final y()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/x;->y()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aC:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V
return-void
.end method
.method public final z()V
.registers 4
invoke-super {p0}, Landroid/support/v4/app/x;->z()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->au:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aQ:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ac:Ljava/lang/String;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->i:Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->ac:Ljava/lang/String;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->aR:Lcom/spotify/mobile/android/spotlets/follow/b;
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->b(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/follow/b;)V
:cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->Y:Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/follow/FollowersCountLoader;->a()V
return-void
.end method