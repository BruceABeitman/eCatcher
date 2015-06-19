.class public Lcom/spotify/mobile/android/spotlets/collection/fragments/a;
.super Landroid/support/v4/app/x;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/model/l;
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.implements Lcom/spotify/mobile/android/ui/m;
.field private static final i:[Ljava/lang/String;
.field private Y:Ljava/lang/String;
.field private Z:Ljava/lang/String;
.field private aA:Lcom/spotify/mobile/android/util/z;
.field private aB:Z
.field private aC:I
.field private aD:I
.field private aE:Lcom/spotify/mobile/android/util/dw;
.field private aF:Lcom/spotify/mobile/android/util/ViewUri$Verified;
.field private aG:Lcom/spotify/mobile/android/ui/actions/a;
.field private aH:Lcom/spotify/mobile/android/ui/actions/d;
.field private aI:Lcom/spotify/mobile/android/ui/actions/c;
.field private aJ:Lcom/spotify/mobile/android/util/ar;
.field private final aK:Lcom/spotify/mobile/android/ui/contextmenu/f;
.field private aL:Lcom/spotify/mobile/android/ui/view/paste/a;
.field private aM:Landroid/view/View$OnClickListener;
.field private aN:Lcom/spotify/mobile/android/util/aa;
.field private aO:Landroid/view/View$OnClickListener;
.field private aP:Landroid/view/View$OnClickListener;
.field private aQ:Lcom/spotify/mobile/android/ui/view/g;
.field private aR:Landroid/support/v4/app/z;
.field private aS:Landroid/support/v4/app/z;
.field private aa:Ljava/lang/String;
.field private ab:Ljava/lang/String;
.field private ac:Ljava/lang/String;
.field private ad:Z
.field private ae:Z
.field private af:Z
.field private ag:Z
.field private ah:Lcom/spotify/mobile/android/util/Collection$State;
.field private ai:Lcom/spotify/mobile/android/ui/adapter/o;
.field private aj:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;
.field private ak:Landroid/database/Cursor;
.field private al:Landroid/view/View;
.field private am:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
.field private an:Lcom/spotify/mobile/android/ui/view/LoadingView;
.field private ao:Lcom/spotify/android/paste/widget/EmptyView;
.field private ap:Landroid/view/View;
.field private aq:Landroid/view/View;
.field private ar:Landroid/widget/Button;
.field private as:Landroid/os/Parcelable;
.field private at:Lcom/spotify/mobile/android/ui/prettylist/c;
.field private au:Lcom/spotify/mobile/android/util/f;
.field private av:Z
.field private aw:Landroid/os/Handler;
.field private ax:Landroid/widget/TextView;
.field private ay:Landroid/widget/ToggleButton;
.field private az:Z
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0x10
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
const-string v2, "can_undownload"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "is_available"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "is_radio_available"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "is_in_collection"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "is_complete_in_collection"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "artist_name"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string v2, "artist_uri"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string v2, "is_artist_browsable"
aput-object v2, v0, v1
const/16 v1, 0xc
const-string v2, "image_large_uri"
aput-object v2, v0, v1
const/16 v1, 0xd
const-string v2, "year"
aput-object v2, v0, v1
const/16 v1, 0xe
const-string v2, "artist_image_uri"
aput-object v2, v0, v1
const/16 v1, 0xf
const-string v2, "is_queueable"
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->i:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Landroid/support/v4/app/x;-><init>()V
iput v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aC:I
iput v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aD:I
const-class v0, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aG:Lcom/spotify/mobile/android/ui/actions/a;
const-class v0, Lcom/spotify/mobile/android/ui/actions/d;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/d;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aH:Lcom/spotify/mobile/android/ui/actions/d;
const-class v0, Lcom/spotify/mobile/android/ui/actions/c;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/c;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aI:Lcom/spotify/mobile/android/ui/actions/c;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$1;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aK:Lcom/spotify/mobile/android/ui/contextmenu/f;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$9;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$9;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aM:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$10;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$10;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aN:Lcom/spotify/mobile/android/util/aa;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$15;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$15;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aO:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$2;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aP:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$3;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$3;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aQ:Lcom/spotify/mobile/android/ui/view/g;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$5;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aR:Landroid/support/v4/app/z;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$6;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$6;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aS:Landroid/support/v4/app/z;
return-void
.end method
.method static synthetic E()[Ljava/lang/String;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->i:[Ljava/lang/String;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;I)I
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aC:I
return p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;Landroid/database/Cursor;)Landroid/database/Cursor;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ak:Landroid/database/Cursor;
return-object p1
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/spotify/mobile/android/spotlets/collection/fragments/a;
.registers 5
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "collection_album_uri"
invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "title"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "is_sub_fragment"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
new-instance v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;
invoke-direct {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;-><init>()V
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->c_(Landroid/os/Bundle;)V
return-object v1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;Lcom/spotify/mobile/android/util/Collection$State;)Lcom/spotify/mobile/android/util/Collection$State;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ah:Lcom/spotify/mobile/android/util/Collection$State;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aF:Lcom/spotify/mobile/android/util/ViewUri$Verified;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->Y:Ljava/lang/String;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->az:Z
return p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;I)I
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aD:I
return p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/ui/actions/a;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aG:Lcom/spotify/mobile/android/ui/actions/a;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->Z:Ljava/lang/String;
return-object p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;Landroid/database/Cursor;)V
.registers 4
const/4 v0, 0x0
const/4 v1, -0x1
invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z
:goto_5
invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
move-result v1
if-eqz v1, :cond_13
const/16 v1, 0x13
invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
add-int/2addr v0, v1
goto :goto_5
:cond_13
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aL:Lcom/spotify/mobile/android/ui/view/paste/a;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/view/paste/a;->a(I)V
return-void
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aB:Z
return p1
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ac:Ljava/lang/String;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aa:Ljava/lang/String;
return-object p1
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ad:Z
return p1
.end method
.method static synthetic d(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/ui/actions/d;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aH:Lcom/spotify/mobile/android/ui/actions/d;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ab:Ljava/lang/String;
return-object p1
.end method
.method static synthetic d(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ae:Z
return p1
.end method
.method static synthetic e(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)V
.registers 5
const/4 v3, 0x0
const/4 v2, 0x1
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->at:Lcom/spotify/mobile/android/ui/prettylist/c;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ah:Lcom/spotify/mobile/android/util/Collection$State;
if-eqz v0, :cond_17
sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$7;->a:[I
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ah:Lcom/spotify/mobile/android/util/Collection$State;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/Collection$State;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_54
:cond_17
:goto_17
return-void
:pswitch_18
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ay:Landroid/widget/ToggleButton;
const v1, 0x7f0f00f3
invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setText(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ay:Landroid/widget/ToggleButton;
invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ay:Landroid/widget/ToggleButton;
invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V
goto :goto_17
:pswitch_2b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ay:Landroid/widget/ToggleButton;
const v1, 0x7f0f00f2
invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setText(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ay:Landroid/widget/ToggleButton;
invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ay:Landroid/widget/ToggleButton;
iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->az:Z
invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V
goto :goto_17
:pswitch_40
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ay:Landroid/widget/ToggleButton;
const v1, 0x7f0f00f4
invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setText(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ay:Landroid/widget/ToggleButton;
invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ay:Landroid/widget/ToggleButton;
invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V
goto :goto_17
nop
:pswitch_data_54
.packed-switch 0x1
:pswitch_18
:pswitch_2b
:pswitch_40
.end packed-switch
.end method
.method static synthetic e(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->af:Z
return p1
.end method
.method static synthetic f(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)V
.registers 7
const/4 v5, 0x0
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->H:Lcom/spotify/mobile/android/util/ea;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->Z:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$7;->a:[I
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ah:Lcom/spotify/mobile/android/util/Collection$State;
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/Collection$State;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_7e
:goto_16
return-void
:pswitch_17
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aG:Lcom/spotify/mobile/android/ui/actions/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aF:Lcom/spotify/mobile/android/util/ViewUri$Verified;
const-string v3, "album"
sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->V:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-static {v3, v4, v5, v5}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
const-class v1, Lcom/spotify/mobile/android/ui/actions/c;
invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->Z:Ljava/lang/String;
invoke-static {v1, v0, v2}, Lcom/spotify/mobile/android/ui/actions/c;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
goto :goto_16
:pswitch_39
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aG:Lcom/spotify/mobile/android/ui/actions/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aF:Lcom/spotify/mobile/android/util/ViewUri$Verified;
const-string v3, "album"
sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->Y:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-static {v3, v4, v5, v5}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
const-class v1, Lcom/spotify/mobile/android/ui/actions/c;
invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->Z:Ljava/lang/String;
invoke-static {v1, v0, v2}, Lcom/spotify/mobile/android/ui/actions/c;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
goto :goto_16
:pswitch_5b
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aG:Lcom/spotify/mobile/android/ui/actions/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aF:Lcom/spotify/mobile/android/util/ViewUri$Verified;
const-string v3, "album"
sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->Z:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-static {v3, v4, v5, v5}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
const-class v1, Lcom/spotify/mobile/android/ui/actions/c;
invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->Z:Ljava/lang/String;
invoke-static {v1, v0, v2}, Lcom/spotify/mobile/android/ui/actions/c;->b(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
goto :goto_16
nop
:pswitch_data_7e
.packed-switch 0x1
:pswitch_17
:pswitch_39
:pswitch_5b
.end packed-switch
.end method
.method static synthetic f(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ag:Z
return p1
.end method
.method static synthetic g(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ab:Ljava/lang/String;
return-object v0
.end method
.method static synthetic h(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aa:Ljava/lang/String;
return-object v0
.end method
.method static synthetic i(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/ui/view/paste/a;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aL:Lcom/spotify/mobile/android/ui/view/paste/a;
return-object v0
.end method
.method static synthetic j(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->Z:Ljava/lang/String;
return-object v0
.end method
.method static synthetic k(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/ui/actions/c;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aI:Lcom/spotify/mobile/android/ui/actions/c;
return-object v0
.end method
.method static synthetic l(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/ui/prettylist/c;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->at:Lcom/spotify/mobile/android/ui/prettylist/c;
return-object v0
.end method
.method static synthetic m(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/util/ar;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aJ:Lcom/spotify/mobile/android/util/ar;
return-object v0
.end method
.method static synthetic n(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->Y:Ljava/lang/String;
return-object v0
.end method
.method static synthetic o(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/android/paste/widget/EmptyView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ao:Lcom/spotify/android/paste/widget/EmptyView;
return-object v0
.end method
.method static synthetic p(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)V
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aj:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->a()Landroid/database/Cursor;
move-result-object v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aj:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->a()Landroid/database/Cursor;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/provider/ac;->a(Landroid/database/Cursor;)Z
move-result v0
if-nez v0, :cond_16
:goto_15
:cond_15
return-void
:cond_16
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ak:Landroid/database/Cursor;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ak:Landroid/database/Cursor;
invoke-static {v0}, Lcom/spotify/mobile/android/provider/ac;->a(Landroid/database/Cursor;)Z
move-result v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->an:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->d()Z
move-result v0
if-eqz v0, :cond_3d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->an:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->b()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->at:Lcom/spotify/mobile/android/ui/prettylist/c;
if-eqz v0, :cond_3d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aw:Landroid/os/Handler;
new-instance v2, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$4;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$4;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)V
invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_3d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aj:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->getCount()I
move-result v0
if-lez v0, :cond_60
const/4 v0, 0x1
:goto_46
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ap:Landroid/view/View;
if-eqz v0, :cond_62
const/16 v2, 0x8
:goto_4c
invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V
if-nez v0, :cond_64
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->an:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->c()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->at:Lcom/spotify/mobile/android/ui/prettylist/c;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->at:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(Z)V
goto :goto_15
:cond_60
move v0, v1
goto :goto_46
:cond_62
move v2, v1
goto :goto_4c
:cond_64
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->an:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->d()Z
move-result v0
if-nez v0, :cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aq:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto :goto_15
.end method
.method static synthetic q(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ax:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic r(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ag:Z
return v0
.end method
.method static synthetic s(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Landroid/widget/Button;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ar:Landroid/widget/Button;
return-object v0
.end method
.method static synthetic t(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aC:I
return v0
.end method
.method static synthetic u(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aD:I
return v0
.end method
.method static synthetic v(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->am:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
return-object v0
.end method
.method static synthetic w(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aj:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;
return-object v0
.end method
.method static synthetic x(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Lcom/spotify/mobile/android/ui/adapter/o;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ai:Lcom/spotify/mobile/android/ui/adapter/o;
return-object v0
.end method
.method static synthetic y(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Landroid/os/Parcelable;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->as:Landroid/os/Parcelable;
return-object v0
.end method
.method static synthetic z(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)Landroid/os/Parcelable;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->as:Landroid/os/Parcelable;
return-object v0
.end method
.method public final D()Landroid/support/v4/app/Fragment;
.registers 1
return-object p0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 13
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->av:Z
if-nez v0, :cond_281
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/music/MainActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_27b
invoke-static {v0}, Lcom/spotify/mobile/android/ui/prettylist/e;->b(Landroid/app/Activity;)Lcom/spotify/mobile/android/ui/prettylist/c;
move-result-object v1
:goto_14
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->at:Lcom/spotify/mobile/android/ui/prettylist/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->at:Lcom/spotify/mobile/android/ui/prettylist/c;
const v2, 0x7f010186
invoke-static {v0, v2}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;I)I
move-result v0
invoke-interface {v1, v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->at:Lcom/spotify/mobile/android/ui/prettylist/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->Y:Ljava/lang/String;
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(Ljava/lang/String;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->at:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v2, 0x7f030081
const/4 v3, 0x0
invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
const v0, 0x7f0a024d
invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ax:Landroid/widget/TextView;
const v0, 0x7f0a02e7
invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ToggleButton;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ay:Landroid/widget/ToggleButton;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ay:Landroid/widget/ToggleButton;
new-instance v3, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$12;
invoke-direct {v3, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$12;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)V
invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-interface {v1, v2}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->at:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->j()Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aq:Landroid/view/View;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->at:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->c()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/util/dv;->a(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_8f
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const/4 v2, 0x0
invoke-static {v1, v2}, Lcom/spotify/mobile/android/ui/stuff/g;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->al:Landroid/view/View;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->al:Landroid/view/View;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aM:Landroid/view/View$OnClickListener;
invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->at:Lcom/spotify/mobile/android/ui/prettylist/c;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->al:Landroid/view/View;
invoke-interface {v1, v2}, Lcom/spotify/mobile/android/ui/prettylist/c;->b(Landroid/view/View;)V
:cond_8f
new-instance v1, Lcom/spotify/mobile/android/ui/view/paste/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-direct {v1, v2}, Lcom/spotify/mobile/android/ui/view/paste/a;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aL:Lcom/spotify/mobile/android/ui/view/paste/a;
new-instance v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$13;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$13;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)V
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aL:Lcom/spotify/mobile/android/ui/view/paste/a;
invoke-virtual {v2, v1}, Lcom/spotify/mobile/android/ui/view/paste/a;->a(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aL:Lcom/spotify/mobile/android/ui/view/paste/a;
const v2, 0x7f0f002f
invoke-virtual {p0, v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->b(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/ui/view/paste/a;->c(Ljava/lang/String;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->at:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->f()Lcom/spotify/android/paste/widget/HeaderView;
move-result-object v1
new-instance v2, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$14;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$14;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)V
invoke-virtual {v1, v2}, Lcom/spotify/android/paste/widget/HeaderView;->a(Landroid/support/v4/view/ah;)V
move-object v1, v0
:goto_bf
new-instance v3, Landroid/widget/FrameLayout;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v2, 0x1010054
invoke-static {v0, v2}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;I)I
move-result v0
invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V
new-instance v0, Landroid/widget/FrameLayout$LayoutParams;
const/4 v2, -0x1
const/4 v4, -0x1
invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aq:Landroid/view/View;
invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aq:Landroid/view/View;
const/4 v2, 0x4
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aq:Landroid/view/View;
invoke-static {p1, v0, v2}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/view/View;)Lcom/spotify/mobile/android/ui/view/LoadingView;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->an:Lcom/spotify/mobile/android/ui/view/LoadingView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->an:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->d(Landroid/content/Context;)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ap:Landroid/view/View;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ap:Landroid/view/View;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Landroid/view/View;)Lcom/spotify/android/paste/widget/EmptyView;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ao:Lcom/spotify/android/paste/widget/EmptyView;
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ao:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_299
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->av:Z
if-nez v0, :cond_299
const/4 v0, 0x1
move v2, v0
:goto_124
new-instance v5, Landroid/widget/LinearLayout;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
if-eqz v2, :cond_29d
const/4 v0, 0x0
:goto_130
invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V
const/4 v0, 0x1
invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V
new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
const/4 v6, -0x1
const/4 v7, -0x2
invoke-direct {v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0, v5}, Lcom/spotify/android/paste/widget/h;->d(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;
move-result-object v6
const v0, 0x7f0a0124
invoke-virtual {v6, v0}, Landroid/widget/Button;->setId(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aO:Landroid/view/View$OnClickListener;
invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0f02bb
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->b(I)Ljava/lang/String;
move-result-object v0
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v7
invoke-virtual {v0, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
const/4 v0, 0x1
invoke-virtual {v6, v0}, Landroid/widget/Button;->setSingleLine(Z)V
invoke-virtual {v6}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout$LayoutParams;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v7
invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;
move-result-object v7
const v8, 0x7f0b0066
invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v7
iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I
if-eqz v2, :cond_187
const/high16 v7, 0x3f80
iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F
:cond_187
invoke-virtual {v6, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0, v5}, Lcom/spotify/android/paste/widget/h;->b(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ar:Landroid/widget/Button;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ar:Landroid/widget/Button;
const v7, 0x7f0a0125
invoke-virtual {v0, v7}, Landroid/widget/Button;->setId(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ar:Landroid/widget/Button;
iget-object v7, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aP:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ar:Landroid/widget/Button;
const v7, 0x7f0f02ba
invoke-virtual {p0, v7}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->b(I)Ljava/lang/String;
move-result-object v7
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ar:Landroid/widget/Button;
const/4 v7, 0x1
invoke-virtual {v0, v7}, Landroid/widget/Button;->setSingleLine(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ar:Landroid/widget/Button;
sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
invoke-virtual {v0, v7}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ar:Landroid/widget/Button;
invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout$LayoutParams;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v7
invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;
move-result-object v7
const v8, 0x7f0b0066
invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v7
iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v7
invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;
move-result-object v7
const v8, 0x7f0b0065
invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v7
if-eqz v2, :cond_2a0
iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
const/high16 v2, 0x3f80
iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F
:goto_1f4
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ar:Landroid/widget/Button;
invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ar:Landroid/widget/Button;
invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
invoke-virtual {v4, v5}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ap:Landroid/view/View;
const/16 v2, 0x8
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ap:Landroid/view/View;
invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
sget-object v4, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v4}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v4
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aK:Lcom/spotify/mobile/android/ui/contextmenu/f;
invoke-direct {v0, v2, v4, v5}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;-><init>(Landroid/content/Context;ZLcom/spotify/mobile/android/ui/contextmenu/f;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aj:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aj:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;
const v2, 0x7f0f02d0
invoke-virtual {p0, v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->b(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->a(Ljava/lang/String;)V
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-direct {v0, v2}, Lcom/spotify/mobile/android/ui/adapter/o;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ai:Lcom/spotify/mobile/android/ui/adapter/o;
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v0
if-eqz v0, :cond_2a4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ai:Lcom/spotify/mobile/android/ui/adapter/o;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aj:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;
const v4, 0x7f0f0334
const/4 v5, 0x0
invoke-virtual {v0, v2, v4, v5}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;II)V
:goto_24d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ai:Lcom/spotify/mobile/android/ui/adapter/o;
const/4 v2, 0x0
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/adapter/o;->d(I)Z
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/k;->a(Landroid/content/Context;)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->am:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->am:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aQ:Lcom/spotify/mobile/android/ui/view/g;
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->a(Lcom/spotify/mobile/android/ui/view/g;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->am:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
const/4 v2, 0x0
const/4 v4, 0x0
invoke-virtual {v1, v0, v2, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ai:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$11;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$11;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)V
invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
return-object v3
:cond_27b
invoke-static {v0}, Lcom/spotify/mobile/android/ui/prettylist/e;->a(Landroid/app/Activity;)Lcom/spotify/mobile/android/ui/prettylist/c;
move-result-object v1
goto/16 :goto_14
:cond_281
const v0, 0x7f030086
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aq:Landroid/view/View;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aq:Landroid/view/View;
const v1, 0x102000a
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
move-object v1, v0
goto/16 :goto_bf
:cond_299
const/4 v0, 0x0
move v2, v0
goto/16 :goto_124
:cond_29d
const/4 v0, 0x1
goto/16 :goto_130
:cond_2a0
iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
goto/16 :goto_1f4
:cond_2a4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ai:Lcom/spotify/mobile/android/ui/adapter/o;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aj:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;
const/4 v4, 0x0
const/4 v5, 0x0
invoke-virtual {v0, v2, v4, v5}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V
goto :goto_24d
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->Y:Ljava/lang/String;
if-nez v0, :cond_c
const v0, 0x7f0f0032
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_b
return-object v0
:cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->Y:Ljava/lang/String;
goto :goto_b
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1}, Landroid/support/v4/app/x;->a(Landroid/os/Bundle;)V
if-eqz p1, :cond_d
const-string v0, "list"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->as:Landroid/os/Parcelable;
:cond_d
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "collection_album_uri"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ac:Ljava/lang/String;
const-string v1, "title"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->Y:Ljava/lang/String;
const-string v1, "is_sub_fragment"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->av:Z
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aK:Lcom/spotify/mobile/android/util/ea;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ac:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aF:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aF:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aE:Lcom/spotify/mobile/android/util/dw;
new-instance v0, Lcom/spotify/mobile/android/util/ar;
const/4 v1, 0x2
new-instance v2, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$8;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a$8;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/a;)V
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ar;-><init>(ILcom/spotify/mobile/android/util/as;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aJ:Lcom/spotify/mobile/android/util/ar;
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->av:Z
if-nez v0, :cond_70
const/4 v0, 0x1
:goto_51
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->a(Z)V
new-instance v0, Lcom/spotify/mobile/android/util/f;
invoke-direct {v0}, Lcom/spotify/mobile/android/util/f;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->au:Lcom/spotify/mobile/android/util/f;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aw:Landroid/os/Handler;
new-instance v0, Lcom/spotify/mobile/android/util/z;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aN:Lcom/spotify/mobile/android/util/aa;
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/z;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/aa;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aA:Lcom/spotify/mobile/android/util/z;
return-void
:cond_70
const/4 v0, 0x0
goto :goto_51
.end method
.method public final a(Landroid/view/Menu;)V
.registers 2
invoke-interface {p1}, Landroid/view/Menu;->clear()V
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->c(Landroid/view/Menu;)V
return-void
.end method
.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
.registers 13
invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I
move-result v0
sub-int v0, p3, v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ai:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/adapter/o;->b(I)I
move-result v0
packed-switch v0, :pswitch_data_7c
:goto_f
return-void
:pswitch_10
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ac:Ljava/lang/String;
invoke-static {v0}, Lcom/spotify/mobile/android/provider/c;->d(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/model/n;
sget-object v2, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v2
if-eqz v2, :cond_55
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aG:Lcom/spotify/mobile/android/ui/actions/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aF:Lcom/spotify/mobile/android/util/ViewUri$Verified;
const-string v3, "album"
sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->ax:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-interface {v0}, Lcom/spotify/mobile/android/model/n;->getTrackUri()Ljava/lang/String;
move-result-object v0
invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
invoke-static {v3, v4, v0, v5}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v0
invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->al:Landroid/view/View;
instance-of v0, v0, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;
if-eqz v0, :cond_4d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->al:Landroid/view/View;
check-cast v0, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->b()V
goto :goto_f
:cond_4d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->au:Lcom/spotify/mobile/android/util/f;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->al:Landroid/view/View;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->a(Lcom/spotify/mobile/android/util/f;Landroid/view/View;)V
goto :goto_f
:cond_55
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aG:Lcom/spotify/mobile/android/ui/actions/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aF:Lcom/spotify/mobile/android/util/ViewUri$Verified;
const-string v4, "album"
sget-object v5, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aw:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-interface {v0}, Lcom/spotify/mobile/android/model/n;->getTrackUri()Ljava/lang/String;
move-result-object v0
invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v6
invoke-static {v4, v5, v0, v6}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v0
invoke-static {v2, v3, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aH:Lcom/spotify/mobile/android/ui/actions/d;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aF:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {v0, v2, v1, p4, p5}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;J)V
goto :goto_f
:pswitch_data_7c
.packed-switch 0x0
:pswitch_10
.end packed-switch
.end method
.method public final c(Landroid/os/Bundle;)V
.registers 6
const/4 v3, 0x0
invoke-super {p0, p1}, Landroid/support/v4/app/x;->c(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->a()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->an:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a015e
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aR:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a0161
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aS:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a015f
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aA:Lcom/spotify/mobile/android/util/z;
invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
return-void
.end method
.method public final c(Landroid/view/Menu;)V
.registers 9
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aj:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;
if-eqz v0, :cond_ba
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aj:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->getCount()I
move-result v0
if-lez v0, :cond_ba
const/4 v0, 0x1
move v6, v0
:goto_e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->Z:Ljava/lang/String;
if-eqz v0, :cond_b9
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_30
if-eqz v6, :cond_30
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aF:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->Z:Ljava/lang/String;
invoke-static {v2}, Lcom/spotify/mobile/android/provider/c;->d(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-static {v0, p1, v1, v2}, Lcom/spotify/mobile/android/ui/menus/a;->a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->al:Landroid/view/View;
:cond_30
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aF:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ah:Lcom/spotify/mobile/android/util/Collection$State;
iget-boolean v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->az:Z
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->Z:Ljava/lang/String;
move-object v1, p1
invoke-static/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/Collection$State;ZLjava/lang/String;)V
if-eqz v6, :cond_6d
iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aC:I
invoke-static {v0}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->a(I)Z
move-result v0
if-nez v0, :cond_4e
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ad:Z
if-eqz v0, :cond_6d
:cond_4e
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aF:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ac:Ljava/lang/String;
invoke-static {v1}, Lcom/spotify/mobile/android/provider/c;->c(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
new-instance v1, Lcom/spotify/mobile/android/util/SpotifyLink;
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ac:Ljava/lang/String;
invoke-direct {v1, v4}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v4
iget v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aC:I
iget v6, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aD:I
move-object v1, p1
invoke-static/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;II)V
:cond_6d
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aB:Z
if-eqz v0, :cond_7c
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aF:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ac:Ljava/lang/String;
invoke-static {v0, p1, v1, v2}, Lcom/spotify/mobile/android/ui/menus/e;->b(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
:cond_7c
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->af:Z
if-eqz v0, :cond_8d
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aF:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->Z:Ljava/lang/String;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->Y:Ljava/lang/String;
invoke-static {v0, p1, v1, v2, v3}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;Ljava/lang/String;)V
:cond_8d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ab:Ljava/lang/String;
if-eqz v0, :cond_aa
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aa:Ljava/lang/String;
invoke-static {v0}, Lcom/spotify/mobile/android/util/h;->a(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_aa
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ag:Z
if-eqz v0, :cond_aa
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aF:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ab:Ljava/lang/String;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aa:Ljava/lang/String;
invoke-static {v0, p1, v1, v2, v3}, Lcom/spotify/mobile/android/ui/menus/e;->b(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;Ljava/lang/String;)V
:cond_aa
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ae:Z
if-eqz v0, :cond_b9
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aF:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->Z:Ljava/lang/String;
invoke-static {v0, p1, v1, v2}, Lcom/spotify/mobile/android/ui/menus/a;->b(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
:cond_b9
return-void
:cond_ba
const/4 v0, 0x0
move v6, v0
goto/16 :goto_e
.end method
.method public final d(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/x;->d(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->a()Landroid/widget/ListView;
move-result-object v0
if-eqz v0, :cond_16
const-string v0, "list"
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->a()Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
:cond_16
return-void
.end method
.method public final g_()Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->ac:Ljava/lang/String;
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public final x()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/x;->x()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aE:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V
return-void
.end method
.method public final y()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/x;->y()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;->aE:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V
return-void
.end method