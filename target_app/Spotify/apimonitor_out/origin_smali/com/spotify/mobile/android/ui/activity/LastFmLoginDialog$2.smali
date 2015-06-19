.class final Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog$2;->a:Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog$2;->a:Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->c(Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;)Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog$2;->a:Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->P:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    new-instance v2, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$Event;->J:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-direct {v2, v3}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog$2;->a:Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog$2;->a:Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->d(Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->a(Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog$2;->a:Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog$2;->a:Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->a(Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->a(Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog$2;->a:Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->d(Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog$2;->a:Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->a(Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_65

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_65

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog$2;->a:Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/spotify/mobile/android/ui/cell/settings/LastFmSettingsCell;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog$2;->a:Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->finish()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog$2;->a:Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;

    invoke-virtual {v0, v4, v4}, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->overridePendingTransition(II)V

    :cond_65
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog$2;->a:Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/LastFmLoginDialog;->finish()V

    return-void
.end method
