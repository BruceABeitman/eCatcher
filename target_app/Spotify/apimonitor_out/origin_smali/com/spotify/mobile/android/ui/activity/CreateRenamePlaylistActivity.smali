.class public Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"


# instance fields
.field final n:Landroid/text/TextWatcher;

.field final p:Landroid/view/View$OnClickListener;

.field final q:Landroid/view/View$OnClickListener;

.field private final r:[Ljava/lang/String;

.field private s:Landroid/widget/EditText;

.field private t:Landroid/widget/Button;

.field private u:Landroid/widget/Button;

.field private v:Lcom/spotify/mobile/android/ui/activity/g;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->r:[Ljava/lang/String;

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->n:Landroid/text/TextWatcher;

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$2;-><init>(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->p:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$3;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$3;-><init>(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->q:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    const-string v0, "com.spotify.mobile.android.ui.activity.action.RENAME"

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    const-string v0, "com.spotify.mobile.android.ui.activity.action.ADD_ITEM_TO_NEW_PLAYLIST"

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "default_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6

    invoke-static {p0, p1, p3}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "folder_uri"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->t:Landroid/widget/Button;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    const-string v0, "com.spotify.mobile.android.ui.activity.action.CREATE_PLAYLIST"

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "folder_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->s:Landroid/widget/EditText;

    return-object v0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;)Lcom/spotify/mobile/android/ui/activity/g;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->v:Lcom/spotify/mobile/android/ui/activity/g;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->r:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->y:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 14

    const v3, 0x7f0f01d0

    const/4 v11, -0x1

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->w:Ljava/lang/String;

    if-eqz p1, :cond_1e

    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->w:Ljava/lang/String;

    :cond_1e
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "uri"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->x:Ljava/lang/String;

    if-eqz p1, :cond_34

    const-string v0, "uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->x:Ljava/lang/String;

    :cond_34
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "folder_uri"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->y:Ljava/lang/String;

    if-eqz p1, :cond_4a

    const-string v0, "folder_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->y:Ljava/lang/String;

    :cond_4a
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "default_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->z:Ljava/lang/String;

    if-eqz p1, :cond_60

    const-string v0, "default_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->z:Ljava/lang/String;

    :cond_60
    const-string v0, "com.spotify.mobile.android.ui.activity.action.CREATE_PLAYLIST"

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f01d4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/spotify/mobile/android/ui/activity/c;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->y:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lcom/spotify/mobile/android/ui/activity/c;-><init>(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->v:Lcom/spotify/mobile/android/ui/activity/g;

    move-object v3, v0

    move-object v4, v2

    move-object v2, v1

    :goto_89
    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->F:Lcom/spotify/mobile/android/ui/fragments/logic/j;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/j;->e()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1d8

    move v7, v5

    :goto_98
    if-eqz v7, :cond_1db

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->G:Lcom/spotify/mobile/android/ui/fragments/logic/j;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/j;->e()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v8, 0x2

    if-ne v0, v8, :cond_1db

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/a;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/a;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/activity/a;->d(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/a;->e(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/activity/a;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/a;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/a;->b(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/a;->b()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->finish()V

    :goto_cc
    return-void

    :cond_cd
    const-string v0, "com.spotify.mobile.android.ui.activity.action.CREATE_FOLDER"

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f7

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f01cc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/spotify/mobile/android/ui/activity/b;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->y:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lcom/spotify/mobile/android/ui/activity/b;-><init>(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->v:Lcom/spotify/mobile/android/ui/activity/g;

    move-object v3, v0

    move-object v4, v2

    move-object v2, v1

    goto :goto_89

    :cond_f7
    const-string v0, "com.spotify.mobile.android.ui.activity.action.RENAME"

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_181

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->x:Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->x:Ljava/lang/String;

    const-string v3, "Don\'t start this activity to rename a playlist without specifying the playlist uri"

    invoke-static {v0, v3}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/spotify/mobile/android/util/SpotifyLink;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->x:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$6;->a:[I

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_2b6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got unepexted link type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    move-object v0, v1

    :goto_137
    const-string v3, "Uri is neither a folder nor a playlist."

    invoke-static {v0, v3}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f01d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/spotify/mobile/android/ui/activity/h;

    iget-object v7, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->x:Ljava/lang/String;

    invoke-direct {v4, p0, v7}, Lcom/spotify/mobile/android/ui/activity/h;-><init>(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->v:Lcom/spotify/mobile/android/ui/activity/g;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->e()Landroid/support/v4/app/y;

    move-result-object v4

    const v7, 0x7f0a0173

    new-instance v8, Lcom/spotify/mobile/android/ui/activity/e;

    iget-object v9, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->x:Ljava/lang/String;

    new-instance v10, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$4;

    invoke-direct {v10, p0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$4;-><init>(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;)V

    invoke-direct {v8, p0, v9, v10}, Lcom/spotify/mobile/android/ui/activity/e;-><init>(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;Ljava/lang/String;Lcom/spotify/mobile/android/ui/activity/f;)V

    invoke-virtual {v4, v7, v1, v8}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    move-object v4, v0

    goto/16 :goto_89

    :pswitch_169
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f01cd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_137

    :pswitch_175
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f01d6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_137

    :cond_181
    const-string v0, "com.spotify.mobile.android.ui.activity.action.ADD_ITEM_TO_NEW_PLAYLIST"

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bb

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->x:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f01d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0f01ce

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->x:Ljava/lang/String;

    const-string v7, "Don\'t start this activity to create a playlist and adding tracks or album without specifying the track or album uri to add"

    invoke-static {v4, v7}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/spotify/mobile/android/ui/activity/d;

    iget-object v7, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->x:Ljava/lang/String;

    iget-object v8, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->y:Ljava/lang/String;

    invoke-direct {v4, p0, v7, v8}, Lcom/spotify/mobile/android/ui/activity/d;-><init>(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->v:Lcom/spotify/mobile/android/ui/activity/g;

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_89

    :cond_1bb
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Intent action "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d8
    move v7, v6

    goto/16 :goto_98

    :cond_1db
    new-instance v8, Lcom/spotify/android/paste/widget/DialogLayout;

    invoke-direct {v8, p0}, Lcom/spotify/android/paste/widget/DialogLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v8}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {v8, v4}, Lcom/spotify/android/paste/widget/DialogLayout;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v3, v0}, Lcom/spotify/android/paste/widget/DialogLayout;->a(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f01cf

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v0, v3}, Lcom/spotify/android/paste/widget/DialogLayout;->b(ILandroid/view/View$OnClickListener;)V

    invoke-virtual {v8}, Lcom/spotify/android/paste/widget/DialogLayout;->b()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->t:Landroid/widget/Button;

    invoke-virtual {v8}, Lcom/spotify/android/paste/widget/DialogLayout;->a()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->u:Landroid/widget/Button;

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b00af

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {v3, v6, v0, v6, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-static {p0}, Lcom/spotify/android/paste/widget/h;->a(Landroid/content/Context;)Landroid/widget/EditText;

    move-result-object v4

    iput-object v4, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->s:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->s:Landroid/widget/EditText;

    const/16 v9, 0x4000

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->s:Landroid/widget/EditText;

    const/4 v9, 0x6

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->s:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->s:Landroid/widget/EditText;

    const v9, 0x7f0f01d5

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setHint(I)V

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->s:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->n:Landroid/text/TextWatcher;

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->z:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_24b

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->s:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->z:Ljava/lang/String;

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_24b
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v6, v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0, v4}, Lcom/spotify/android/paste/widget/h;->e(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v9, 0x7f0f01d2

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(I)V

    new-instance v9, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$5;

    invoke-direct {v9, p0, v1, v2}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$5;-><init>(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->s:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v7, :cond_28b

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->G:Lcom/spotify/mobile/android/ui/fragments/logic/j;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/j;->e()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_28b

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_28b
    invoke-virtual {v8, v3}, Lcom/spotify/android/paste/widget/DialogLayout;->a(Landroid/view/View;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->t:Landroid/widget/Button;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->s:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2b3

    move v0, v5

    :goto_2a5
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aa:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->a(Lcom/spotify/mobile/android/util/dw;)V

    goto/16 :goto_cc

    :cond_2b3
    move v0, v6

    goto :goto_2a5

    nop

    :pswitch_data_2b6
    .packed-switch 0x1
        :pswitch_169
        :pswitch_175
        :pswitch_175
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "action"

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->w:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uri"

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->x:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "folder_uri"

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->y:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "default_name"

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->z:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
