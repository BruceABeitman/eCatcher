.class public Lcom/facebook/katana/IntentUriHandler;
.super Landroid/app/Activity;
.source "IntentUriHandler.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static D(Ljava/lang/String;)V
    .registers 1

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 13

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/facebook/katana/IntentUriHandler;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v9

    if-nez v9, :cond_14

    invoke-static {p0, v2}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;Landroid/content/Intent;)V

    :cond_10
    :goto_10
    invoke-virtual {p0}, Lcom/facebook/katana/IntentUriHandler;->finish()V

    return-void

    :cond_14
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_c3

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "received URI "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/facebook/katana/IntentUriHandler;->D(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v9, "facebook"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_c0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_c0

    const/4 v9, 0x0

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v9, "friends"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_68

    const-class v8, Lcom/facebook/katana/UsersTabHostActivity;

    :goto_55
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/facebook/katana/IntentUriHandler;->startActivity(Landroid/content/Intent;)V

    goto :goto_10

    :cond_68
    const-string v9, "inbox"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_73

    const-class v8, Lcom/facebook/katana/MailboxTabHostActivity;

    goto :goto_55

    :cond_73
    const-string v9, "info"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_83

    const-string v9, "wall"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_86

    :cond_83
    const-class v8, Lcom/facebook/katana/ProfileTabHostActivity;

    goto :goto_55

    :cond_86
    const-string v9, "notifications"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_91

    const-class v8, Lcom/facebook/katana/HomeActivity;

    goto :goto_55

    :cond_91
    const-string v9, "photos"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b2

    const-string v9, "album"

    invoke-virtual {v4, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "photo"

    invoke-virtual {v4, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_aa

    const-class v8, Lcom/facebook/katana/ViewPhotoActivity;

    goto :goto_55

    :cond_aa
    if-eqz v0, :cond_af

    const-class v8, Lcom/facebook/katana/PhotosActivity;

    goto :goto_55

    :cond_af
    const-class v8, Lcom/facebook/katana/ProfileTabHostActivity;

    goto :goto_55

    :cond_b2
    const-string v9, "newsfeed"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_bd

    const-class v8, Lcom/facebook/katana/StreamActivity;

    goto :goto_55

    :cond_bd
    const-class v8, Lcom/facebook/katana/StreamActivity;

    goto :goto_55

    :cond_c0
    const-class v8, Lcom/facebook/katana/StreamActivity;

    goto :goto_55

    :cond_c3
    const-string v9, "received null URI!"

    invoke-static {v9}, Lcom/facebook/katana/IntentUriHandler;->D(Ljava/lang/String;)V

    goto/16 :goto_10
.end method
