.class public Lcom/bbm/ui/activities/TapToInviteActivity;
.super Lcom/bbm/ui/activities/ajy;
.source "TapToInviteActivity.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/activities/ajy;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/activities/TapToInviteActivity;->a:Z

    new-instance v0, Lcom/bbm/ui/fv;

    invoke-direct {v0}, Lcom/bbm/ui/fv;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/TapToInviteActivity;->a(Lcom/bbm/ui/activities/aka;)V

    new-instance v0, Lcom/bbm/ui/voice/o;

    invoke-direct {v0}, Lcom/bbm/ui/voice/o;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/TapToInviteActivity;->a(Lcom/bbm/ui/activities/aka;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, -0x1

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030065

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/TapToInviteActivity;->setContentView(I)V

    new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;

    const v1, 0x7f0e06f6

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/TapToInviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e0173

    invoke-virtual {p0, v2}, Lcom/bbm/ui/activities/TapToInviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bbm/ui/activities/aig;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aig;-><init>(Lcom/bbm/ui/activities/TapToInviteActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/TapToInviteActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    return-void
.end method

.method protected onPause()V
    .registers 4

    invoke-static {}, Lcom/bbm/Alaska;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "add_contact_on_tap"

    iget-boolean v2, p0, Lcom/bbm/ui/activities/TapToInviteActivity;->a:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 4

    const/4 v2, 0x1

    invoke-static {}, Lcom/bbm/Alaska;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "add_contact_on_tap"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/ui/activities/TapToInviteActivity;->a:Z

    invoke-static {}, Lcom/bbm/Alaska;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "add_contact_on_tap"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "nfc"

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/TapToInviteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_62

    :cond_32
    new-instance v0, Lcom/bbm/ui/b/o;

    invoke-direct {v0, p0}, Lcom/bbm/ui/b/o;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e00ec

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->setTitle(I)V

    const v1, 0x7f0e00ea

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->e(I)V

    const v1, 0x7f0e00eb

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->b(I)V

    const v1, 0x7f0e00ed

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a(I)V

    new-instance v1, Lcom/bbm/ui/activities/aih;

    invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/aih;-><init>(Lcom/bbm/ui/activities/TapToInviteActivity;Lcom/bbm/ui/b/o;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->b(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/bbm/ui/activities/aii;

    invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/aii;-><init>(Lcom/bbm/ui/activities/TapToInviteActivity;Lcom/bbm/ui/b/o;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/bbm/ui/b/o;->show()V

    :cond_62
    invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onResume()V

    return-void
.end method
