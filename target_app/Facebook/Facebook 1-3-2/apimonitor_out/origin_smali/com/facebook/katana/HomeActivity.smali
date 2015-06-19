.class public Lcom/facebook/katana/HomeActivity;
.super Lcom/facebook/katana/FacebookListActivity;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/HomeActivity$NotificationsAppSessionListener;,
        Lcom/facebook/katana/HomeActivity$PhotoReelAppSessionListener;,
        Lcom/facebook/katana/HomeActivity$QueryHandler;,
        Lcom/facebook/katana/HomeActivity$ReelAdapter;,
        Lcom/facebook/katana/HomeActivity$ReelListener;
    }
.end annotation


# static fields
.field private static final ABOUT_ID:I = 0x4

.field private static final LOGOUT_DIALOG_ID:I = 0x1

.field private static final LOGOUT_ID:I = 0x5

.field private static final MAX_REEL_ITEMS:I = 0x32

.field private static final MEDIAREEL_MIN_SCREEN_HEIGHT:I = 0x15e

.field private static final PICK_EXISTING_PHOTO_REQUEST_CODE:I = 0x2

.field private static final PROGRESS_LOGGING_OUT_DIALOG_ID:I = 0x2

.field private static final REFRESH_MENU_ID:I = 0x3

.field private static final SETTINGS_ID:I = 0x2

.field private static final SETTINGS_RESULT_CODE:I = 0x3

.field private static final TAKE_CAMERA_PHOTO_REQUEST_CODE:I = 0x1


# instance fields
.field private mAdapter:Lcom/facebook/katana/NotificationsAdapter;

.field private mAppSession:Lcom/facebook/katana/binding/AppSession;

.field private mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

.field private mGalleryView:Landroid/widget/Gallery;

.field private mHomePhotoReelImages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationsAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

.field private mNotificationsPanel:Landroid/widget/SlidingDrawer;

.field private mPhotoReelAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

.field private mQueryHandler:Lcom/facebook/katana/HomeActivity$QueryHandler;

.field private mReelAdapter:Lcom/facebook/katana/HomeActivity$ReelAdapter;

