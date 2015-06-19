.class public Lcom/spotify/mobile/android/ui/activity/upsell/MarketingOptInActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"


# instance fields
.field private n:Lcom/spotify/mobile/android/ui/actions/a;

.field private p:Lcom/spotify/mobile/android/util/ViewUri$Verified;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/MarketingOptInActivity;->n:Lcom/spotify/mobile/android/ui/actions/a;

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->bb:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/MarketingOptInActivity;->p:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spotify/mobile/android/ui/activity/upsell/MarketingOptInActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "contactUsUrl"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private a()V
    .registers 4

    invoke-static {p0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/k;->a:Lcom/spotify/mobile/android/util/cz;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Z)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/upsell/MarketingOptInActivity;Z)V
    .registers 6

    const/4 v3, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "send_email"

    if-eqz p1, :cond_31

    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/MarketingOptInActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/spotify/mobile/android/provider/w;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz p1, :cond_33

    sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bx:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    :goto_1f
    new-instance v1, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-direct {v1, v2, v0}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/MarketingOptInActivity;->n:Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/MarketingOptInActivity;->p:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/MarketingOptInActivity;->a()V

    return-void

    :cond_31
    const/4 v0, 0x0

    goto :goto_b

    :cond_33
    sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aj:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    goto :goto_1f
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onBackPressed()V

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/MarketingOptInActivity;->a()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v1, Lcom/spotify/android/paste/widget/DialogLayout;

    invoke-direct {v1, p0}, Lcom/spotify/android/paste/widget/DialogLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/activity/upsell/MarketingOptInActivity;->setContentView(Landroid/view/View;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/upsell/MarketingOptInActivity;->setResult(I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030021

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0a022a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/upsell/MarketingOptInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "contactUsUrl"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5c

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_39
    invoke-virtual {v1, v2}, Lcom/spotify/android/paste/widget/DialogLayout;->a(Landroid/view/View;)V

    const v0, 0x7f0f026a

    new-instance v2, Lcom/spotify/mobile/android/ui/activity/upsell/MarketingOptInActivity$1;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/MarketingOptInActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/upsell/MarketingOptInActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/spotify/android/paste/widget/DialogLayout;->b(ILandroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0267

    new-instance v2, Lcom/spotify/mobile/android/ui/activity/upsell/MarketingOptInActivity$2;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/MarketingOptInActivity$2;-><init>(Lcom/spotify/mobile/android/ui/activity/upsell/MarketingOptInActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/spotify/android/paste/widget/DialogLayout;->a(ILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/MarketingOptInActivity;->p:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/upsell/MarketingOptInActivity;->a(Lcom/spotify/mobile/android/util/dw;)V

    return-void

    :cond_5c
    const v4, 0x7f0f0269

    invoke-virtual {p0, v4}, Lcom/spotify/mobile/android/ui/activity/upsell/MarketingOptInActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<a href=\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\">"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</a>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_39
.end method
