.class public Lcom/bbm/ui/activities/OpenInBbmActivity;
.super Landroid/app/Activity;
.source "OpenInBbmActivity.java"


# instance fields
.field final a:Lcom/bbm/d/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/d/b/f",
            "<",
            "Lcom/bbm/d/fl;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/bbm/ui/activities/aaf;

.field private c:Lcom/bbm/f/ac;

.field private final d:Lcom/bbm/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/a",
            "<",
            "Lcom/bbm/f/ag;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/bbm/j/u;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/bbm/ui/activities/zu;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/zu;-><init>(Lcom/bbm/ui/activities/OpenInBbmActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/OpenInBbmActivity;->d:Lcom/bbm/j/a;

    new-instance v0, Lcom/bbm/ui/activities/zx;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/zx;-><init>(Lcom/bbm/ui/activities/OpenInBbmActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/OpenInBbmActivity;->a:Lcom/bbm/d/b/f;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/OpenInBbmActivity;)Lcom/bbm/f/ac;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/OpenInBbmActivity;->c:Lcom/bbm/f/ac;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {p1, p2, p3}, Lcom/bbm/util/dm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/bbm/ui/activities/aad;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aad;-><init>(Lcom/bbm/ui/activities/OpenInBbmActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private a(Landroid/content/Context;Z)V
    .registers 5

    invoke-static {p1, p2}, Lcom/bbm/util/dm;->a(Landroid/content/Context;Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/bbm/ui/activities/aac;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aac;-><init>(Lcom/bbm/ui/activities/OpenInBbmActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/OpenInBbmActivity;Landroid/app/AlertDialog$Builder;)V
    .registers 4

    new-instance v0, Lcom/bbm/ui/activities/zw;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/zw;-><init>(Lcom/bbm/ui/activities/OpenInBbmActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/OpenInBbmActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/bbm/ui/activities/OpenInBbmActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/OpenInBbmActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bbm/ui/activities/OpenInBbmActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/OpenInBbmActivity;Lorg/json/JSONArray;)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_32

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/bbm/g/t;

    invoke-direct {v2}, Lcom/bbm/g/t;-><init>()V

    invoke-virtual {v2, v1}, Lcom/bbm/g/t;->a(Lorg/json/JSONObject;)V

    iget-boolean v1, v2, Lcom/bbm/g/t;->l:Z

    if-nez v1, :cond_2f

    iget-object v1, v2, Lcom/bbm/g/t;->g:Ljava/lang/String;

    if-eqz v1, :cond_2f

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "invite_id"

    iget-object v2, v2, Lcom/bbm/g/t;->g:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/OpenInBbmActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->finish()V

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_32
    return-void
.end method

.method private a()Z
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/OpenInBbmActivity;->d:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/f/ag;

    iget-object v0, v0, Lcom/bbm/f/ag;->a:Lcom/bbm/f/ah;

    sget-object v3, Lcom/bbm/f/ah;->b:Lcom/bbm/f/ah;

    if-eq v0, v3, :cond_27

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_23

    invoke-direct {p0, p0, v2}, Lcom/bbm/ui/activities/OpenInBbmActivity;->a(Landroid/content/Context;Z)V

    :goto_21
    move v0, v1

    :goto_22
    return v0

    :cond_23
    invoke-direct {p0, p0, v1}, Lcom/bbm/ui/activities/OpenInBbmActivity;->a(Landroid/content/Context;Z)V

    goto :goto_21

    :cond_27
    move v0, v2

    goto :goto_22
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "HTTP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "HTTPS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static synthetic b(Lcom/bbm/ui/activities/OpenInBbmActivity;)Lcom/bbm/f/ac;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/ui/activities/OpenInBbmActivity;->c:Lcom/bbm/f/ac;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/bbm/ui/activities/aaa;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aaa;-><init>(Lcom/bbm/ui/activities/OpenInBbmActivity;)V

    invoke-static {p0, p1, v0}, Lcom/bbm/h/aq;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/bbm/h/az;)V

    return-void
.end method

.method static synthetic c(Lcom/bbm/ui/activities/OpenInBbmActivity;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "active_section"

    const v2, 0x7f0a007e

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.bbm.ui.activities.action.SECTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11

    const/16 v0, 0x64

    if-ne p1, v0, :cond_75

    const/4 v0, -0x1

    if-ne p2, v0, :cond_72

    const-string v0, "com.bbm.selectcontact.bundle.passthrough"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "userCustomMessage"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "appId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.bbm.selectedcontacts"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v0, :cond_72

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_72

    if-eqz v4, :cond_72

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_72

    new-instance v5, Landroid/content/Intent;

    const-class v0, Lcom/bbm/ui/activities/MainActivity;

    invoke-direct {v5, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "startConversation"

    const-string v6, "New Share Message"

    invoke-virtual {v5, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "message"

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "userCustomMessage"

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_53
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    const-string v0, "appId"

    invoke-virtual {v5, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5e
    const-string v1, "userUri"

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x1000

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v5}, Lcom/bbm/ui/activities/OpenInBbmActivity;->startActivity(Landroid/content/Intent;)V

    :cond_72
    invoke-virtual {p0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->finish()V

    :cond_75
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68b

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "URI: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->getApplication()Landroid/app/Application;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bbm/ui/activities/OpenInBbmActivity;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "BBM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "BBMI"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "BBMAPI-1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    if-nez v0, :cond_70

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_70

    const/4 v0, 0x0

    invoke-virtual {v6, v0, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_70
    if-nez v2, :cond_76

    if-nez v4, :cond_76

    if-eqz v5, :cond_3b9

    :cond_76
    invoke-static {v1}, Lcom/bbm/util/dm;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3b9

    invoke-static {}, Lcom/bbm/Alaska;->j()Lcom/bbm/f/ae;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bbm/f/ae;->i:Z

    if-eqz v0, :cond_3b6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "TPA: handleTpa. Uri: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v2, Lcom/bbm/ui/activities/OpenInBbmActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    const-string v0, "BBMAPI-1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    const-string v0, "TPA: scheme bbmapi-1 just open bbm"

    const-class v1, Lcom/bbm/ui/activities/OpenInBbmActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v0, 0x0

    :goto_b9
    if-eqz v0, :cond_3b6

    const/4 v0, 0x1

    :goto_bc
    if-nez v0, :cond_db

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->getApplication()Landroid/app/Application;

    invoke-static {}, Lcom/bbm/Alaska;->j()Lcom/bbm/f/ae;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bbm/f/ae;->i:Z

    if-nez v0, :cond_682

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/StartupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_d0
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->finish()V

    :cond_db
    :goto_db
    return-void

    :cond_dc
    const-string v0, "BBM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ec

    const-string v0, "BBMI"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ac

    :cond_ec
    const-string v0, "share"

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_192

    invoke-direct {p0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->a()Z

    move-result v0

    if-nez v0, :cond_101

    const/4 v0, 0x1

    goto :goto_b9

    :cond_101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "TPA: Share with BBM. Uri: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v2, Lcom/bbm/ui/activities/OpenInBbmActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_157

    const-string v0, "appId"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "message"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "userCustomMessage"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/bbm/util/dm;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/bbm/util/dm;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15a

    const/4 v0, 0x0

    const v1, 0x7f0e0562

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/OpenInBbmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p0, v0, v1}, Lcom/bbm/ui/activities/OpenInBbmActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_157
    :goto_157
    const/4 v0, 0x1

    goto/16 :goto_b9

    :cond_15a
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "message"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16f

    const-string v2, "appId"

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17a

    const-string v0, "userCustomMessage"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17a
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.bbm.onlyone"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.bbm.selectcontact.bundle.passthrough"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/bbm/ui/activities/OpenInBbmActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_157

    :cond_192
    const-string v0, "registerWithBbm"

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23b

    invoke-direct {p0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->a()Z

    move-result v0

    if-nez v0, :cond_1a8

    const/4 v0, 0x1

    goto/16 :goto_b9

    :cond_1a8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "TPA: Register with BBM. Uri: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v2, Lcom/bbm/ui/activities/OpenInBbmActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1fe

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/util/dm;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ed

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/util/dm;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_201

    :cond_1ed
    const v0, 0x7f0e0576

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0e0562

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/OpenInBbmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p0, v0, v1}, Lcom/bbm/ui/activities/OpenInBbmActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1fe
    :goto_1fe
    const/4 v0, 0x1

    goto/16 :goto_b9

    :cond_201
    const-string v0, "appId"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_223

    const v0, 0x7f0e0576

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0e0562

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/OpenInBbmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p0, v0, v1}, Lcom/bbm/ui/activities/OpenInBbmActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1fe

    :cond_223
    const-string v2, "context"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/bbm/ui/activities/aae;

    invoke-direct {v2, p0}, Lcom/bbm/ui/activities/aae;-><init>(Lcom/bbm/ui/activities/OpenInBbmActivity;)V

    new-instance v3, Lcom/bbm/ui/activities/zv;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/bbm/ui/activities/zv;-><init>(Lcom/bbm/ui/activities/OpenInBbmActivity;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/bbm/ui/activities/OpenInBbmActivity;->e:Lcom/bbm/j/u;

    iget-object v0, p0, Lcom/bbm/ui/activities/OpenInBbmActivity;->e:Lcom/bbm/j/u;

    invoke-virtual {v0}, Lcom/bbm/j/u;->c()V

    goto :goto_1fe

    :cond_23b
    const-string v0, "openContactPicker"

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29c

    invoke-direct {p0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->a()Z

    move-result v0

    if-nez v0, :cond_251

    const/4 v0, 0x1

    goto/16 :goto_b9

    :cond_251
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "TPA: start Transaction and pick a contact. Uri: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v2, Lcom/bbm/ui/activities/OpenInBbmActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/bbm/ui/activities/ShareActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "appId"

    const-string v3, "appId"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "context"

    const-string v3, "context"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->finish()V

    const/4 v0, 0x1

    goto/16 :goto_b9

    :cond_29c
    const-string v0, "sendMessage"

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ac

    invoke-direct {p0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->a()Z

    move-result v0

    if-nez v0, :cond_2b2

    const/4 v0, 0x1

    goto/16 :goto_b9

    :cond_2b2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "TPA: Paid Money and Send Message. Uri: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v2, Lcom/bbm/ui/activities/OpenInBbmActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    const-string v0, "message"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "userCustomMessage"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "appId"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "receiverBbmId"

    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "context"

    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "token"

    invoke-virtual {v1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/bbm/util/dm;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/bbm/util/dm;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "TPA: MONEY TRANSFER receiver RegId: "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " message: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " | customMessage "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " | appId: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v7, Lcom/bbm/ui/activities/OpenInBbmActivity;

    invoke-static {v0, v7}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v0, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_34a

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_361

    :cond_34a
    const/4 v0, 0x0

    :cond_34b
    :goto_34b
    if-nez v0, :cond_374

    const v0, 0x7f0e0564

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0e0562

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/OpenInBbmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p0, v0, v1}, Lcom/bbm/ui/activities/OpenInBbmActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_35e
    const/4 v0, 0x1

    goto/16 :goto_b9

    :cond_361
    :try_start_361
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_368
    .catch Ljava/lang/NumberFormatException; {:try_start_361 .. :try_end_368} :catch_371

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_34b

    const/4 v0, 0x0

    goto :goto_34b

    :catch_371
    move-exception v0

    const/4 v0, 0x0

    goto :goto_34b

    :cond_374
    new-instance v0, Landroid/content/Intent;

    const-class v7, Lcom/bbm/ui/activities/MainActivity;

    invoke-direct {v0, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "startConversation"

    const-string v8, "New Transaction Send Message"

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "message"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "userCustomMessage"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "appId"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "receiverBbmId"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "context"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->finish()V

    goto :goto_35e

    :cond_3ac
    const-string v0, "TPA: no other scheme is supported"

    const-class v1, Lcom/bbm/ui/activities/OpenInBbmActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v0, 0x0

    goto/16 :goto_b9

    :cond_3b6
    const/4 v0, 0x0

    goto/16 :goto_bc

    :cond_3b9
    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3ce

    const-string v0, "Port exists. Finishing activity."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->finish()V

    const/4 v0, 0x1

    goto/16 :goto_bc

    :cond_3ce
    invoke-static {v3}, Lcom/bbm/ui/activities/OpenInBbmActivity;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3ea

    const-string v0, "WWW.PIN.BBM.COM"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_404

    const-string v0, "PIN.BBM.COM"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_404

    const/4 v0, 0x0

    :goto_3e5
    if-eqz v0, :cond_459

    const/4 v0, 0x1

    goto/16 :goto_bc

    :cond_3ea
    const-string v0, "PIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_404

    const-string v0, "BBM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_404

    const-string v0, "BBMI"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_404

    const/4 v0, 0x0

    goto :goto_3e5

    :cond_404
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_40d

    const/4 v0, 0x0

    goto :goto_3e5

    :cond_40d
    const-string v2, "SUPPORT"

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_437

    const-string v2, "REPORT"

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_439

    :cond_437
    const/4 v0, 0x0

    goto :goto_3e5

    :cond_439
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/bbm/ui/activities/ReportProblemActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "wc"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_451

    const-string v4, "incidentId"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_451
    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_3e5

    :cond_459
    invoke-static {}, Lcom/bbm/Alaska;->j()Lcom/bbm/f/ae;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bbm/f/ae;->i:Z

    if-eqz v0, :cond_67f

    invoke-static {v3}, Lcom/bbm/ui/activities/OpenInBbmActivity;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47d

    const-string v0, "WWW.PIN.BBM.COM"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_497

    const-string v0, "PIN.BBM.COM"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_497

    const/4 v0, 0x0

    :goto_478
    if-eqz v0, :cond_523

    const/4 v0, 0x1

    goto/16 :goto_bc

    :cond_47d
    const-string v0, "PIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_497

    const-string v0, "BBM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_497

    const-string v0, "BBMI"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_497

    const/4 v0, 0x0

    goto :goto_478

    :cond_497
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_49f

    const/4 v0, 0x0

    goto :goto_478

    :cond_49f
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/h/aq;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4c4

    invoke-static {v0}, Lcom/bbm/h/aq;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4ba

    const/4 v0, 0x0

    goto :goto_478

    :cond_4ba
    new-instance v1, Lcom/bbm/ui/activities/aab;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aab;-><init>(Lcom/bbm/ui/activities/OpenInBbmActivity;)V

    invoke-static {p0, v0, v1}, Lcom/bbm/h/aq;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/bbm/h/az;)V

    :goto_4c2
    const/4 v0, 0x1

    goto :goto_478

    :cond_4c4
    const-string v2, "invite"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bbm/h/aq;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51f

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/bbm/ui/activities/zy;

    invoke-direct {v4, p0, v0}, Lcom/bbm/ui/activities/zy;-><init>(Lcom/bbm/ui/activities/OpenInBbmActivity;Ljava/lang/String;)V

    const-wide/16 v8, 0x3e8

    invoke-virtual {v2, v4, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/bbm/ui/activities/zz;

    invoke-direct {v5, p0, v0, v2, v4}, Lcom/bbm/ui/activities/zz;-><init>(Lcom/bbm/ui/activities/OpenInBbmActivity;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v5, p0, Lcom/bbm/ui/activities/OpenInBbmActivity;->c:Lcom/bbm/f/ac;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v2

    iget-object v2, v2, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;

    iget-object v2, v2, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;

    iget-object v4, p0, Lcom/bbm/ui/activities/OpenInBbmActivity;->c:Lcom/bbm/f/ac;

    invoke-interface {v2, v4}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V

    const/4 v2, 0x0

    sget-object v4, Lcom/bbm/d/bw;->b:Lcom/bbm/d/bw;

    invoke-static {v2, v1, v4}, Lcom/bbm/d/z;->a(ZLjava/lang/String;Lcom/bbm/d/bw;)Lcom/bbm/d/bv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bbm/d/bv;->a(Ljava/lang/String;)Lcom/bbm/d/bv;

    move-result-object v0

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    goto :goto_4c2

    :cond_51f
    invoke-direct {p0, v0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->b(Ljava/lang/String;)V

    goto :goto_4c2

    :cond_523
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v3}, Lcom/bbm/ui/activities/OpenInBbmActivity;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_585

    const-string v0, "SHOP.BBM.COM"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_539

    const/4 v0, 0x0

    :goto_534
    if-eqz v0, :cond_5e0

    const/4 v0, 0x1

    goto/16 :goto_bc

    :cond_539
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_547

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    :cond_547
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_6b3

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_555
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/bbm/ui/activities/StoreActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x2400

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "stickers"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57d

    if-eqz v0, :cond_57d

    const-string v1, "pack_id"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "view_source"

    sget-object v1, Lcom/bbm/c/q;->d:Lcom/bbm/c/q;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_57d
    invoke-virtual {p0, v2}, Lcom/bbm/ui/activities/OpenInBbmActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_534

    :cond_585
    const-string v0, "BBM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_597

    const-string v0, "BBMI"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_597

    const/4 v0, 0x0

    goto :goto_534

    :cond_597
    const-string v0, "BBM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a7

    const-string v0, "BBMI"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b3

    :cond_5a7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5af

    const/4 v0, 0x0

    goto :goto_534

    :cond_5af
    const-string v4, "SHOP"

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5c1

    const/4 v0, 0x0

    goto/16 :goto_534

    :cond_5c1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_5d0

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    :cond_5d0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x2

    if-le v0, v4, :cond_6b3

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_555

    :cond_5e0
    invoke-static {v3}, Lcom/bbm/ui/activities/OpenInBbmActivity;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5fc

    const-string v0, "WWW.PIN.BBM.COM"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_616

    const-string v0, "PIN.BBM.COM"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_616

    const/4 v0, 0x0

    :goto_5f7
    if-eqz v0, :cond_67f

    const/4 v0, 0x1

    goto/16 :goto_bc

    :cond_5fc
    const-string v0, "PIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_616

    const-string v0, "BBM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_616

    const-string v0, "BBMI"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_616

    const/4 v0, 0x0

    goto :goto_5f7

    :cond_616
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_61f

    const/4 v0, 0x0

    goto :goto_5f7

    :cond_61f
    const-string v1, "GROUP"

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_636

    const/4 v0, 0x0

    goto :goto_5f7

    :cond_636
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/h/aq;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_645

    const/4 v0, 0x0

    goto :goto_5f7

    :cond_645
    new-instance v0, Lcom/bbm/ui/activities/aaf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bbm/ui/activities/aaf;-><init>(Lcom/bbm/ui/activities/OpenInBbmActivity;B)V

    iput-object v0, p0, Lcom/bbm/ui/activities/OpenInBbmActivity;->b:Lcom/bbm/ui/activities/aaf;

    const-string v0, "Add consumer"

    const-class v1, Lcom/bbm/ui/activities/OpenInBbmActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    iget-object v0, v0, Lcom/bbm/g/ao;->a:Lcom/bbm/d/a/f;

    iget-object v0, v0, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;

    iget-object v1, p0, Lcom/bbm/ui/activities/OpenInBbmActivity;->b:Lcom/bbm/ui/activities/aaf;

    invoke-interface {v0, v1}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "group/"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/h/aq;->f(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto/16 :goto_5f7

    :cond_67f
    const/4 v0, 0x0

    goto/16 :goto_bc

    :cond_682
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_d0

    :cond_68b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Action \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' not recognized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OpenInBbmActivity;->finish()V

    goto/16 :goto_db

    :cond_6b3
    move-object v0, v2

    goto/16 :goto_555
.end method

.method protected onPause()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/OpenInBbmActivity;->e:Lcom/bbm/j/u;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bbm/ui/activities/OpenInBbmActivity;->e:Lcom/bbm/j/u;

    iget-boolean v0, v0, Lcom/bbm/j/k;->k:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bbm/ui/activities/OpenInBbmActivity;->e:Lcom/bbm/j/u;

    invoke-virtual {v0}, Lcom/bbm/j/u;->e()V

    :cond_f
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