.field private mUserId:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/katana/FacebookListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$10(Lcom/facebook/katana/HomeActivity;)Ljava/util/List;
    .registers 2

    invoke-direct {p0}, Lcom/facebook/katana/HomeActivity;->getUnreadNotifications()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11(Lcom/facebook/katana/HomeActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/katana/HomeActivity;->showUnreadNotificationsBadge(I)V

    return-void
.end method

.method static synthetic access$12(Lcom/facebook/katana/HomeActivity;)Lcom/facebook/katana/HomeActivity$ReelAdapter;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity;->mReelAdapter:Lcom/facebook/katana/HomeActivity$ReelAdapter;

    return-object v0
.end method

.method static synthetic access$13(Lcom/facebook/katana/HomeActivity;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity;->mHomePhotoReelImages:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$14(Lcom/facebook/katana/HomeActivity;)Landroid/widget/Gallery;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity;->mGalleryView:Landroid/widget/Gallery;

    return-object v0
.end method

.method static synthetic access$15(Lcom/facebook/katana/HomeActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/katana/HomeActivity;->hideUnreadNotificationsBadge()V

    return-void
.end method

.method static synthetic access$16(Lcom/facebook/katana/HomeActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/katana/HomeActivity;->markAsRead()V

    return-void
.end method

.method static synthetic access$6(Lcom/facebook/katana/HomeActivity;)Lcom/facebook/katana/binding/AppSession;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    return-object v0
.end method

.method static synthetic access$7(Lcom/facebook/katana/HomeActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/katana/HomeActivity;->showProgress(Z)V

    return-void
.end method

.method static synthetic access$8(Lcom/facebook/katana/HomeActivity;Landroid/database/Cursor;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/katana/HomeActivity;->handleQueryComplete(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$9(Lcom/facebook/katana/HomeActivity;)Lcom/facebook/katana/NotificationsAdapter;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity;->mAdapter:Lcom/facebook/katana/NotificationsAdapter;

    return-object v0
.end method

.method private getUnreadNotifications()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/facebook/katana/HomeActivity;->mAdapter:Lcom/facebook/katana/NotificationsAdapter;

    invoke-virtual {v4}, Lcom/facebook/katana/NotificationsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_d
    :goto_d
    return-object v3

    :cond_e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_14
    const/16 v4, 0xa

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_28

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_14

    goto :goto_d
.end method

.method private handleQueryComplete(Landroid/database/Cursor;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/facebook/katana/HomeActivity;->startManagingCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity;->mAdapter:Lcom/facebook/katana/NotificationsAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/NotificationsAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private hideUnreadNotificationsBadge()V
    .registers 5

    iget-object v2, p0, Lcom/facebook/katana/HomeActivity;->mNotificationsPanel:Landroid/widget/SlidingDrawer;

    const v3, 0x7f0b007e

    invoke-virtual {v2, v3}, Landroid/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/facebook/katana/HomeActivity;->mNotificationsPanel:Landroid/widget/SlidingDrawer;

    const v3, 0x7f0b007d

    invoke-virtual {v2, v3}, Landroid/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private markAsRead()V
    .registers 6

    invoke-direct {p0}, Lcom/facebook/katana/HomeActivity;->hideUnreadNotificationsBadge()V

    invoke-direct {p0}, Lcom/facebook/katana/HomeActivity;->getUnreadNotifications()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [J

    const/4 v0, 0x0

    :goto_14
    array-length v3, v1

    if-lt v0, v3, :cond_1d

    iget-object v3, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v3, p0, v1}, Lcom/facebook/katana/binding/AppSession;->notificationsMarkAsRead(Landroid/content/Context;[J)Ljava/lang/String;

    :cond_1c
    return-void

    :cond_1d
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method

.method private setupIcon(III)V
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/facebook/katana/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private setupNotificationsEmptyView()V
    .registers 3

    const v0, 0x7f0b0013

    invoke-virtual {p0, v0}, Lcom/facebook/katana/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0800ba

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b0015

    invoke-virtual {p0, v0}, Lcom/facebook/katana/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const v0, 0x7f0800b9

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private setupViews()V
    .registers 4

    const v0, 0x7f0b0036

    const v1, 0x7f020051

    const v2, 0x7f080068

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/katana/HomeActivity;->setupIcon(III)V

    const v0, 0x7f0b0037

    const v1, 0x7f020053

    const v2, 0x7f08006b

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/katana/HomeActivity;->setupIcon(III)V

    const v0, 0x7f0b0038

    const v1, 0x7f02004e

    const v2, 0x7f080065

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/katana/HomeActivity;->setupIcon(III)V

    const v0, 0x7f0b0039

    const v1, 0x7f020052

    const v2, 0x7f08006a

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/katana/HomeActivity;->setupIcon(III)V

    const v0, 0x7f0b003a

    const v1, 0x7f02004d

    const v2, 0x7f080064

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/katana/HomeActivity;->setupIcon(III)V

    const v0, 0x7f0b003b

    const v1, 0x7f020050

    const v2, 0x7f080067

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/katana/HomeActivity;->setupIcon(III)V

    const v0, 0x7f0b003c

    const v1, 0x7f020054

    const v2, 0x7f08006c

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/katana/HomeActivity;->setupIcon(III)V

    return-void
.end method

.method private showProgress(Z)V
    .registers 7

    const v0, 0x7f0b00b2

    const v4, 0x7f0b0014

    const v3, 0x7f0b0013

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_24

    invoke-virtual {p0, v0}, Lcom/facebook/katana/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/facebook/katana/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/facebook/katana/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_23
    return-void

    :cond_24
    invoke-virtual {p0, v0}, Lcom/facebook/katana/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/facebook/katana/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/facebook/katana/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_23
.end method

.method private showUnreadNotificationsBadge(I)V
    .registers 7

    iget-object v3, p0, Lcom/facebook/katana/HomeActivity;->mNotificationsPanel:Landroid/widget/SlidingDrawer;

    const v4, 0x7f0b007e

    invoke-virtual {v3, v4}, Landroid/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/facebook/katana/HomeActivity;->mNotificationsPanel:Landroid/widget/SlidingDrawer;

    const v4, 0x7f0b007f

    invoke-virtual {v3, v4}, Landroid/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/facebook/katana/HomeActivity;->mNotificationsPanel:Landroid/widget/SlidingDrawer;

    const v4, 0x7f0b007d

    invoke-virtual {v3, v4}, Landroid/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public facebookOnBackPressed()Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/HomeActivity;->mTransitioningToBackground:Z

    invoke-virtual {p0}, Lcom/facebook/katana/HomeActivity;->finish()V

    return v0
.end method

.method public bridge synthetic finish()V
    .registers 1

    invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->finish()V

    return-void
.end method

.method public isMediaReelSupported()Z
    .registers 3

    invoke-virtual {p0}, Lcom/facebook/katana/HomeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    const/16 v1, 0x15e

    if-le v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    const-class v3, Lcom/facebook/katana/UploadPhotoActivity;

    const-string v2, "data"

    invoke-super {p0, p1, p2, p3}, Lcom/facebook/katana/FacebookListActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p2, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    packed-switch p1, :pswitch_data_4c

    goto :goto_9

    :pswitch_e
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/UploadPhotoActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.facebook.katana.upload.bitmap"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "data"

    const-string v1, "data"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    :pswitch_29
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/UploadPhotoActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.facebook.katana.upload.uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    :pswitch_42
    iget-object v1, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1, p0}, Lcom/facebook/katana/binding/AppSession;->settingsChanged(Landroid/content/Context;)V

    goto :goto_9

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_e
        :pswitch_29
        :pswitch_42
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_78

    :goto_9
    return-void

    :pswitch_a
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/StreamActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/facebook/katana/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    :pswitch_15
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/UsersTabHostActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    :pswitch_25
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/AlbumsActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lcom/facebook/katana/provider/PhotosProvider;->ALBUMS_OWNER_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v3}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    :pswitch_48
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/MailboxTabHostActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/facebook/katana/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    :pswitch_53
    iget-object v2, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/facebook/katana/util/ApplicationUtils;->OpenUserProfile(Landroid/content/Context;J)V

    goto :goto_9

    :pswitch_61
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/EventsActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/facebook/katana/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    :pswitch_6c
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/RequestsActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/facebook/katana/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    nop

    :pswitch_data_78
    .packed-switch 0x7f0b0036
        :pswitch_a
        :pswitch_53
        :pswitch_15
        :pswitch_25
        :pswitch_61
        :pswitch_48
        :pswitch_6c
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f030016

    invoke-virtual {p0, v3}, Lcom/facebook/katana/HomeActivity;->setContentView(I)V

    const v3, 0x7f0200b9

    invoke-virtual {p0, v3}, Lcom/facebook/katana/HomeActivity;->setPrimaryActionIcon(I)V

    const v3, 0x7f0b00b1

    invoke-virtual {p0, v3}, Lcom/facebook/katana/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setFocusable(Z)V

    const v3, 0x7f02003e

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v3, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    if-nez v3, :cond_31

    invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V

    :goto_30
    return-void

    :cond_31
    iget-object v3, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v3}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/facebook/katana/HomeActivity;->mUserId:J

    new-instance v3, Lcom/facebook/katana/HomeActivity$1;

    invoke-direct {v3, p0}, Lcom/facebook/katana/HomeActivity$1;-><init>(Lcom/facebook/katana/HomeActivity;)V

    iput-object v3, p0, Lcom/facebook/katana/HomeActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    new-instance v3, Lcom/facebook/katana/HomeActivity$NotificationsAppSessionListener;

    invoke-direct {v3, p0, v5}, Lcom/facebook/katana/HomeActivity$NotificationsAppSessionListener;-><init>(Lcom/facebook/katana/HomeActivity;Lcom/facebook/katana/HomeActivity$NotificationsAppSessionListener;)V

    iput-object v3, p0, Lcom/facebook/katana/HomeActivity;->mNotificationsAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    new-instance v3, Lcom/facebook/katana/HomeActivity$PhotoReelAppSessionListener;

    invoke-direct {v3, p0, v5}, Lcom/facebook/katana/HomeActivity$PhotoReelAppSessionListener;-><init>(Lcom/facebook/katana/HomeActivity;Lcom/facebook/katana/HomeActivity$PhotoReelAppSessionListener;)V

    iput-object v3, p0, Lcom/facebook/katana/HomeActivity;->mPhotoReelAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-direct {p0}, Lcom/facebook/katana/HomeActivity;->setupViews()V

    const v3, 0x7f0b003f

    invoke-virtual {p0, v3}, Lcom/facebook/katana/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SlidingDrawer;

    iput-object v3, p0, Lcom/facebook/katana/HomeActivity;->mNotificationsPanel:Landroid/widget/SlidingDrawer;

    iget-object v3, p0, Lcom/facebook/katana/HomeActivity;->mNotificationsPanel:Landroid/widget/SlidingDrawer;

    new-instance v4, Lcom/facebook/katana/HomeActivity$2;

    invoke-direct {v4, p0}, Lcom/facebook/katana/HomeActivity$2;-><init>(Lcom/facebook/katana/HomeActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    iget-object v3, p0, Lcom/facebook/katana/HomeActivity;->mNotificationsPanel:Landroid/widget/SlidingDrawer;

    new-instance v4, Lcom/facebook/katana/HomeActivity$3;

    invoke-direct {v4, p0}, Lcom/facebook/katana/HomeActivity$3;-><init>(Lcom/facebook/katana/HomeActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    new-instance v3, Lcom/facebook/katana/NotificationsAdapter;

    iget-object v4, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v4}, Lcom/facebook/katana/binding/AppSession;->getPhotosCache()Lcom/facebook/katana/binding/StreamPhotosCache;

    move-result-object v4

    invoke-direct {v3, p0, v5, v4}, Lcom/facebook/katana/NotificationsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/facebook/katana/binding/StreamPhotosCache;)V

    iput-object v3, p0, Lcom/facebook/katana/HomeActivity;->mAdapter:Lcom/facebook/katana/NotificationsAdapter;

    invoke-virtual {p0}, Lcom/facebook/katana/HomeActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v3, p0, Lcom/facebook/katana/HomeActivity;->mAdapter:Lcom/facebook/katana/NotificationsAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v3, Lcom/facebook/katana/HomeActivity$4;

    invoke-direct {v3, p0}, Lcom/facebook/katana/HomeActivity$4;-><init>(Lcom/facebook/katana/HomeActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v3, Lcom/facebook/katana/HomeActivity$QueryHandler;

    invoke-direct {v3, p0, p0}, Lcom/facebook/katana/HomeActivity$QueryHandler;-><init>(Lcom/facebook/katana/HomeActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/facebook/katana/HomeActivity;->mQueryHandler:Lcom/facebook/katana/HomeActivity$QueryHandler;

    invoke-direct {p0}, Lcom/facebook/katana/HomeActivity;->setupViews()V

    iget-object v3, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v3, p0}, Lcom/facebook/katana/binding/AppSession;->getConfig(Landroid/content/Context;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/facebook/katana/HomeActivity;->setupNotificationsEmptyView()V

    const v3, 0x7f0b003e

    invoke-virtual {p0, v3}, Lcom/facebook/katana/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Gallery;

    iput-object v3, p0, Lcom/facebook/katana/HomeActivity;->mGalleryView:Landroid/widget/Gallery;

    new-instance v3, Lcom/facebook/katana/HomeActivity$ReelAdapter;

    iget-object v4, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v4}, Lcom/facebook/katana/binding/AppSession;->getPhotosCache()Lcom/facebook/katana/binding/StreamPhotosCache;

    move-result-object v4

    invoke-direct {v3, p0, p0, v4}, Lcom/facebook/katana/HomeActivity$ReelAdapter;-><init>(Lcom/facebook/katana/HomeActivity;Landroid/content/Context;Lcom/facebook/katana/binding/StreamPhotosCache;)V

    iput-object v3, p0, Lcom/facebook/katana/HomeActivity;->mReelAdapter:Lcom/facebook/katana/HomeActivity$ReelAdapter;

    invoke-virtual {p0}, Lcom/facebook/katana/HomeActivity;->isMediaReelSupported()Z

    move-result v3

    if-nez v3, :cond_d0

    const v3, 0x7f0b003d

    invoke-virtual {p0, v3}, Lcom/facebook/katana/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_30

    :cond_d0
    new-instance v1, Lcom/facebook/katana/HomeActivity$ReelListener;

    invoke-direct {v1, p0}, Lcom/facebook/katana/HomeActivity$ReelListener;-><init>(Lcom/facebook/katana/HomeActivity;)V

    iget-object v3, p0, Lcom/facebook/katana/HomeActivity;->mGalleryView:Landroid/widget/Gallery;

    invoke-virtual {v3, v6}, Landroid/widget/Gallery;->setHorizontalFadingEdgeEnabled(Z)V

    iget-object v3, p0, Lcom/facebook/katana/HomeActivity;->mGalleryView:Landroid/widget/Gallery;

    iget-object v4, p0, Lcom/facebook/katana/HomeActivity;->mReelAdapter:Lcom/facebook/katana/HomeActivity$ReelAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v3, p0, Lcom/facebook/katana/HomeActivity;->mGalleryView:Landroid/widget/Gallery;

    invoke-virtual {v3, v1}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v3, p0, Lcom/facebook/katana/HomeActivity;->mGalleryView:Landroid/widget/Gallery;

    invoke-virtual {v3, v1}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/facebook/katana/HomeActivity;->mHomePhotoReelImages:Ljava/util/Map;

    goto/16 :goto_30
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 13

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_4e

    move-object v0, v7

    :goto_7
    return-object v0

    :pswitch_8
    new-instance v10, Landroid/app/ProgressDialog;

    invoke-direct {v10, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const v0, 0x7f08013c

    invoke-virtual {p0, v0}, Lcom/facebook/katana/HomeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v10, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    move-object v0, v10

    goto :goto_7

    :pswitch_22
    new-instance v5, Lcom/facebook/katana/HomeActivity$5;

    invoke-direct {v5, p0}, Lcom/facebook/katana/HomeActivity$5;-><init>(Lcom/facebook/katana/HomeActivity;)V

    const v0, 0x7f080066

    invoke-virtual {p0, v0}, Lcom/facebook/katana/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x108009b

    const v0, 0x7f08013d

    invoke-virtual {p0, v0}, Lcom/facebook/katana/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0801a2

    invoke-virtual {p0, v0}, Lcom/facebook/katana/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f0800b6

    invoke-virtual {p0, v0}, Lcom/facebook/katana/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v8, v7

    invoke-static/range {v0 .. v9}, Lcom/facebook/katana/AlertDialogs;->createAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_22
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x2

    const v1, 0x7f08006d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x3

    const v1, 0x7f080147

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020081

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x4

    const v1, 0x7f080072

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080041

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x5

    const v1, 0x7f080066

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02007d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_3a

    :goto_8
    return-void

    :pswitch_9
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p2, :cond_2a

    invoke-virtual {p0}, Lcom/facebook/katana/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_8

    :cond_2a
    invoke-virtual {p0}, Lcom/facebook/katana/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f07

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_8

    :pswitch_data_3a
    .packed-switch 0x7f0b0036
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_18

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity;->mNotificationsPanel:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity;->mNotificationsPanel:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->animateClose()V

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_17
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_32

    :goto_8
    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :pswitch_d
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_8

    :pswitch_19
    iget-object v1, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1, p0}, Lcom/facebook/katana/binding/AppSession;->syncNotifications(Landroid/content/Context;)Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/facebook/katana/HomeActivity;->showProgress(Z)V

    goto :goto_8

    :pswitch_22
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/HtmlAboutActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/facebook/katana/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    :pswitch_2d
    invoke-virtual {p0, v2}, Lcom/facebook/katana/HomeActivity;->showDialog(I)V

    goto :goto_8

    nop

    :pswitch_data_32
    .packed-switch 0x2
        :pswitch_d
        :pswitch_19
        :pswitch_22
        :pswitch_2d
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onPause()V

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/HomeActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->removeListener(Lcom/facebook/katana/binding/AppSessionListener;)V

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/HomeActivity;->mNotificationsAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->removeListener(Lcom/facebook/katana/binding/AppSessionListener;)V

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/HomeActivity;->mPhotoReelAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->removeListener(Lcom/facebook/katana/binding/AppSessionListener;)V

    :cond_1c
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-object v1, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->isNotificationsSyncPending()Z

    move-result v0

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v0, :cond_16

    const/4 v2, 0x0

    :goto_12
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return v3

    :cond_16
    move v2, v3

    goto :goto_12
.end method

.method protected onResume()V
    .registers 10

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onResume()V

    invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    if-nez v0, :cond_14

    invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V

    :goto_13
    return-void

    :cond_14
    invoke-virtual {p0}, Lcom/facebook/katana/HomeActivity;->isMediaReelSupported()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-wide v3, p0, Lcom/facebook/katana/HomeActivity;->mUserId:J

    invoke-virtual {v0, v3, v4, v5}, Lcom/facebook/katana/binding/AppSession;->getStreamContainer(JZ)Lcom/facebook/katana/binding/FacebookStreamContainer;

    move-result-object v8

    if-nez v8, :cond_66

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-wide v3, p0, Lcom/facebook/katana/HomeActivity;->mUserId:J

    invoke-virtual {v0, v3, v4, v5}, Lcom/facebook/katana/binding/AppSession;->isStreamGetPending(JZ)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual {p0, v2}, Lcom/facebook/katana/HomeActivity;->streamGet(Lcom/facebook/katana/service/api/FacebookPost;)V

    invoke-direct {p0, v1}, Lcom/facebook/katana/HomeActivity;->showProgress(Z)V

    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v3, p0, Lcom/facebook/katana/HomeActivity;->mPhotoReelAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v3}, Lcom/facebook/katana/binding/AppSession;->addListener(Lcom/facebook/katana/binding/AppSessionListener;)V

    :cond_3b
    iget-object v0, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v3, p0, Lcom/facebook/katana/HomeActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v3}, Lcom/facebook/katana/binding/AppSession;->addListener(Lcom/facebook/katana/binding/AppSessionListener;)V

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v3, p0, Lcom/facebook/katana/HomeActivity;->mNotificationsAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v3}, Lcom/facebook/katana/binding/AppSession;->addListener(Lcom/facebook/katana/binding/AppSessionListener;)V

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->isNotificationsSyncPending()Z

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0, p0}, Lcom/facebook/katana/binding/AppSession;->syncNotifications(Landroid/content/Context;)Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/facebook/katana/HomeActivity;->showProgress(Z)V

    :cond_59
    iget-object v0, p0, Lcom/facebook/katana/HomeActivity;->mQueryHandler:Lcom/facebook/katana/HomeActivity$QueryHandler;

    sget-object v3, Lcom/facebook/katana/provider/NotificationsProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/facebook/katana/NotificationsAdapter$NotificationsQuery;->PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/facebook/katana/HomeActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_66
    iget-object v0, p0, Lcom/facebook/katana/HomeActivity;->mReelAdapter:Lcom/facebook/katana/HomeActivity$ReelAdapter;

    iget-object v3, p0, Lcom/facebook/katana/HomeActivity;->mReelAdapter:Lcom/facebook/katana/HomeActivity$ReelAdapter;

    invoke-virtual {v8}, Lcom/facebook/katana/binding/FacebookStreamContainer;->getPosts()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/katana/HomeActivity$ReelAdapter;->pullMediaContentFromPosts(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/katana/HomeActivity$ReelAdapter;->addMediaContent(Ljava/util/List;)Z

    goto :goto_34
.end method

.method public bridge synthetic onSearchRequested()Z
    .registers 2

    invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_46

    :cond_8
    :goto_8
    return v3

    :pswitch_9
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {p0}, Lcom/facebook/katana/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_8

    :cond_2e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    invoke-virtual {p0}, Lcom/facebook/katana/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f07

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_8

    nop

    :pswitch_data_46
    .packed-switch 0x7f0b0036
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public streamGet(Lcom/facebook/katana/service/api/FacebookPost;)V
    .registers 14

    const/4 v11, 0x1

    iget-object v0, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->isStreamGetPending(JZ)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0, v11}, Lcom/facebook/katana/HomeActivity;->showProgress(Z)V

    :goto_17
    return-void

    :cond_18
    const/4 v10, 0x0

    const-wide/16 v7, -0x1

    if-eqz p1, :cond_22

    const/4 v10, 0x2

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookPost;->getCreatedTime()J

    move-result-wide v7

    :cond_22
    iget-object v0, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/HomeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v2

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const/16 v9, 0x14

    move-object v1, p0

    invoke-virtual/range {v0 .. v10}, Lcom/facebook/katana/binding/AppSession;->streamGet(Landroid/content/Context;J[JJJII)Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/facebook/katana/HomeActivity;->showProgress(Z)V

    goto :goto_17
.end method

.method public titleBarClickHandler(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public titleBarPrimaryActionClickHandler(Landroid/view/View;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/StreamActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.facebook.katana.SHARE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/HomeActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic titleBarSearchClickHandler(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->titleBarSearchClickHandler(Landroid/view/View;)V

    return-void
.end method
