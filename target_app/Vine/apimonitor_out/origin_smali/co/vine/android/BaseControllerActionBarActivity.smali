.class public abstract Lco/vine/android/BaseControllerActionBarActivity;
.super Lco/vine/android/BaseActionBarActivity;
.source "BaseControllerActionBarActivity.java"

# interfaces
.implements Lco/vine/android/ScrollListener;


# static fields
.field public static final EXTRA_TITLE_ID:Ljava/lang/String; = "title"


# instance fields
.field protected mAppController:Lco/vine/android/client/AppController;

.field protected mAppSessionListener:Lco/vine/android/client/AppSessionListener;

.field private mConversationSlidingMenuHelper:Lco/vine/android/util/ConversationMenuHelper;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/BaseActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createSlidingMenuHelper()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingActivityHelper;
    .registers 2

    new-instance v0, Lco/vine/android/util/ConversationMenuHelper;

    invoke-direct {v0, p0}, Lco/vine/android/util/ConversationMenuHelper;-><init>(Lco/vine/android/BaseControllerActionBarActivity;)V

    iput-object v0, p0, Lco/vine/android/BaseControllerActionBarActivity;->mConversationSlidingMenuHelper:Lco/vine/android/util/ConversationMenuHelper;

    iget-object v0, p0, Lco/vine/android/BaseControllerActionBarActivity;->mConversationSlidingMenuHelper:Lco/vine/android/util/ConversationMenuHelper;

    return-object v0
.end method

.method public getAppController()Lco/vine/android/client/AppController;
    .registers 2

    iget-object v0, p0, Lco/vine/android/BaseControllerActionBarActivity;->mAppController:Lco/vine/android/client/AppController;

    return-object v0
.end method

.method public getConversationSlidingMenuHelper()Lco/vine/android/util/ConversationMenuHelper;
    .registers 2

    iget-object v0, p0, Lco/vine/android/BaseControllerActionBarActivity;->mConversationSlidingMenuHelper:Lco/vine/android/util/ConversationMenuHelper;

    return-object v0
.end method

.method public isConversationSideMenuEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected isSlidingMenuEnabled()Z
    .registers 2

    invoke-virtual {p0}, Lco/vine/android/BaseControllerActionBarActivity;->isConversationSideMenuEnabled()Z

    move-result v0

    return v0
.end method

.method public notifyColorChange(I)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/BaseControllerActionBarActivity;->mConversationSlidingMenuHelper:Lco/vine/android/util/ConversationMenuHelper;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lco/vine/android/BaseControllerActionBarActivity;->mConversationSlidingMenuHelper:Lco/vine/android/util/ConversationMenuHelper;

    invoke-virtual {v0, p1}, Lco/vine/android/util/ConversationMenuHelper;->setPersonalizedColor(I)V

    :cond_9
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;IZ)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lco/vine/android/BaseControllerActionBarActivity;->onCreate(Landroid/os/Bundle;IZZ)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;IZZ)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Lco/vine/android/BaseActionBarActivity;->onCreate(Landroid/os/Bundle;IZZ)V

    invoke-static {p0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/BaseControllerActionBarActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-object v0, p0, Lco/vine/android/BaseControllerActionBarActivity;->mConversationSlidingMenuHelper:Lco/vine/android/util/ConversationMenuHelper;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lco/vine/android/BaseControllerActionBarActivity;->mConversationSlidingMenuHelper:Lco/vine/android/util/ConversationMenuHelper;

    invoke-virtual {v0}, Lco/vine/android/util/ConversationMenuHelper;->setupConversationSlidingMenu()V

    :cond_12
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Lco/vine/android/BaseActionBarActivity;->onDestroy()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_12

    invoke-static {}, Lco/vine/android/util/BuildUtil;->isExplore()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {}, Lco/vine/android/player/SdkVideoView;->releaseStaticIfNeeded()V

    :cond_12
    return-void
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Lco/vine/android/BaseActionBarActivity;->onPause()V

    iget-object v0, p0, Lco/vine/android/BaseControllerActionBarActivity;->mConversationSlidingMenuHelper:Lco/vine/android/util/ConversationMenuHelper;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lco/vine/android/BaseControllerActionBarActivity;->mConversationSlidingMenuHelper:Lco/vine/android/util/ConversationMenuHelper;

    invoke-virtual {v0}, Lco/vine/android/util/ConversationMenuHelper;->onPause()V

    :cond_c
    iget-object v0, p0, Lco/vine/android/BaseControllerActionBarActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lco/vine/android/BaseControllerActionBarActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/BaseControllerActionBarActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->removeListener(Lco/vine/android/client/AppSessionListener;)V

    :cond_17
    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Lco/vine/android/BaseActionBarActivity;->onResume()V

    iget-object v0, p0, Lco/vine/android/BaseControllerActionBarActivity;->mConversationSlidingMenuHelper:Lco/vine/android/util/ConversationMenuHelper;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lco/vine/android/BaseControllerActionBarActivity;->mConversationSlidingMenuHelper:Lco/vine/android/util/ConversationMenuHelper;

    invoke-virtual {v0}, Lco/vine/android/util/ConversationMenuHelper;->onResume()V

    :cond_c
    iget-object v0, p0, Lco/vine/android/BaseControllerActionBarActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lco/vine/android/BaseControllerActionBarActivity;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/BaseControllerActionBarActivity;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v0, v1}, Lco/vine/android/client/AppController;->addListener(Lco/vine/android/client/AppSessionListener;)V

    :cond_17
    return-void
.end method

.method public onScroll(I)V
    .registers 2

    return-void
.end method
