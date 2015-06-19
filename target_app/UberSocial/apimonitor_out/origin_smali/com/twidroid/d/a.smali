.class public Lcom/twidroid/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "ActivityHelper"

.field private static b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".TwidroidClient"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "duplicate"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v0, 0x7f0c007a

    invoke-static {p0, v0}, Lcom/twidroid/d/h;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3f
    const-string v0, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v2, 0x7f020067

    invoke-static {p0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twidroid/TwidroidClient;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Action"

    const-string v2, "search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twidroid/model/twitter/Tweet;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twidroid/activity/ConversationViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_TWEET"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twidroid/model/twitter/User;I)V
    .registers 4

    iget-object v0, p1, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;

    invoke-static {p0, v0, p2}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;JIILjava/lang/String;)V
    .registers 9

    invoke-static/range {p0 .. p6}, Lcom/twidroid/d/a;->b(Landroid/content/Context;Ljava/lang/CharSequence;JIILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;JIILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p7

    invoke-static/range {v0 .. v6}, Lcom/twidroid/d/a;->b(Landroid/content/Context;Ljava/lang/CharSequence;JIILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "Twidroyd.Tabswitch"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "Action"

    const-string v2, "search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "search"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twidroid/UberSocialProfile;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_ACCOUNT_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://twitter.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/twidroid/net/c/a/f;)V
    .registers 9

    const/4 v2, 0x0

    const v5, 0x7f0900ec

    const/4 v4, 0x1

    instance-of v0, p0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_60

    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    :goto_14
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_31

    :cond_1c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twidroid/SingleDirectMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_ACTION_SCREENNAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_CLOSE_AFTER_SEND_FLAG"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_30
    return-void

    :cond_31
    instance-of v0, v1, Lcom/twidroid/fragments/b;

    if-nez v0, :cond_54

    check-cast p0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    new-instance v1, Lcom/twidroid/fragments/b;

    invoke-direct {v1, p1}, Lcom/twidroid/fragments/b;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Lcom/twidroid/fragments/b;

    invoke-virtual {v0, v4}, Lcom/twidroid/fragments/b;->a(Z)V

    invoke-virtual {v3, v5, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_30

    :cond_54
    move-object v0, v1

    check-cast v0, Lcom/twidroid/fragments/b;

    invoke-virtual {v0, v4}, Lcom/twidroid/fragments/b;->a(Z)V

    check-cast v1, Lcom/twidroid/fragments/b;

    invoke-virtual {v1, p1}, Lcom/twidroid/fragments/b;->b(Ljava/lang/String;)V

    goto :goto_30

    :cond_60
    move-object v1, v2

    goto :goto_14
.end method

.method public static a(Lcom/twidroid/model/twitter/Tweet;JLandroid/app/Activity;Landroid/support/v4/app/FragmentManager;Z)V
    .registers 10

    const v2, 0x7f0900ec

    if-nez p3, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-virtual {p3, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_31

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twidroid/SingleTweetActivity;

    invoke-direct {v0, p3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p0, :cond_2b

    const-string v1, "EXTRA_TWEET"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "EXTRA_STATUS_ID"

    iget-wide v2, p0, Lcom/twidroid/model/twitter/Tweet;->x:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :goto_21
    const-string v1, "EXTRA_HIDE_DETAILS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    :cond_2b
    const-string v1, "EXTRA_STATUS_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_21

    :cond_31
    invoke-virtual {p4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/twidroid/fragments/f;

    invoke-direct {v1}, Lcom/twidroid/fragments/f;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    if-eqz p5, :cond_46

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/twidroid/fragments/f;->e:Z

    :cond_46
    invoke-virtual {v1, p0}, Lcom/twidroid/fragments/f;->a(Lcom/twidroid/model/twitter/Tweet;)V

    goto :goto_5
.end method

.method public static a(Lcom/twidroid/model/twitter/Tweet;Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Z)V
    .registers 10

    const-wide/16 v1, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/twidroid/d/a;->a(Lcom/twidroid/model/twitter/Tweet;JLandroid/app/Activity;Landroid/support/v4/app/FragmentManager;Z)V

    return-void
.end method

.method public static b(Landroid/app/Activity;)I
    .registers 4

    const/4 v2, 0x1

    sget v0, Lcom/twidroid/d/a;->b:I

    if-nez v0, :cond_15

    invoke-static {p0}, Lcom/twidroid/d/a;->d(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {p0}, Lcom/twidroid/d/a;->c(Landroid/app/Activity;)[I

    move-result-object v1

    aget v1, v1, v2

    aget v0, v0, v2

    sub-int v0, v1, v0

    sput v0, Lcom/twidroid/d/a;->b:I

    :cond_15
    sget v0, Lcom/twidroid/d/a;->b:I

    return v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/CharSequence;JIILjava/lang/String;)Landroid/content/Intent;
    .registers 9

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twidroid/activity/SendTweet;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v1, "EXTRA_PLACE_ID"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "EXTRA_ACCOUNT_ID"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "EXTRA_REPLY_STATUS_ID"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "EXTRA_ORIGINAL_TEXT"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static b(Landroid/content/Context;)[I
    .registers 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v0, 0x0

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v3, v1, v0

    const/4 v0, 0x1

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    aput v2, v1, v0

    return-object v1
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public static c(Landroid/app/Activity;)[I
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v1, 0x0

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v3, v0, v1

    const/4 v1, 0x1

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    aput v2, v0, v1

    return-object v0
.end method

.method public static d(Landroid/app/Activity;)[I
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x1

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v3, v1

    aput v1, v0, v2

    return-object v0
.end method
