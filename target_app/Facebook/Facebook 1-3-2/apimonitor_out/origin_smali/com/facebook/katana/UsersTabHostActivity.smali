.class public Lcom/facebook/katana/UsersTabHostActivity;
.super Lcom/facebook/katana/FacebookTabActivity;
.source "UsersTabHostActivity.java"

# interfaces
.implements Lcom/facebook/katana/MyTabHost$OnTabChangeListener;
.implements Lcom/facebook/katana/TabProgressListener;


# static fields
.field public static final INTENT_DEFAULT_TAB_KEY:Ljava/lang/String; = "com.facebook.katana.DefaultTab"

.field public static final TAG_FRIENDS:Ljava/lang/String; = "friends"

.field public static final TAG_USERS_SEARCH:Ljava/lang/String; = "user_search"


# instance fields
.field private mCurrentTab:Lcom/facebook/katana/UsersTabProgressSource;

.field private final mTabSpecViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/MyTabHost$TabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mTextBox:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/katana/FacebookTabActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/UsersTabHostActivity;->mTabSpecs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/UsersTabHostActivity;->mTabSpecViews:Ljava/util/List;

    return-void
.end method

.method static synthetic access$9(Lcom/facebook/katana/UsersTabHostActivity;)Lcom/facebook/katana/UsersTabProgressSource;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/UsersTabHostActivity;->mCurrentTab:Lcom/facebook/katana/UsersTabProgressSource;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookTabActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic facebookOnBackPressed()Z
    .registers 2

    invoke-super {p0}, Lcom/facebook/katana/FacebookTabActivity;->facebookOnBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 15

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookTabActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v11

    if-nez v11, :cond_14

    invoke-virtual {p0}, Lcom/facebook/katana/UsersTabHostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/facebook/katana/UsersTabHostActivity;->finish()V

    :goto_13
    return-void

    :cond_14
    const v11, 0x7f03004d

    invoke-virtual {p0, v11}, Lcom/facebook/katana/UsersTabHostActivity;->setContentView(I)V

    const v11, 0x7f0b00b4

    invoke-virtual {p0, v11}, Lcom/facebook/katana/UsersTabHostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    const-string v11, "layout_inflater"

    invoke-virtual {p0, v11}, Lcom/facebook/katana/UsersTabHostActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/facebook/katana/UsersTabHostActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v7

    check-cast v7, Lcom/facebook/katana/MyTabHost;

    invoke-virtual {p0}, Lcom/facebook/katana/UsersTabHostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v11, 0x7f0200ac

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v7}, Lcom/facebook/katana/MyTabHost;->getMyTabWidget()Lcom/facebook/katana/MyTabWidget;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/facebook/katana/MyTabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/facebook/katana/MyTabHost;->handleTouchMode(Z)V

    const v11, 0x7f030046

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    const v11, 0x7f0b00b0

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v11, 0x7f080058

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    const-string v11, "friends"

    invoke-virtual {v7, v11, v10}, Lcom/facebook/katana/MyTabHost;->myNewTabSpec(Ljava/lang/String;Landroid/view/View;)Lcom/facebook/katana/MyTabHost$TabSpec;

    move-result-object v8

    new-instance v3, Landroid/content/Intent;

    const-class v11, Lcom/facebook/katana/FriendsActivity;

    invoke-direct {v3, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v11, "within_tab"

    const/4 v12, 0x1

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v8, v3}, Lcom/facebook/katana/MyTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/facebook/katana/MyTabHost$TabSpec;

    invoke-virtual {v7, v8}, Lcom/facebook/katana/MyTabHost;->addTab(Lcom/facebook/katana/MyTabHost$TabSpec;)V

    iget-object v11, p0, Lcom/facebook/katana/UsersTabHostActivity;->mTabSpecs:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v11, p0, Lcom/facebook/katana/UsersTabHostActivity;->mTabSpecViews:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v11, 0x7f030046

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    const v11, 0x7f0b00b0

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v11, 0x7f080056

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    const-string v11, "user_search"

    invoke-virtual {v7, v11, v10}, Lcom/facebook/katana/MyTabHost;->myNewTabSpec(Ljava/lang/String;Landroid/view/View;)Lcom/facebook/katana/MyTabHost$TabSpec;

    move-result-object v8

    new-instance v3, Landroid/content/Intent;

    const-class v11, Lcom/facebook/katana/UserSearchResultsActivity;

    invoke-direct {v3, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v11, "within_tab"

    const/4 v12, 0x1

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v8, v3}, Lcom/facebook/katana/MyTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/facebook/katana/MyTabHost$TabSpec;

    invoke-virtual {v7, v8}, Lcom/facebook/katana/MyTabHost;->addTab(Lcom/facebook/katana/MyTabHost$TabSpec;)V

    iget-object v11, p0, Lcom/facebook/katana/UsersTabHostActivity;->mTabSpecs:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v11, p0, Lcom/facebook/katana/UsersTabHostActivity;->mTabSpecViews:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v11, 0x7f0b00bc

    invoke-virtual {p0, v11}, Lcom/facebook/katana/UsersTabHostActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/facebook/katana/UsersTabHostActivity;->mTextBox:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/facebook/katana/UsersTabHostActivity;->mTextBox:Landroid/widget/TextView;

    new-instance v12, Lcom/facebook/katana/UsersTabHostActivity$1;

    invoke-direct {v12, p0}, Lcom/facebook/katana/UsersTabHostActivity$1;-><init>(Lcom/facebook/katana/UsersTabHostActivity;)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/facebook/katana/UsersTabHostActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/facebook/katana/UsersTabProgressSource;

    iput-object p1, p0, Lcom/facebook/katana/UsersTabHostActivity;->mCurrentTab:Lcom/facebook/katana/UsersTabProgressSource;

    iget-object v11, p0, Lcom/facebook/katana/UsersTabHostActivity;->mCurrentTab:Lcom/facebook/katana/UsersTabProgressSource;

    invoke-interface {v11, p0}, Lcom/facebook/katana/UsersTabProgressSource;->setProgressListener(Lcom/facebook/katana/TabProgressListener;)V

    const-string v1, "friends"

    invoke-virtual {p0}, Lcom/facebook/katana/UsersTabHostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "com.facebook.katana.DefaultTab"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f1

    move-object v1, v4

    :cond_f1
    invoke-virtual {p0}, Lcom/facebook/katana/UsersTabHostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_118

    invoke-virtual {p0}, Lcom/facebook/katana/UsersTabHostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.intent.action.SEARCH"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_118

    iget-object v11, p0, Lcom/facebook/katana/UsersTabHostActivity;->mTextBox:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->requestFocus()Z

    invoke-virtual {p0}, Lcom/facebook/katana/UsersTabHostActivity;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_118
    invoke-virtual {v7, v1}, Lcom/facebook/katana/MyTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/facebook/katana/UsersTabHostActivity;->onTabChanged(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/facebook/katana/UsersTabHostActivity;->mTextBox:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->requestFocus()Z

    invoke-virtual {v7, p0}, Lcom/facebook/katana/MyTabHost;->setOnTabChangedListener(Lcom/facebook/katana/MyTabHost$OnTabChangeListener;)V

    goto/16 :goto_13
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/facebook/katana/FacebookTabActivity;->onDestroy()V

    iget-object v0, p0, Lcom/facebook/katana/UsersTabHostActivity;->mCurrentTab:Lcom/facebook/katana/UsersTabProgressSource;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/facebook/katana/UsersTabHostActivity;->mCurrentTab:Lcom/facebook/katana/UsersTabProgressSource;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/katana/UsersTabProgressSource;->setProgressListener(Lcom/facebook/katana/TabProgressListener;)V

    :cond_d
    return-void
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookTabActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookTabActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onSearchRequested()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onShowProgress(Z)V
    .registers 4

    const v0, 0x7f0b00b2

    invoke-virtual {p0, v0}, Lcom/facebook/katana/UsersTabHostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_e

    const/4 v1, 0x0

    :goto_a
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_e
    const/16 v1, 0x8

    goto :goto_a
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .registers 7

    iget-object v3, p0, Lcom/facebook/katana/UsersTabHostActivity;->mCurrentTab:Lcom/facebook/katana/UsersTabProgressSource;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/facebook/katana/UsersTabHostActivity;->mCurrentTab:Lcom/facebook/katana/UsersTabProgressSource;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/facebook/katana/UsersTabProgressSource;->setProgressListener(Lcom/facebook/katana/TabProgressListener;)V

    :cond_a
    invoke-virtual {p0}, Lcom/facebook/katana/UsersTabHostActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/UsersTabProgressSource;

    iput-object v3, p0, Lcom/facebook/katana/UsersTabHostActivity;->mCurrentTab:Lcom/facebook/katana/UsersTabProgressSource;

    iget-object v3, p0, Lcom/facebook/katana/UsersTabHostActivity;->mCurrentTab:Lcom/facebook/katana/UsersTabProgressSource;

    invoke-interface {v3, p0}, Lcom/facebook/katana/UsersTabProgressSource;->setProgressListener(Lcom/facebook/katana/TabProgressListener;)V

    iget-object v3, p0, Lcom/facebook/katana/UsersTabHostActivity;->mCurrentTab:Lcom/facebook/katana/UsersTabProgressSource;

    iget-object v4, p0, Lcom/facebook/katana/UsersTabHostActivity;->mTextBox:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/facebook/katana/UsersTabProgressSource;->search(Ljava/lang/String;)V

    const-string v3, "friends"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Lcom/facebook/katana/UsersTabHostActivity;->mTextBox:Landroid/widget/TextView;

    const v4, 0x7f080057

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(I)V

    :cond_3a
    :goto_3a
    const/4 v0, 0x0

    :goto_3b
    iget-object v3, p0, Lcom/facebook/katana/UsersTabHostActivity;->mTabSpecs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_55

    return-void

    :cond_44
    const-string v3, "user_search"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/facebook/katana/UsersTabHostActivity;->mTextBox:Landroid/widget/TextView;

    const v4, 0x7f08005e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(I)V

    goto :goto_3a

    :cond_55
    iget-object v3, p0, Lcom/facebook/katana/UsersTabHostActivity;->mTabSpecViews:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const v3, 0x7f0b00b0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/facebook/katana/UsersTabHostActivity;->mTabSpecs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/MyTabHost$TabSpec;

    invoke-virtual {v3}, Lcom/facebook/katana/MyTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    invoke-virtual {p0}, Lcom/facebook/katana/UsersTabHostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_86
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_89
    invoke-virtual {p0}, Lcom/facebook/katana/UsersTabHostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_86
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookTabActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public bridge synthetic titleBarClickHandler(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookTabActivity;->titleBarClickHandler(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic titleBarPrimaryActionClickHandler(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookTabActivity;->titleBarPrimaryActionClickHandler(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic titleBarSearchClickHandler(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookTabActivity;->titleBarSearchClickHandler(Landroid/view/View;)V

    return-void
.end method
