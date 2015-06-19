.class public Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"


# instance fields
.field private A:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/spotify/mobile/android/ui/actions/a;

.field private p:Landroid/widget/AutoCompleteTextView;

.field private q:Landroid/widget/EditText;

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/Button;

.field private t:Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;

.field private u:Landroid/content/Intent;

.field private v:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$ShareType;

.field private w:Lcom/spotify/mobile/android/util/am;

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:Lcom/spotify/mobile/android/ui/adapter/ad;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->n:Lcom/spotify/mobile/android/ui/actions/a;

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$6;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$6;-><init>(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->A:Landroid/support/v4/app/z;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$ShareType;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "intent"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$ShareType;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->v:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$ShareType;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->x:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->q:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->u:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)Lcom/spotify/mobile/android/ui/actions/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->n:Lcom/spotify/mobile/android/ui/actions/a;

    return-object v0
.end method

.method static synthetic f(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)Landroid/widget/AutoCompleteTextView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->p:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic g(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->t:Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;

    return-object v0
.end method

.method static synthetic h(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->r:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic i(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->y:Z

    return v0
.end method

.method static synthetic j(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->y:Z

    return v0
.end method

.method static synthetic k(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)Lcom/spotify/mobile/android/ui/adapter/ad;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->z:Lcom/spotify/mobile/android/ui/adapter/ad;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 13

    const/4 v10, 0x6

    const/4 v9, -0x1

    const/4 v8, -0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->t:Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->u:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_172

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$ShareType;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->v:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$ShareType;

    :goto_37
    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_57

    const-string v0, "selected_username"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->x:Ljava/lang/String;

    const-string v0, "restore_input_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->y:Z

    const-string v0, "message_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "user_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_57
    new-instance v2, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$1;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->e()Landroid/support/v4/app/y;

    move-result-object v3

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->A:Landroid/support/v4/app/z;

    invoke-direct {v2, p0, v3, v4}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;Landroid/support/v4/app/y;Landroid/support/v4/app/z;)V

    iput-object v2, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->w:Lcom/spotify/mobile/android/util/am;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->w:Lcom/spotify/mobile/android/util/am;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/am;->a()V

    new-instance v2, Lcom/spotify/mobile/android/ui/adapter/ad;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/adapter/ad;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->z:Lcom/spotify/mobile/android/ui/adapter/ad;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->z:Lcom/spotify/mobile/android/ui/adapter/ad;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->w:Lcom/spotify/mobile/android/util/am;

    invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/ui/adapter/ad;->a(Landroid/widget/Filter;)V

    new-instance v2, Lcom/spotify/android/paste/widget/DialogLayout;

    invoke-direct {v2, p0}, Lcom/spotify/android/paste/widget/DialogLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/spotify/android/paste/widget/DialogLayout;->a(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v9, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3}, Lcom/spotify/android/paste/widget/DialogLayout;->a(Landroid/view/View;)V

    const v4, 0x7f0f0376

    new-instance v5, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2;

    invoke-direct {v5, p0}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2;-><init>(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)V

    invoke-virtual {v2, v4, v5}, Lcom/spotify/android/paste/widget/DialogLayout;->a(ILandroid/view/View$OnClickListener;)V

    const v4, 0x7f0f0375

    new-instance v5, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$3;

    invoke-direct {v5, p0}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$3;-><init>(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)V

    invoke-virtual {v2, v4, v5}, Lcom/spotify/android/paste/widget/DialogLayout;->b(ILandroid/view/View$OnClickListener;)V

    invoke-virtual {v2}, Lcom/spotify/android/paste/widget/DialogLayout;->b()Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->r:Landroid/widget/Button;

    invoke-virtual {v2}, Lcom/spotify/android/paste/widget/DialogLayout;->a()Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->s:Landroid/widget/Button;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->v:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$ShareType;

    sget-object v4, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$ShareType;->a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$ShareType;

    if-ne v2, v4, :cond_cc

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->r:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_cc
    invoke-static {p0}, Lcom/spotify/android/paste/widget/h;->b(Landroid/content/Context;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    iput-object v2, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->p:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->p:Landroid/widget/AutoCompleteTextView;

    const v4, 0x7f0a01e8

    invoke-virtual {v2, v4}, Landroid/widget/AutoCompleteTextView;->setId(I)V

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->p:Landroid/widget/AutoCompleteTextView;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->z:Lcom/spotify/mobile/android/ui/adapter/ad;

    invoke-virtual {v2, v4}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->p:Landroid/widget/AutoCompleteTextView;

    const v4, 0x7f0f0379

    invoke-virtual {v2, v4}, Landroid/widget/AutoCompleteTextView;->setHint(I)V

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->p:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v7}, Landroid/widget/AutoCompleteTextView;->setSingleLine(Z)V

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->p:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v10}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->p:Landroid/widget/AutoCompleteTextView;

    const/16 v4, 0x4000

    invoke-virtual {v2, v4}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->p:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->p:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$4;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$4;-><init>(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->p:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$5;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$5;-><init>(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {p0}, Lcom/spotify/android/paste/widget/h;->a(Landroid/content/Context;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->q:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->q:Landroid/widget/EditText;

    const v2, 0x7f0a01bb

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setId(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->q:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    or-int/lit16 v1, v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->q:Landroid/widget/EditText;

    const v1, 0x7f0f0378

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v6, v1, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->v:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$ShareType;

    sget-object v2, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$ShareType;->a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$ShareType;

    if-ne v1, v2, :cond_163

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->p:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_163
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v3, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->ax:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->a(Lcom/spotify/mobile/android/util/dw;)V

    return-void

    :cond_172
    sget-object v0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$ShareType;->a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$ShareType;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->v:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$ShareType;

    goto/16 :goto_37
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onDestroy()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->t:Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;->b()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "selected_username"

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->x:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "restore_input_user"

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->p:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_3b

    const/4 v0, 0x1

    :goto_19
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "message_text"

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "user_text"

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->p:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3b
    const/4 v0, 0x0

    goto :goto_19
.end method
